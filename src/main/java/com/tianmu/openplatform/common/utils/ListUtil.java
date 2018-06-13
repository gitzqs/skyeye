package com.tianmu.openplatform.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.tianmu.openplatform.domain.Patrol;
import com.tianmu.manage.domain.User;

public class ListUtil {
	public static String IlistToString(List<Integer> list)
	{
		String result ="";
		for(int item : list){
		    result += Integer.toString(item) +',';
		}
		return result.substring(0, result.length() - 1);
	}
	
	public static User GetUser(List<User> users, int userId)
	{
		for(User item : users){
		    if(item.getId().equals(Integer.toString(userId)))
		    {
		    	return item;
		    }
		}
		return null;
	}
	
	public static String getNow()
	{
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(d);
	}
}