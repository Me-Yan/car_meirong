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
	//判断ID是否为空
	if(form1.username.value==""){
		alert("请输入账号！");form1.username.focus();return false;
	}
	//判断用户名是否为空
	if(form1.password.value==""){
		alert("请输入密码！");form1.password.focus();return false;
	}
	//判断密码是否为空
	if(form1.t_name.value==""){
		alert("请输入姓名！");form1.t_name.focus();return false;
	}
	if(form1.t_zhiwei.value==""){
		alert("请输入职位！");form1.t_zhiwei.focus();return false;
	}
	
}
</script>
<body>
<form id="form1" name="form1" method="post" action="z_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">账户添加</td>
        </tr>
        <tr>
            <td class="text-name">账户名称：</td>
            <td><input type="text" class="text-input" name="username" id="username"/></td>
        </tr>
        <tr>
            <td class="text-name">账户密码：</td>
            <td><input type="password" class="text-input" name="password" id="password"/></td>
        </tr>
        <tr>
            <td class="text-name">员工姓名：</td>
            <td><input type="text" class="text-input" name="t_name" id="t_name"/></td>
        </tr>
        <tr>
            <td class="text-name">员工职位：</td>
            <td><input type="text" class="text-input" name="t_zhiwei" id="t_zhiwei"/></td>
        </tr>
        <tr>
            <td class="text-name">员工权限：</td>
            <td><input type="text" class="text-input" name="t_quanxian" id="t_quanxian" value="员工" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">员工简介：</td>
            <td><textarea name="t_jianjie" class="text-input" style="resize: none;height: 100px;" id="t_jianjie"></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td>
                <input class="btn" type="submit" name="Submit" value="添加" />
                &nbsp;&nbsp; <input class="btn" type="reset" name="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>