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
<table class="outer">
    <tr>
        <td width="100%" valign="top">
            <br><br>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="192" height="30" align="center" bgcolor="#999999">²úÆ·Ãû³Æ</td>
                    <td width="72" align="center" bgcolor="#999999">²úÆ·ÊýÁ¿</td>
                </tr>
                <%

                    String sqls="select * from t_chanpin ";
                    ResultSet rss=zwcl.GetRs(sqls);
                    try{
                        while(rss.next()){
                %>
                <tr>
                    <td height="25" align="center"><%=rss.getString("c_name")%></td>
                    <td align="center"><%=rss.getString("c_geshu")%></td>
                </tr>
                <%}}catch (Exception e){}%>
            </table></td>
    </tr>
</table>
</body>
</html>