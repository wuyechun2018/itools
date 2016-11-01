Itools 适合Java初学者,演示了Java-web开发过程中的一些经典示例,它
是一个Maven构建的项目,系统中需要安装配置Jdk和Maven。



内容：
1、包 package itools.utils
1)DbUtil.java  使用JDBC连接数据库,并进行简单查询；






版本：
1、20161021-V0.1 Become a Maven web project;    
2、20161022-V0.2 Become a SpringMVC project; 
3、20161023-V0.3 Add Jquery EasyUI; 
3、20161024-V0.4 Add Echarts; 









问题： 
1、Jetty文件锁定问题  
Save could not be completed.Try File > Save As... if the problem persists.   
Reason:  
Could not write file：... ...  
解决方式：  
修改maven仓库中对应版本的jetty的jar  
(repos\org\eclipse\jetty\jetty-webapp\9.3.13.v20161014\jetty-webapp-  9.3.13.v20161014.jar)包中org/eclipse/jetty/webapp/webdefault.xml 文件配置项   
<init-param>  
      <param-name>useFileMappedBuffer</param-name>  
      <param-value>true</param-value>  
</init-param>  
true改为false;

2、返回Json数据错误   
 No converter found for return value of type: class itools.model.User  
 
