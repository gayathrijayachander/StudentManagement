<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display all students</title>
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
   int count=0; 
   FileInputStream fis = new FileInputStream(fName);
   DataInputStream myInput = new DataInputStream(fis);
   int i=0; 
 %>
 <table>
 <%
    while ((thisLine = myInput.readLine()) != null)
	{
	String strar[] = thisLine.split(",");
	%>
	<tr>
	<% for(int j=0;j<strar.length;j++)
	{
	if(i!=0)
	{
	%>
	 <td><% out.print(" " +strar[j]+ " "); %></td>
	<% 
	}
	else
	{
	%>
	<th><% out.print(" " +strar[j]+ " "); %></th>
	<%
	}
	}
	//out.println("<br>");
	i++;
	}%> 
	</tr>

</table>
</body>
</html>