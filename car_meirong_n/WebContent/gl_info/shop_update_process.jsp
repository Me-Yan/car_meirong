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
        String id = encoding.toString(request.getParameter("id"));
        String name=encoding.toString(request.getParameter("name"));
        String contactPerson=encoding.toString(request.getParameter("contactPerson"));
        String contactNo=encoding.toString(request.getParameter("contactNo"));
        String address=encoding.toString(request.getParameter("address"));
        String description=encoding.toString(request.getParameter("description"));

        Connection conn=zwcl.getCon();
        // �޸���Ϣ��SQL���
        String sql = "update shop set name='"+name +"',contactPerson='"+contactPerson +"',contactNo='"+contactNo +"',address='"+address +"',description='"+description +"' where id='"+id+"'";
        // ��ȡPreparedStatement
        PreparedStatement psnn = conn.prepareStatement(sql);
        // ��SQL����еĵ�1��������ֵ
        int bbtts = psnn.executeUpdate();

        // �ж��Ƿ���³ɹ�
        if(bbtts > 0){
            // ���³������Ϣ
            out.println("<script>alert('���ĳɹ���');window.location.href='shop_info.jsp';</script>");
        }
        // �ر�PreparedStatement���ͷ���Դ
        psnn.close();
        // �ر�Connection���ͷ���Դ
        conn.close();
    } catch (Exception e) {
        out.print("����ʧ�ܣ�");
        e.printStackTrace();
    }
%>
</body>
</html>