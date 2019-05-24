<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="zwcl" class="bao.DB" scope="page"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="../style/style.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/script/jquery-3.2.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/script/echarts.js"></script>
</head>
<body>
<table class="outer">
    <tr>
        <td width="100%" valign="top">
            <%--<table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="125" height="30" align="center" bgcolor="#999999">¿Í»§Ãû³Æ</td>
                    <td width="109" align="center" bgcolor="#999999">Ïû·Ñ½ð¶î</td>
                </tr>
                <%

                    String sqls="select * from t_kehu ";
                    ResultSet rss=zwcl.GetRs(sqls);
                    try{
                        while(rss.next()){
                %>
                <tr>
                    <td height="25" align="center"><%=rss.getString("k_name")%></td>
                    <td align="center"> <%

                        String sqltt="select * from guocheng where k_name='"+rss.getString("k_name")+"' ";
                        ResultSet rsst=zwcl.GetRs(sqltt);
                        int i=0;
                        while(rsst.next()){
                            i=i+Integer.parseInt(rsst.getString("feiyong"));
                        }
                    %>     <%=i%></td>
                </tr>
                <%}}catch (Exception e){}%>
            </table>--%>

            <div id="chart" style="height: 450px;"></div>



        </td>
    </tr>
</table>

<script type="application/javascript">
    $(function () {
        initChart();
    });

    var chart = echarts.init(document.getElementById('chart'));

    function initChart() {

        var dataJson = <%=zwcl.generateEchart()%>;

        var chartOptions = {
            title: {
                text: "½üÆÚÏû·ÑÍ³¼Æ"
            },
            tooltip: {
                trigger: 'axis'
            },
            grid: {
                left: '3%',
                right: '5%',
                bottom: '3%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: dataJson.date
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    name:'½ð¶î',
                    type:'line',
                    stack: '×ÜÁ¿',
                    data:dataJson.amount
//                    markPoint: {
//                        symbol: 'circle',
//                        data : [
//                            {type : 'max', name: '×î´óÖµ'},
//                            {type : 'min', name: '×îÐ¡Öµ'}
//                        ]
//                    }
                }
            ],
            noDataLoadingOption: {},
        };
        chart.showLoading();
        setTimeout(function () {
            chart.hideLoading();
            chart.setOption(chartOptions);
        }, 500);
    }
</script>

</body>
</html>