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
        String name=encoding.toString(request.getParameter("name"));
        String bname=encoding.toString(request.getParameter("bname"));
        String price=encoding.toString(request.getParameter("price"));
        String isoff=encoding.toString(request.getParameter("isoff"));
        String year=encoding.toString(request.getParameter("year"));

        Connection con=zwcl.getCon();
        // 添加信息的SQL语句
        String sql = "insert into car(name,bname,price,isoff,year) values('"+name+"','"+bname+"','"+price+"','"+isoff+"','"+year+"')";
        int row = zwcl.GetCount(sql);

        if(row > 0){

            out.println("<script>alert('添加成功！');window.location.href='car_list.jsp';</script>");
        }
        con.close();
    } catch (Exception e) {
        out.print("添加失败！");
        e.printStackTrace();
    }
%>
</body>
</html>