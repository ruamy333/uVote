package serv;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Register {
	private static AccessDB db;
	private static Connection con;
	public static Statement stmt ;
	public static ResultSet rs = null;
	
	public Register() {
		// Example of Composition
		db = new AccessDB();
		try {
			con = db.getConnection();
		} catch (IllegalAccessException e) {
			e.printStackTrace();

		} catch (InstantiationException e) {
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public void register(String user_account, String user_password, String user_name, String user_email) throws SQLException {
		String str = "INSERT INTO  `uvote`.`user` (`user_account` ,`user_password` ,`user_name`,`user_email`)VALUES ('"
				+user_account+"',  '"+user_password+"',  '"+user_name+"',  '"+user_email+"');";
		db.insert(str);
	}
	
	public String CheckLogin(String user_account, String user_password) throws Exception {
		String result = "";
		try{
			stmt = con.createStatement();
			String str="select * "
		    		+ "from user "
		    		+ "where user_account='"+user_account+"'";
			
			rs = stmt.executeQuery(str);
			if(!rs.next()){
				result = "無此帳號";
			}
			else if(!rs.getString("user_password").equals(user_password)){
				result = "密碼錯誤";
			}
			else{
				result = "登入成功";
				//stId=rs.getInt("st_id");
			}
		}
		catch(Exception ex){
			throw ex;
		}
		finally{
			rs.close(); //關閉ResultSet物件
			stmt.close(); //關閉Statement物件
			con.close(); //關閉Connection物件
		}
		return result;
	}
}

