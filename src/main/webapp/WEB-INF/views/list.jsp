<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ToDiArY</title>
<style>
	@font-face {
    font-family: 'MADE Sunflower Regular';
    font-style: normal;
    font-weight: normal;
    src:  url("/project1/resources/fonts/MADE.woff") format('woff');
    }
    h1, h2, h3 {
    font-family: 'MADE Sunflower Regular';
    color: #707070;
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
	
	
		.col1 {
		  float: left;
		  width: 20%;
		  padding: 10px;
		  display: inline-block;
		  height: 100vh; 
		  background-color:#EBEDEA;
		  text-align: center;
		   animation: fadein 2s;
	    -moz-animation: fadein 2s; /* Firefox */
	    -webkit-animation: fadein 2s; /* Safari and Chrome */
	    -o-animation: fadein 2s;
	}
	.col2 {
		  width: 70%;
		  padding: 20px;
		  display: inline-block;
		  height: 100vh; 
		  text-align: center;
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
	
	
	button{
		width: 85%;
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
	width: 80%;
  	margin: 0 auto;
  	align: center;
  	line-height: 20px;
  	}
  	
  	
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
.card {
	display:inline-block;
	width: 40%; 
	margin-top: 50px; 
	margin-right: 50px; 
	float:left;
	border-radius:30px;
	}
	
	.btn btn-primary{
		color:#EBEDEA;
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
	<div class ="row">
		<div class = "col1">
		<img src="../img/profile.png" height ="100" style = ""vertical-align:center;">
		<h3>${login.username}'s Diary</h3>
		<button type = "button" onclick = "location.href='../login/login'" style="margin-top: 30px; margin-bottom:20px;">Logout</button>
		<br/><button type = "button" onclick = "location.href='add'">Add New Diary</button>
	</div>
		
	<div class = "col2">
		<h1>ToDiArY Entries</h1>
			<c:forEach items="${list}" var="u">
			<c:if test="${u.userid == login.userid}">
			
		
			<div class="card">
			 	 <img class="card-img-top" src="..." alt="Card image cap" style = "height: 200px; border-radius: 30px">
			  	<div class="card-body">
				    <h5 class="card-title">${u.title}</h5>
				    <p class="card-text">${u.contents}</p>
				    <a href="#" class="btn btn-primary" style ="margin-right:30px;">  Open  </a>
				    <a href = "deleteok/${u.stx}" class="btn btn-primary">Delete</a>
				 </div>
			</div>
			</c:if>
			</c:forEach>
			<br/>
		</div>
	</div>
</body>
</html>