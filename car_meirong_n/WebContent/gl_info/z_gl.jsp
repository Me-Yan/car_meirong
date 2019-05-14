<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwlist" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="../style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table class="outer" border="0">
    <tr>
        <td height="495px" valign="top">
            <br><br>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="30" align="center" bgcolor="#999999">ÕËºÅ</td>
                    <td align="center" bgcolor="#999999">ÐÕÃû</td>
                    <td align="center" bgcolor="#999999">Ö°Î»</td>
                    <td align="center" bgcolor="#999999">È¨ÏÞ</td>
                    <td align="center" bgcolor="#999999">Ê±¼ä</td>
                    <td align="center" bgcolor="#999999">²Ù×÷</td>
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

                            String sql = "Select * from yuangong ";
                            ResultSet rs=zwlist.GetRs(sql);
                            if(!rs.next())
                            {
                                out.println("ÔÝÊ±Ã»ÓÐÐÅÏ¢");
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
                    <td height="25" align="center"><%=rs.getString("username")%></td>
                    <td align="center"><%=rs.getString("t_name")%></td>
                    <td align="center"><%=rs.getString("t_zhiwei")%></td>
                    <td align="center"><%=rs.getString("t_quanxian")%></td>
                    <td align="center"><%=rs.getString("t_shijian")%></td>
                    <td align="center" width="125px">
                        <a class="btn" href="z_up.jsp?id=<%=rs.getString("id")%>">ÐÞ¸Ä</a>
                        <a class="btn" href="del.jsp?id=<%=rs.getString("id")%>&tt=1">É¾³ý</a>
                    </td>
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
                    <td width="511" colspan="2"><p>[<%=CurrPage1%>/<%=CountPage1 %>] Ã¿Ò³<%=PageSize1%>Ìõ ¹²<%=CountRow%>Ìõ¼ÇÂ¼

                            <% for (int i = 1;i<=CountPage1;i++){%>
                        <a href="z_gl.jsp?Page=<%=i%>"><font color="#FF0000">[<%=i%>]</font></a>
                            <%}%>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>