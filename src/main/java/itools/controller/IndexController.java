package itools.controller;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.xssf.streaming.SXSSFRow;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import itools.model.User;
import itools.utils.FreeMarkerUtil;
import itools.utils.PoiUtil;
import itools.utils.ToolsConstant;
import itools.service.UserService;

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
	
	@Autowired
	private UserService userService;
	
	
	
	
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
	 * 文件上传
	 * @author: wyc
	 * @createTime: 2016年10月27日 上午9:10:36
	 * @history:
	 * @param file
	 * @param request
	 * @param response void
	 */
	@RequestMapping("/uploadFile")
	public void uploadFile(MultipartFile uploadFile, HttpServletRequest request,HttpServletResponse response){
		String fileName = uploadFile.getOriginalFilename();
		String realPath = request.getSession().getServletContext().getRealPath("/updload/");
		System.out.println(realPath);
		File tarFile = new File(realPath, fileName);
		if (!tarFile.exists()) {
			tarFile.mkdirs();
		}
		try {
			uploadFile.transferTo(tarFile);
			writeMsg(response,true,fileName+"上传至："+realPath+File.separator+fileName);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	/**
	 * 
	 * 多文件上传
	 * @author: wyc
	 * @createTime: 2016年10月27日 上午9:10:36
	 * @history:
	 * @param file
	 * @param request
	 * @param response void
	 * @throws IOException 
	 */
	@RequestMapping("/uploadMutiFile")
	public void uploadMutiFile(MultipartFile[] uploadFiles, HttpServletRequest request,HttpServletResponse response) throws IOException{
		for (MultipartFile uploadFile : uploadFiles) {
			String fileName = uploadFile.getOriginalFilename();
			String realPath = request.getSession().getServletContext().getRealPath("/updload/");
			File tarFile = new File(realPath, fileName);
			try {
				uploadFile.transferTo(tarFile);
				System.out.println(fileName+"上传至："+realPath+File.separator+fileName);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		writeMsg(response,true,"文件上传成功！");
	}
	
	
	/**
	 * 
	 * 输出
	 * @author: wyc
	 * @createTime: 2016年10月27日 上午9:12:07
	 * @history:
	 * @param response
	 * @param flag
	 * @param msg
	 * @throws IOException void
	 */
	public static void writeMsg(HttpServletResponse response,boolean flag,String msg) throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		Writer writer = response.getWriter();
		writer.write("{\"success\": \""+flag+"\",\"msg\":\'"+msg+"\'}");
	}
	
	
	/**
	 * 
	 * 获取用于Echarts展示的XML
	 * @author: wyc
	 * @createTime: 2016年10月27日 上午10:51:18
	 * @history: void
	 */
	@RequestMapping(value="/getChartXML",produces = "plain/text; charset=UTF-8")
	//@RequestMapping("/getChartXML")
	@ResponseBody
	public String getChartXML(HttpServletRequest request){
		Map<String,Object> propMap=new HashMap<String, Object>();
		String templateFileName="relation.ftl";
		String xml=FreeMarkerUtil.getInstance().getStrByTemplate(request, templateFileName, propMap);
		return xml;
	}
	
	
	/**
	 * 
	 * 从数据库中获取数据
	 * @author: wyc
	 * @createTime: 2016年11月10日 上午10:45:47
	 * @history:
	 * @param request
	 * @return String
	 */
	@RequestMapping(value="/getDataFromDb")
	@ResponseBody
	public Object getDataFromDb(HttpServletRequest request){
		List<User> list=userService.list();
		return list;
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
