package org.cunframework.web.ipro.admin.user.exception;

import org.cunframework.modules.common.exception.BaseException;


/**
 */
public class UserException extends BaseException {

    public UserException(String code, Object[] args) {
        super("user", code, args, null);
    }

}
