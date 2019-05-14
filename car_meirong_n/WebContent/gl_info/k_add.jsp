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
        if(form1.k_name.value==""){
            alert("ÇëÊäÈë¿Í»§Ãû³Æ£¡");form1.k_name.focus();return false;
        }
        //ÅÐ¶ÏÓÃ»§ÃûÊÇ·ñÎª¿Õ
        if(form1.k_fuze.value==""){
            alert("ÇëÊäÈë¸ºÔðÈË£¡");form1.k_fuze.focus();return false;
        }
        //ÅÐ¶ÏÃÜÂëÊÇ·ñÎª¿Õ
        if(form1.k_tel.value==""){
            alert("ÇëÊäÈë¿Í»§µç»°£¡");form1.k_tel.focus();return false;
        }
        if(form1.k_jianjie.value==""){
            alert("ÇëÊäÈë¼ò½é£¡");form1.k_jianjie.focus();return false;
        }

    }
</script>
<body>
<form id="form1" name="form1" method="post" action="k_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">¿Í»§Ìí¼Ó</td>
        </tr>
        <tr>
            <td class="text-name">¿Í»§Ãû³Æ£º</td>
            <td><input type="text" class="text-input" name="k_name" id="k_name"/></td>
        </tr>
        <tr>
            <td class="text-name">¿Í»§¸ºÔð£º</td>
            <td><input type="text" class="text-input" name="k_fuze" id="k_fuze"/></td>
        </tr>
        <tr>
            <td class="text-name">¿Í»§ÁªÏµ£º</td>
            <td><input type="text" class="text-input" name="k_tel" id="k_tel"/></td>
        </tr>
        <tr>
            <td class="text-name">ÊÇ·ñ»áÔ±£º</td>
            <td>
                <select name="k_huiyuan" class="text-input" style="width: 212px;">
                    <option value="ÆÕÍ¨¿Í»§">ÆÕÍ¨¿Í»§</option>
                    <option value="»áÔ±¿Í»§">»áÔ±¿Í»§</option>
                </select>
            </td>
        </tr>
        <tr>
            <td  class="text-name">¿Í»§¼ò½é£º</td>
            <td><textarea name="k_jianjie" class="text-input" style="resize: none;height: 100px;" id="k_jianjie"></textarea></td>
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