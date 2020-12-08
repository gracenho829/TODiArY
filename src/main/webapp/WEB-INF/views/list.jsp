<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href=deleteok/${u.stx};
	}
</script>
</head>
<body>
<h1>자유게시판</h1>
<h2>${login.username}님 안녕하세요</h2><a href="../login/login">로그아웃</a>
<table id="list" width="90%">
<tr>
	<th>Title</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
<c:if test="${u.userid == login.userid}">
	<tr>
		<td>${u.title}</td>
		<td>${u.contents}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.stx}">Edit</a></td>
		<td><a href="deleteok/${u.stx}">Delete</a></td>
	</tr>
</c:if>
</c:forEach>
</table>

<br/><a href="add">Add New Post</a>
</body>
</html>