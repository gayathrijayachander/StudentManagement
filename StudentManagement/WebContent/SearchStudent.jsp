<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Data</title>
<style>
table {
  border-collapse: collapse;
}

table, td, th {
  border: 1px solid black;
}
</style>
</head>
<body>
	<% 
   String fName = "E://workplace/StudentManagement/WebContent/data.csv";
   String thisLine;  
   FileInputStream fis = new FileInputStream(fName);
   DataInputStream myInput = new DataInputStream(fis);
   String key = request.getParameter("studentID");
   int record = 0;
   while((thisLine = myInput.readLine()) != null)
   {
	   String str[] = thisLine.split(",");
	   if(str[0].equals(key))
	   {
		   record++;
	   %>
	 
	   <table>
	   	<tr>
	   		<td><b><% out.print("Student ID"); %></b></td>
	   		<td><%out.print(" "+str[0]+" ");%></td>
	   	</tr>
	   	<tr>
	   		<td><b>Student Name</b></td>
	   		<td><%out.print(" "+str[1]+" ");%></td>
	   	</tr>
	   	<tr>
	   		<td><b>Gender</b></td>
	   		<td><%out.print(" "+str[2]+" ");%></td>
	   		
	   	</tr>
	   	<tr>
	   		<td><b>DateOfBirth</b></td>
	   		<td><%out.print(" "+str[3]+" ");%></td>
	   	</tr>
	   	<tr>
	   		<td><b>City</b></td>
	   		<td><%out.print(" "+str[4]+" ");%></td>
	   		
	   	</tr>
	   	<tr>
	   		<td><b>State</b></td>
	   		<td><%out.print(" "+str[5]+" ");%></td>
	   		
	   	</tr>
	   	<tr>
	   		<td><b>EmailID</b></td>
	   		<td><%out.print(" "+str[6]+" ");%></td>
	   		
	   	</tr>
	   	<tr>
	   		<td><b>Qualification</b></td>
	   		<td><%out.print(" "+str[7]+" ");%></td>
	   		
	   	</tr>
	   	<tr>
	   		<td><b>Stream</b></td>
	   		<td><%out.print(" "+str[8]+" ");%></td>
	   		
	   	</tr>
	   </table>
		<%   
	   } 
   }
   if(record == 0)
   {
	   out.println("Sorry there is no Student with Student ID "+key);
   }
 %>
</body>
</html>