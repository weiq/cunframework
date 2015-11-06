/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.internals.impl;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import javax.imageio.ImageIO;

import org.cunframework.sc.map4j.core.internals.PureImage;

import com.google.common.io.Files;

/**
 * map4j Image
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午4:40:28 
 * <p>Version: 1.0
 */
public class GMapImage extends PureImage{
    private BufferedImage image;

    public BufferedImage getImage() {
        return image;
    }

    public void setImage(BufferedImage image) {
        this.image = image;
    }
    
    public boolean Save(String filePath) {
        try {
            File file = new File(filePath);
            Files.createParentDirs(file);
            ImageIO.write(image, getFormat(Data), file);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean Save(String filePath, String format) {
        try {
            File file = new File(filePath);
            Files.createParentDirs(file);
            ImageIO.write(image, format, file);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static void main(String[] args) throws MalformedURLException, IOException {
        
    }
}
