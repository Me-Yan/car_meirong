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

<div class="page-header">
    <table width="100%">
        <tr>
            <td><div class="header-title">Æû³µÃÀÈÝ¹ÜÀíÏµÍ³</div></td>
            <td align="right">

                <div class="header-username">
                    <%
                        String username = (String) session.getAttribute("user_name");
                        if ("admin".equals(username)) {
                    %>
                    ¡¶<a href="./gl_info/shop_info.jsp" target="mainFrame"><%=name%></a>¡·
                    <%
                    } else {
                    %>
                    ¡¶<a href="shop_info.jsp" target="mainFrame"><%=name%></a>¡·
                    <%
                        }
                    %>
                </div>

            </td>
        </tr>
    </table>
</div>

</body>
</html>