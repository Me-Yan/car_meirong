<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
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
    String id=request.getParameter("id");
    String sqlo="select * from banka where id='"+id+"'";
    ResultSet rs=zwlist.GetRs(sqlo);
    if(!rs.next())
    {
        out.println("ÔÝÊ±Ã»ÓÐÐÅÏ¢");
    }
    else{
%>

<form id="form1" name="form1" method="post" action="chongzhi_chuli.jsp"  >
    <table class="outer">
        <tr>
            <td height="30" colspan="2" align="center" valign="top">¿¨³äÖµ</td>
        </tr>
        <tr>
            <td class="text-name">¿Í»§Ãû³Æ£º</td>
            <td><input type="text" class="text-input" name="k_name" id="k_name" value="<%=rs.getString("k_name") %>" readonly /></td>
        </tr>
        <tr>
            <td class="text-name">¿¨ÄÚÓà¶î£º</td>
            <td><input type="text" class="text-input" name="yue" id="yue" value="<%=rs.getString("yue") %>" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">³äÖµ½ð¶î£º</td>
            <td><input type="text" class="text-input" name="jine" id="jine"  /></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="³äÖµ" />
                &nbsp; <input type="button" class="btn" name="Submit2" value="·ÅÆú" onclick="history.back();"/></td>
        </tr>
    </table>
</form>
<%} %>
</body>
</html>