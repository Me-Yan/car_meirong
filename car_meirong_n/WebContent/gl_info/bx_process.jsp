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
            out.println("<script lanage='javascript'>alert('�ñ����Ѵ��ڣ�����������');javascript:history.go(-1);</script>");
        }
        else
        {

            Connection con=zwcl.getCon();
            // �����Ϣ��SQL���
            String sql = "insert into baoxian(type,content) values('"+type+"','"+content+"')";
            int row = zwcl.GetCount(sql);

            if(row > 0){

                out.println("<script>alert('������ӳɹ���');window.location.href='bx_list.jsp';</script>");
            }
            con.close();}
    } catch (Exception e) {
        out.print("�ͻ����ʧ�ܣ�");
        e.printStackTrace();
    }
%>
</body>
</html>