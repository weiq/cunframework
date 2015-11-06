/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.internals;

import java.io.ByteArrayInputStream;

import org.apache.commons.io.IOUtils;

/**
 * image abstraction proxy
 */
public abstract class PureImageProxy {
    public abstract PureImage FromStream(ByteArrayInputStream stream);

    public final PureImage FromArray(byte[] data) {
        PureImage pi = null;
        
        ByteArrayInputStream bin = new ByteArrayInputStream(data);

        pi = FromStream(bin);
        pi.Data = bin;
        
        IOUtils.closeQuietly(bin);
        return pi;
    }
}