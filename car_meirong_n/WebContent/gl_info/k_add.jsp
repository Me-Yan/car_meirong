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
        if(form1.k_name.value==""){
            alert("请输入客户名称！");form1.k_name.focus();return false;
        }
        //判断用户名是否为空
        if(form1.k_fuze.value==""){
            alert("请输入负责人！");form1.k_fuze.focus();return false;
        }
        //判断密码是否为空
        if(form1.k_tel.value==""){
            alert("请输入客户电话！");form1.k_tel.focus();return false;
        }
        if(form1.k_jianjie.value==""){
            alert("请输入简介！");form1.k_jianjie.focus();return false;
        }

    }
</script>
<body>
<form id="form1" name="form1" method="post" action="k_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">客户添加</td>
        </tr>
        <tr>
            <td class="text-name">客户名称：</td>
            <td><input type="text" class="text-input" name="k_name" id="k_name"/></td>
        </tr>
        <tr>
            <td class="text-name">客户负责：</td>
            <td><input type="text" class="text-input" name="k_fuze" id="k_fuze"/></td>
        </tr>
        <tr>
            <td class="text-name">客户联系：</td>
            <td><input type="text" class="text-input" name="k_tel" id="k_tel"/></td>
        </tr>
        <tr>
            <td class="text-name">是否会员：</td>
            <td>
                <select name="k_huiyuan" class="text-input" style="width: 212px;">
                    <option value="普通客户">普通客户</option>
                    <option value="会员客户">会员客户</option>
                </select>
            </td>
        </tr>
        <tr>
            <td  class="text-name">客户简介：</td>
            <td><textarea name="k_jianjie" class="text-input" style="resize: none;height: 100px;" id="k_jianjie"></textarea></td>
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