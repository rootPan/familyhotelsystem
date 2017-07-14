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
package com.FamilyHotelManageSystem.sunsdk.swing;

import javax.swing.*;
import javax.swing.plaf.metal.MetalLookAndFeel;
import java.awt.*;

import com.FamilyHotelManageSystem.sunsdk.swing.Theme.*;


public class sunswing {
	
	//窗口外观风格常量
	public static final int SYSTEM_STYLE = '0';
	public static final int JAVA_STYLE	 = '1';
	public static final int METAL_STYLE	 = '2';
	
	/**=======================================================================**
	 *		[## private sunswing() {} ]:		构造函数
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：private
	 *			功能   ：防止实例化sunswing对象
	 **=======================================================================**
	 */
	private sunswing() {
	}
	
	/**=======================================================================**
	 *		[## public static void setWindowStyle (int style) {} ]:	
	 *			参数   ：int,表示代表风格种类的常量(见类头常量)
	 *			返回值 ：无
	 *			修饰符 ：public static 可以不实例化对象而直接调用方法
	 *			功能   ：设置窗口风格
	 **=======================================================================**
	 */
	public static void setWindowStyle (char style) {
		try {
			switch (style) {
				case '0':
					UIManager.setLookAndFeel ("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
					break;
				case '1':
					UIManager.setLookAndFeel ("javax.swing.plaf.metal.MetalLookAndFeel");
					break;
				case '2':
					UIManager.put ("swing.boldMetal", Boolean.FALSE);
					//可设置对话框外观
					JDialog.setDefaultLookAndFeelDecorated (true);
					//可设置设置窗口外观
					JFrame.setDefaultLookAndFeelDecorated (true);
					Toolkit.getDefaultToolkit().setDynamicLayout (true);
					System.setProperty ( "sun.awt.noerasebackground", "true");
					UIManager.setLookAndFeel (new MetalLookAndFeel());
					//设置窗口色调主题
					MetalLookAndFeel.setCurrentTheme(new DarkGoldMetalTheme());
					UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
			}//End switch (style)
	    }
	    catch (Exception ex) {
	    	ex.printStackTrace();
	    }//End try
	}
	
	/**=======================================================================**
	 *		[## public static void setWindowCenter(Component cp) {} ]:	
	 *			参数   ：Component对象,表示要居中的窗口
	 *			返回值 ：无
	 *			修饰符 ：public static 可以不实例化对象而直接调用方法
	 *			功能   ：设置窗口在屏幕居中
	 **=======================================================================**
	 */
	public static void setWindowCenter(Component cp) {
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		cp.setLocation (screenSize.width / 2 - (cp.getWidth() / 2), 
						screenSize.height / 2 - (cp.getHeight() / 2));
	}
	
}
