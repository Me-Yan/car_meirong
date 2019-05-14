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
        if(form1.c_name.value==""){
            alert("ÇëÊäÈë²úÆ·Ãû³Æ£¡");form1.c_name.focus();return false;
        }
        //ÅÐ¶ÏÓÃ»§ÃûÊÇ·ñÎª¿Õ
        if(form1.c_price.value==""){
            alert("ÇëÊäÈë²úÆ·¼Û¸ñ£¡");form1.c_price.focus();return false;
        }
        //ÅÐ¶ÏÃÜÂëÊÇ·ñÎª¿Õ
        if(form1.c_geshu.value==""){
            alert("ÇëÊäÈë²úÆ·ÊýÁ¿£¡");form1.c_geshu.focus();return false;
        }
        if(form1.c_jianjie.value==""){
            alert("ÇëÊäÈë²úÆ·ÊýÁ¿£¡");form1.c_jianjie.focus();return false;
        }

    }
</script>
<body>

<form id="form1" name="form1" method="post" action="m_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">ÃÀÈÝ²úÆ·Ìí¼Ó</td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·Ãû³Æ£º</td>
            <td width="394"><input type="text" class="text-input" name="c_name" id="c_name"/></td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·¼Û¸ñ£º</td>
            <td width="394"><input type="text" class="text-input" name="c_price" id="c_price"/></td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·ÊýÁ¿£º</td>
            <td width="394"><input type="text" class="text-input" name="c_geshu" id="c_geshu"/></td>
        </tr>
        <tr>
            <td class="text-name">²úÆ·ËµÃ÷£º</td>
            <td width="394"><textarea name="c_jianjie" class="text-input" cols="45" rows="8" id="c_jianjie"></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="Ìí¼Ó" />
                &nbsp;&nbsp; <input type="reset" class="btn" name="Submit2" value="ÖØÖÃ" /></td>
        </tr>
</table>
</form>
</body>
</html>