package javaOracleScannerExample;

import java.util.ArrayList;
import java.util.Scanner;

public class MemberTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("Input ename...?");
		Scanner sc = new Scanner(System.in);
		String inp = sc.next();
		
		System.out.println(inp);
		sc.locale();
		
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVo> list = dao.list(inp);
		
		for (int i = 0; i < list.size(); i++) {
			MemberVo data = (MemberVo) list.get(i);
			String empno = data.getEmpno();
			String ename = data.getEname();
			int sal = data.getSal();
			int comm = data.getComm();
			
//			System.out.println(empno + " : " + ename + " : " + sal);
			System.out.println(empno + " : " + ename + " : " + sal + " : " + comm);
		}
	}
}
