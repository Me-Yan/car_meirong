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
        if(form1.type.value==""){
            alert("请输入保险名称！");form1.type.focus();return false;
        }
        //判断用户名是否为空
        if(form1.content.value==""){
            alert("请输入保险内容！");form1.content.focus();return false;
        }

    }
</script>
<body>
<form id="form1" name="form1" method="post" action="bx_process.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">保险添加</td>
        </tr>
        <tr>
            <td class="text-name">保险名称：</td>
            <td><input type="text" class="text-input" name="type" id="k_name"/></td>
        </tr>
        <tr>
            <td  class="text-name">客户简介：</td>
            <td><textarea name="content" class="text-input" style="resize: none;height: 100px;" id="k_jianjie"></textarea></td>
        </tr>
        <tr>
            <td  class="text-name">&nbsp;</td>
            <td>
                <input class="btn" type="submit" name="Submit" value="添加" />
                &nbsp;&nbsp;
                <input class="btn" type="reset" name="Submit2" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>