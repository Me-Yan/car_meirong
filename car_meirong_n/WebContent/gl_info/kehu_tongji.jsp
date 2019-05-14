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
                    <td width="134" height="30" align="center" bgcolor="#999999">ÆÕÍ¨¿Í»§</td>
                    <td width="168" align="center" bgcolor="#999999">»áÔ±¿Í»§</td>
                </tr>

                <tr>
                    <td height="25" align="center"> <%

                        String sqls="select * from t_kehu where k_huiyuan='ÆÕÍ¨¿Í»§'";
                        ResultSet rss=zwcl.GetRs(sqls);
                        int i=0;
                        while(rss.next()){
                            i=i+1;
                        }

                    %>

                        <%=i%>
                    </td>
                    <td align="center"><%

                        String sql="select * from t_kehu where k_huiyuan='»áÔ±¿Í»§'";
                        ResultSet rs=zwcl.GetRs(sql);
                        int t=0;
                        while(rs.next()){
                            t=t+1;
                        }

                    %>

                        <%=t%></td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>