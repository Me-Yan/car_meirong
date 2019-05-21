<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwlist" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>������Ϣ</title>
    <link href="./style/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
    String name = "";
    String contactPerson = "";
    String contactNo = "";
    String address = "";
    String description = "";

    String querySql = "select * from shop";

    try {
        ResultSet rs = zwlist.GetRs(querySql);
        if (rs!=null && rs.next()) {
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

<table class="outer">
    <tr>
        <td height="28" colspan="2" align="center" valign="top">������Ϣ</td>
    </tr>
    <tr>
        <td class="text-name">�������ƣ�</td>
        <td><%=name%></td>
    </tr>
    <tr>
        <td class="text-name">��ϵ�ˣ�</td>
        <td><%=contactPerson%></td>
    </tr>
    <tr>
        <td class="text-name">��ϵ�绰��</td>
        <td><%=contactNo%></td>
    </tr>
    <tr>
        <td class="text-name">��ַ��</td>
        <td><%=address%></td>
    </tr>
    <tr>
        <td class="text-name">��飺</td>
        <td><div style="width: 250px;"><%=description%></div></td>
    </tr>
</table>
</body>
</html>