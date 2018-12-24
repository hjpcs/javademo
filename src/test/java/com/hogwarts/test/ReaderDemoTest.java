package com.hogwarts.test;

import org.junit.Test;

import java.io.*;

public class ReaderDemoTest {

    @Test
    public void fun() throws Exception {
        FileReader fr=new FileReader("D:\\idea\\project\\javademo\\src\\main\\resources\\a.txt");
        int num=0;
        while((num=fr.read()) != -1) {
            System.out.print((char) num);
        }
        fr.close();
    }

    @Test
    public void fun1() {
        FileWriter fw = null;
        try {
            fw=new FileWriter("D:\\idea\\project\\javademo\\src\\main\\resources\\b.txt",true);
            //默认为覆盖，加上参数true表示追加
            fw.write("nice to meet you!\n");
            fw.write("很高兴遇见你！");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Test
    public void fun2() throws Exception {
        //InputStreamReader isr=new InputStreamReader();
        BufferedReader bfr=new BufferedReader(new FileReader("D:\\idea\\project\\javademo\\src\\main\\resources\\a.txt"));
        String data;
        while ((data=bfr.readLine()) != null) {
            System.out.println(data);
        }
        bfr.close();
    }

    @Test
    public void fun3() throws Exception {
        BufferedWriter  bfw=new BufferedWriter(new FileWriter("D:\\idea\\project\\javademo\\src\\main\\resources\\b.txt",true));
        bfw.newLine();
        bfw.write("hello worldhhh");
        bfw.flush();
        bfw.close();
    }
}
