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
<body>
<table class="outer">
    <tr>
        <td width="100%" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="203" height="30" align="center" bgcolor="#999999">��������</td>
                    <td width="500" align="center" bgcolor="#999999">������</td>
                    <td width="80" align="center" bgcolor="#999999">����ʱ��</td>
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

                            String sql = "Select * from gonggao ";
                            ResultSet rs=zwlist.GetRs(sql);
                            if(!rs.next())
                            {
                %>

                <tr>
                    <td colspan="3">
                        <%
                            out.println("��ʱû����Ϣ");
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
                    <td height="25" align="center"><%=rs.getString("g_title")%></td>
                    <td align="center"><%=rs.getString("g_beizhu")%></td>
                    <td align="center"><%=rs.getString("g_shijian")%></td>
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
                    <td width="100%" colspan="2"><p>[<%=CurrPage1%>/<%=CountPage1 %>] ÿҳ<%=PageSize1%>�� ��<%=CountRow%>����¼

                            <% for (int i = 1;i<=CountPage1;i++){%>
                        <a href="gg_look.jsp?Page=<%=i%>"><font color="#FF0000">[<%=i%>]</font></a>
                            <%}%>
                    </td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>