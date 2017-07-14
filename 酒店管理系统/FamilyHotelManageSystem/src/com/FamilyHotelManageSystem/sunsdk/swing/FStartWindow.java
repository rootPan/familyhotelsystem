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
import java.awt.*;


public class FStartWindow extends JWindow {
	ImageIcon image;
	JLabel pic;
	
	//构造函数
	public FStartWindow(String picName, Frame f, int waitTime) {
		super(f);
		ImageIcon image = new ImageIcon(picName);
		JLabel pic      = new JLabel(image);
		
		this.getContentPane().add(pic, BorderLayout.CENTER);
		//调整图片大小到屏幕中央
		this.pack();
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		Dimension labelSize  = pic.getPreferredSize();
		
		setLocation(screenSize.width/2 - (labelSize.width/2), 
					screenSize.height/2 - (labelSize.height/2));

		final int PAUSE = waitTime;
		final Runnable closerRunner = new Runnable() {
			public void run() {
				setVisible(false);
				dispose();
				//System.exit(0);
			}
		};		//End closerRunner
		
		Runnable waitRunner = new Runnable() {
			public void run() {
				try {
					Thread.sleep(PAUSE);
					SwingUtilities.invokeAndWait(closerRunner);
				}
				catch(Exception e) {
					e.printStackTrace();
					// 能够捕获InvocationTargetException
					// 能够捕获InterruptedException
				}
			}
		};		//End waitRunner
		
		setVisible(true);
		Thread waitThread = new Thread(waitRunner, "SplashThread");
		waitThread.start();
	}
	
}