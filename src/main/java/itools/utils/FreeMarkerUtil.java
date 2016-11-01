package itools.utils;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreeMarkerUtil {
	
	private static FreeMarkerUtil instance;
	private Configuration config;
	String templatePath = "/resources/freeMarker/";
	
	
	/**
	 * 
	 * Do not needlessly re-create Configuration instances; it's expensive, 
	 *  among others because you lose the template cache. 
	 *  Configuration instances meant to be application-level singletons.
	 * @author: wyc
	 * @createTime: 2016年10月27日 下午2:50:14
	 * @history:
	 * @return FreeMarkerUtil
	 */
	public static FreeMarkerUtil getInstance() {
		if (instance == null) {
			instance = new FreeMarkerUtil();
		}
		return instance;
	}
	
	
	/**
	 * 
	 * @author: wyc
	 * @createTime: 2016年10月27日 下午2:49:26
	 * @history:
	 * @param request void
	 */
	private void configInstance(HttpServletRequest request) {
		if (this.config == null) {
			this.config = new Configuration(Configuration.VERSION_2_3_23);
			this.config.setDefaultEncoding("UTF-8");
			//this.config.setDirectoryForTemplateLoading(new File("/where/you/store/templates"));
			//注意此处设置了Template的basePath,为 itools/src/main/webapp/
			this.config.setServletContextForTemplateLoading(request.getSession().getServletContext(),templatePath);
		}
	}
	
	
	/**
	 * 
	 * 通过Template获取字符串
	 * @author: wyc
	 * @createTime: 2016年10月27日 下午2:47:42
	 * @history:
	 * @param request
	 * @param templateFileName 模板名称
	 * @param propMap  
	 * @return String
	 */
	public String getStrByTemplate(HttpServletRequest request,String templateFileName, Map<String, Object> propMap) {
		configInstance(request);
		StringWriter out = new StringWriter();
		Template tmp;
		try {
			//tmp = this.config.getTemplate(templateFileName);
			//解决在Jetty下显示正常,在Tomcat下乱码的情况
			tmp = this.config.getTemplate(templateFileName,"UTF-8");
			tmp.setEncoding("UTF-8");
			tmp.process(propMap, out);
		} catch (IOException e) {
			//logger.error("I/O 错误!", e);
			System.out.println("I/O错误！");
		} catch (TemplateException e) {
			System.out.println("模板错误!");
			//logger.error("模板错误!", e);
		}
		return out.getBuffer().toString();
	}

}
