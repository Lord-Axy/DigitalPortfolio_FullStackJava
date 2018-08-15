<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dp.DaoImpl.*"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <style>
  
.dark-row{
    background:#AEC5E8;
    
}
.light-row{
    
    background:#F1F3F0;
}

.movie-table-head{
    
    background: ;
}
body { 

			background-position: center center;
			background-repeat:  no-repeat;
			background-attachment: fixed;
			background-size:  cover;
			background-color: #999;
  
}
</style>
<body background="resources/images/try2.jpg">

<%


try {
Class.forName("org.h2.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<div class="container">
	<div class="row">
	<br><br><p align="center">
<h1>Digital Portfolio</h1>
	</p></div>
</div>
<div class="container">
<h3>Data Table</h3>
	<div class="row">
		<div class="table-responsive table-bordered movie-table">
            <table class="table movie-table">
                  <thead>
                  <tr class= "movie-table-head">
                      <th>#</th>
                      <th>Name</th>
                      <th>Download</th>   
                      <th>Delete</th>
                  </tr>
              </thead>   
<%
int i=1;
try{ 
connection = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
statement=connection.createStatement();
String name = UserDAOImpl.named;
String sql ="SELECT * FROM "+ name+";";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
%>
<tbody>
<tr class= "dark-row">

<td><%=resultSet.getString("Name") %></td>
<td><%=i %></td>

<td><form method ="get" action="download"><input type="hidden" name="name" value=<%=resultSet.getString("Name") %>>
<input type="submit" value="download"></form></td>
<td><form method ="get" action="delete"><input type="hidden" name="name"  value=<%= resultSet.getString("Name") %>>
<input type="submit" value="delete"></form></td>

</tr>

<% 
i++;
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</tbody>
            </table>
            </div>
	</div>
</div>
<div class="container">
	<div class="row">
	<br><br>
	<form method="get" action="file">
<input type="submit" class="btn btn-block btn-primary btn-success" value="Go To uploaded Images"/>
	</form>
	</div>
</div>
</body>
</html>
