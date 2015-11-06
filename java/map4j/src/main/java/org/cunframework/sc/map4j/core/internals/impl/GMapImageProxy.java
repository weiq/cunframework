/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.internals.impl;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.PureImageProxy;

/**
 * GMapImageProxy
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午4:44:03 
 * <p>Version: 1.0
 */
public class GMapImageProxy extends PureImageProxy {
    
    @Override
    public PureImage FromStream(ByteArrayInputStream stream) {
        GMapImage ret = null;
        try {
            ret = new GMapImage();
            ret.Data = stream;

            BufferedImage image = ImageIO.read(stream);
            ret.setImage(image);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ret;
    }

}
