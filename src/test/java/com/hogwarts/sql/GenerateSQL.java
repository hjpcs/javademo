package com.hogwarts.sql;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.junit.Test;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class GenerateSQL {

    public void writeToFile(String path, String str) throws Exception {
        BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path, true));
        bos.write(str.getBytes());
        bos.flush();
        bos.close();
    }

    @Test
    public void generateMaxAndMin() throws Exception {
        FileInputStream fis =new FileInputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\sql.xls");
        POIFSFileSystem fs = new POIFSFileSystem(fis);
        //创建工作簿
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);

        if (sheet == null) {
            return;
        } else {
            for (int i=0; i<=sheet.getLastRowNum(); i++) { //遍历行
                String str;
                HSSFRow row = sheet.getRow(i);
                if (row == null) {
                    continue;
                } else {

                    HSSFCell cell0 = row.getCell(0);
                    HSSFCell cell1 = row.getCell(1);
                    HSSFCell cell2 = row.getCell(2);

                    if (cell0 == null || cell1 == null || cell2 == null) {
                        continue;
                    } else if (cell0.getStringCellValue().contains("近一月")){
                        str = "select '"+cell0.getStringCellValue().trim()+"' as name, " +
                                "max("+cell2.getStringCellValue().trim()+") as max, " +
                                "min("+cell2.getStringCellValue().trim()+") as min " +
                                "from "+cell1.getStringCellValue().trim()+
                                " where interval_type=1 union\n";
                    } else if (cell0.getStringCellValue().contains("近三月")){
                        str = "select '"+cell0.getStringCellValue().trim()+"' as name, " +
                                "max("+cell2.getStringCellValue().trim()+") as max, " +
                                "min("+cell2.getStringCellValue().trim()+") as min " +
                                "from "+cell1.getStringCellValue().trim()+
                                " where interval_type=2 union\n";
                    } else if (cell0.getStringCellValue().contains("近半年")){
                        str = "select '"+cell0.getStringCellValue().trim()+"' as name, " +
                                "max("+cell2.getStringCellValue().trim()+") as max, " +
                                "min("+cell2.getStringCellValue().trim()+") as min " +
                                "from "+cell1.getStringCellValue().trim()+
                                " where interval_type=3 union\n";
                    } else if (cell0.getStringCellValue().contains("近一年")){
                        str = "select '"+cell0.getStringCellValue().trim()+"' as name, " +
                                "max("+cell2.getStringCellValue().trim()+") as max, " +
                                "min("+cell2.getStringCellValue().trim()+") as min " +
                                "from "+cell1.getStringCellValue().trim()+
                                " where interval_type=4 union\n";
                    } else {
                        str = "select '"+cell0.getStringCellValue().trim()+"' as name, " +
                                "max("+cell2.getStringCellValue().trim()+") as max, " +
                                "min("+cell2.getStringCellValue().trim()+") as min " +
                                "from "+cell1.getStringCellValue().trim()+" union\n";
                    }
                }
                String path = "D:\\idea\\project\\javademo\\src\\main\\resources\\script.sql";
                writeToFile(path, str);
            }
        }
    }

    @Test
    public void generateDict() throws Exception {
        FileInputStream fis =new FileInputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\dict.xls");
        POIFSFileSystem fs = new POIFSFileSystem(fis);
        //创建工作簿
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);

        if (sheet == null) {
            return;
        } else {
            for (int i=0; i<=sheet.getLastRowNum(); i++) { //遍历行
                String str="";
                HSSFRow row = sheet.getRow(i);
                if (row == null) {
                    continue;
                } else {

                    HSSFCell cell0 = row.getCell(0);
                    HSSFCell cell1 = row.getCell(1);
                    HSSFCell cell2 = row.getCell(2);

                    if (cell0 == null || cell1 == null || cell2 == null) {
                        continue;
                    } else if (cell0.getStringCellValue().contains("近一月")){
                        str = "select distinct("+cell2.getStringCellValue().trim()+") as '" +
                                cell0.getStringCellValue().trim()+"' from " +
                                cell1.getStringCellValue().trim()+" where interval_type=1;\n";
                    } else if (cell0.getStringCellValue().contains("近三月")){
                        str = "select distinct("+cell2.getStringCellValue().trim()+") as '" +
                                cell0.getStringCellValue().trim()+"' from " +
                                cell1.getStringCellValue().trim()+" where interval_type=2;\n";
                    } else if (cell0.getStringCellValue().contains("近半年")){
                        str = "select distinct("+cell2.getStringCellValue().trim()+") as '" +
                                cell0.getStringCellValue().trim()+"' from " +
                                cell1.getStringCellValue().trim()+" where interval_type=3;\n";
                    } else if (cell0.getStringCellValue().contains("近一年")){
                        str = "select distinct("+cell2.getStringCellValue().trim()+") as '" +
                                cell0.getStringCellValue().trim()+"' from " +
                                cell1.getStringCellValue().trim()+" where interval_type=4;\n";
                    } else {
                        str = "select distinct("+cell2.getStringCellValue().trim()+") as '" +
                                cell0.getStringCellValue().trim()+"' from " +
                                cell1.getStringCellValue().trim()+";\n";
                    }
                }
                String path = "D:\\idea\\project\\javademo\\src\\main\\resources\\dict.sql";
                writeToFile(path, str);
            }
        }
    }
}
