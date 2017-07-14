
package sunsdk.system;

import java.util.*;


public class CsHashtable {

    /**
     * ��̬���� ����: ����һ�� hashtable ����������ʹ��
     */
    private static Hashtable hTable = new Hashtable();

    /**
     * ���캯�� ����: ���캯��Ϊ��̬�Ĳ��ܴ�������
     */
    private CsHashtable() {
    }

    /**
     * ��������� ����: �Ѷ�������ϣ��,����ΪObject����
     * 
     * @param key :
     *            ��ֵ, Object ����
     * @param value :
     *            ����, Object ����
     */
    public static void put(Object key, Object value) {
        hTable.put(key, value);
    }

    /**
     * ���ض����� ����: �ӹ�ϣ����ȡ������,����ΪObject����
     * 
     * @param key :
     *            ��ֵ
     * @return : һ�� Object ����
     */
    public static Object get(Object key) {
        return hTable.get(key);
    }

    /**
     * ���ش�С���� ����: ���ع�ϣ��Ĵ�С
     * 
     * @return : һ�� int ��ϣ����ֵ
     */
    public static int size() {
        return hTable.size();
    }
    
    /**
     * �Ƴ�һ������
     * 
     * @param key : ����һ��Ҫ�Ƴ��ļ�ֵ
     */
    public static Object remove(Object key) {
        return hTable.remove(key);
    }
}