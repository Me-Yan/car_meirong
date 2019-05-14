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
    String id=request.getParameter("id");
    String sqlo="select * from t_chanpin where id='"+id+"'";
    ResultSet rs=zwcl.GetRs(sqlo);
    if(!rs.next())
    {
        out.println("ÔÝÊ±Ã»ÓÐÐÅÏ¢");
    }
    else{
%>
<form id="form1" name="form1" method="post" action="m_update.jsp" >
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">ÃÀÈÝ²úÆ·ÐÞ¸Ä</td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·Ãû³Æ£º</td>
            <td width="394"><input type="text" class="text-input" name="c_name" id="c_name" value="<%=rs.getString("c_name") %>" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·¼Û¸ñ£º</td>
            <td width="394"><input type="text" class="text-input" name="c_price" id="c_price" value="<%=rs.getString("c_price") %>" /></td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·ÊýÁ¿£º</td>
            <td width="394"><input type="text" class="text-input" name="c_geshu" id="c_geshu" value="<%=rs.getString("c_geshu") %>" /></td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·ËµÃ÷£º</td>
            <td width="394"><textarea name="c_jianjie" class="text-input" cols="45" rows="8" id="c_jianjie"><%=rs.getString("c_jianjie") %></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="ÐÞ¸Ä" />
                &nbsp;&nbsp; <input type="button" class="btn" name="Submit2" value="·ÅÆú" onclick="history.back();"/></td>
        </tr>


    </table>
</form>
<%} %>
</body>
</html>