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
			String c_name=encoding.toString(request.getParameter("c_name"));
			String c_price=encoding.toString(request.getParameter("c_price"));
			String c_geshu=encoding.toString(request.getParameter("c_geshu"));
			String c_jianjie=encoding.toString(request.getParameter("c_jianjie"));

			
			String sqlvv="select * from t_chanpin where c_name='"+c_name+"'";
		 	ResultSet rs=zwcl.GetRs(sqlvv);
		 	 
		 	if(rs.next()){
		 		out.println("<script lanage='javascript'>alert('名称被占用，请重新输入');javascript:history.go(-1);</script>");
		 	}
		 	 else
		 	 {
			
			Connection con=zwcl.getCon();
			// 添加信息的SQL语句
			String sql = "insert into t_chanpin(c_name,c_price,c_geshu,c_jianjie,c_shijian) values('"+c_name+"','"+c_price+"','"+c_geshu+"','"+c_jianjie+"','"+ times.showTodayTime()+"')";
			int row = zwcl.GetCount(sql);
			
			if(row > 0){

				out.println("<script>alert('添加成功！');window.location.href='m_gl.jsp';</script>");
			}
			con.close();}
		} catch (Exception e) {
			out.print("添加失败！");
			e.printStackTrace();
		}
	%>
</body>
</html>