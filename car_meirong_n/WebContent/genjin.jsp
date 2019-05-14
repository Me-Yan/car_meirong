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
            <%String id=request.getParameter("id"); %>
            <form id="form1" name="form1" method="post" action="genjin_chuli.jsp"  >
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="30" colspan="2" align="center" valign="top">¿Í»§¸ú½ø</td>
                    </tr>
                    <tr>
                        <td class="text-name">¿Í»§±àºÅ£º</td>
                        <td><input type="text" class="text-input" name="id" id="id" value="<%=id %>" readonly /></td>
                    </tr>
                    <tr>
                        <td class="text-name">¸ú½øÄÚÈÝ£º</td>
                        <td><textarea name="g_beizhu" class="text-input" id="g_beizhu"></textarea></td>
                    </tr>
                    <tr>
                        <td class="text-name">&nbsp;</td>
                        <td><input type="submit" class="btn" name="Submit" value="¸ú½ø" />
                            &nbsp; <input type="button" class="btn" name="Submit2" value="·ÅÆú" onclick="history.back();"/></td>
                    </tr>
                </table>
            </form>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="203" height="30" align="center" bgcolor="#999999">¿Í»§Ãû³Æ</td>
                    <td width="500" align="center" bgcolor="#999999">¸ú½øÄÚÈÝ</td>

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

                            String sql = "Select * from genjin where k_id='"+id+"'";
                            ResultSet rs=zwlist.GetRs(sql);
                            if(!rs.next())
                            {
                %>
                <tr>
                    <td colspan="2" align="center">
                        <%
                            out.println("ÔÝÊ±Ã»ÓÐÐÅÏ¢");
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
                    <td height="25" align="center"><%=rs.getString("k_id")%></td>
                    <td align="center"><%=rs.getString("g_beizhu")%></td>

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

        </td>
    </tr>
</table>
</body>
</html>