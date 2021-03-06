<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Question" %>   
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Question Page</title>

<style>

html{
     background-color: white;
}
body {
	position:relative;
	background-color: AliceBlue;
	font-family: Arial, Helvetica, sans-serif;
	margin-top:0px;
	margin-bottom:0px;
	margin-left:150px;
	margin-right:150px;
	padding-left:200px;
	padding-right:200px;
	padding-bottom:290px;
	padding-top:10px;
}

</style>


</head>
<body>
<a style="text-align: center;" href='/index.html'>Home page</a><br>
<a style="text-align: center;" href='/candidates'>Edit candidates</a>

<h2>Manage questions</h2>


<c:forEach var="question" items="${requestScope.questionlist}" >
<li><b>ID:</b> ${question.questionId} <b>NUMBER:</b> ${question.questionNumber} <b>QUESTION:</b>: ${question.question} <a href='/delete?id=${question.questionId}'>delete</a>
<br><br>
</c:forEach>


<h2>Update a question</h2>
<form action='update' method='post'> 
<label for="id">Insert the question id:</label><br>
<input type='text' name='id' value='${requestScope.question.questionId}'><br> 
<label for="question">Question number:</label><br>
<input type='text' name='qnumber' value='${requestScope.question.questionNumber}'><br>
<label for="question">Question:</label><br>
<input type='text' name='question' value='${requestScope.question.question}'><br>
<input type='submit' name='ok' value='Send'> 
</form>

<h2>Add a question</h2>
<form action='addquestion' method='post'>
<label for="question">Question number:</label><br>
<input type='text' name='qnumber' value='${requestScope.question.questionNumber}'><br> 
<label for="question">Question:</label><br>
<input type='text' name='question' value='${requestScope.question.question}'><br> 
<input type='submit' name='ok' value='Send'> 
</form>

</body>
</html>