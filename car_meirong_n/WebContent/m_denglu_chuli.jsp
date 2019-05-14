<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="Login_chuli" class="bao.DB" scope="page"/> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head> 
<body>
<% 
String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"GB18030");
String password=new String(request.getParameter("password").getBytes("ISO-8859-1"),"GB18030");
String quanxian=new String(request.getParameter("types").getBytes("ISO-8859-1"),"GB18030");
Connection con=Login_chuli.getCon();

if(quanxian.equals("管理员")){
	
	String sql="select * from t_login where username='"+username+"' and password='"+password+"'";
 	ResultSet rs=Login_chuli.GetRs(sql);
 	if(rs.next()){
 		session.setAttribute("user_name",""+username+"");
 		out.println("<script lanage='javascript'>alert('登录成功');window.location.href='gl_info/gl_index.jsp';</script>");
 	}
 	else{
 		out.println("<script lanage='javascript'>alert('登陆错误，请核实用户名和密码是否输入正确,重新输入');javascript:history.go(-1);</script>");
 	}
 	Login_chuli.closed();
}

if(quanxian.equals("员工")){
	
	String sql="select * from yuangong where username='"+username+"' and password='"+password+"'";
 	ResultSet rs=Login_chuli.GetRs(sql);
 	if(rs.next()){
 		session.setAttribute("huiyuan",""+username+"");
 		out.println("<script lanage='javascript'>alert('登录成功');window.location.href='m_index.jsp';</script>");
 	}
 	else{
 		out.println("<script lanage='javascript'>alert('登陆错误，重新输入');javascript:history.go(-1);</script>");
 	}
 	Login_chuli.closed();
}


%>
</body>
</html>