package serv;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Message {
	private static AccessDB db;
	private static Connection con;
	public static Statement stmt ;
	public static ResultSet rs = null;
	
	public Message() {
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
	
	//從room_id取得message_content
	public String getMessage(int room_id) throws SQLException{
		String subject = "";
		ResultSet rset = db
				.getResultSet("SELECT message_content FROM  `message` WHERE  room_id ='"+room_id+"'");
		
		while(rset.next()){
			subject = subject+rset.getString("message_content")+" ";

		}
		return subject;
	}
	
	public static void main(String[] args) throws SQLException {
		Message m=new Message();
		System.out.println(m.getMessage(34));
		
		
	}
	
}