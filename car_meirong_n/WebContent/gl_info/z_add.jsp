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
	if(form1.username.value==""){
		alert("ÇëÊäÈëÕËºÅ£¡");form1.username.focus();return false;
	}
	//ÅÐ¶ÏÓÃ»§ÃûÊÇ·ñÎª¿Õ
	if(form1.password.value==""){
		alert("ÇëÊäÈëÃÜÂë£¡");form1.password.focus();return false;
	}
	//ÅÐ¶ÏÃÜÂëÊÇ·ñÎª¿Õ
	if(form1.t_name.value==""){
		alert("ÇëÊäÈëÐÕÃû£¡");form1.t_name.focus();return false;
	}
	if(form1.t_zhiwei.value==""){
		alert("ÇëÊäÈëÖ°Î»£¡");form1.t_zhiwei.focus();return false;
	}
	
}
</script>
<body>
<form id="form1" name="form1" method="post" action="z_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">ÕË»§Ìí¼Ó</td>
        </tr>
        <tr>
            <td class="text-name">ÕË»§Ãû³Æ£º</td>
            <td><input type="text" class="text-input" name="username" id="username"/></td>
        </tr>
        <tr>
            <td class="text-name">ÕË»§ÃÜÂë£º</td>
            <td><input type="password" class="text-input" name="password" id="password"/></td>
        </tr>
        <tr>
            <td class="text-name">Ô±¹¤ÐÕÃû£º</td>
            <td><input type="text" class="text-input" name="t_name" id="t_name"/></td>
        </tr>
        <tr>
            <td class="text-name">Ô±¹¤Ö°Î»£º</td>
            <td><input type="text" class="text-input" name="t_zhiwei" id="t_zhiwei"/></td>
        </tr>
        <tr>
            <td class="text-name">Ô±¹¤È¨ÏÞ£º</td>
            <td><input type="text" class="text-input" name="t_quanxian" id="t_quanxian" value="Ô±¹¤" readonly/></td>
        </tr>
        <tr>
            <td class="text-name">Ô±¹¤¼ò½é£º</td>
            <td><textarea name="t_jianjie" class="text-input" style="resize: none;height: 100px;" id="t_jianjie"></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td>
                <input class="btn" type="submit" name="Submit" value="Ìí¼Ó" />
                &nbsp;&nbsp; <input class="btn" type="reset" name="Submit2" value="ÖØÖÃ" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>