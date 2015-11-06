package org.cunframework.web.ipro.maintain.notification.exception;

import org.cunframework.modules.common.exception.BaseException;


/**
 */
public class TemplateException extends BaseException {

    public TemplateException(final String code, final Object[] args) {
        super("notification", code, args);
    }
}
