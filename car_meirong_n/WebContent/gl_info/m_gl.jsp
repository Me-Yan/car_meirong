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

<form name="form1" method="post" action="m_gl.jsp">
    <table class="outer">
        <tr>
            <td height="495px;" valign="top">
                <br><br>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                        <td colspan="6">
                            ÇëÊäÈë²úÆ·Ãû³Æ
                            <input name="c_name" class="text-input" type="text" size="16" >
                            <input type="submit" class="btn" name="Submit" value="²éÑ¯" >
                        </td>
                    </tr>

                    <tr>
                        <td width="192" height="30" align="center" bgcolor="#999999">²úÆ·Ãû³Æ</td>
                        <td width="73" align="center" bgcolor="#999999">²úÆ·¼Û¸ñ</td>
                        <td width="72" align="center" bgcolor="#999999">²úÆ·ÊýÁ¿</td>
                        <td width="350" align="center" bgcolor="#999999">²úÆ·¼ò½é</td>
                        <td width="125" align="center" bgcolor="#999999">²Ù×÷</td>
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
                                String sql;
                                String c_name=request.getParameter("c_name");
                                if (c_name!= null && !c_name.equals(""))
                                {
                                    sql = "Select * from t_chanpin where c_name Like '%"+c_name+"%'";
                                }
                                else
                                {
                                    sql = "Select * from t_chanpin";
                                }

                                ResultSet rs=zwlist.GetRs(sql);
                                if(rs == null || !rs.next())
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
                        <td height="25" align="center"><%=rs.getString("c_name")%></td>
                        <td align="center"><%=rs.getString("c_price")%></td>
                        <td align="center"><%=rs.getString("c_geshu")%></td>
                        <td align="center"><%=rs.getString("c_jianjie")%></td>
                        <td align="center">
                            <a class="btn" href="m_up.jsp?id=<%=rs.getString("id")%>">ÐÞ¸Ä</a>
                            <a class="btn" href="del.jsp?id=<%=rs.getString("id")%>&tt=3">É¾³ý</a>
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

                <table width="100%" height="71" border="0" cellpadding="0" cellspacing="0">
                    <tr >
                        <td width="511" colspan="2"><p>[<%=CurrPage1%>/<%=CountPage1 %>] Ã¿Ò³<%=PageSize1%>Ìõ ¹²<%=CountRow%>Ìõ¼ÇÂ¼

                                <% for (int i = 1;i<=CountPage1;i++){%>
                            <a href="m_gl.jsp?Page=<%=i%>"><font color="#FF0000">[<%=i%>]</font></a>
                                <%}%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>