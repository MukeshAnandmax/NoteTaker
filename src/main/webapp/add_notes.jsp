<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp"%>

<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		
		<br>
		<h1> Add your Notes here</h1>
		<br>
		
		
		
		<!-- this is Add Note form -->

	<form action="SaveNoteServlet" method ="post">
		<div class="form-group">
			<label for="Title">Note Title</label> 
			
			<input required
			name="title"
			type="text" 
			class="form-control" 
			id="title"
			aria-describedby="Title" 
			placeholder="Enter Title"
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
			 >
			 </textarea>
		</div>
		
		<div class ="container text-center">
		<button type="submit" class="btn purple text-white">Add</button>
		</div>
	</form>
		
		
		

	</div>





</body>
</html>