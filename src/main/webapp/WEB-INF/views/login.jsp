<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log-In to ToDiArY</title>
<style>
	@font-face {
    font-family: 'MADE Sunflower Regular';
    font-style: normal;
    font-weight: normal;
    src:  url("${pageContext.request.contextPath}/resources/fonts/MADE.woff") format('woff');
    }
    h1, h2, h3 {
    font-family: 'MADE Sunflower Regular';
    }
    
    @keyframes fadein {
	    from {
	        opacity:0;
	    }
	    to {
	        opacity:1;
	    }
	}
	@-moz-keyframes fadein { /* Firefox */
	    from {
	        opacity:0;
	    }
	    to {
	        opacity:1;
	    }
	}
	@-webkit-keyframes fadein { /* Safari and Chrome */
	    from {
	        opacity:0;
	    }
	    to {
	        opacity:1;
	    }
	}
	@-o-keyframes fadein { /* Opera */
	    from {
	        opacity:0;
	    }
	    to {
	        opacity: 1;
	    }
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
		   animation: fadein 2s;
	    -moz-animation: fadein 2s; /* Firefox */
	    -webkit-animation: fadein 2s; /* Safari and Chrome */
	    -o-animation: fadein 2s;
	}
	.col2 {
		  float: left;
		  width: 45%;
		  padding: 10px;
		  display: inline-block;
		  height: 100vh; 
		  text-align: center;
		  background-color:#EBEDEA;
		   animation: fadein 2s;
	    -moz-animation: fadein 2s; /* Firefox */
	    -webkit-animation: fadein 2s; /* Safari and Chrome */
	    -o-animation: fadein 2s;
		
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
	
	
	button{
		width: 150px;
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
	width: 95%;
  	margin: 0 auto;
  	align: center;
  	line-height: 20px;
  	}
</style>
</head>
<body>
	
	<div class = "row">
		<div class = "col1" style = "background-color: #ffffff;">
			<img src='../img/todiary.jpg' height="300" style = "vertical-align: center;">
		</div>
		
		<div class = "col2">
			<form method="post" action="loginOk">
			<h1 style = "line-height: 50px; color: #707070;">Log-In</h1>
			<div id = "userid" style = "margin-top: 100px;"><label >Username: </label><input type='text' name='userid'/></div>
			<div id = "password" style = "margin-top: 20px; margin-bottom: 90px;"><label>Password: </label><input type='password' name='password' /></div>
			<div>
				<div class = "buttons"><button type='submit' style = "margin-right: 20px;">Login</button><button type="button" onclick="location.href='join'">Register</button></div>
			</div>
			</form>
		</div>
	</div>
</body>
</html>