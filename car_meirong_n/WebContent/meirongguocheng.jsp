<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwlist" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="style/style.css" rel="stylesheet" type="text/css">
</head>
<script language="javascript">
    function check(){
        //�ж�ID�Ƿ�Ϊ��
        if(form1.k_name.value==""){
            alert("������ͻ����ƣ�");form1.k_name.focus();return false;
        }
        //�ж��û����Ƿ�Ϊ��
        if(form1.c_name.value==""){
            alert("�������Ʒ���ƣ�");form1.c_name.focus();return false;
        }
        //�ж��������
        if(form1.ruku.value==""){
            alert("������������⣡");form1.ruku.focus();return false;
        }
        //�ж��������
        if(form1.feiyong.value==""){
            alert("������������ã�");form1.feiyong.focus();return false;
        }
        //�жϱ�ע�Ƿ�Ϊ��
        if(form1.beizhu.value==""){
            alert("�����뱸ע��");form1.beizhu.focus();return false;
        }

    }
</script>
<body>
<table class="outer">
    <tr>
        <td width="100%" valign="top">
            <form id="form1" name="form1" method="post" action="guocheng_do.jsp" onSubmit="return check()">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="30" colspan="2" align="center" valign="top">�������ݹ���</td>
                    </tr>
                    <tr>
                        <td class="text-name">�ͻ����ƣ�</td>
                        <td><input name="k_name" class="text-input" type="text" id="k_name" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">��Ʒ���ƣ�</td>
                        <td><input name="c_name" class="text-input" type="text" id="c_name" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">������⣺</td>
                        <td><input name="ruku" class="text-input" type="text" id="ruku" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">������ã�</td>
                        <td><input name="feiyong" class="text-input" type="text" id="feiyong" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">���ݱ�ע��</td>
                        <td><textarea name="beizhu" class="text-input" cols="40" rows="6" id="beizhu"></textarea></td>
                    </tr>
                    <tr>
                        <td class="text-name">&nbsp;</td>
                        <td><input type="submit" class="btn" name="Submit" value="�ύ" />
                            &nbsp; <input type="reset" class="btn" name="Submit2" value="����" /></td>
                    </tr>
                </table>
            </form>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="125" height="30" align="center" bgcolor="#999999">�ͻ�����</td>
                    <td width="153" align="center" bgcolor="#999999">��Ʒ����</td>
                    <td width="128" align="center" bgcolor="#999999">�������</td>
                    <td width="60" align="center" bgcolor="#999999">�������</td>
                    <td width="222" align="center" bgcolor="#999999">��ע</td>
                    <td width="86" align="center" bgcolor="#999999">����</td>
                </tr>
                <%
                    int CountPage1 = 0;
                    int CurrPage1 = 1;
                    int PageSize1 = 5;
                    int CountRow = 0;
                    String StrPage = request.getParameter("Page");
                    if (StrPage == null)
                    {
                        CurrPage1 = 1;
                    }
                    else
                    {
                        CurrPage1 = Integer.parseInt(StrPage);
                    }
                    Connection conp=zwlist.getCon();
                    if (conp != null)
                    {
                        try
                        {

                            String sql = "Select * from guocheng ";
                            ResultSet rs=zwlist.GetRs(sql);
                            if(!rs.next())
                            {
                                out.println("��ʱû����Ϣ");
                            }
                            else{
                                rs.last();
                                int i = 0;
                                CountRow = rs.getRow();
                                CountPage1 = (CountRow/PageSize1);
                                if (CountRow%PageSize1>0)
                                    CountPage1++;
                                Integer n = (CurrPage1-1)*5+1;
                                rs.first();
                                rs.absolute(CurrPage1*PageSize1-PageSize1+1);
                                while (i<PageSize1 && !rs.isAfterLast())
                                {
                %>
                <tr>
                    <td height="25" align="center"><%=rs.getString("k_name")%></td>
                    <td align="center"><%=rs.getString("c_name")%></td>
                    <td align="center"><%=rs.getString("ruku")%></td>
                    <td align="center"><%=rs.getString("feiyong")%></td>
                    <td align="center"><%=rs.getString("beizhu")%></td>
                    <td align="center"><a class="btn" href="gl_info/del.jsp?id=<%=rs.getString("id")%>&tt=6">ɾ��</a></td>
                </tr>
                <%
                                    rs.next();
                                    i++;
                                }
                            }
                        }

                        catch (SQLException e)
                        {
                            out.println(e.getMessage());
                        }
                        finally
                        {
                            conp.close();
                        }
                    }
                %>
            </table>

            <table width="702" height="71" border="0" cellpadding="0" cellspacing="0">
                <tr >
                    <td width="511" colspan="2"><p>[<%=CurrPage1%>/<%=CountPage1 %>] ÿҳ<%=PageSize1%>�� ��<%=CountRow%>����¼

                            <% for (int i = 1;i<=CountPage1;i++){%>
                        <a href="meirongguocheng.jsp?Page=<%=i%>"><font color="#FF0000">[<%=i%>]</font></a>
                            <%}%>
                    </td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>