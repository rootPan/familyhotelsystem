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
import java.util.*;


public class ViewList extends JPanel {
	
	//放置按键的数组
	private Hashtable buttons = new Hashtable();
	//放置按键的面板
	private JPanel panelMain;
	//ViewList 里面横向按键的个数，和行数
	private int column	= 6;
	private int row		= 5;
	
	//面板内按键总数
	private int buttonTotal = 30;
	//按键记数器
	private int buttonCount = 0;
	
	
	/**=======================================================================**
	 *		[## public ViewList(int buttons) {} ]:		构造函数，并制作主面板
	 *			参数   ：int buttons 表示ViewList中的按键数量
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：构造函数，并制作主面板
	 **=======================================================================**
	 */
	public ViewList(int buttons) {
		super(new BorderLayout());
		
		JScrollPane spMain;								//定义滚动面板
		
		//根据按键数据计算面板的行数和列数
		int vRow = buttons / column;
		if(vRow > row) {					//如果有足够的按键数量，则设置面板行数，
			if(buttons % column > 0) {		//否则使用默认行数 row = 5
				row = vRow + 1;
			}else {
				row = vRow;
			}//Endif
			buttonTotal = buttons;						//获得按键总数
		}//Endif
		
		//建立按键面板
		panelMain	= new JPanel(new GridLayout(row, 1, 5, 15));		
		//设置默认背景色
		panelMain.setBackground(new Color(248, 242, 230));
		spMain	  = new JScrollPane(panelMain);
		//加入主面板
		this.add("Center", spMain);
	}
	
	/**=======================================================================**
	 *		[## public void remeButtons() {} ]:		补按键空位
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：补按键空位，如果按键数量不足 column * row 则加空JLabel补位，
	 *					 不然总局会乱	注意，此方法一定要在加完所有按键后使用
	 **=======================================================================**
	 */
	public void remeButtons() {
		if(buttonCount < buttonTotal) {
			for (int i = 0; i < buttonTotal - buttonCount; i++) {
				JLabel lb = new JLabel("　");
				panelMain.add(lb);				//补空位
		    }//Endfor
		}//Endif
	}
	
	/**=======================================================================**
	 *		[## public JButton getButton(String roomNum) {} ]:		
	 *			参数   ：String roomNum 对象表示按键名字，也就是房间号
	 *			返回值 ：JButton
	 *			修饰符 ：public
	 *			功能   ：获得面板中的指定按键
	 **=======================================================================**
	 */
	public JButton getButton(String roomNum) {
		return (JButton)buttons.get(roomNum);
	}
	
	/**=======================================================================**
	 *		[## public void setButtonImage(String buttonName, String state) {} ]:		
	 *			参数   ：String buttonName 对象表示按键在哈希表中的键名
	 *					 String State 对象表示房间状态
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：设置按键图片
	 **=======================================================================**
	 */
	public void setButtonImage(String buttonName, String state) {
		String picName = "";
		if(state.equals("可供"))
			picName = "pic/room/prov.gif";
		else if(state.equals("占用"))
			picName = "pic/room/pree.gif";
		else if(state.equals("预订"))
			picName = "pic/room/rese.gif";
		else if(state.equals("钟点"))
			picName = "pic/room/clock.gif";
		else if(state.equals("脏房"))
			picName = "pic/room/clean.gif";
		else if(state.equals("停用"))
			picName = "pic/room/stop.gif";
		((JButton)buttons.get(buttonName)).setIcon(new ImageIcon(picName));
	}
	
	/**=======================================================================**
	 *		[## public void addButton(String name) {} ]:
	 *			参数   ：String name	表示功能按键的名字
	 *			返回值 ：JButton
	 *			修饰符 ：public
	 *			功能   ：制作功能按键，并加入相应的模板中，返回JButton方便主程序加监听
	 **=======================================================================**
	 */
	public JButton addButton(String name) {
		JButton button = new JButton(name);
		button.setBorderPainted(false);				//设置按键无边框
		button.setContentAreaFilled(false);			//设置按键背景色透明
		button.setHorizontalTextPosition(SwingConstants.CENTER);//设置Ico与文字居中
		button.setVerticalTextPosition(SwingConstants.BOTTOM);//设置Ico相对文字的位置
		panelMain.add(button);		  				//将按键加入按键面板
		buttons.put(name, button);					//将按键存入哈希表
		buttonCount++;								//按键记数器+1
		return button;
	}
}