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
package com.FamilyHotelManageSystem.login;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Frame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.ResultSet;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.border.LineBorder;

import sunsdk.system.sunini;

import com.FamilyHotelManageSystem.sunsdk.sql.Journal;
import com.FamilyHotelManageSystem.sunsdk.sql.sunsql;
import com.FamilyHotelManageSystem.sunsdk.swing.FStartWindow;
import com.FamilyHotelManageSystem.sunsdk.swing.TJButton;
import com.FamilyHotelManageSystem.sunsdk.swing.TJPasswordField;
import com.FamilyHotelManageSystem.sunsdk.swing.sunswing;

public class Login extends JFrame implements ActionListener, KeyListener, ItemListener, FocusListener {
	
	JLabel top, bott;
	JComboBox cb;
	JPasswordField pf;
	JButton bt1, bt2;
	JPanel panelMain, panelInfo;
	String clue = "    提 示 :  ";
	int flag	= 0;		//登记次数记数器
	
	
	
	/**=======================================================================**
	 *		[## public Login() {} ]: 					构造函数
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：组建登录窗口
	 **=======================================================================**
	 */
	public Login() {
		super("系 统 登 录");
		top = new JLabel (new ImageIcon("pic/Family0.png"));
		bott = new JLabel();
		panelMain = new JPanel(new BorderLayout(10, 10));
		bott.setBorder(new LineBorder (new Color(184, 173, 151)));
		buildCenter();
		
		panelMain.add("North", top);
		panelMain.add("South", bott);
		panelMain.add(panelInfo);
		
		//加事件监听
		bt1.addActionListener(this);
		bt2.addActionListener(this);
		bt1.addFocusListener (this);
		bt2.addFocusListener (this);
		bt1.addKeyListener (this);
		bt2.addKeyListener (this);
		cb.addItemListener (this);
		cb.addFocusListener(this);
		pf.addFocusListener(this);
		cb.addKeyListener (this);
		pf.addKeyListener (this);
		
		//加窗口监听 new WindowAdapter适配器类
		this.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent we) {
				quit();
			}//End windowClosing
		});
		
		this.setContentPane(panelMain);		//设置窗口面板
		this.setSize(350, 235);
		this.setResizable (false);			//设置窗口不可放大缩小
		this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		sunswing.setWindowCenter(this);
		this.setVisible(true);
		pf.requestFocus(true);				//设置焦点给密码框
	}
	
	/**=======================================================================**
	 *		[## private void buildCenter() {} ]: 		制作用户名密码面板
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：private
	 *			功能   ：组建用户名密码面板，仅类内使用
	 **=======================================================================**
	 */
	private void buildCenter() {
		
		JLabel lb1, lb2;
		JPanel pa1, pa2, pa3;
		
		lb1 = new JLabel("用  户  名 :");
		lb2 = new JLabel("登录密码 :");
		cb	= new JComboBox();
		pf  = new TJPasswordField (15);
		bt1 = new TJButton ("pic/key.gif", "登  录", "登录系统");
		bt2 = new TJButton ("pic/exit.gif", "退  出", "关闭系统");
		sunsql.initJComboBox (cb, "select userid from pwd where delmark=0");
		
		//定义面板为无部局
		panelInfo = new JPanel(null);
		//加入组件
		panelInfo.add(lb1);
		panelInfo.add(lb2);
		panelInfo.add(cb);
		panelInfo.add(pf);
		panelInfo.add(bt1);
		panelInfo.add(bt2);
		
		lb1.setBounds(50,14,60,20);
		lb2.setBounds(50,48,60,20);
		bt1.setBounds(68,77,86,28);
		bt2.setBounds(186,77,86,28);
		cb.setBounds (115,12,168,23);
		pf.setBounds (115,46,170,23);
		
		//设定边框线
		panelInfo.setBorder(BorderFactory.createTitledBorder(""));
	}
	
	/**=======================================================================**
	 *		[## private void quit() {} ]: 				系统退出
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：private
	 *			功能   ：关闭系统函数，仅类内使用
	 **=======================================================================**
	 */
	private void quit() {
		int flag = 0;
		String msg = "您 确 定 现 在 要 关 闭 系 统 吗 ？";
		flag = JOptionPane.showConfirmDialog(null, msg, "友情提示", JOptionPane.YES_NO_OPTION);
		if(flag == JOptionPane.YES_OPTION) {
			this.setVisible(false);
			System.exit(0);
		}//End if(flag == JOptionPane.YES_OPTION)
		return;
	}
	
	/**=======================================================================**
	 *		[## private void dengLu() {} ]: 			系统登录
	 *			参数   ：无
	 *			返回值 ：无
	 *			修饰符 ：private
	 *			功能   ：密码验证通过，进入主操作界面，仅类内使用
	 **=======================================================================**
	 */
	private void dengLu() {
		String user = cb.getSelectedItem() + "";
		String pwd	= String.valueOf(pf.getPassword());
		String code = "select pwd,puis from pwd where delmark=0 and userid='" + user + "'";
		ResultSet rs = sunsql.executeQuery (code);
		try {
			if(rs.next()) {			//用户名存在
				if(pwd.equals(rs.getString(1))) {
					bott.setText(clue + "登录成功，正在进入系统 ...");
					String puis = rs.getString(2);		//获得操作员权限
					boolean flag = Journal.writeJournalInfo(user, "登录本系统", Journal.TYPE_LG);
					if(flag) {		//记录日志
						new com.FamilyHotelManageSystem.mainframe.HotelFrame(user, puis);		//进入主程序窗口(用户名, 权限)
						this.setVisible(false);
					}else {
						String msg = "写日志错误，请与系统管理员联系 ...";
						JOptionPane.showMessageDialog(null, msg, "错误", JOptionPane.ERROR_MESSAGE);
						System.exit(0);
					}
				}
				else {
					bott.setText(clue + "用户 [ " + user + " ] 的密码不正确，请重新输入 ...");
					flag++;
					if(flag == 3) {		//三次密码验证
						JOptionPane.showMessageDialog(null, "密码错误超过三次，系统关闭 ...", "警告", JOptionPane.ERROR_MESSAGE);
						System.exit(0);
					}//End if(flag == 3)
					return;
				}//End if(pwd.equals(rs.getString(1)))
			}
			else {
				bott.setText(clue + "用户ID [ " + user + " ] 不存在 ...");
			}//End if(rs.next()) 
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}//End try
	}
	
	
	
	/**=======================================================================**
	 *			ActionListener 监听
	 **=======================================================================**
	 */
	public void actionPerformed (ActionEvent ae) {
		//动作监听
		if(ae.getSource() == bt1) {		//登录按键
			dengLu();
		}
		else {
			quit();
		}//End if(ae.getSource() == bt1)
	}
	
	
	/**=======================================================================**
	 *			ItemListener 监听
	 **=======================================================================**
	 */
	public void itemStateChanged (ItemEvent ie) {
		pf.requestFocus(true);
	}
	
	
	/**=======================================================================**
	 *			KeyListener 监听
	 **=======================================================================**
	 */
	public void keyPressed (KeyEvent ke) {
		//键盘按下监听
		int key = ke.getKeyCode();
		if(key == KeyEvent.VK_ENTER) {
			if(ke.getSource() == cb)
				pf.requestFocus(true);				//将焦点从用户名给密码
			if(pf.getPassword().length > 0)
				dengLu();							//按Enter键登录系统
		}
		else if(key == KeyEvent.VK_ESCAPE) {		//按ESC键退出系统
			quit();
		}//End if
	}
	
	public void keyReleased (KeyEvent ke) {
		//键盘释放监听
	}
	
	public void keyTyped (KeyEvent ke) {
		//按键型监听
	}
	
	
	/**=======================================================================**
	 *			FocusListener 监听
	 **=======================================================================**
	 */
	public void focusGained (FocusEvent fe) {
		//焦点监听
		if(fe.getSource() == cb)		//窗口最下方的功能提示
			bott.setText(clue + "请选择操作员名称 ...");
		else
			if(fe.getSource() == pf)
				bott.setText(clue + "请输入登录密码 ...");
			else
				if(fe.getSource() == bt1)
					bott.setText(clue + "登录系统 ...");
				else
					if(fe.getSource() == bt2)
						bott.setText(clue + "退出系统 ...");
	}
	
	public void focusLost (FocusEvent fe) {
		//失去焦点监听
	}
	
	
	
	/**=======================================================================**
	 *		[## public static void main(String sd[]) {} ]: 	主函数
	 *			参数   ：String sd[] 
	 *			返回值 ：无
	 *			修饰符 ：public static
	 *			功能   ：程序入口
	 **=======================================================================**
	 */
public static void main(String[] args) {
	sunswing.setWindowStyle(sunini.getIniKey("Sys_style").charAt(0));
	new FStartWindow ("pic/欢迎.png", new Frame(), 1200);
	new Login();
}

}

