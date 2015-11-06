package org.cunframework.sc.map4j.util;

import java.io.File;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.Objects;

import org.cunframework.sc.map4j.Configuration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 */
public class FileUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileUtils.class);

    private static final Path TMP_DIR = new File(System.getProperty("java.io.tmpdir")).toPath();

    public static Path getFileAbsoultePath(String path) {
        if (path == null) {
            return null;
        }

        return FileSystems.getDefault().getPath(path).toAbsolutePath();
    }

    public static int getFileAbsoultePathHash(Path path) {
        if (path == null) {
            return 0;
        }

        return Objects.hash(path.toString());
    }
    
    public static Configuration getConfiguration(String[] args) throws Exception {
        return getConfiguration(getConfigurationFilePath(args), false);
    }

    public static Configuration getConfiguration(String[] args, boolean silent) throws Exception {
        return getConfiguration(getConfigurationFilePath(args), silent);
    }

    public static Configuration getConfiguration(Path configurationFilePath, boolean silent) throws Exception {
        if (configurationFilePath != null) {
            LOGGER.info("从{}中抽取配置信息**",configurationFilePath.toString());
            return new Configuration(configurationFilePath);
        } else {
            LOGGER.info("载入默认配置设置 *******************************************");
            return new Configuration();
        }
    }

    public static Path getConfigurationFilePath(String[] args) {
        if (args != null) {
            for (String arg : args) {
                if (!arg.equals("--fork")) {
                    return getFileAbsoultePath(arg);
                }
            }
        }

        return null;
    }

    public static Path getTmpDirPath() {
        return TMP_DIR;
    }

    private FileUtils() {
    }
}