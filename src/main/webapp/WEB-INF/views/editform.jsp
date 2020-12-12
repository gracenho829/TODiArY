<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.project1.ToDiArY.ContentsDAO,com.project1.ToDiArY.Contents"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>

<style>
 .center {
	min-height: 400px;
	margin: auto;
	margin-top: 40px;
	width: 60%;
    border: none;
 	background-color:#FFFFFF;
	padding: 30px;
	color: #707070;
	border-radius: 30px;
	box-shadow: 2px 4px 7px #999D8F; 
	font-family: 'Helvetica Neue';
	font-weight: 50;
}

	h3{color:#A9B6A4;}
	input[type=text], select {
		  width: 80%;
		  display: block;
		  border: 1px solid #999D8F;
		  border-radius: 8px;
		  box-sizing: border-box;
		  margin: auto;
		  margin-top:5px;
		  padding-left: 10px;
		  padding-right: 10px;
		  font-family: 'Helvetica Neue';
		 font-size: 15px;
		 font-weight:100;
		  outline:none;
		
	}
	
	textarea{
		  width: 80%;
		  display: block;
		  border: 1px solid #999D8F;
		  border-radius: 15px;
		  box-sizing: border-box;
		  padding-top:10px;
		  padding-left: 10px;
		  padding-right: 10px;
		 margin: auto;
		 margin-top:5px;
		 font-family: 'Helvetica Neue';
		 font-size: 15px;
		 font-weight:100;
		 outline:none;
	}
	

		button, input[type=submit]{
			width:45%;
			height: 40px;
			border-radius:20px;
			background-color: #475438;
			border: none;
			font-family: 'Helvetica Neue';
			  	font-size: 20px;
			  	font-style: normal;
			  	font-weight: 100;
			  	color: #ffffff;
			box-shadow: 2px 4px 7px #999D8F; 
			margin-top: 40px;
			margin-right: 10px;
		}
		
		button:hover{
			background-color: #ffffff;
			color:#999D8F;
		}
	
		
		.buttons{
		width: 90%;
	  	margin: 0 auto;
	  	align: center;
	  	line-height: 20px;
	  	}
	  	
	  	img {
	  	display:block;
  		margin:0 auto;
  		margin-top: 20px;
	  	height: 80%; 
	  	width: 80%; 
	  	object-fit: contain;
	  
		}
  	
	</style>
<body>

<h1>Edit Form</h1>
<form action="../editok" method="post" var="u">
<input type="hidden" name="stx" value="${u.stx}"/>
<label>Title:</label><input type="text" name="title" value="${u.title}"/>
<br><label>Content:</label><textarea cols="50" rows="5" name="contents">${u.contents}</textarea>
<br><label>Photo:</label><input type="file" name="photo"/>${u.photo}
<div class = "buttons">
<input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/>
</div>
</form>

</body>
</html>