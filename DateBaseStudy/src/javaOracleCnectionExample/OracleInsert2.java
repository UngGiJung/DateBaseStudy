package javaOracleCnectionExample;

//import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.util.Scanner;


public class OracleInsert2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Scanner sc = new Scanner(System.in);
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "c##himedia";
		String password = "himedia";
		
		
		try {
			Class.forName(driver);
			System.out.println("jdbc driver loading success.");
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("oracle connection sucess.\n");
			Statement stmt = conn.createStatement();
// ============================================================			
//			String q = sc.next();
//			String w = sc.next();
//			String e = sc.next();
//			sc.close();
			
			//연속 실행시 'DEPTNO'값만 변동되어 지속적으로 값들을 INSERT 시키는 방법
			
			
			String sq13 = "SELECT max(deptno)FROM dept";
			String ret = "";
			ResultSet rs2 = stmt.executeQuery(sq13);
			while (rs2.next()) {
				System.out.print(rs2.getString("max(deptno)"));
				ret = rs2.getString("max(deptno)");

			}
			
			int ideptret = Integer.parseInt(ret);
			ideptret += 10;
			String strdept = Integer.toString(ideptret);
//==============================================================			
			String ideptno = strdept, sdname = "IT", sloc = "SEOUL";
			String sql = "INSERT INTO dept VALUES ('"+ ideptno + "', '" + sdname + "', '" + sloc + "')";
			boolean b = stmt.execute(sql);
			if(!b) {
				System.out.println("Insert success.\n");
			} else {
				System.out.println("INsert fail.\n");
			}
			// String sql = "SELECT * FROM dept";
			String sq12 = "SELECT deptno, dname, loc FROM dept";
			ResultSet rs = stmt.executeQuery(sq12);
			while (rs.next()) {
				System.out.print(rs.getString("deptno") + "\t");
				System.out.print(rs.getString("dname") + "\t");
				System.out.println(rs.getString("loc") + " ");
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e);
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
}
}