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
			String k_name=encoding.toString(request.getParameter("k_name"));
			String k_fuze=encoding.toString(request.getParameter("k_fuze"));
			String k_tel=encoding.toString(request.getParameter("k_tel"));
			String k_huiyuan=encoding.toString(request.getParameter("k_huiyuan"));
			String k_jianjie=encoding.toString(request.getParameter("k_jianjie"));
			
			String sqlvv="select * from t_kehu where k_name='"+k_name+"'";
		 	ResultSet rs=zwcl.GetRs(sqlvv);
		 	 
		 	if(rs.next()){
		 		out.println("<script lanage='javascript'>alert('客户名称被占用，请重新输入');javascript:history.go(-1);</script>");
		 	}
		 	 else
		 	 {
			
			Connection con=zwcl.getCon();
			// 添加信息的SQL语句
			String sql = "insert into t_kehu(k_name,k_fuze,k_tel,k_huiyuan,k_jianjie,k_shijian) values('"+k_name+"','"+k_fuze+"','"+k_tel+"','"+k_huiyuan+"','"+k_jianjie+"','"+ times.showTodayTime()+"')";
			int row = zwcl.GetCount(sql);
			
			if(row > 0){

				out.println("<script>alert('客户添加成功！');window.location.href='k_gl.jsp';</script>");
			}
			con.close();}
		} catch (Exception e) {
			out.print("客户添加失败！");
			e.printStackTrace();
		}
	%>
</body>
</html>