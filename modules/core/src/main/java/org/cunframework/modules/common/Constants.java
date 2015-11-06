package org.cunframework.modules.common;

/**
 */
public interface Constants {
    /**
     * 操作名称
     */
    String OP_NAME = "op";


    /**
     * 消息key
     */
    String MESSAGE = "message";

    /**
     * 错误key
     */
    String ERROR = "error";

    /**
     * 上个页面地址
     */
    String BACK_URL = "BackURL";

    String IGNORE_BACK_URL = "ignoreBackURL";

    /**
     * 当前请求的地址 带参数
     */
    String CURRENT_URL = "currentURL";

    /**
     * 当前请求的地址 不带参数
     */
    String NO_QUERYSTRING_CURRENT_URL = "noQueryStringCurrentURL";

    String CONTEXT_PATH = "ctx";

    /**
     * 当前登录的用户
     */
    String CURRENT_USER = "user";
    String CURRENT_USERNAME = "username";

    String ENCODING = "UTF-8";

    /** 系统管理员登录ID */
	String USER_ADMIN = "admin";
	
	/** 系统管理员角色名*/
	String ROLE_ADMIN = "administrator";
	
	/**
	 * 当前用户菜单
	 */
	String CURRENT_MENU = "menus";
	/**
	 * 当前菜单的URL
	 */
	String CURRENT_MENU_HREF = "menuHref";
}
