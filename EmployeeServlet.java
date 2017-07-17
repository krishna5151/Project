package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet("/employeeservlet")
public class EmployeeServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out=resp.getWriter();
	String fname=req.getParameter("fname");
	String lname=req.getParameter("lname");
	int mobno=Integer.parseInt(req.getParameter("mobno"));
	String email=req.getParameter("email");
	String martialstatus=req.getParameter("martialstatus");
	String nationality=req.getParameter("nationality");
	String address=req.getParameter("address");
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
		PreparedStatement pr=con.prepareStatement("insert into employee (fname,lname,mobno,email,martialstatus,nationality,address) values(?,?,?,?,?,?,?)");
		pr.setString(1, fname);
		pr.setString(2, lname);
		pr.setInt(3, mobno);
		pr.setString(4, email);
		pr.setString(5, martialstatus);
		pr.setString(6, nationality);
		pr.setString(7, address);
		int i=pr.executeUpdate();
		if(i!=0){
			//out.println("data inserted success....");
			resp.sendRedirect("success.jsp");
		}else{
			//out.println("data inserted fail....");
			resp.sendRedirect("failure.jsp");
		}
		
		} catch (Exception e) {
		out.println(e.getMessage());
	}
		
		
	}
	
	
}
