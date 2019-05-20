package bao;

import com.google.gson.Gson;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DB {
    private Connection con;
    private String classname="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private String url="jdbc:sqlserver://localhost:1433;DatabaseName=BYSJ";

    public Connection getCon(){
        try{
            Class.forName(classname);
            con=DriverManager.getConnection(url,"sa","123456");
        }
        catch(Exception e){
            e.printStackTrace(System.err);
            con=null;
        }
        return con;
    }
    public void closed(){
        try{
            if(con!=null)con.close();
        }
        catch(Exception e){e.printStackTrace();}
    }
    //用于注册，添加
    public int GetCount(String SQL){
        try
        {
            Connection Con = getCon();

            Statement Smt = Con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

            int counts = Smt.executeUpdate(SQL);

            return counts;

        }
        catch(SQLException e)
        {
            System.out.println("失败！");
            return 0;
        }
    }
    //用于查询，登陆
    public ResultSet GetRs(String SQL){
        try
        {
            Connection Con = getCon();
            Statement Smt = Con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ResultSet Rs = Smt.executeQuery(SQL);
            return Rs;
        }
        catch(SQLException e)
        {
            System.out.println("失败！");
            return null;
        }
    }
    //增加、修改和删除
    public boolean executeUpdate(String sql) {

        if (con == null) {
            getCon();
        }
        try {
            Statement stmt = con.createStatement();
            int iCount = stmt.executeUpdate(sql);
            System.out.println("操作成功，所影响的记录数为" + String.valueOf(iCount));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("executeUpdaterError!");
        }
        return true;
    }

    public String generateEchart() {
        try
        {
            String sql = "SELECT TOP 30 shijian AS date, SUM(convert(float, feiyong)) AS amount from guocheng where state = '已结算' group by shijian order by shijian ASC";

            Connection Con = getCon();
            Statement Smt = Con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = Smt.executeQuery(sql);

            List<String> dateList = new ArrayList<>();
            List<Float> amountList = new ArrayList<>();

            while (rs.next()) {
                String date = rs.getString("date");
                float amount = rs.getFloat("amount");

                dateList.add(date);
                amountList.add(amount);
            }

            Map<String, Object> model = new HashMap<String, Object>();
            model.put("date", dateList);
            model.put("amount", amountList);

            return new Gson().toJson(model);

        }
        catch(SQLException e)
        {
            System.out.println("失败！");
            return null;
        }
    }

}
