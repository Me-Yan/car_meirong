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
    String sqlo="select * from yuangong where id='"+id+"'";
    ResultSet rs=zwcl.GetRs(sqlo);
    if(!rs.next())
    {
        out.println("暂时没有信息");
    }
    else{
%>

<form id="form1" name="form1" method="post" action="z_update.jsp" >
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">账户修改</td>
        </tr>
        <tr>
            <td class="text-name">账户名称：</td>
            <td><input type="text" name="username" class="text-input" id="username" value="<%=rs.getString("username") %>" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">账户密码：</td>
            <td><input type="password" name="password" class="text-input" id="password" value="<%=rs.getString("password") %>" /></td>
        </tr>
        <tr>
            <td class="text-name">员工姓名：</td>
            <td><input type="text" name="t_name" class="text-input" id="t_name" value="<%=rs.getString("t_name") %>" /></td>
        </tr>
        <tr>
            <td class="text-name">员工职位：</td>
            <td><input type="text" name="t_zhiwei" class="text-input" id="t_zhiwei" value="<%=rs.getString("t_zhiwei") %>" /></td>
        </tr>
        <tr>
            <td class="text-name">员工简介：</td>
            <td><textarea name="t_jianjie" class="text-input" id="t_jianjie"><%=rs.getString("t_jianjie") %></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="修改" />
                &nbsp;&nbsp;
                <input type="button" class="btn" name="Submit2" value="放弃" onclick="history.back();"/>
            </td>
        </tr>
    </table>
</form>
<%} %>
</body>
</html>