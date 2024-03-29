<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
	@font-face {
    font-family: 'MADE Sunflower Regular';
    font-style: normal;
    font-weight: normal;
    src:  url(src/MADE.woff);
    }
    h1, h2, h3 {
    font-family: 'MADE Sunflower Regular';
    }
    
	img, label{display:inline-block;}
	label{width:130px}
	button{background-color:blue; color:white; font-size:15px}
	* {
 	 box-sizing: border-box;
	}
	img{
		margin-top:15vh
	}
	
	.col1 {
		  float: left;
		  width: 55%;
		  padding: 10px;
		  display: inline-block;
		  height: 100vh; 
		  text-align: center;
	}
	.col2 {
		  float: left;
		  width: 45%;
		  padding: 10px;
		  display: inline-block;
		  height: 100vh; 
		  text-align: center;
		  background-color:#EBEDEA;
		  
	
	}
	
	.row:after {
	  content: "";
	  display: table;
	  clear: both;
	}
	
	#userid, #password label{
		
			font-family: 'Helvetica Neue';
		  	font-size: 20px;
		  	font-style: normal;
		  	font-weight: 100;
		  	color: #8A8F88;
	}
	
	input[type=text],input[type=password], select {
		  width:55%;
		  padding: 12px 20px;
		  margin: 3px 0;
		  display: inline-block;
		  border: 1px solid #999D8F;
		  border-radius: 15px;
		  box-sizing: border-box;
		
	}
	input[type=submit] {
		width: 200px;
		height: 40px;
		border-radius:20px;
		background-color: #999D8F;
		border: none;
		transition-duration: 0.2s;
		font-family: 'Helvetica Neue';
		  	font-size: 20px;
		  	font-style: normal;
		  	font-weight: 100;
		  	color: #ffffff;
		box-shadow: 2px 4px 7px #999D8F; 
	}
	
	input[type=submit]:hover{
		background-color: #ffffff;
		color:#999D8F;
	}
	
	
	button{
		width: 200px;
		height: 40px;
		border-radius:20px;
		background-color: #999D8F;
		border: none;
		transition-duration: 0.2s;
		font-family: 'Helvetica Neue';
		  	font-size: 20px;
		  	font-style: normal;
		  	font-weight: 100;
		  	color: #ffffff;
		box-shadow: 2px 4px 7px #999D8F; 
	}
	
	button:hover{
		background-color: #ffffff;
		color:#999D8F;
	}

	
	.buttons{
	width: 500px;
  	margin: 0 auto;
  	align: center;
  	}
</style>
</head>
<body>
<div class = "row">
		<div class = "col1" style = "background-color: #ffffff;">
			<img src='../img/todiary.jpg' height="300" style = "vertical-align: center;">
		</div>
		
		<div class = "col2">
			<h1 style = "line-height: 100px; color: #707070;">Register</h1>
			<form action="joinok" method="post">
			<br><br><div id = "userid" style = "margin-top: 50px;"><label >Username</label><input type="text" name="username"/></div>
			<div id = "userid" style = "margin-top:20px;"><label>User ID:</label><input type="text" name="userid"/></div>
			<div id = "password" style = "margin-top: 20px; margin-bottom: 50px;"><label>Password: </label><input type='password' name='password' /></div>
			<br><br><input type="submit" value="Join" style = "float: right; margin-right: 70px;"/>
			</form>
		</div>
</div>
</body>
</html>