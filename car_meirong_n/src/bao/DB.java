package bao;

import java.sql.*;
 
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
   //����ע�ᣬ���
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
			System.out.println("ʧ�ܣ�");
			return 0;
		}
	}
//���ڲ�ѯ����½
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
			System.out.println("ʧ�ܣ�");
			return null;
		}
	}
	//���ӡ��޸ĺ�ɾ��
    public boolean executeUpdate(String sql) {

        if (con == null) {
        	getCon();
        }
        try {
            Statement stmt = con.createStatement();
            int iCount = stmt.executeUpdate(sql);
            System.out.println("�����ɹ�����Ӱ��ļ�¼��Ϊ" + String.valueOf(iCount));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("executeUpdaterError!");
        }
        return true;
    }
    
	

   
 
}
