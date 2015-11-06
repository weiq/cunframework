package org.cunframework.web.ipro.personal.message.exception;

import org.cunframework.modules.common.exception.BaseException;

/**
 */
public class MessageException extends BaseException {

    public MessageException(String code, Object[] args) {
        super("personal", code, args);
    }
}
