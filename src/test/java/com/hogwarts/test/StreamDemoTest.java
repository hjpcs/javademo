package com.hogwarts.test;

import org.junit.Test;

import java.io.*;

public class StreamDemoTest {

    @Test
    public void fun1() throws Exception {
        FileInputStream fis = new FileInputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\a.txt");
        int num=0;
        while ((num=fis.read()) != -1) {
            System.out.print((char)num);
        }

    }

    @Test
    public void fun2() throws Exception {
        FileOutputStream fos = new FileOutputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\c.txt");
        fos.write("nature自然".getBytes());
        fos.flush();
        fos.close();
    }

    @Test
    public void fun3() throws Exception {
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(new File("D:\\idea\\project\\javademo\\src\\main\\resources\\b.txt")));
        byte[] bt = new byte[1024*10];
        int num=0;
        while ((num=bis.read(bt)) != -1) {
            System.out.println(new String(bt, 0, num));
        }
        bis.close();
    }

    @Test
    public void fun4() throws Exception {
        BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\d.txt"));
        bos.write("dva爱你哟".getBytes());
        bos.flush();
        bos.close();
    }
}
