package itools.utils;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.xssf.streaming.SXSSFCell;
import org.apache.poi.xssf.streaming.SXSSFRow;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

public class PoiUtil {
	
	
	
	/**
	 * 
	 * 功能 :创建单元格
	
	 * 开发：wuyechun 2016-6-24
	
	 * @param row
	 * @param style
	 * @param cellValue
	 */
	public static void createCell(SXSSFRow row,int column,CellStyle style,String cellValue){
		SXSSFCell cell = row.createCell(column);
		cell.setCellStyle(style);
        cell.setCellValue(cellValue);
	}
	
	/**
	 * 
	 * 功能 :单元格样式(标题)
	
	 * 开发：wuyechun 2016-6-24
	
	 * @param workbook
	 * @return
	 */
	public static CellStyle createTitleStyle(SXSSFWorkbook  workbook){
		CellStyle style = workbook.createCellStyle();
		//上边框
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		//左边框
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		//有边框
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		//下边框
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		
		style.setTopBorderColor(HSSFColor.BLACK.index);
		style.setLeftBorderColor(HSSFColor.BLACK.index);
		
		Font font  = workbook.createFont(); 
		//字号     
		font.setFontHeightInPoints((short) 12); 
		//加粗
		font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		style.setFont(font);
		//左右居中
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);   
		//上下居中 
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		style.setFillBackgroundColor(HSSFColor.LIGHT_CORNFLOWER_BLUE.index);     

		
		return style;
	}
	
	
	/**
	 * 
	 * 功能 :单元格样式（数据单元格）
	
	 * 开发：wuyechun 2016-6-24
	
	 * @param workbook
	 * @return
	 */
	public static CellStyle createDataStyle(SXSSFWorkbook  workbook){
		CellStyle style = workbook.createCellStyle();
		//上边框
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		//左边框
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		//有边框
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		//下边框
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		
		style.setTopBorderColor(HSSFColor.BLACK.index);
		style.setLeftBorderColor(HSSFColor.BLACK.index);
		
		Font font  = workbook.createFont(); 
		//字号     
		font.setFontHeightInPoints((short) 11); 
		//正常
		font.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);
		style.setFont(font); 
		
		
		
		return style;
	}
	
	

	/**
	 * 上下居中
	 * @param workbook
	 * @return
	 */
	public static CellStyle createDataItemStyle(SXSSFWorkbook  workbook){
		CellStyle style = workbook.createCellStyle();
		//上边框
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		//左边框
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		//有边框
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		//下边框
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		//左右居中
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);   
		//上下居中 
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		
		style.setTopBorderColor(HSSFColor.BLACK.index);
		style.setLeftBorderColor(HSSFColor.BLACK.index);
		
		Font font  = workbook.createFont(); 
		//字号     
		font.setFontHeightInPoints((short) 11); 
		//正常
		font.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);
		style.setFont(font); 
		
		
		
		return style;
	}


}
