<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
  <script src="/jquery/jquery-3.3.1.min.js"></script>
  <script src="/bootstrap/js/bootstrap.min.js"></script>
  <style type="text/css">
  	.error{
 		color: #dd4b39;
  	}
  </style>
</head>
<body>

	<div class="container">
  		<h2>Validate From Spring Boot</h2>
  		<p>Thêm đối tượng xuống Database có Validate Form dùng Spring Boot + Spring Form Tag + Spring Data JPA + Mysql + JSP/JSTL</p>
  		<ul class="nav nav-tabs">
    		<li class="active">
      			<a href="/author/add">Add Author</a>
    		</li>
    		<li>
      			<a href="/author/list-author">View List Author</a>
    		</li>
    		<li>
      			<a href="/book/add">Add Book</a>
    		</li>
    		<li>
      			<a href="/book/list-book">View List Book</a>
    		</li>
  		</ul>
  
  		<div style="margin-top: 50px;">
  		
			<form:form action="/author/add" method="POST" modelAttribute="author">
			
				<div class="form-group">
				    <label for="name">Name:</label>
				    <form:input path="name"/> 
				    <form:errors path="name" cssClass="error"/>
			  	</div>
			  	
				<div class="form-group">
				    <label for="email">Email:</label>
				    <form:input path="email"/> 
				    <form:errors path="email" cssClass="error"/>
			  	</div>
			  	
				<div class="form-group">
			   		<button type="submit" class="btn btn-primary">Submit</button>
			  	</div>
			  	
			</form:form>
			
		</div>
  	
	</div>

</body>
</html>

