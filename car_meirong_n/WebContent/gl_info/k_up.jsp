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
    String sqlo="select * from t_kehu where id='"+id+"'";
    ResultSet rs=zwcl.GetRs(sqlo);
    if(!rs.next())
    {
        out.println("暂时没有信息");
    }
    else{
%>
<form id="form1" name="form1" method="post" action="k_update.jsp" >
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">客户修改</td>
        </tr>
        <tr>
            <td class="text-name">客户名称：</td>
            <td><input type="text" name="k_name" class="text-input" id="k_name" value="<%=rs.getString("k_name") %>" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">客户负责：</td>
            <td><input type="text" name="k_fuze" class="text-input" id="k_fuze" value="<%=rs.getString("k_fuze") %>"/></td>
        </tr>
        <tr>
            <td class="text-name">客户联系：</td>
            <td><input type="text" name="k_tel" class="text-input" id="k_tel" value="<%=rs.getString("k_tel") %>"/></td>
        </tr>

        <tr>
            <td class="text-name">客户简介：</td>
            <td><textarea name="k_jianjie" class="text-input" id="k_jianjie"><%=rs.getString("k_jianjie") %></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="修改" />
                &nbsp;&nbsp; <input type="button" class="btn" name="Submit2" value="放弃" onclick="history.back();"/></td>
        </tr>
    </table>
</form>
<%} %>
</body>
</html>