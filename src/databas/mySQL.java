package databas;
import java.sql.*;
public class mySQL {
	

	public static Connection connect(){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmanagement",
				"root", "findus123");
		
		}catch(Exception e){
			throw new Error(e);
		}}
		public static boolean close(Connection c){
			try{
				c.close();
				return true;
			}catch (Exception e){
				return false;
			}
		}}
