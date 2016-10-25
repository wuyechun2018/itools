package itools.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import itools.model.User;

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
