<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="delete" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030">
    <title>Insert title here</title>
</head>
<body>
<%

    String c=request.getParameter("tt");
    int pp=Integer.parseInt(c);
    if (pp==1) {
        String id=request.getParameter("id");
        String sqlo="delete from yuangong where id='"+id+"' ";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='z_gl.jsp';</script>");
    }
    if (pp==2) {
        String id=request.getParameter("id");
        String sqlo="delete from t_kehu where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='k_gl.jsp';</script>");
    }
    if (pp==3) {
        String id=request.getParameter("id");
        String sqlo="delete from t_chanpin where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='m_gl.jsp';</script>");
    }

    if (pp==4) {
        String id=request.getParameter("id");
        String sqlo="delete from gonggao where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='gg_gl.jsp';</script>");
    }

    if (pp==5) {
        String id=request.getParameter("id");
        String sqlo="delete from pinglun where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='meirong_pinglun.jsp';</script>");
    }
    if (pp==6) {
        String id=request.getParameter("id");
        String sqlo="delete from guocheng where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='../meirongguocheng.jsp';</script>");
    }

    if (pp==7) {
        String id=request.getParameter("id");
        String sqlo="delete from chongzhi where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='../huiyuankachongzhi.jsp';</script>");
    }

    if (pp==8) {
        String id=request.getParameter("id");
        String sqlo="delete from pinglun where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='../meirong_pinglun.jsp';</script>");
    }

    if (pp==9) {
        String id=request.getParameter("id");
        String sqlo="delete from shenbao where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='s_shenbao_jieguo.jsp';</script>");
    }

    if (pp==10) {
        String id=request.getParameter("id");
        String sqlo="delete from genjin where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='../kehuweihu.jsp';</script>");
    }

    if (pp==11) {
        String id=request.getParameter("id");
        String sqlo="delete from car where id='"+id+"'";
        delete.executeUpdate(sqlo);
        out.println("<script lanage='javascript'>alert('删除成功！！');window.location.href='car_list.jsp';</script>");
    }
%>
</body>
</html>