<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>

<title>Show Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">

			<div class="col-12">



				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();

				for (Note note : list) {
				%>

				<div class="card mt-3" >
					<img class="card-img-top mt-3 ml-3 mx-auto" style="max-width:100px" src="img/notes.png" alt="Card image cap">
					<div class="card-body px-5" >
					<div class="container text-center">
					<h5 class="card-title"><%=note.getTitle() %></h5>
					</div>
						<p class="card-text"><%=note.getContent()%></p>
						<%
						Date d =note.getAddedDate() ;
						SimpleDateFormat formatter = new SimpleDateFormat("E , dd/MMM/yy  hh:mm a");  
					    String strDate= formatter.format(d); 
						
						%>
						<p class="text-primary"> <%=strDate%> </p>
						
						
						<div class="container text-center mt-3">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="Edit.jsp?note_id=<%=note.getId()%>" class="btn purple text-white">Update </a>
						</div>
						
					</div>
				</div>

				<%
				}
				s.close();
				%>



			</div>

		</div>




	</div>


</body>
</html>