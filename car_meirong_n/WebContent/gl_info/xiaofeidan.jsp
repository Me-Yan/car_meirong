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
<table class="outer">
    <tr>
        <td width="100%" valign="top">
            <br><br>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="125" height="30" align="center" bgcolor="#999999">¿Í»§Ãû³Æ</td>
                    <td width="153" align="center" bgcolor="#999999">»áÔ±¿¨ºÅ</td>
                    <td width="153" align="center" bgcolor="#999999">¿¨ÄÚÓà¶î</td>
                    <td width="128" align="center" bgcolor="#999999">µç»°ºÅÂë</td>
                    <td width="222" align="center" bgcolor="#999999">±¸×¢</td>
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
                    <td height="25" align="center"><%=rs.getString("k_name")%></td>
                    <td align="center"><%=rs.getString("kahao")%></td>
                    <td align="center"><%=rs.getString("yue")%></td>
                    <td align="center"><%=rs.getString("tel")%></td>
                    <td align="center"><%=rs.getString("beizhu")%></td>
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
                        <a href="xiaofeidan.jsp?Page=<%=i%>"><font color="#FF0000">[<%=i%>]</font></a>
                            <%}%>
                    </td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>