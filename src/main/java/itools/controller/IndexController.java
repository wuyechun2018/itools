package itools.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
