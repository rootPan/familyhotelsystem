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
import java.awt.event.*;


public class TJList extends JList implements MouseListener {
	
	public TJList() {
		//设置显示的行数
		this.setVisibleRowCount(5);
		//设置前景色和后景色
		this.setForeground(new Color(141, 131, 106));
		this.setBackground(new Color(244, 238, 227));
		//加鼠标监听
		this.addMouseListener(this);
	}
	
	/**=======================================================================**
	 *			MouseListener 监听
	 **=======================================================================**
	 */
	public void mouseClicked (MouseEvent me) {
	}

	public void mousePressed (MouseEvent me) {
	}

	public void mouseReleased(MouseEvent me) {
	}

	public void mouseEntered (MouseEvent me) {
		this.setForeground(new Color( 87,  87,  47));
		this.setBackground(new Color(248, 242, 230));
	}

	public void mouseExited (MouseEvent me) {
		this.setForeground(new Color(141, 131, 106));
		this.setBackground(new Color(244, 238, 227));
	}
}