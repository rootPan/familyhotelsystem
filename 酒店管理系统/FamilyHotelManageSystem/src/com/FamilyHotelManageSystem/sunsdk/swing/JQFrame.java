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

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.ImageIcon;
import javax.swing.JFrame;

public class JQFrame extends JFrame implements MouseListener {
	
	private boolean winState = true;		//窗口伸缩标志
	private int sunWidth	 = 200;			//窗口默认宽度
	private int minHieght	 = 5;			//窗口缩起后的高度
	private int maxHieght	 = 506;			//窗口展开后的高度
	private int step		 = 15;			//窗口动作步长 
	
	
	/**=======================================================================**
	 *		[## public JQFrame() {} ]: 
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：JQFrame 的构造函数
	 **=======================================================================**
	 */
	public JQFrame() {
		super("JQFrame");
		
		//对窗口加鼠标监听
		this.addMouseListener(this);
		//设置窗口左上角图标
		ImageIcon ia = new ImageIcon("pic/ico.gif");
		this.setIconImage(ia.getImage());
		//设置窗口默认大小
		this.setBounds(55, 55, sunWidth, maxHieght);
		//设置窗口不可改变大小
		this.setResizable(false);
	}
	
	/**=======================================================================**
	 *		[## public void setSize(int w, int h) {} ]: 
	 *			参数   ：int w 表示窗口宽度  int h 表示窗口高度
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：设置窗口尺寸
	 **=======================================================================**
	 */
	public void setSize(int w, int h) {
		sunWidth  = w;
		maxHieght = h;
		super.setSize(w, h);
	}
	
	/**=======================================================================**
	 *		[## public void setStep(int s) {} ]: 
	 *			参数   ：int s 表示要设置的窗口动作步长
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：设置窗口的动作步长
	 **=======================================================================**
	 */
	public void setStep(int s) {
		if(s > 4) {
			step = s;						//设置窗口动作步长
		}//Endif
	}
	
	
	/**=======================================================================**
	 *			MouseListener 监听
	 **=======================================================================**
	 */
	public void mouseClicked(MouseEvent me)  {
	}

	public void mousePressed(MouseEvent me)  {
	}

	public void mouseReleased(MouseEvent me) {
		if(this.getY() < 0) {
			//如果窗口的Y坐标小于0，则将其置0，缩起窗口
			this.setLocation(this.getX(), 0);
			for (int i = this.getHeight(); i > minHieght; i-=step) {
				if(i - minHieght <= step) {
					i = minHieght;
				}//Endif
				super.setSize(this.getWidth(), i);
			}//Endfor
			winState = false;
		}//Endif
	}

	public void mouseEntered(MouseEvent me)  {
		if(me.getSource() == this) {					//如果鼠标进入窗口
			if(this.getY() == 0 && !winState) {			//如果窗口在屏幕北边且已缩起
				//展开窗口
				for (int i = minHieght; i < maxHieght; i+=step) {
					if(i + step >= maxHieght) {
						i = maxHieght;
					}//Endif
					super.setSize(this.getWidth(), i);
				}//Endfor
				winState = true;
			}//Endif
		}//Endif
	}
	
	public void mouseExited(MouseEvent me)   {
		if(me.getSource() == this) {					//如果鼠标移出窗口
			int mx = me.getX();
			int my = me.getY();
			//如果是在窗口内部控件上则返回
			if(mx > 0 && mx < sunWidth && my < maxHieght) {
				return;
			}//Endif
			if(this.getY() == 0 && winState) {			//如果窗口在屏幕北边且已展开
				//缩起窗口
				for (int i = maxHieght; i >= minHieght; i-=step) {
					if(i - minHieght <= step) {
						i = minHieght;
					}//Endif
					super.setSize(this.getWidth(), i);
				}//Endfor
				winState = false;
			}//Endif
		}//Endif
	}
	
}