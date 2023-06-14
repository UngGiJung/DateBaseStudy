package javaOracleScannerExample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521/xe";
	String user = "c##himedia";
	String password = "himedia";
	
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public ArrayList<MemberVo> list(String name) {
		ArrayList<MemberVo> list = new ArrayList<MemberVo>();
		
		try {
			connDB();
			
			String query = "SELECT * FROM emp";
			if (name != null) {
				query += " where ename='" + name.toUpperCase() + "'"; // 투업 케이스 = 대소문자 입력값 상관없이 대문자로 바꿈
			}
			System.out.println("SQL : " + query);
			
			rs = stmt.executeQuery(query);
			rs.last();
			System.out.println("rs.getRow() : " + rs.getRow());
			
			if(rs.getRow() == 0) {
				System.out.println("0 row selected.....");
			} else {
				System.out.println(rs.getRow() + " rows selected.....");
				rs.previous();
				while (rs.next()) {
					String empno = rs.getString("empno");
					String ename = rs.getString("ename");
					int sal = rs.getInt("sal");
					int comm = rs.getInt("comm");
					
					MemberVo data = new MemberVo(empno, ename, sal, comm);
					list.add(data);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void connDB() {
		try {
			Class.forName(driver);
			System.out.println("jdbc driver loading success.");
			con = DriverManager.getConnection(url, user, password);
			System.out.println("oracle connection success.");
			// stmt - con.createStatement();
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			System.out.println("statement create success.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}