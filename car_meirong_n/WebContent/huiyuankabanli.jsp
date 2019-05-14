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
        //判断ID是否为空
        if(form1.k_name.value==""){
            alert("请输入客户名称！");form1.k_name.focus();return false;
        }
        //判断用户名是否为空
        if(form1.kahao.value==""){
            alert("请输入卡号！");form1.kahao.focus();return false;
        }
        //判断用户名是否为空
        if(form1.tel.value==""){
            alert("请输入余额！");form1.tel.focus();return false;
        }
        //判断用户名是否为空
        if(form1.beizhu.value==""){
            alert("请输入备注！");form1.beizhu.focus();return false;
        }
    }
</script>
<body>
<table class="outer">
    <tr>
        <td width="100%" valign="top">
            <form id="form1" name="form1" method="post" action="ka_do.jsp" onSubmit="return check()">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="30" colspan="2" align="center" valign="top">办卡添加</td>
                    </tr>
                    <tr>
                        <td class="text-name">客户名称：</td>
                        <td><input name="k_name" class="text-input" type="text" id="k_name" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">会员卡号：</td>
                        <td><input name="kahao" class="text-input" type="text" id="kahao" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">电话号码：</td>
                        <td><input name="tel" class="text-input" type="text" id="tel" /></td>
                    </tr>
                    <tr>
                        <td class="text-name">办卡备注：</td>
                        <td><textarea name="beizhu" class="text-input" id="beizhu"></textarea></td>
                    </tr>
                    <tr>
                        <td class="text-name">&nbsp;</td>
                        <td><input type="submit" class="btn" name="Submit" value="提交" />
                            &nbsp; <input type="reset" class="btn" name="Submit2" value="重置" /></td>
                    </tr>
                </table>
            </form>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="125" height="30" align="center" bgcolor="#999999">会员卡号</td>
                    <td width="153" align="center" bgcolor="#999999">卡内余额</td>
                    <td width="128" align="center" bgcolor="#999999">电话号码</td>
                    <td width="180" align="center" bgcolor="#999999">备注</td>
                    <td width="79" align="center" bgcolor="#999999">操作</td>
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

                            String sql = "Select * from banka ";
                            ResultSet rs=zwlist.GetRs(sql);
                            if(!rs.next())
                            {


            %>
                <tr>
                    <td colspan="5" align="center">
                        <%
                            out.println("暂时没有信息");
                        %>
                    </td>
                </tr>
                <%
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
                    <td height="25" align="center"><%=rs.getString("kahao")%></td>
                    <td align="center"><%=rs.getString("yue")%></td>
                    <td align="center"><%=rs.getString("tel")%></td>
                    <td align="center"><%=rs.getString("beizhu")%></td>
                    <td align="center"><a class="btn" href="chongzhi.jsp?id=<%=rs.getString("id")%>">充值</a></td>
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

            <table width="100%" height="71" border="0" cellpadding="0" cellspacing="0">
                <tr >
                    <td width="100%" colspan="2"><p>[<%=CurrPage1%>/<%=CountPage1 %>] 每页<%=PageSize1%>条 共<%=CountRow%>条记录

                            <% for (int i = 1;i<=CountPage1;i++){%>
                        <a href="huiyuankabanli.jsp?Page=<%=i%>"><font color="#FF0000">[<%=i%>]</font></a>
                            <%}%>
                    </td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>