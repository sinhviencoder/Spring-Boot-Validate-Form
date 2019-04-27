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
  		<h2>Validate From</h2>
  		<p>Hướng dẫn validate form dùng Spring Boot + Spring Data JPA + Mysql  + JSP/JSTL</p>
  		<ul class="nav nav-tabs">
    		<li>
      			<a href="/author/add">Add Author</a>
    		</li>
    		<li>
      			<a href="/author/list-author">View List Author</a>
    		</li>
    		<li class="active">
      			<a href="/book/add">Add Book</a>
    		</li>
    		<li>
      			<a href="/book/list-book">View List Book</a>
    		</li>
  		</ul>
		<div style="margin-top: 50px;">
			<form:form action="/book/add" method="POST" modelAttribute="book">
				<div class="form-group">
				    <label for="name">Name:</label>
				    <form:input path="name"/> 
				    <form:errors path="name" cssClass="error"/>
			  	</div>
			  	
				<div class="form-group">
				    <label for="price">Price:</label>
				    <form:input path="price"/> 
				    <form:errors path="price" cssClass="error"/>
			  	</div>
			  	
				<div class="form-group">
				    <label for="quantity">Quantity:</label>
				    <form:input path="quantity"/> 
				    <form:errors path="quantity" cssClass="error"/>
			  	</div>
			  	
				<div class="form-group">
				    <label for="author">Author:</label>
				    <form:select path="author">
						   <form:option value="" label="--- Select ---"/>
						   <form:options items="${authors}"  itemValue="authorId" itemLabel="name" />
						</form:select>
				    <form:errors path="author" cssClass="error"/> <br/><br/>
			  	</div>
			  	
		     	<button type="submit" class="btn btn-primary">Submit</button>
		  	</form:form>
	  	</div>
  	</div>
</body>
</html>