<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwcl" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="../style/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<%
    String sql = "select * from shop";

    String id = "";
    String name = "";
    String contactPerson = "";
    String contactNo = "";
    String address = "";
    String description = "";

    try {
        ResultSet rs = zwcl.GetRs(sql);
        if (rs!=null&&rs.next()) {
            id = rs.getString("id");
            name = rs.getString("name");
            contactPerson = rs.getString("contactPerson");
            contactNo = rs.getString("contactNo");
            address = rs.getString("address");
            description = rs.getString("description");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<form id="form1" name="form1" method="post" action="shop_update_process.jsp" >
    <input type="hidden" name="id" value="<%=id %>">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">µêÆÌÐÞ¸Ä</td>
        </tr>
        <tr>
            <td class="text-name">Ãû³Æ£º</td>
            <td><input type="text" name="name" class="text-input" id="name" value="<%=name %>"/></td>
        </tr>
        <tr>
            <td class="text-name">ÁªÏµÈË£º</td>
            <td><input type="text" name="contactPerson" class="text-input" id="contactPerson" value="<%=contactPerson%>"/></td>
        </tr>
        <tr>
            <td class="text-name">µç»°£º</td>
            <td><input type="text" name="contactNo" class="text-input" id="contactNo" value="<%=contactNo%>"/></td>
        </tr>
        <tr>
            <td class="text-name">µØÖ·£º</td>
            <td><input type="text" name="address" class="text-input" id="address" value="<%=address%>"/></td>
        </tr>
        <tr>
            <td class="text-name">¼ò½é£º</td>
            <td><textarea name="description" class="text-input" id="description"><%=description%></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="È·ÈÏ" />
                &nbsp;&nbsp; <input type="button" class="btn" name="Submit2" value="·ÅÆú" onclick="history.back();"/></td>
        </tr>
    </table>
</form>
</body>
</html>