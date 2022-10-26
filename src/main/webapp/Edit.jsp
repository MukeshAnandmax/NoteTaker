<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>


	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your Note here :</h1>
		<br>
		
		<% 
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			
			Note note = (Note)s.get(Note.class, noteId);
			
		%>
		
	<form action="UpdateServlet" method ="post">
	<input value="<%=note.getId()%>" name=noteId type ="hidden">
		<div class="form-group">
			<label for="Title">Note Title</label> 
			
			<input required
			name="title"
			type="text" 
			class="form-control" 
			id="title"
			aria-describedby="Title" 
			placeholder="Enter Title"
			value="<%=note.getTitle() %>"
			/> 
				
		</div>
		<div class="form-group">
			<label for="content">Note Content </label>
			 <textarea 
			 name="content"
			 required  
			 id="content" 
			 placeholder="Enter Content here" 
			 class="form-control"
			 style="height:250px"
			 ><%=note.getContent()%></textarea>
		</div>
		
		<div class ="container text-center">
		<button type="submit" class="btn purple text-white">SAVE</button>
		</div>
	</form>
		
		
		
		
		
		
		
	</div>

</body>
</html>