package com.hogwarts.file;

import java.io.*;

public class FolderCopy {

    public static void folderCopy(String src, String des) throws Exception {
        //初始化文件复制
        File copy = new File(src);
        //把文件内容放进数组
        File[] fs = copy.listFiles();
        //初始化文件粘贴
        File paste = new File(des);
        //判断是否有这个文件，没有则创建
        if (!paste.exists()) {
            paste.mkdirs();
        }
        //遍历文件及文件夹
        for (File f : fs) {
            if (f.isFile()) {
                copy(f.getPath(), des + "\\" + f.getName());  //调用复制方法
            } else if (f.isDirectory()) {
                //继续调用，递归，自己调用自己可以实现复制文件夹里的文件夹
                folderCopy(f.getPath(), des + "\\" + f.getName());
            }
        }
    }

    public static void copy(String src, String des) throws Exception {
        //io流
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(src));
        BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(des));
        int i = -1; //记录获取长度
        byte[] bt = new byte[1024];  //缓冲区
        while ((i = bis.read(bt)) != -1) {
            bos.write(bt, 0, i);
        }
        bis.close();
        bos.close();
    }

    public static void main(String[] args) throws Exception {
        folderCopy("D:\\idea\\project\\javademo\\src\\main\\resources", "D:\\idea\\project\\javademo\\src\\main\\resources\\res_cp");
        System.out.println("文件复制完成");
    }
}
