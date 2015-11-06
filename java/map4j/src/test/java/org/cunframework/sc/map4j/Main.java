package org.cunframework.sc.map4j;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.xnio.channels.Channels;
import org.xnio.channels.StreamSourceChannel;
import org.xnio.conduits.ConduitReadableByteChannel;
import org.xnio.conduits.StreamSourceChannelWrappingConduit;

public class Main {
    
    public static void main(String[] args) throws Exception {
//        RandomAccessFile aFile = new RandomAccessFile("D:\\mapTile\\aa.txt", "rw");
//        FileChannel inChannel = aFile.getChannel();
//        
//        String str = read(inChannel);
//        
        //System.out.println(str);
    }
    
    final static Charset CHARSET = Charset.forName("utf-8");

    public static String read(FileChannel inChannel) throws IOException {
        final int capacity = 1024;
        
        ByteArrayOutputStream os = new ByteArrayOutputStream(capacity);
        ByteBuffer buf = ByteBuffer.allocate(capacity);
        while (inChannel.read(buf) != -1) {
            buf.flip();
            os.write(buf.array(),0,buf.remaining());
            buf.clear();
            System.out.println(new String(buf.array(), CHARSET));
        }

        return new String(os.toByteArray(), CHARSET);
    }
}
