package news;
import java.sql.*;
public class conn 
{
	String sDBDriver = "org.gjt.mm.mysql.Driver";
	String sConnStr = "jdbc:mysql://localhost/test?useUnicode=true&characterEncoding=UTF-8";
	Connection connect = null;
	ResultSet rs = null;

	public conn() 
	{
		try 
		{
			Class.forName(sDBDriver); 
		}
		catch(java.lang.ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
	}
	
	public ResultSet executeQuery(String sql) 
	{
		rs = null;
		try 
		{
			connect = DriverManager.getConnection(sConnStr,"root",""); 
			Statement stmt = connect.createStatement();
			rs = stmt.executeQuery(sql);
		} 
		catch(SQLException ex) 
		{ 
			ex.printStackTrace();
		}
		return rs;
	}
	
	public int executeUpdate(String sql) 
	{
		int result = 0;
		try 
		{
			connect = DriverManager.getConnection(sConnStr); 
			Statement stmt = connect.createStatement();
			result = stmt.executeUpdate(sql);
			stmt.close();
			connect.close();
		} 
		catch(SQLException ex) 
		{ 
			ex.printStackTrace();
		}
		return result;
	}
	
}
