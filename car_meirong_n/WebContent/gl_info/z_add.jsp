<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../style/style.css" rel="stylesheet" type="text/css">
</head> 
<script language="javascript">
function check(){
	//�ж�ID�Ƿ�Ϊ��
	if(form1.username.value==""){
		alert("�������˺ţ�");form1.username.focus();return false;
	}
	//�ж��û����Ƿ�Ϊ��
	if(form1.password.value==""){
		alert("���������룡");form1.password.focus();return false;
	}
	//�ж������Ƿ�Ϊ��
	if(form1.t_name.value==""){
		alert("������������");form1.t_name.focus();return false;
	}
	if(form1.t_zhiwei.value==""){
		alert("������ְλ��");form1.t_zhiwei.focus();return false;
	}
	
}
</script>
<body>
<form id="form1" name="form1" method="post" action="z_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">�˻����</td>
        </tr>
        <tr>
            <td class="text-name">�˻����ƣ�</td>
            <td><input type="text" class="text-input" name="username" id="username"/></td>
        </tr>
        <tr>
            <td class="text-name">�˻����룺</td>
            <td><input type="password" class="text-input" name="password" id="password"/></td>
        </tr>
        <tr>
            <td class="text-name">Ա��������</td>
            <td><input type="text" class="text-input" name="t_name" id="t_name"/></td>
        </tr>
        <tr>
            <td class="text-name">Ա��ְλ��</td>
            <td><input type="text" class="text-input" name="t_zhiwei" id="t_zhiwei"/></td>
        </tr>
        <tr>
            <td class="text-name">Ա��Ȩ�ޣ�</td>
            <td><input type="text" class="text-input" name="t_quanxian" id="t_quanxian" value="Ա��" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">Ա����飺</td>
            <td><textarea name="t_jianjie" class="text-input" style="resize: none;height: 100px;" id="t_jianjie"></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td>
                <input class="btn" type="submit" name="Submit" value="���" />
                &nbsp;&nbsp; <input class="btn" type="reset" name="Submit2" value="����" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>