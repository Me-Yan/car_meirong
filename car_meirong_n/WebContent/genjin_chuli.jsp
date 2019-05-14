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
			String id=encoding.toString(request.getParameter("id"));
			String g_beizhu=encoding.toString(request.getParameter("g_beizhu"));
			String users=(String)session.getAttribute("huiyuan");
			Connection con=zwcl.getCon();
			// 添加信息的SQL语句
			String sql = "insert into genjin(k_id,g_beizhu,username,shijian) values('"+id+"','"+g_beizhu+"','"+users+"','"+ times.showTodayTime()+"')";
			int row = zwcl.GetCount(sql);
			
			if(row > 0){

				out.println("<script>alert('跟进成功！');window.location.href='kehuweihu.jsp';</script>");
			}
			con.close();
		} catch (Exception e) {
			out.print("跟进失败！");
			e.printStackTrace();
		}
	%>
</body>
</html>