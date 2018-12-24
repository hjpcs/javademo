package com.hogwarts.test;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.junit.Test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ExcelDemoTest {
    @Test
    public void excelWrite() {
        //创建一个excel文件
        HSSFWorkbook wb = new HSSFWorkbook();

        //创建一个sheet页
        HSSFSheet sheet = wb.createSheet("firstsheet");

        //创建行
        HSSFRow row = sheet.createRow(0);

        //写入数据
        row.createCell(0).setCellValue("悟空-悟饭-悟天");
        row.createCell(1).setCellValue(26);
        row.createCell(2).setCellValue(true);

        //写入小数
        HSSFCell cell = row.createCell(3);
        cell.setCellValue(6457.45);
        HSSFCellStyle cellStyle = wb.createCellStyle();
        cellStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("0.00"));
        cell.setCellStyle(cellStyle);

        //写入日期
        HSSFCell cell1 = row.createCell(4);
        HSSFCreationHelper creationHelper = wb.getCreationHelper();
        HSSFCellStyle dateCeilStyle = wb.createCellStyle();
        dateCeilStyle.setDataFormat(creationHelper.createDataFormat().getFormat("yyyy-MM-dd"));
        cell1.setCellValue(new Date());
        cell1.setCellStyle(dateCeilStyle);

        FileOutputStream out = null;
        try {
            out = new FileOutputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\excel.xls");
            wb.write(out);
            out.close();
        } catch(Exception e) {
            System.out.println(e.getMessage());
        } finally {
            System.out.println("写入完毕");
        }
    }

    @Test
    public void readExcel() throws Exception {
        FileInputStream fis =new FileInputStream("D:\\idea\\project\\javademo\\src\\main\\resources\\excel.xls");
        POIFSFileSystem fs = new POIFSFileSystem(fis);
        //创建工作簿
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);

        if (sheet == null) {
            return;
        } else {
            for (int i=0; i<=sheet.getLastRowNum(); i++) { //遍历行
                HSSFRow row = sheet.getRow(i);
                if (row == null) {
                     continue;
                } else {
                    for (int j=0; j<=row.getLastCellNum(); j++) { //遍历行的每一列
                        HSSFCell cell = row.getCell(j);
                        if (cell == null) {
                            continue;
                        } else {
                            String str="";
                            if (cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) { //数值型转换为string
                                if (HSSFDateUtil.isCellDateFormatted(cell)) { //如果是日期类型
                                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                                    str = sdf.format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue()));
                                    //System.out.println(str);
                                } else {
                                    str = String.valueOf(cell.getNumericCellValue());
                                    //System.out.println(str);
                                }

                            } else if (cell.getCellType() == HSSFCell.CELL_TYPE_BOOLEAN){ //布尔型转换为string
                                str = String.valueOf(cell.getBooleanCellValue());
                                //System.out.println(str);
                            } else {
                                str = cell.getStringCellValue();
                                //System.out.println(str);
                            }

                            if (j==2) {
                                str=str.toUpperCase(); //小写变大写
                            }
                            if (j==1) {
                                str=str.substring(0, str.indexOf(".")); //截取字符串
                            }
                            System.out.println(str);
                        }
                    }
                }
            }
        }
    }
}
