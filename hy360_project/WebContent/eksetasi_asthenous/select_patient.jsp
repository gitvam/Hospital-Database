<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../as2.css">
<meta charset="UTF-8">
<title>Epilogh Astheni</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
</style>
</head>
<body>
<form action="">
<h1 style="text-align:center;">Choose a patient from list</h1>
<%
 String url = new String("jdbc:mysql://localhost");
 String databaseName = new String("test");
 int port = 3306;
 String username = new String("root");
 String password = new String("");
 Connection con = null;
 Statement myStmt = null;
 PreparedStatement pat = null;
 ResultSet myRs = null;

 try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(
	url + ":" + port + "/" + databaseName + "?characterEncoding=UTF-8", username, password);

    myStmt = con.createStatement();

    myRs = myStmt.executeQuery("select * from dedomena_asthenwn");

    out.println("Onomata asthenwn:");
    out.println("<br>");
    out.println("<br>");
    while (myRs.next()) {
	   out.println(myRs.getString("onomatepwnumo"));
       out.println("<br>");
    }
    myRs.close();

    

%>
<br><label for="patient"><b>Write the patient's name</b></label>
  <input type="text" placeholder="Enter Patient's Name" name="patient" id="patient" required>
  
 <button type="submit" class="eksetbtn">Proxwra stin eksetasi</button>

</form>

</body>
</html>

<%
    String name = request.getParameter("patient");
    pat = con.prepareStatement("select * from dedomena_asthenwn where onomatepwnumo = ?");
    pat.setString(1, name);
    //System.out.println(name);

    myRs = pat.executeQuery();
    if(myRs.next()) {
       if(name!=null) {
         //System.out.println(name);
         response.sendRedirect("eksetasi_giatrou.jsp?name=" + name);
       }
    } else {
       if(name!=null) {
         out.println("Lathos onoma.");
       }
    }
    myRs.close();

 } catch(Exception e) {
	System.out.println(e);
 } finally {
     pat.close();
	 myStmt.close();
     con.close();
 }
%>
