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
			String c_name=encoding.toString(request.getParameter("c_name"));
			String feiyong=encoding.toString(request.getParameter("feiyong"));
			String beizhu=encoding.toString(request.getParameter("beizhu"));
			
			Connection con=zwcl.getCon();
			// 添加信息的SQL语句
			String sql = "insert into guocheng(k_name,c_name,feiyong,beizhu,shijian) values('"+k_name+"','"+c_name+"','"+feiyong+"','"+beizhu+"','"+ times.showTodayTime()+"')";
			int row = zwcl.GetCount(sql);
			
			if(row > 0){

				out.println("<script>alert('添加成功！');window.location.href='meirongguocheng.jsp';</script>");
			}
			con.close();
		} catch (Exception e) {
			out.print("添加失败！");
			e.printStackTrace();
		}
	%>
</body>
</html>