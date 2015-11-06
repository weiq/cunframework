package org.cunframework.web.ipro.maintain.notification.exception;

/**
 */
public class TemplateNotFoundException extends TemplateException {
    public TemplateNotFoundException(String templateName) {
        super("notification.template.not.found", new Object[] {templateName});
    }
}
