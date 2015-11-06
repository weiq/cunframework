/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.web.ipro.extra.web.taglib;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.cunframework.modules.common.Constants;
import org.cunframework.modules.utils.ResourceUtil;
import org.cunframework.web.ipro.admin.resource.entity.tmp.Menu;

/**
 * 
 * <p/> 生成页面中使用的菜单
 * <p>User: weiq
 * <p>Date: 2015年7月6日 下午3:49:25 
 * <p>Version: 1.0
 */
public class MenuTag extends TagSupport {
    private static final long serialVersionUID = 1L;
    private String contextPath = "";
    private String url = "";
    private String[] urls;

    public int doStartTag() throws JspTagException {
        contextPath = (String)super.pageContext.getRequest().getAttribute(Constants.CONTEXT_PATH);
        url = (String)super.pageContext.getRequest().getAttribute(Constants.CURRENT_MENU_HREF);
        urls = url.split("/");
        if(urls.length>=3) //   /ipro/admin/index 如果小于3位 忽略
            this.urls = urls;
        return EVAL_PAGE;
    }

    public int doEndTag() throws JspTagException {
        try {
            JspWriter out = this.pageContext.getOut();
            out.print(end().toString());
            
        } catch (IOException e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }

    public StringBuffer end() { 
        StringBuffer sb = new StringBuffer();
        sb.append("<ul class='nav nav-pills nav-stacked nav-bracket'>");
        List<Menu> menus = (List<Menu>)super.pageContext.getRequest().getAttribute(Constants.CURRENT_MENU);
        int deps = 2; //因为urls 有意义的匹配是从第二位开始的
        getSubMenu(menus,sb,deps);
        sb.append("</ul>");
        return sb;
    }
    
    /**
     * 
     * @param menus
     * @param curUrl 当前url
     * @param sb
     * @return
     */
    public boolean getSubMenu(List<Menu> menus, StringBuffer sb, int deps){
        for(Menu menu : menus){
            boolean isActive = false;
            
            if(urls!=null && deps<urls.length && menu.getIdentity().equalsIgnoreCase(urls[deps])){
                isActive = true;
            }
            
            if(menu.isHasChildren()){
                sb.append("<li class='nav-parent");
                if(isActive){
                    sb.append(" nav-active active");
                }
                sb.append("'><a href='#'><i class='"+menu.getIcon()+"'></i> <span>"+menu.getName()+"</span></a>");
                sb.append(    "<ul class='children'");
                if(isActive){
                    sb.append(" style='display: block;'");
                }
                sb.append(">");
                getSubMenu(menu.getChildren(),sb,++deps);
                sb.append(    "</ul>");
                sb.append("</li>");
            }else{
                sb.append("<li");
                if(isActive){
                    sb.append(" class='active'");
                }
                sb.append("><a href='"+contextPath+menu.getUrl()+"'><i class='"+menu.getIcon()+"'></i> <span>"+menu.getName()+"</span></a></li>");
            }
        }
        return true;
    }
}
