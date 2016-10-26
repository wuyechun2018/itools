package itools.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.xssf.streaming.SXSSFRow;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import itools.model.User;
import itools.utils.PoiUtil;
import itools.utils.ToolsConstant;

/**
 * 
 * SpringMVC 入口Controller
 * @desc: itools
 * @author: wyc
 * @createTime: 2016年10月25日 上午10:51:24
 * @history:
 * @version: v1.0
 */
@Controller
public class IndexController {
	
	/**
	 * 
	 * SpringMVC 入口方法
	 * @author: wyc
	 * @createTime: 2016年10月25日 上午10:51:41
	 * @history:
	 * @return String
	 */
	@RequestMapping({"/","/login","/welcome"})
	public String index(){
		return "welcome";
	}
	
	/**
	 * 
	 * SpringMVC返回JSON数据
	 * @author: wyc
	 * @createTime: 2016年10月25日 下午3:55:43
	 * @history:
	 * @return Object
	 */
	@RequestMapping({"/getJsonData"})
	@ResponseBody
	public Object getJsonData(){
		User u=new User();
		u.setName("itools 用户");
		u.setPassword("123456");
		return u;
	}
	
	
	/**
	 * 
	 * SpringMVC返回JSON数据-List
	 * @author: wyc
	 * @createTime: 2016年10月25日 下午3:55:43
	 * @history:
	 * @return Object
	 */
	@RequestMapping({"/getListJson"})
	@ResponseBody
	public Object getListJson(){
		User u=new User();
		u.setName("itools 用户");
		u.setPassword("123456");
		User u2=new User();
		u.setName("itools 用户2");
		u.setPassword("7654321");
		
		List<User> list=new ArrayList<User>();
		list.add(u);
		list.add(u2);
		return list;
	}
	
	/**
	 * 
	 * 使用POI下载Excel
	 * @author: wyc
	 * @createTime: 2016年10月26日 下午4:31:35
	 * @history:
	 * @param request
	 * @param response
	 * @throws IOException void
	 */
	@RequestMapping("/downloadExcel")
	public void getExcel(HttpServletRequest request,HttpServletResponse response) throws IOException {
		// 如果需要支持xlsx格式，需要使用org.apache.poi.xssf.usermodel.XSSFWorkbook,
		// 不能使用org.apache.poi.hssf.usermodel.HSSFWorkbook

		String fileName =new SimpleDateFormat(ToolsConstant.SIMPELE_DATE_FORMAT).format(new Date())+ ".xlsx";
		String finalFileName = URLEncoder.encode(fileName, "UTF8");

		// excel
		response.setContentType("application/vnd.ms-excel;charset=UTF-8");
		response.setHeader("Content-Disposition", "attachment;filename="+ finalFileName);

		// 声明一个工作薄
		// HSSFWorkbook workbook = new HSSFWorkbook();
		SXSSFWorkbook workbook = new SXSSFWorkbook();

		CellStyle titleStyle = PoiUtil.createTitleStyle(workbook);
		CellStyle dataStyle = PoiUtil.createDataStyle(workbook);

		// 生成一个表格
		SXSSFSheet sheet = workbook.createSheet("sheet1");
		// 设置表格默认列宽度为15个字节
		// sheet.setDefaultColumnWidth((short) 15);
		String[] headers = { "姓名", "密码" };
		// 产生表格标题行
		SXSSFRow Titlerow = sheet.createRow(0);
		for (short i = 0; i < headers.length; i++) {
			PoiUtil.createCell(Titlerow, i, titleStyle, headers[i]);
		}

		List<User> list = new ArrayList<User>();
		list.add(new User("zhangsan","123456"));
		list.add(new User("lisi","123"));
		for (int j = 0; j < list.size(); j++) {
			SXSSFRow datarow = sheet.createRow(j + 1);
			User u =  list.get(j);
			PoiUtil.createCell(datarow, 0, dataStyle, u.getName());
			PoiUtil.createCell(datarow, 1, dataStyle,u.getPassword());

		}
		workbook.write(response.getOutputStream());
	}
	
	
	
	
	
	/**
	 * 
	 * 公用方法,访问views下对应模块的指定页面
	 * @author: wyc
	 * @createTime: 2016年10月25日 上午11:13:55
	 * @history:
	 * @param module
	 * @param page
	 * @return String
	 */
	@RequestMapping(value = "views/{module}/{page}")
	public String getDefinedPage(@PathVariable("module") String module,@PathVariable("page") String page) {
		return module+"/"+page;
	}

}
