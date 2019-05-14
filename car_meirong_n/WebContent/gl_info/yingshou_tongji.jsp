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
                    <td width="125" height="30" align="center" bgcolor="#999999">¿Í»§Ãû³Æ</td>
                    <td width="109" align="center" bgcolor="#999999">Ïû·Ñ½ð¶î</td>
                </tr>
                <%

                    String sqls="select * from t_kehu ";
                    ResultSet rss=zwcl.GetRs(sqls);
                    try{
                        while(rss.next()){
                %>
                <tr>
                    <td height="25" align="center"><%=rss.getString("k_name")%></td>
                    <td align="center"> <%

                        String sqltt="select * from guocheng where k_name='"+rss.getString("k_name")+"' ";
                        ResultSet rsst=zwcl.GetRs(sqltt);
                        int i=0;
                        while(rsst.next()){
                            i=i+Integer.parseInt(rsst.getString("feiyong"));
                        }
                    %>     <%=i%></td>
                </tr>
                <%}}catch (Exception e){}%>
            </table></td>
    </tr>
</table>
</body>
</html>