package bao;
import java.io.UnsupportedEncodingException;
public class Check {
	public Check(){  
	} 
	/** 
	 * ���ַ�����ת�봦��
	 * @param str Ҫת����ַ���
	 * @return �������ַ���
	 */
	public String toString(String str){
		// ת���ַ�
		String text = "";
		// �ж�Ҫת����ַ����Ƿ���Ч
		if(str != null && !"".equals(str)){
			try {
				// ���ַ������б��봦��
				text = new String(str.getBytes("iso8859-1"),"GB18030");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		// ���غ���ַ���
		return text;
	}
}
