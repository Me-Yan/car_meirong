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
<form id="form1" name="form1" method="post" action="car_add_process.jsp" >
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">�������</td>
        </tr>
        <tr>
            <td class="text-name">�������ƣ�</td>
            <td><input type="text" name="name" class="text-input" id="name"/></td>
        </tr>
        <tr>
            <td class="text-name">�������ͣ�</td>
            <td><input type="text" name="bname" class="text-input" id="bname"/></td>
        </tr>
        <tr>
            <td class="text-name">�۸�</td>
            <td><input type="text" name="price" class="text-input" id="price"/></td>
        </tr>
        <tr>
            <td class="text-name">�����Żݣ�</td>
            <td>
                <select name="isoff" class="text-input" style="width: 212px;">
                    <option value="��">��</option>
                    <option value="��">��</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="text-name">���ޣ�</td>
            <td><input type="text" name="year" class="text-input" id="year"/></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="ȷ��" />
                &nbsp;&nbsp; <input type="button" class="btn" name="Submit2" value="����" onclick="history.back();"/></td>
        </tr>
    </table>
</form>
</body>
</html>