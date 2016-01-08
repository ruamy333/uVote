package serv;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Option {
	private static AccessDB db;
	private static Connection con;
	public static Statement stmt ;
	public static ResultSet rs = null;
	
	public Option() {
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
	
	//從room_id取得option_detail
	public String getOptionDetail(int room_id) throws SQLException{
		int option_id;
		String option_detail="";
		ResultSet rset = db
				.getResultSet("SELECT option_id FROM  `option` WHERE  room_id ='"+room_id+"'");
		
		while(rset.next()){
			option_id = rset.getInt("option_id");
			ResultSet rset_roomid = db
					.getResultSet("SELECT option_detail FROM  `option` WHERE  option_id ='"+option_id+"'");
			rset_roomid.next();
			option_detail+=rset_roomid.getString("option_detail")+" ";

		}
		return option_detail;
	}
	//從room_id取得option_counts
	public String getOptionCounts(int room_id) throws SQLException{
		int option_id;
		String option_detail="";
		ResultSet rset = db
				.getResultSet("SELECT option_id FROM  `option` WHERE  room_id ='"+room_id+"'");
		
		while(rset.next()){
			option_id = rset.getInt("option_id");
			ResultSet rset_roomid = db
					.getResultSet("SELECT option_counts FROM  `option` WHERE  option_id ='"+option_id+"'");
			rset_roomid.next();
			option_detail+=Integer.toString(rset_roomid.getInt("option_counts"))+" ";

		}
		return option_detail;
	}
	
	public static void main(String[] args) throws SQLException {
		Option o=new Option();
		System.out.println(o.getOptionDetail(11));
		System.out.println(o.getOptionCounts(11));
		
	}
	
}
