package itools.controller;

import org.springframework.stereotype.Controller;
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

}
