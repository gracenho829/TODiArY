<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.project1.ToDiArY.ContentsDAO,com.project1.ToDiArY.Contents"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form action="../editok" method="post" var="u">
<input type="hidden" name="stx" value="${u.stx}"/>
<table>
<tr><td>Title:</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="contents">${u.contents}</textarea></td></tr>
<tr><td>Photo:</td><td><input type="file" name="photo"/>${u.photo}</td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>