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
        //ÅÐ¶ÏIDÊÇ·ñÎª¿Õ
        if(form1.type.value==""){
            alert("ÇëÊäÈë±£ÏÕÃû³Æ£¡");form1.type.focus();return false;
        }
        //ÅÐ¶ÏÓÃ»§ÃûÊÇ·ñÎª¿Õ
        if(form1.content.value==""){
            alert("ÇëÊäÈë±£ÏÕÄÚÈÝ£¡");form1.content.focus();return false;
        }

    }
</script>
<body>
<form id="form1" name="form1" method="post" action="bx_process.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">±£ÏÕÌí¼Ó</td>
        </tr>
        <tr>
            <td class="text-name">±£ÏÕÃû³Æ£º</td>
            <td><input type="text" class="text-input" name="type" id="k_name"/></td>
        </tr>
        <tr>
            <td  class="text-name">¿Í»§¼ò½é£º</td>
            <td><textarea name="content" class="text-input" style="resize: none;height: 100px;" id="k_jianjie"></textarea></td>
        </tr>
        <tr>
            <td  class="text-name">&nbsp;</td>
            <td>
                <input class="btn" type="submit" name="Submit" value="Ìí¼Ó" />
                &nbsp;&nbsp;
                <input class="btn" type="reset" name="Submit2" value="ÖØÖÃ" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>