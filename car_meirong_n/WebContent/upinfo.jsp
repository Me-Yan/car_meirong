<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db11" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
    //�ж��Ƿ��и��û���Ϣ
    String users=(String)session.getAttribute("huiyuan");
    String sqlo="select * from yuangong where username='"+users+"'";
    ResultSet rs=db11.GetRs(sqlo);
    if(!rs.next())
    {
        out.println("��ʱû����Ϣ");
    }
    else{
%>
<form id="form1" name="form1" method="post" action="upinfo_chuli.jsp">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">�˻��޸�</td>
        </tr>
        <tr>
            <td class="text-name">�˻����ƣ�</td>
            <td><input type="text" name="username" class="text-input" id="username" value="<%=rs.getString("username") %>" readonly /></td>
        </tr>
        <tr>
            <td class="text-name">�˻����룺</td>
            <td><input type="password" name="password" class="text-input" id="password" value="<%=rs.getString("password") %>"/></td>
        </tr>
        <tr>
            <td class="text-name">Ա��������</td>
            <td><input type="text" name="t_name" class="text-input" id="t_name" value="<%=rs.getString("t_name") %>"/></td>
        </tr>
        <tr>
            <td class="text-name">Ա��ְλ��</td>
            <td><input type="text" name="t_zhiwei" class="text-input" id="t_zhiwei" value="<%=rs.getString("t_zhiwei") %>"/></td>
        </tr>

        <tr>
            <td class="text-name">Ա����飺</td>
            <td><textarea name="t_jianjie" class="text-input" id="t_jianjie"><%=rs.getString("t_jianjie") %></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="�޸�" />
                &nbsp;&nbsp; <input type="reset" class="btn" name="Submit2" value="����" /></td>
        </tr>
    </table>
</form>
<%} %>
</body>
</html>