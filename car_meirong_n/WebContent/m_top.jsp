<%@ page language="java" contentType="text/html; charset=GB18030"
         import="java.sql.*" pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwlist" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="style/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
    String name = "";

    String querySql = "select * from shop";

    try {
        ResultSet rs = zwlist.GetRs(querySql);
        if (rs!=null && rs.next()) {
            name = rs.getString("name");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }


%>

<table width="1800" height="92" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top"><img src="pic/t.jpg" width="1010" height="92" /></td>
    </tr>
</table>

<div style="text-align: right;position: relative;right: 50px;top: -30px;">
    <%
        String username = (String) session.getAttribute("user_name");
        if ("admin".equals(username)) {
    %>
    <a style="color: #000;text-decoration: underline" href="./gl_info/shop_info.jsp" target="mainFrame"><%=name%></a>
    <%
        } else {
    %>
    <a style="color: #000;text-decoration: underline" href="shop_info.jsp" target="mainFrame"><%=name%></a>
    <%
        }
    %>
</div>

</body>
</html>