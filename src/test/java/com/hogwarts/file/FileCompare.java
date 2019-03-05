package com.hogwarts.file;

import java.io.*;

public class FileCompare {

    public static final String FILE_PATH = "D:\\idea\\project\\javademo\\src\\main\\resources\\cmp1.txt";
    public static final String COMPARE_FILE_PATH = "D:\\idea\\project\\javademo\\src\\main\\resources\\cmp2.txt";
    public static final String RESULT_FILE_PATH ="D:\\idea\\project\\javademo\\src\\main\\resources\\result.txt";

    public static void main(String[] args) throws Exception {
        File file = new File(FILE_PATH);
        File compareFile = new File(COMPARE_FILE_PATH);
        BufferedReader br = null;
        BufferedReader cbr = null;
        BufferedWriter rbw =null;
        try {
            br = new BufferedReader(new FileReader(file));
            cbr = new BufferedReader(new FileReader(compareFile));
            cbr.mark(90000000);
            rbw = new BufferedWriter(new FileWriter(RESULT_FILE_PATH));
            String lineText = null;
            while ((lineText = br.readLine()) != null) {
                String searchText = lineText.trim();
                searchAndSign(searchText, cbr, rbw);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e){
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    if (cbr != null && rbw != null) {
                        try {
                            cbr.close();
                            rbw.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    public static void searchAndSign(String searchText, BufferedReader cbr, BufferedWriter rbw) throws Exception {
        String lineStr = "-\n";
        if (searchText == null) {
            return;
        }
        if ("".equals(searchText)) {
            rbw.write(lineStr);
            return;
        }
        String lineText = null;
        int lineNum = 1;
        while ((lineText = cbr.readLine()) != null) {
            String compareLine = lineText.trim();
            if (searchText.equals(compareLine)) {
                lineStr ="equal:" + lineNum + "\n";
                break;
            } else {
                lineStr = searchText + "\n";
            }
            lineNum++;
        }
        rbw.write(lineStr);
        cbr.reset();
    }

}
