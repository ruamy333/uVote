package serv;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Room {
	private static AccessDB db;
	private static Connection con;
	public static Statement stmt ;
	public static ResultSet rs = null;
	
	public Room() {
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
	//找到所有的room_id
	public  String getAllRoomId() throws SQLException{
		String room_id="";
		ResultSet rset = db
				.getResultSet("SELECT room_id FROM  `Room` ");
		
		while(rset.next()){

			room_id+=Integer.toString(rset.getInt("room_id"))+" ";

		}
		return room_id;
	}
	//從room_id取得room_title
	public String getRoomTitle(int room_id) throws SQLException{
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
		Room r=new Room();
		System.out.println(r.getAllRoomId());

		
	}
	
}
