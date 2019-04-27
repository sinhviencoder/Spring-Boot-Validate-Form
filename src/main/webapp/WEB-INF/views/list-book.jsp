<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
  <script src="/jquery/jquery-3.3.1.min.js"></script>
  <script src="/bootstrap/js/bootstrap.min.js"></script>
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
    		<li>
      			<a href="/book/add">Add Book</a>
    		</li>
    		<li class="active">
      			<a href="/book/list-book">View List Book</a>
    		</li>
  		</ul>
		<div style="margin-top: 50px;">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Name</th>
			      <th scope="col">Price</th>
			      <th scope="col">Quantity</th>
			      <th scope="col">Author Name</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${ books }" var="book">
			    <tr>
			      <th scope="row">${ book.getBookId() }</th>
			      <td>${ book.getName() }</td>
			      <td>${ book.getPrice() }</td>
			      <td>${ book.getQuantity() }</td>
			      <td>${ book.getAuthor().getName() }</td>
			    </tr>
			  </c:forEach>
			  </tbody>
			</table>
		</div>
	</div>
</body>
</html>