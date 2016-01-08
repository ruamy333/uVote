package serv;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

public class AccessDB {

	// Example of Aggregation
	private Connection con = null; // Database objects
	// 連接object
	private ResultSet rs = null;// 結果集
	private PreparedStatement insert = null;// 執行,傳入之sql為預儲之字申,需要傳入變數之位置
	// 先利用?來做標示
	private Statement stat = null; // 執行,傳入之sql為完整字串
	public Connection getConnection() throws IllegalAccessException,
			InstantiationException, ClassNotFoundException {
		String user = "test";
		String pass = "test";
		String database = "uvote";
		String url = "jdbc:mysql://localhost:3306/" + database
				+ "?useUnicode=true&characterEncoding=big5";
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();

			// Example of Aggregation
			con = DriverManager.getConnection(url, user, pass);

		} catch (SQLException sqle) {
			System.out.println("SQL Exception : " + sqle);
		}

		return con;
	}

	public ResultSet getResultSet(String sql) {
		Statement stmt = null;
		try {
			stmt = con.createStatement();

			// Example of Aggregation
			rs = stmt.executeQuery(sql);

		} catch (SQLException se) {
			System.out.println("Error:" + se.toString());
		} catch (Exception e) {
			System.out.println("Error:" + e.toString());
		}
		return rs;
	}
	
	public PreparedStatement getPreparedStatement(String sql)
			throws SQLException {
		insert = con.prepareStatement(sql);
		
		insert.executeUpdate();
		return insert;
	}
	   public void insert(String sql)
	    {
	    	try{ 
	    		insert = con.prepareStatement(sql);
	    		insert.executeUpdate();
	    	}
	    	catch(MySQLIntegrityConstraintViolationException e){
	    		System.out.println("InsertDB Exception :" + e.toString());
	    		e.printStackTrace();
	    	}
	    	catch (SQLException e){
	    		System.out.println("InsertDB Exception :" + e.toString());
	    		e.printStackTrace();
	    	}
	    	finally{
	    		Close();
	    	}
	    }
	   
	   private void Close()
	    {
	    	try{
	    		if (rs != null){
	    			rs.close();
	    			rs = null;
	    		}
	    		if (stat != null){
	    			stat.close();
	    			stat = null;
	    		}
	    		if (insert != null){
	    			insert.close();
	    			insert = null;
	    		}
	    	}
	    	catch (SQLException e){
	    		System.out.println("Close Exception :" + e.toString());
	    	}
	    }
}
