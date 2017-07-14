/**
 *##############################################################################
 *
 *	[ ��Ŀ��      ]  : Family�Ƶ����ϵͳ
 *  [ ��˾��      ]  : ����ְҵ����ѧԺ
 *  [ ������      ]  : ����
 *  [ ������      ]  : ����
 *	----------------------------------------------------------------------------
 *	##--------------------------------------------------------------------------
 *  			 ��Ȩ����(c) 2016,  FamilyHotelManageSystem Corporation
 *	--------------------------------------------------------------------------##
 *
 *##############################################################################
 */
package com.FamilyHotelManageSystem.sunsdk.swing;

import javax.swing.*;
import javax.swing.border.*;
import java.awt.*;
import java.awt.event.*;


public class TJTextField extends JTextField implements MouseListener, FocusListener {
	
	private int thickness = 1;
	
	public TJTextField() {
		setStyle();
	}
	
	public TJTextField(int col) {
		super(col);
		setStyle();
	}
	
	public TJTextField(String text) {
		super(text);
		setStyle();
	}
	
	public TJTextField(String text, int column) {
		super(text, column);
		setStyle();
	}
	
	public void setLineWidth(int l) {
		thickness = l;
		this.setBorder(new LineBorder(new Color(159, 145, 118), thickness));
	}
	
	private void setStyle() {
		this.setForeground(new Color( 87,  87,  47));
		this.setBackground(new Color(248, 242, 230));
		this.setBorder(new LineBorder(new Color(159, 145, 118), thickness));
		this.addMouseListener(this);
		this.addFocusListener(this);
	}
	
	/**=======================================================================**
	 *			MouseListener ����
	 **=======================================================================**
	 */
	public void mouseClicked (MouseEvent me) {
	}

	public void mousePressed (MouseEvent me) {
	}

	public void mouseReleased(MouseEvent me) {
	}

	public void mouseEntered (MouseEvent me) {
		this.setBorder(new LineBorder(new Color(241, 171, 84), thickness));
	}

	public void mouseExited (MouseEvent me) {
		this.setBorder(new LineBorder(new Color(159, 145, 118), thickness));
	}
	
	/**=======================================================================**
	 *			FocusListener ����
	 **=======================================================================**
	 */
	public void focusGained (FocusEvent fe) {
		this.setBorder(new LineBorder(new Color(241, 171, 84), thickness));
	}
	
	public void focusLost (FocusEvent fe) {
		this.setBorder(new LineBorder(new Color(159, 145, 118), thickness));
	}
}