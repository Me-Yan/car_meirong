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
        String car_name=encoding.toString(request.getParameter("car_name"));

        Connection con=zwcl.getCon();
        // �����Ϣ��SQL���
        String sql = "insert into car(name) values('"+car_name+"')";
        int row = zwcl.GetCount(sql);

        if(row > 0){

            out.println("<script>alert('��ӳɹ���');window.location.href='car_list.jsp';</script>");
        }
        con.close();
    } catch (Exception e) {
        out.print("���ʧ�ܣ�");
        e.printStackTrace();
    }
%>
</body>
</html>