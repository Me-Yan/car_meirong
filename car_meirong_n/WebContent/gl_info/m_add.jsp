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
        if(form1.c_name.value==""){
            alert("�������Ʒ���ƣ�");form1.c_name.focus();return false;
        }
        //�ж��û����Ƿ�Ϊ��
        if(form1.c_price.value==""){
            alert("�������Ʒ�۸�");form1.c_price.focus();return false;
        }
        //�ж������Ƿ�Ϊ��
        if(form1.c_geshu.value==""){
            alert("�������Ʒ������");form1.c_geshu.focus();return false;
        }
        if(form1.c_jianjie.value==""){
            alert("�������Ʒ������");form1.c_jianjie.focus();return false;
        }

    }
</script>
<body>

<form id="form1" name="form1" method="post" action="m_add_chuli.jsp" onSubmit="return check()">
    <table class="outer">
        <tr>
            <td height="28" colspan="2" align="center" valign="top">���ݲ�Ʒ���</td>
        </tr>
        <tr>
            <td class="text-name">��Ʒ���ƣ�</td>
            <td width="394"><input type="text" class="text-input" name="c_name" id="c_name"/></td>
        </tr>
        <tr>
            <td class="text-name">��Ʒ�۸�</td>
            <td width="394"><input type="text" class="text-input" name="c_price" id="c_price"/></td>
        </tr>
        <tr>
            <td class="text-name">��Ʒ������</td>
            <td width="394"><input type="text" class="text-input" name="c_geshu" id="c_geshu"/></td>
        </tr>
        <tr>
            <td class="text-name">��Ʒ˵����</td>
            <td width="394"><textarea name="c_jianjie" class="text-input" cols="45" rows="8" id="c_jianjie"></textarea></td>
        </tr>
        <tr>
            <td class="text-name">&nbsp;</td>
            <td><input type="submit" class="btn" name="Submit" value="���" />
                &nbsp;&nbsp; <input type="reset" class="btn" name="Submit2" value="����" /></td>
        </tr>
</table>
</form>
</body>
</html>