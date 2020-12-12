<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
<script>
	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	
	        reader.onload = function (e) {
	            $('#blah')
	                .attr('src', e.target.result)
	                .width(150)
	                .height(200);
	        };
	
	        reader.readAsDataURL(input.files[0]);
	    }
	}
</script>
<style>
 .center {
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
	  	margin-top: 50px;
	  	align: center;
	  	line-height: 20px;
	  	}
	  	
	  	img {
	  	display:block;
  		margin:0 auto;
  		margin-top: 20px;
    height: 100%; 
    object-fit: contain;
	  	
	  
		}
		
		.upload{
			height:400px;
		}
		
</style>

<body style = "background-color:#F5F5F5;">

<div class = center>
	<h2 style = "text-align:center;">Add New Post</h2>

	<%
		DateFormat df = new SimpleDateFormat("MM월 dd일 yyyy");
		Date dateobj = new Date();
		out.println("<h3 align = \"center\">" + df.format(dateobj) + "</h3>");
      %>
<form action="addok" method="post">
	<input type="text" name="userid" value=${login.userid} style = "display:none;"readonly/>
	<label>Title:</label><input type="text" name="title"/>
	<br><label style = "margin-bottom:10px;">Content:</label>
	<br><textarea cols="50" rows="5" name="contents"></textarea>
	<div class = "upload">
	<br><label>   Choose a Photo:</label><input type="file" onchange = "readURL(this);"name="photo" style = "margin-left: 10px;"/>
	<img id="blah" src="#"/>
	</div>
	<div class = "buttons"><button type = "button" onclick = "location.href='list'">View All Records</button><input type="submit" value="Add Post"/></div>
</form>
</div>
</body>
</html>