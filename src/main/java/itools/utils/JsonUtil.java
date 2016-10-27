package itools.utils;

import java.util.List;

import itools.model.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonUtil {
	
	public static void main(String[]args){
		json();
		jsonArray();
	}
	
	

	public static void json(){
		 JSONObject jsonObj = new JSONObject();
		 jsonObj.put("name", "zhangsan");
		 jsonObj.put("password", "123");
	     System.out.println("1---"+jsonObj.toString());
	     //{"name":"zhangsan","password":"123"}
	     
	    User u=(User) JSONObject.toBean(jsonObj, User.class);
	    System.out.println(u.getName()+":"+u.getPassword());
	     
	     
	}
	
	private static void jsonArray() {
		JSONObject jsonObj = new JSONObject();
		 jsonObj.put("name", "zhangsan");
		 jsonObj.put("password", "123");
		 
		 JSONObject jsonObj2 = new JSONObject();
		 jsonObj2.put("name", "lisi");
		 jsonObj2.put("password", "789");
		 
		 JSONArray jsonArray = new JSONArray();
		 jsonArray.add(0, jsonObj);
		 jsonArray.add(1, jsonObj2);
		 System.out.println("2---"+jsonArray.toString());
		 
		 List<User> userList=(List<User>) jsonArray.toList(jsonArray, User.class);
		 for (User user : userList) {
			System.out.println(user.getName()+":"+user.getPassword());
		}
		
	}

}
