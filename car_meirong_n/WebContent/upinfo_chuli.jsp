<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="food" class="bao.DB" scope="page"/>
<jsp:useBean id="times" class="bao.Time" scope="page"/>
<jsp:useBean id="encoding" class="bao.Check"></jsp:useBean>
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


			Connection con=food.getCon();
				// �����Ϣ��SQL���
				String sql = "update yuangong set password='"+password +"',t_name='"+t_name +"',t_zhiwei='"+t_zhiwei +"',t_jianjie='"+t_jianjie +"' where username='"+username+"'";
				// ��ȡPreparedStatement
				PreparedStatement ps = con.prepareStatement(sql);
				// ��SQL����еĵ�1��������ֵ
				int row = ps.executeUpdate();
				if(row > 0){
					out.println("<script>alert('���ĳɹ���');window.location.href='upinfo.jsp';</script>");
				}
				// �ر�PreparedStatement���ͷ���Դ
				ps.close();
				// �ر�Connection���ͷ���Դ
				con.close();
			} catch (Exception e) {
				out.print("����ʧ�ܣ�");
				e.printStackTrace();
			}
	%>
</body>
</html>