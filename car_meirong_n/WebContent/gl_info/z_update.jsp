<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwcl" class="bao.DB" scope="page"/>
<jsp:useBean id="encoding" class="bao.Check"></jsp:useBean>
<jsp:useBean id="times" class="bao.Time" scope="page"/>
 
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title> 
</head>
<body>  
<%
		try {
			String username=encoding.toString(request.getParameter("username"));
			String password=encoding.toString(request.getParameter("password"));
			String t_name=encoding.toString(request.getParameter("t_name"));
			String t_zhiwei=encoding.toString(request.getParameter("t_zhiwei"));
			String t_jianjie=encoding.toString(request.getParameter("t_jianjie"));

			Connection conn=zwcl.getCon();
				// �޸���Ϣ��SQL���
				String sql = "update yuangong set password='"+password +"',t_name='"+t_name +"',t_zhiwei='"+t_zhiwei +"',t_jianjie='"+t_jianjie +"' where username='"+username+"'";
				// ��ȡPreparedStatement
				PreparedStatement psnn = conn.prepareStatement(sql);
				// ��SQL����еĵ�1��������ֵ
				int bbtts = psnn.executeUpdate();
				
				// �ж��Ƿ���³ɹ�
				if(bbtts > 0){
				// ���³������Ϣ
					out.println("<script>alert('���ĳɹ���');window.location.href='z_gl.jsp';</script>");
				}
				// �ر�PreparedStatement���ͷ���Դ
				psnn.close();
				// �ر�Connection���ͷ���Դ
				conn.close();
			} catch (Exception e) {
				out.print("����ʧ�ܣ�");
				e.printStackTrace();
			}
	%>
</body>
</html>