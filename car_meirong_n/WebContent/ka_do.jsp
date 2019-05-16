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
        String k_name=encoding.toString(request.getParameter("k_name"));
        String kahao=encoding.toString(request.getParameter("kahao"));
        String tel=encoding.toString(request.getParameter("tel"));
        String beizhu=encoding.toString(request.getParameter("beizhu"));

        String sqlvv="select * from banka where kahao='"+kahao+"'";
        ResultSet rs=zwcl.GetRs(sqlvv);

        if(rs.next()){
            out.println("<script lanage='javascript'>alert('卡号重复，请重新输入');javascript:history.go(-1);</script>");
        }
        else
        {

            Connection con=zwcl.getCon();
            // 添加信息的SQL语句
            String sql = "insert into banka(k_name,kahao,tel,beizhu,shijian,yue) values('"+k_name+"','"+kahao+"','"+tel+"','"+beizhu+"','"+ times.showTodayTime()+"','0')";
            int row = zwcl.GetCount(sql);

            if(row > 0){

                out.println("<script>alert('办卡成功！');window.location.href='huiyuankabanli.jsp';</script>");
            }
            con.close();}
    } catch (Exception e) {
        out.print("办卡失败！");
        e.printStackTrace();
    }
%>
</body>
</html>