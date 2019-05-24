<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwcl" class="bao.DB" scope="page"/>
<jsp:useBean id="encoding" class="bao.Check"></jsp:useBean>
<jsp:useBean id="times" class="bao.Time" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030">
    <title>Insert title here</title>
</head>
<body>
<%
    try {
        String type=encoding.toString(request.getParameter("type"));
        String content=encoding.toString(request.getParameter("content"));

        String sqlvv="select * from baoxian where type='"+type+"'";
        ResultSet rs=zwcl.GetRs(sqlvv);

        if(rs.next()){
            out.println("<script lanage='javascript'>alert('该保险已存在，请重新输入');javascript:history.go(-1);</script>");
        }
        else
        {

            Connection con=zwcl.getCon();
            // 添加信息的SQL语句
            String sql = "insert into baoxian(type,content) values('"+type+"','"+content+"')";
            int row = zwcl.GetCount(sql);

            if(row > 0){

                out.println("<script>alert('保险添加成功！');window.location.href='bx_list.jsp';</script>");
            }
            con.close();}
    } catch (Exception e) {
        out.print("客户添加失败！");
        e.printStackTrace();
    }
%>
</body>
</html>