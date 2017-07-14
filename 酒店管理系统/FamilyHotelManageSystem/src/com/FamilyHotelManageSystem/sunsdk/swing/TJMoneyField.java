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

import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;

import javax.swing.JOptionPane;
import javax.swing.JTextField;

import sunsdk.system.suntools;


public class TJMoneyField extends TJTextField implements FocusListener {
	/**=======================================================================**
	 *		[## public TJMoneyField () {} ]: 				���캯��
	 *			����   ����
	 *			����ֵ ����
	 *			���η� ��public
	 *			����   ��������뱾�Ŀ�Ĭ�ϳ���6
	 **=======================================================================**
	 */
	public TJMoneyField () {
		buildMoneyField ("0.00",true);
		setLayout (6);					//���ò���
	}
	
	/**=======================================================================**
	 *		[## public TJMoneyField (String text) {} ]: 	���캯��
	 *			����   ��String �����ʾ�ı����ʼ���Ľ��
	 *			����ֵ ����
	 *			���η� ��public
	 *			����   ��������뱾�Ŀ�Ĭ�ϳ���10
	 **=======================================================================**
	 */
	public TJMoneyField (String text) {
		buildMoneyField (text, true);
		setLayout (10);					//���ò���
	}
	
	/**=======================================================================**
	 *		[## public TJMoneyField (String text, int length) {} ]: ���캯��
	 *			����   ��String �����ʾ�ı����ʼ���Ľ��
	 *					 int ������ʾ�ı���ĳ���
	 *			����ֵ ����
	 *			���η� ��public
	 *			����   ������һ��ָ�����ͳ��ȵĽ�����뱾�Ŀ�
	 **=======================================================================**
	 */
	public TJMoneyField (String text, int length) {
		buildMoneyField (text, true);
		setLayout (length);					//���ò���
	}
	
	/**=======================================================================**
	 *		[## private void setLayout (int l) {} ]: ���캯��
	 *			����   ��int ������ʾ�ı���ĳ���
	 *			����ֵ ����
	 *			���η� ��private
	 *			����   �����ý�����뱾�Ŀ�Ķ��뷽ʽ�ͺ��������ӽ������
	 **=======================================================================**
	 */
	private void setLayout (int l) {
		this.setColumns(l);								//�����ı�������
		this.setHorizontalAlignment (JTextField.RIGHT);	//�����ı��Ҷ���
		this.addFocusListener(this);					//�ӽ������
	}
	
	/**=======================================================================**
	 *		[## private void buildMoneyField (String text, boolean build) {} ]: 
	 *			����   ��String �����ʾ���				�������Ŀ�
	 *					 boolean ������ʾ���½��ı����ǽ����¼�����
	 *			����ֵ ����
	 *			���η� ��private
	 *			����   ������������뱾�Ŀ�
	 **=======================================================================**
	 */
	private void buildMoneyField (String text, boolean build) {
		//�жϽ���Ƿ�Ϸ�
		if(suntools.isNum (text, 11, 0, 9999999.99)) {
			//ȥ����ͷ��'0'
			text = Double.parseDouble(text) + "";
			//�ж����ֻ��һλС����'0'
			if(text.length() - text.indexOf('.') == 2) {
				text = Double.parseDouble(text) + "0";
			}//Endif
			super.setText("��" + text);		//�����ı�
		}//Endif
		else {
			JOptionPane.showMessageDialog(null, "����ʽ���󣬻����ǽ�����Χ:[ 0-9999999.99 ] ...", "����", JOptionPane.ERROR_MESSAGE);
			if(build)				//�����new����ʱ����������ϵͳ�Զ��˳�
				System.exit(0);
			else {
				super.setText ("0");
				this.requestFocus(true);//�û�ʹ��ʱ������������������
			}//Endif
		}//Endif
	}
	
	/**=======================================================================**
	 *		[## public String getText () {} ]: 			����ı�����
	 *			����   ����
	 *			����ֵ ��String �����ʾ�ı���Ľ��ֵ
	 *			���η� ��public
	 *			����   ������ı�����
	 **=======================================================================**
	 */
	public String getText () {
		return super.getText().substring(1);
	}
	
	/**=======================================================================**
	 *		[## public void setText (String text) {} ]: 	�����ı�����
	 *			����   ��String �����ʾҪ�����ı���Ľ��ֵ
	 *			����ֵ ����
	 *			���η� ��public
	 *			����   �������ı�����
	 **=======================================================================**
	 */
	public void setText (String text) {
		buildMoneyField (text, false);
	}
	
	
	
	/**=======================================================================**
	 *			FocusListener ����
	 **=======================================================================**
	 */
	public void focusGained (FocusEvent fe) {
		//�������
		super.setText ("0");
	}
	
	public void focusLost (FocusEvent fe) {
		//ʧȥ�������
		String t = super.getText();
		if(t.length() > 1)
			t = t.substring(1);
		buildMoneyField (t, false);
	}
	
}