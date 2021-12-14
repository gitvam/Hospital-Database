<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="as2.css">
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
</style>
</head>
<body>
<h1>TEP</h1>
 <form action="episkepsi_asthenous/add_patient.jsp">
  <button type="submit" class="btn">Episkepsi Asthenous sto TEP</button>
 </form>
 
 <form action="eksetasi_asthenous/select_patient.jsp">
  <button type="submit" class="btn">Eksetasi Asthenous apo giatro</button>
 </form>
 
 <form action="epaneksetasi_asthenous/select_patient1.jsp">
  <button type="submit" class="btn">Epaneksetasi Asthenous</button>
 </form>
 
 <form action="efhmeries/programma_efhmerias.jsp">
  <button type="submit" class="btn">Emfanish Efhmeriwn</button>
 </form>
 
 <form action="erwthseis/questions.jsp">
  <button type="submit" class="btn">Erwthseis</button>
 </form>
 
 <form action="index.html">
  <button type="submit" class="logoutbtn">Logout</button>
 </form>

</body>
</html>

<%
 String url = new String("jdbc:mysql://localhost");
 String databaseName = new String("test");
 int port = 3306;
 String username = new String("root");
 String password = new String("");
 Connection con = null;
 Statement temp = null;
 Statement myStmt = null;
 ResultSet myRs = null;

 try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(
	url + ":" + port + "/" + databaseName + "?characterEncoding=UTF-8", username, password);
	
	// 2. Create a statement
	myStmt = con.createStatement();
    temp = con.createStatement();
	
	//temp.executeUpdate("drop table if exists dedomena_prosopikou");
	temp.executeUpdate("CREATE TABLE IF NOT EXISTS dedomena_prosopikou " +
               "(onomatepwnumo VARCHAR(100) not NULL, " +
               " epaggelma VARCHAR(20) not NULL," + 
               " ekseidikikeusi VARCHAR(25) DEFAULT NULL, " + 
               " phone_number INTEGER not NULL, " + 
               " PRIMARY KEY ( onomatepwnumo ))");
	
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Giorgos Rousos','giatros','kardiologos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Giannis Dicaprio','giatros','ofthalmiatros',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Maria Koula','nosileutis',' ',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Asterios Lentzos','upallilos',' ',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Mixalis Toutou','giatros','allergiologos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Kwstas Mathiou','giatros','gastrenterologos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Aggelos Rosmarakis','giatros','orthopedikos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Marios Nitis','nosileutis',' ',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Giorgos Vamvakousis','giatros','genikos',1231231231)");
	
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Vladimiros Rousounelos','giatros','kardiologos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Periandros Kotas','giatros','ofthalmiatros',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Tasia Koula','nosileutis',' ',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Sofronis Antoniou','upallilos',' ',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Allec Greco','giatros','allergiologos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Rio Patatas','giatros','gastrenterologos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Petros Peikos','giatros','orthopedikos',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Vicky Katsouni','nosileutis',' ',1231231231)");
	temp.executeUpdate("INSERT INTO dedomena_prosopikou " + "VALUES ('Triandros Vam','giatros','genikos',1231231231)");
			
	
	 //4. Process the result set
	/*myRs = myStmt.executeQuery("select * from dedomena_prosopikou");
	
	System.out.println("\n"+ 
	"--dedomena_proswpikou(onomatepwnumo,epaggelma,ekseidikeush(an exei),thlefwno)--"+"\n");
	while (myRs.next()) {
		if(!myRs.getString("epaggelma").equals("giatros"))System.out.println(myRs.getString("onomatepwnumo") +" | "+ myRs.getString("epaggelma") + " | " +myRs.getString("phone_number"));
		else System.out.println(myRs.getString("onomatepwnumo") +" | "+ myRs.getString("epaggelma") +": "+ myRs.getString("ekseidikikeusi")+" | "+myRs.getString("phone_number"));
	}
	myRs.close();*/
	
	// to table me ta dedomena asthenwn kai apo katw ta insertions 
	//temp.executeUpdate("drop table if exists dedomena_asthenwn");
	temp.executeUpdate("CREATE TABLE IF NOT EXISTS dedomena_asthenwn " +
               "(amka INTEGER not NULL, " +
               " onomatepwnumo VARCHAR(100) not NULL, " + 
               " dieuthinsi VARCHAR(100) not NULL, " + 
               " asfalistikos_foreas VARCHAR(100) not NULL, " + 
               " xronia_nosimata VARCHAR(300) DEFAULT NULL, " + 
               " plhrofories_prohgoumenwn_episkepsewn VARCHAR(300) DEFAULT NULL, " +
               " symptoms VARCHAR(300) not NULL, " +
               " PRIMARY KEY ( amka ))");
	
	temp.executeUpdate("INSERT INTO dedomena_asthenwn " + "VALUES (12312312,'Giorgos Giorgou','Kentro','efka','epilipsia','23/12/2020-phre farmakeutikh agwgh','ponokefalos')");
	temp.executeUpdate("INSERT INTO dedomena_asthenwn " + "VALUES (31231231,'Mixalis Leontas','Therisos','oga','diavitis','12/11/2020-programmatismeno checkup','ponolaimos')");
	temp.executeUpdate("INSERT INTO dedomena_asthenwn " + "VALUES (53523123,'Kostas Konstantinou','Amnisos','ika','','11/04/2020-eksetasi sta epeigonta-phre agwgh','puretos')");
	temp.executeUpdate("INSERT INTO dedomena_asthenwn " + "VALUES (57234543,'Makis Leontas','Kentro','ika','','19/04/2020-eksetasi sta epeigonta-aplo kruologhma','puretos')");
	temp.executeUpdate("INSERT INTO dedomena_asthenwn " + "VALUES (12347536,'Tasos Magkas','Kentro','ika','kardiaki aneparkeia','12/01/2021-miniaio checkup-agwgh paramenei idia','ponos')");
	
	
	/*myRs = myStmt.executeQuery("select * from dedomena_asthenwn");
	
	System.out.println("\n"+ 
			"--dedomena_asthenwn(amka,onomatepwnumo,dieuthinsi,asfalistikos_foreas,xronia_nosimata,plhrofories_prohgoumenwn_episkepsewn)--"+"\n");
	while (myRs.next()) {
		if(myRs.getString("xronia_nosimata").equals(" "))System.out.println(myRs.getString("amka") +" | "+myRs.getString("onomatepwnumo") +" | "+ myRs.getString("dieuthinsi") +": "+ myRs.getString("asfalistikos_foreas")+" | "+myRs.getString("plhrofories_prohgoumenwn_episkepsewn"));
		else System.out.println(myRs.getString("amka") +" | "+myRs.getString("onomatepwnumo") +" | "+ myRs.getString("dieuthinsi") +": "+ myRs.getString("asfalistikos_foreas")+" | "+myRs.getString("xronia_nosimata")+" | "+myRs.getString("plhrofories_prohgoumenwn_episkepsewn"));
	}
	myRs.close();*/
	
	// to table me ta dedomena efimerias kai apo katw ta insertions 
	//temp.executeUpdate("drop table if exists dedomena_efimerias");
	temp.executeUpdate("CREATE TABLE IF NOT EXISTS dedomena_efimerias " +
               "(arithmos_diathesimwn_giatrwn INTEGER not NULL, " +
               "arithmos_diathesimwn_noshleutwn INTEGER not NULL, " +
               "arithmos_diathesimwn_dioikitikou_proswpikou INTEGER not NULL, " +
               " PRIMARY KEY ( arithmos_diathesimwn_giatrwn ))");
	
	temp.executeUpdate("INSERT INTO dedomena_efimerias " + "VALUES (6,2,1)");
	
	/*myRs = myStmt.executeQuery("select * from dedomena_efimerias");
	System.out.println("\n"+ 
			"--dedomena_efimerias--"+"\n");
	
	while (myRs.next()) {
		System.out.println("Arithmos diathesimwn giatrwn: "+myRs.getString("arithmos_diathesimwn_giatrwn")+"\n"+"Arithmos diathesimwn noshleutwn: "+myRs.getString("arithmos_diathesimwn_noshleutwn")+"\n"+"Arithmos diathesimou dioikitikou proswpikou: "+myRs.getString("arithmos_diathesimwn_dioikitikou_proswpikou"));
	}
	myRs.close();*/
	
	// to table me tis eksetaseis kai ta farmaka kai apo katw ta insertions
	//temp.executeUpdate("drop table if exists eksetaseis_kai_farmaka");
	temp.executeUpdate("CREATE TABLE IF NOT EXISTS eksetaseis_kai_farmaka " +
               "(onoma_diathesimou_farmakou VARCHAR(50) not NULL, " +
               " tupos_farmakou VARCHAR(15) not NULL, " + 
               " periektikotita_se_drastiki_ousia INTEGER not NULL, " + 
               " katallilo_gia VARCHAR(50) not NULL, " +
               " PRIMARY KEY ( onoma_diathesimou_farmakou ))");
	
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('ponstan00','xapi',120,'puretos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('ponstan01','siropi',120,'puretos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('depon00','xapi',500,'ponokefalos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('depon01','siropi',500,'ponokefalos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('artelac','stagones',10,'provlima_sta_matia')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('arichol','xapi',500,'ponos_stin_kardia')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('mesulid','xapi',500,'ponos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('xanax','xapi',1000,'ponos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('xozal','xapi',1000,'allergies')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('bisolvon00','xapi',150,'ponolaimos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('bisolvon01','siropi',150,'ponolaimos')");
	temp.executeUpdate("INSERT INTO eksetaseis_kai_farmaka " + "VALUES ('prodiac','kapsoula',30,'ponokoilos')");
	
	/*myRs = myStmt.executeQuery("select * from eksetaseis_kai_farmaka");
	System.out.println("\n"+ 
			"--eksetaseis_kai_farmaka(onoma_diathesimou_farmakou,tupos_farmakou,periektikotita_se_drastiki_ousia)--"+"\n");
	while (myRs.next()) {
		System.out.println(myRs.getString("onoma_diathesimou_farmakou")+" | " +myRs.getString("tupos_farmakou")+" | " +myRs.getString("katallilo_gia")+" | " +myRs.getString("periektikotita_se_drastiki_ousia")+"mg");
	}
	myRs.close();*/
	
	// to table me tis astheneies kai diagnosi kai apo katw ta insertions 
	//temp.executeUpdate("drop table if exists astheneies_kai_diagnosi");
	temp.executeUpdate("CREATE TABLE IF NOT EXISTS astheneies_kai_diagnosi " +
               "(onoma_astheneias VARCHAR(30) DEFAULT NULL, " +
               " PRIMARY KEY ( onoma_astheneias ))");

	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('katagma')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('arithmies')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('covid-19')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('covid-20')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('gripi')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('gastrenteritida')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('kruologhma')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('allergia')");
	temp.executeUpdate("INSERT INTO astheneies_kai_diagnosi " + "VALUES ('provlima_orasis')");
	
	
	/*myRs = myStmt.executeQuery("select * from astheneies_kai_diagnosi");
	System.out.println("\n"+ 
			"--astheneies kai diagnosi--"+"\n");
	while (myRs.next()) {
		System.out.println(myRs.getString("onoma_astheneias"));
	}
	myRs.close();*/
	
	// to table me tous xristes tou pliroforiakou susthmatos kai apo katw ta insertions 
	//temp.executeUpdate("drop table if exists xristes_pliroforiakou_susthmatos");
	temp.executeUpdate("CREATE TABLE IF NOT EXISTS xristes_pliroforiakou_susthmatos " +
               "(onoma_xristi_sustimatos VARCHAR(100), " +
               "idiotita_xristi VARCHAR(100), " + 
               " PRIMARY KEY ( onoma_xristi_sustimatos ))");  

	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Giorgos Rousos','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Giannis Dicaprio','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Maria Koula','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Asterios Lentzos','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Mixalis Toutou','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Kwstas Mathiou','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Aggelos Rosmarakis','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Marios Nitis','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Giorgos Vamvakousis','proswpiko')");
	
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Vladimiros Rousounelos','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Periandros Kotas','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Tasia Koula','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Sofronis Antoniou','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Allec Greco','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Rio Patatas','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Petros Peikos','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Vicky Katsouni','proswpiko')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Triandros Vam','proswpiko')");
	
	
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Giorgos Giorgou','asthenis')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Mixalis Leontas','asthenis')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Kostas Konstantinou','asthenis')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Makis Leontas','asthenis')");
	temp.executeUpdate("INSERT INTO xristes_pliroforiakou_susthmatos " + "VALUES ('Tasos Magkas','asthenis')");

	/*myRs = myStmt.executeQuery("select * from xristes_pliroforiakou_susthmatos");
	System.out.println("\n"+ 
			"--xristes pliroforiakou susthmatos--"+"\n");
	while (myRs.next()) {
		System.out.println(myRs.getString("onoma_xristi_sustimatos") +" | "+ myRs.getString("idiotita_xristi"));
	}
	myRs.close();*/		
	
 }
 catch(Exception e) {
	System.out.println(e);
 } finally {
	 if(myRs != null) myRs.close();
	 if (myStmt != null) myStmt.close();
	 if(con != null) con.close();
 }
 


%>