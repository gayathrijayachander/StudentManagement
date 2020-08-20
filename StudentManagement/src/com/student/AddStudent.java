package com.student;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddStudent extends HttpServlet
{
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException 
	{
		String gender;
		String date = req.getParameter("date");
		String newDate[] = date.split("-");
		String formattedDate = newDate[1]+"-"+newDate[2]+"-"+newDate[0];
		gender = (req.getParameter("male") == "on") ? "Male" : "Female";
		PrintWriter out = res.getWriter();
	    String fName = "E://workplace/StudentManagement/WebContent/data.csv";
	 //   res.setContentType("text/csv");
		FileWriter file = new FileWriter(fName,true);
		//file.write("hello");
		file.write("\n");
		file.write(req.getParameter("studentID")+", "+req.getParameter("studentName")+","+gender+", "+formattedDate+", "+req.getParameter("city")+", "+req.getParameter("state")+", "+req.getParameter("email")+", "+req.getParameter("qualification")+", "+req.getParameter("stream"));
	//	res.setContentType("text/csv");
	//	out.println(req.getParameter("studentID")+", "+req.getParameter("studentName")+","+gender+", "+formattedDate+", "+req.getParameter("city")+", "+req.getParameter("state")+", "+req.getParameter("email")+", "+req.getParameter("qualification")+", "+req.getParameter("stream"));
		file.close();
		out.println(req.getParameter("studentName")+"'s"+" "+"Record is Successfully added to the file !!");
	}
}
