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
        String id=encoding.toString(request.getParameter("id"));
        String feiyong = encoding.toString(request.getParameter("feiyong"));
        String k_name = encoding.toString(request.getParameter("k_name"));

        Connection conn=zwcl.getCon();

        String amountSql = "Select yue From banka Where k_name = '" + k_name + "'";
        ResultSet rs = zwcl.GetRs(amountSql);

        float amount = 0;
        if (rs!=null && rs.next()) {
            String amountStr = rs.getString("yue");
            amount += Float.valueOf(amountStr);
        }

        amount -= Float.valueOf(feiyong);

        String updateSql = "Update banka set yue = '" + String.valueOf(amount) + "' Where k_name = '" + k_name + "'";

        zwcl.executeUpdate(updateSql);

        // �޸���Ϣ��SQL���
        String sql = "update guocheng set state='�ѽ���' where id='"+id+"'";
        // ��ȡPreparedStatement
        PreparedStatement psnn = conn.prepareStatement(sql);
        // ��SQL����еĵ�1��������ֵ
        int bbtts = psnn.executeUpdate();

        // �ж��Ƿ���³ɹ�
        if(bbtts > 0){
            // ���³������Ϣ
            out.println("<script>alert('����ɹ���');window.location.href='meirongfeiyong.jsp';</script>");
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