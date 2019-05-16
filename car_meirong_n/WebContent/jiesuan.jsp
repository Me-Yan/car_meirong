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

        // 修改信息的SQL语句
        String sql = "update guocheng set state='已结算' where id='"+id+"'";
        // 获取PreparedStatement
        PreparedStatement psnn = conn.prepareStatement(sql);
        // 对SQL语句中的第1个参数赋值
        int bbtts = psnn.executeUpdate();

        // 判断是否更新成功
        if(bbtts > 0){
            // 更新成输出信息
            out.println("<script>alert('结算成功！');window.location.href='meirongfeiyong.jsp';</script>");
        }
        // 关闭PreparedStatement，释放资源
        psnn.close();
        // 关闭Connection，释放资源
        conn.close();
    } catch (Exception e) {
        out.print("结算失败！");
        e.printStackTrace();
    }
%>
</body>
</html>