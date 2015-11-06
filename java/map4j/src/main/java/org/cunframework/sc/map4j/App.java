package org.cunframework.sc.map4j;

import static org.cunframework.sc.map4j.Configuration.MAP4J_VERSION;
import io.undertow.Undertow;
import io.undertow.Undertow.Builder;
import io.undertow.server.HttpHandler;
import io.undertow.server.handlers.BlockingHandler;
import io.undertow.server.handlers.GracefulShutdownHandler;
import io.undertow.server.handlers.HttpContinueAcceptingHandler;
import io.undertow.server.handlers.PathHandler;
import io.undertow.server.handlers.RequestLimit;
import io.undertow.server.handlers.RequestLimitingHandler;
import io.undertow.server.handlers.resource.ClassPathResourceManager;
import io.undertow.server.handlers.resource.FileResourceManager;
import io.undertow.server.handlers.resource.ResourceHandler;
import io.undertow.websockets.WebSocketConnectionCallback;
import static io.undertow.Handlers.path;
import static io.undertow.Handlers.resource;
import static io.undertow.Handlers.websocket;

import java.io.File;
import java.net.URL;
import java.util.Map;

import org.cunframework.sc.map4j.support.handle.ErrorHandler;
import org.cunframework.sc.map4j.support.handle.PipedHttpHandler;
import org.cunframework.sc.map4j.support.handle.RequestDispacherHandler;
import org.cunframework.sc.map4j.support.handle.applicationlogic.ApplicationLogicHandler;
import org.cunframework.sc.map4j.support.handle.injectors.RequestContextInjectorHandler;
import org.cunframework.sc.map4j.support.handle.security.CORSHandler;
import org.cunframework.sc.map4j.support.handle.blank.BlankImageHandler;
import org.cunframework.sc.map4j.util.FileUtils;
import org.cunframework.sc.map4j.util.LoggingInitializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Hello world!
 */
public class App {
    private static final Logger LOGGER = LoggerFactory.getLogger(App.class);
    
    private static Undertow server;
    public static Configuration configuration;
    private static GracefulShutdownHandler shutdownHandler = null;
    
    public static void main(String[] args) {
        AppBootBanner.printBanner(System.out);
        
        try {
            configuration = FileUtils.getConfiguration(args);
        } catch (Exception ex) {
            LOGGER.error(ex.getMessage() + ", 正在退出...", ex);
            stopServer();
            System.exit(-1);
        }
        
        initLogging(args);
        
        logLoggingConfiguration(args);
        
        LOGGER.info("开始启动 Map4J ********************************************");
        
        startServer();
    }
    
    private static void initLogging(final String[] args) {
        LoggingInitializer.setLogLevel(configuration.getLogLevel());

        if (!configuration.isLogToConsole()) {
            LoggingInitializer.stopConsoleLogging();
        }
        if (configuration.isLogToFile()) {
            LoggingInitializer.startFileLogging(configuration.getLogFilePath());
        }
    }
    
    private static void logLoggingConfiguration(final String[] args) {
        if (!configuration.isLogToConsole()) {
            LOGGER.info("Stop logging to console "); 
            LOGGER.info("***************************************************************");
        } else {
            LOGGER.info("日志记录到 console 级别 {}", configuration.getLogLevel());
        }

        if (configuration.isLogToFile()) {
            LOGGER.info("日志记录到 {} 级别 {}", configuration.getLogFilePath(), configuration.getLogLevel());
        }
    }
    
    private static void startServer() {
        if (MAP4J_VERSION != null) {
            LOGGER.info("MAP4J_VERSION 版本 {}", MAP4J_VERSION);
        }

        LOGGER.info("初始化 AsyncHttpConnection连接池数量 为{}", Runtime.getRuntime().availableProcessors()*2);
        
        try {
            startCoreSystem();
        } catch (Throwable t) {
            LOGGER.error("启动MAP4J错误。正在退出...", t);
            stopServer();
            System.exit(-2);
        }

        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                stopServer();
            }
        });

        LOGGER.info("MAP4J 启动成功 **********************************************");
    }
    
    private static void stopServer() {
        LOGGER.info("MAP4J 正在退出...");

        if (server != null) {
            LOGGER.info("开始停止Undertow服务...");
            try {
                server.stop();
            } catch (Throwable t) {
                LOGGER.error("停止Undertow服务时出现错误", t);
            }
        }

        LOGGER.info("MAP4J 已经关闭 *********************************************");
    }
    
    private static void startCoreSystem() {
        if (configuration == null) {
            LOGGER.error("配置文件不存在. 正在退出...");
            stopServer();
            System.exit(-1);
        }

        if (!configuration.isHttpListener() && !configuration.isAjpListener()) {
            LOGGER.error("没有配置listener. 正在退出..");
            stopServer();
            System.exit(-1);
        }

        Builder builder = Undertow.builder();

        if (configuration.isHttpListener()) {
            builder.addHttpListener(configuration.getHttpPort(), configuration.getHttpHost());
            LOGGER.info("HTTP listener 绑定到 {}:{}", configuration.getHttpHost(), configuration.getHttpPort());
        }

        if (configuration.isAjpListener()) {
            builder.addAjpListener(configuration.getAjpPort(), configuration.getAjpHost());
            LOGGER.info("Ajp listener 绑定到 {}:{}", configuration.getAjpHost(), configuration.getAjpPort());
        }

        shutdownHandler = getHandlersPipe();

        builder
                .setIoThreads(configuration.getIoThreads())
                .setWorkerThreads(configuration.getWorkerThreads())
                .setDirectBuffers(configuration.isDirectBuffers())
                .setBufferSize(configuration.getBufferSize())
                .setBuffersPerRegion(configuration.getBuffersPerRegion())
                .setHandler(shutdownHandler);

        builder.build().start();
    }
    
    private static GracefulShutdownHandler getHandlersPipe() {
        PipedHttpHandler coreHandlerChain = new RequestDispacherHandler();
        
        PathHandler paths = path(); 
        
        paths.addPrefixPath("/map", 
                new CORSHandler(
                        new RequestContextInjectorHandler("/map","*",coreHandlerChain)));
        
        LOGGER.info("URL {} 绑定到  {}", "/map", "*");
        
        paths.addPrefixPath("/", 
                resource(new ClassPathResourceManager(App.class.getClassLoader(), "geo"))
                .addWelcomeFiles("index.html"));
        
        LOGGER.info("URL {} 绑定到跟路径下的 {} 文件夹", "/", "geo");
        
        paths.addPrefixPath("/tiny", 
                resource(new ClassPathResourceManager(App.class.getClassLoader(), "tiny")));
        
        LOGGER.info("URL {} 绑定到跟路径下的 {} 文件夹", "/tiny", "tiny");

        pipeStaticResourcesHandlers(configuration, paths);
        
        pipeApplicationLogicHandlers(configuration, paths);
        
        pipeWebSocketHandlers(configuration, paths);

        return new GracefulShutdownHandler(
                new RequestLimitingHandler(new RequestLimit(configuration.getRequestsLimit()),
                        new BlockingHandler(
                                new ErrorHandler(
                                        new HttpContinueAcceptingHandler(paths)
                                )
                        )
                )
        );
    }
    
    private static void pipeStaticResourcesHandlers(
            final Configuration conf,
            final PathHandler paths) {
        
        for(Map<String, Object> sr : conf.getStaticResourcesMounts()){
            try {
                String path = (String) sr.get(Configuration.STATIC_RESOURCES_MOUNT_WHAT_KEY);
                String where = (String) sr.get(Configuration.STATIC_RESOURCES_MOUNT_WHERE_KEY);
                String welcomeFile = (String) sr.get(Configuration.STATIC_RESOURCES_MOUNT_WELCOME_FILE_KEY);

                if (welcomeFile == null) {
                    welcomeFile = "index.html";
                }
                
                File file;
                if (!path.startsWith("/") && !path.contains(":")) {
                    URL location = App.class
                            .getProtectionDomain().getCodeSource().getLocation();
                    File locationFile = new File(location.getPath());
                    file = new File(locationFile.getParent() + File.separator + path);
                } else {
                    file = new File(path);
                }
                
                BlankImageHandler blankImg = new BlankImageHandler();
                
                ResourceHandler rh = new ResourceHandler(
                        new FileResourceManager(file, 3),
                        blankImg);

                ResourceHandler handler = rh
                        .addWelcomeFiles(welcomeFile)
                        .setDirectoryListingEnabled(false);

                paths.addPrefixPath(where, handler);
                
                LOGGER.info("URL {} 绑定到静态资源 {}.", where, file.getAbsolutePath());
            } catch (Throwable t) {
                LOGGER.error("不能绑定到静态资源到{}", "", t);
            }
        }
    }
    
    private static void pipeWebSocketHandlers(
            final Configuration conf,
            final PathHandler paths) {
        for(Map<String, Object> al : conf.getWebSocketMounts()){
            try {
                String alClazz = (String) al.get(Configuration.WEBSOCKET_MOUNT_WHAT_KEY);
                String alWhere = (String) al.get(Configuration.WEBSOCKET_MOUNT_WHERE_KEY);
                
                if (alWhere == null || !alWhere.startsWith("/")) {
                    LOGGER.error("不能绑定到  web socket handler {}. 参数 'where' 必需从 / 开始", alWhere);
                    return;
                }
                
                Object o = Class.forName(alClazz).newInstance();
    
                if (o instanceof WebSocketConnectionCallback) {
                    WebSocketConnectionCallback wsHandler = (WebSocketConnectionCallback) o;
    
                    paths.addPrefixPath("/socket" + alWhere, websocket(wsHandler));
    
                    LOGGER.info("URL {} 绑定到  web socket handler {}.", "/socket" + alWhere, alClazz);
                } else {
                    LOGGER.error("不能绑定到   web socket handler {}."
                            + " 类 {} 没有实现 WebSocketConnectionCallback", "/socket" + alWhere, alClazz);
                }
            } catch (Throwable t) {
                LOGGER.error("不能绑定到  web socket handler {}",
                        al.get(Configuration.WEBSOCKET_MOUNT_WHERE_KEY), t);
            } 
        }
    }
    
    private static void pipeApplicationLogicHandlers(
            final Configuration conf,
            final PathHandler paths) {
        
        for(Map<String, Object> al : conf.getApplicationLogicMounts()){
            try {
                String alClazz = (String) al.get(Configuration.APPLICATION_LOGIC_MOUNT_WHAT_KEY);
                String alWhere = (String) al.get(Configuration.APPLICATION_LOGIC_MOUNT_WHERE_KEY);
                Object alArgs = al.get(Configuration.APPLICATION_LOGIC_MOUNT_ARGS_KEY);

                if (alWhere == null || !alWhere.startsWith("/")) {
                    LOGGER.error("不能绑定到  application logic handler {}. 参数 'where' 必需从 / 开始", alWhere);
                    return;
                }

                if (alArgs != null && !(alArgs instanceof Map)) {
                    LOGGER.error("不能绑定到  application logic handler {}."
                            + "args 不是一个Map. ", alWhere, alWhere.getClass());
                    return;

                }

                Object o = Class.forName(alClazz)
                        .getConstructor(HttpHandler.class, Map.class)
                        .newInstance(null, (Map) alArgs);

                if (o instanceof ApplicationLogicHandler) {
                    ApplicationLogicHandler alHandler = (ApplicationLogicHandler) o;

                    paths.addPrefixPath("/_logic" + alWhere, alHandler);

                    LOGGER.info("URL {} 绑定到 application logic handler {}.", "/_logic" + alWhere, alClazz);
                } else {
                    LOGGER.error("不能绑定到  application logic handler {}."
                            + " 类 {} 没有继承 ApplicationLogicHandler", alWhere, alClazz);
                }

            } catch (Throwable t) {
                LOGGER.error("不能绑定到  application logic handler {}",
                        al.get(Configuration.APPLICATION_LOGIC_MOUNT_WHERE_KEY), t);
            }
        }
    }
}
