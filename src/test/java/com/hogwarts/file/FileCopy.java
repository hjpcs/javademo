package com.hogwarts.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public class FileCopy {

    public static void fileCopy(File source, File dest) throws IOException {
        FileChannel input = null;
        FileChannel output = null;
        try{
            input = new FileInputStream(source).getChannel();
            output = new FileOutputStream(dest).getChannel();
            output.transferFrom(input, 0, input.size());
        } finally {
            input.close();
            output.close();
        }
    }

    public static void main(String[] args) throws InterruptedException, IOException {
        File source = new File("C:\\Users\\hejp25215\\Downloads\\S.N.R.Rikon\\SP.rmvb");
        File dest = new File("C:\\Users\\hejp25215\\Downloads\\S.N.R.Rikon\\SP_cp.rmvb");
        long start = System.nanoTime();
        fileCopy(source, dest);
        long end = System.nanoTime();
        System.out.println("use time:"+(end - start));
    }

}
