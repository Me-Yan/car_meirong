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
			String t_quanxian=encoding.toString(request.getParameter("t_quanxian"));
			
            
			
			String sqlvv="select * from yuangong where username='"+username+"'";
		 	ResultSet rs=zwcl.GetRs(sqlvv);
		 	 
		 	if(rs.next()){
		 		out.println("<script lanage='javascript'>alert('账号被占用，请重新输入');javascript:history.go(-1);</script>");
		 	}
		 	 else
		 	 {
			
			
			Connection con=zwcl.getCon();
			// 添加信息的SQL语句
			String sql = "insert into yuangong(username,password,t_name,t_zhiwei,t_jianjie,t_quanxian,t_shijian) values('"+username+"','"+password+"','"+t_name+"','"+t_zhiwei+"','"+t_jianjie+"','"+t_quanxian+"','"+ times.showTodayTime()+"')";
			int row = zwcl.GetCount(sql);
			
			if(row > 0){

				out.println("<script>alert('账户添加成功！');window.location.href='z_add.jsp';</script>");
			}
		 	
			con.close(); }
		} catch (Exception e) {
			out.print("账户添加失败！");
			e.printStackTrace();
		}
	%>
</body>
</html>