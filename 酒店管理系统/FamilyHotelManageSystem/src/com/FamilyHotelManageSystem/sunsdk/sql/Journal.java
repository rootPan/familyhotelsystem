/**
 *##############################################################################
 *
 *	[ 项目名      ]  : Family酒店管理系统
 *  [ 公司名      ]  : 湖北职业技术学院
 *  [ 制作人      ]  : 张盼
 *  [ 测试人      ]  : 张盼
 *	----------------------------------------------------------------------------
 *	##--------------------------------------------------------------------------
 *  			 版权所有(c) 2016,  FamilyHotelManageSystem Corporation
 *	--------------------------------------------------------------------------##
 *
 *##############################################################################
 */
package com.FamilyHotelManageSystem.sunsdk.sql;

import java.util.*;

import com.FamilyHotelManageSystem.sunsdk.sql.sunsql;


public class Journal {
	
	public static final int TYPE_LG = 0;		//操作员登录
	public static final int TYPE_RT = 1;		//房间类型操作
	public static final int TYPE_RI = 2;		//房间信息操作
	public static final int TYPE_US = 3;		//客户信息操作
	public static final int TYPE_CZ = 4;		//操作员设置
	public static final int TYPE_JF = 5;		//计费设置
	public static final int TYPE_DA = 6;		//数据操作
	
	public static String brief[] = { "操作员登录", "房间类型操作", "房间信息操作", 
									 "客户信息操作", "操作员设置","计费设置","数据操作"};
	
	/**=======================================================================**
	 *		[## private Journal() {} ]: 					构造函数
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：private
	 *			功能   ：防止本类不能被实例化
	 **=======================================================================**
	 */
	private Journal() {
	}
	
	/**=======================================================================**
	 *		[## public static String getNowDTime() {} ]: 	返回当前日期时间
	 *			参数   ：无
	 *			返回值 ：String 对象表示当前系统时间
	 *			修饰符 ：public
	 *			功能   ：返回当前日期时间
	 **=======================================================================**
	 */
	public static String getNowDTime() {
		GregorianCalendar gc = new GregorianCalendar();
		return gc.getTime().toLocaleString();
	}
	
	/**=======================================================================**
	 *		[## public static boolean writeJournalInfo(String user, String content,int infoIndex) {} ]:
	 *			参数   ：String user	表示当前操作员
	 *					 String content	表示操作内容
	 *					 int infoIndex	操作类型
	 *			返回值 ：boolean
	 *			修饰符 ：public
	 *			功能   ：记录操作日志
	 **=======================================================================**
	 */
	public static boolean writeJournalInfo(String user, String content,int infoIndex) {
		String dt = getNowDTime();						//获得当前时间
		content   = user + " 在 " + dt + " " + content;	//操作内容
		long pk	  = sunsql.getPrimaryKey();				//获得主键
		
		String sqlCode = "insert into record(pk,time,operator,brief,content) values(" + 
		pk + ",'" + dt + "','" + user + "','" + brief[infoIndex] + "','" + content + "')";
		if(sunsql.executeUpdate(sqlCode) == 0) {	//写操作日志
			return false;
		}//Endif
		return true;
	}
	
}