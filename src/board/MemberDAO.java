package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class MemberDAO {
	private String url="jdbc:oracle:thin:@192.168.0.58:1521:xe";
	private String user="jsp",pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {e.printStackTrace();}
		
	}
	public boolean memberUser(MemberDTO dto) {
	      String sql = "select id from company where id='" + dto.getId() + "'";
	      String sql2 = "insert into company values(?,?,?,?,?)";

	      try {
	         con = DriverManager.getConnection(url, user, pwd);
	         ps = con.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery();
	         
	         if (rs.next()) {
	            return false;
	         } else {
	        	PreparedStatement ps2 = con.prepareStatement(sql2);
	            ps2.setString(1, dto.getId());
	            ps2.setString(2, dto.getPwd());
	            ps2.setString(3, dto.getName());
	            ps2.setString(4, dto.getDivision());
	            ps2.setString(5, dto.getPosition());
	            ps2.executeUpdate();
	            return true;
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return false;
	   }
	
	public void memLogin(String id,String pwd) {
		
		
		
		
	}
	

	
	public void memSelect(String id) {
		String sql="select * from company where id=?";
		MemberDTO m=new MemberDTO();
		try {
			con=DriverManager.getConnection(url,user,pwd);
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()) {
			m.setId(rs.getString("id"));
			m.setName(rs.getString("name"));
			m.setDivision("division");
			m.setPosition("position");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}