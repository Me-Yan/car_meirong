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
        String id = encoding.toString(request.getParameter("id"));
        String name=encoding.toString(request.getParameter("name"));
        String contactPerson=encoding.toString(request.getParameter("contactPerson"));
        String contactNo=encoding.toString(request.getParameter("contactNo"));
        String address=encoding.toString(request.getParameter("address"));
        String description=encoding.toString(request.getParameter("description"));

        Connection conn=zwcl.getCon();
        // 修改信息的SQL语句
        String sql = "update shop set name='"+name +"',contactPerson='"+contactPerson +"',contactNo='"+contactNo +"',address='"+address +"',description='"+description +"' where id='"+id+"'";
        // 获取PreparedStatement
        PreparedStatement psnn = conn.prepareStatement(sql);
        // 对SQL语句中的第1个参数赋值
        int bbtts = psnn.executeUpdate();

        // 判断是否更新成功
        if(bbtts > 0){
            // 更新成输出信息
            out.println("<script>alert('更改成功！');window.location.href='shop_info.jsp';</script>");
        }
        // 关闭PreparedStatement，释放资源
        psnn.close();
        // 关闭Connection，释放资源
        conn.close();
    } catch (Exception e) {
        out.print("更改失败！");
        e.printStackTrace();
    }
%>
</body>
</html>