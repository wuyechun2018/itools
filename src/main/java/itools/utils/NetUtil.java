package itools.utils;

import java.io.InputStream;
import java.io.PrintStream;

import org.apache.commons.net.telnet.TelnetClient;

public class NetUtil {
	
	public static void main(String[]args){
		telnet("59.203.153.116",8011);
	}

	/**
	 * 
	 * Telnet 端口是否通
	 * @author: wyc
	 * @createTime: 2016年10月26日 下午4:43:31
	 * @history:
	 * @param ip
	 * @param port void
	 */
	public static void telnet(String ip, Integer port) {
		InputStream in;
		PrintStream out;
		try {
			TelnetClient telnetClient = new TelnetClient();
			telnetClient.connect(ip, port);
			in = telnetClient.getInputStream();
			out = new PrintStream(telnetClient.getOutputStream());
			
			//System.out.println(in.toString());
			
		} catch (Exception e) {
			System.out.println("[telnet] connect error: connect to [" + ip + ":" + port + "] fail!");
		}
	}

}
