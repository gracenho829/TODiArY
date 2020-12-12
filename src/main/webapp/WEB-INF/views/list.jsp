<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>One Chapter</title>
<style>
	.wrapper{
	display: flex;
	}
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
        min-width: 250px;
        min-height: 100vh;
        display: inline-block;
        background-color:#EBEDEA;
        text-align: center;
         animation: fadein 2s;
          -moz-animation: fadein 2s; /* Firefox */
          -webkit-animation: fadein 2s; /* Safari and Chrome */
          -o-animation: fadein 2s;
   }
   .col2 {
        width: 70%;

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

	.buttons{
	width: 95%;
  	margin: 0 auto;
  	align: center;
  	line-height: 20px;
  	}
  	
   button{
      width: 85%;
      height: 40px;
      border-radius:20px;
      background-color: #475438;
      border: none;
      transition-duration: 0.2s;
      font-family: 'Helvetica Neue';
           font-size: 20px;
           font-style: normal;
           font-weight: 100;
           color: #ffffff;
      box-shadow: 2px 4px 7px #999D8F;
   }

	.modalButton{
		 width: 85%;
      height: 40px;
      border-radius:20px;
      background-color: #475438;
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


   .card {
      display:inline-block;
      width: 300px;
      margin-top: 50px;
      margin : 20px;
      float:left;
      border-radius:30px;
      box-shadow: 2px 4px 5px #999D8F;
      border: none;
      background-color:#D4D7C6;
   }

   .card-title {
         color: white;
   }

    .card-text{
       font-family: 'Helvetica Neue';
      font-size: 12px;
      font-style: normal;
      font-weight: 100;
    }

	.open{
		width: 60%;
		border-radius: 10px; 
		background-color: #475438; 
		border: none;
		margin-bottom: 20px;
	}
	.close{
		width: 25px;
		height:25px;
		border-radius: 10px; 
		background-color: #475438; 
		border: none;
		margin-bottom: 20px;
	}
	
	.modal-header{
	background-color:#ffffff;
	border-radius:	20px 20px 0px 0px;
	 width: 600px;
     margin: 0 auto;
     align: center;
     margin-bottom: 10px;
	}
	
	.modal-content{
		width: 400px;
		 min-width: 200px;
		border-radius: 20px;
		margin: 0 auto;
    	 align: center;
    	 height: 70vh;

  
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
	<div class="row">
		<div class="col1">
			<img src="../img/profile.png" height="100" style="vertical-align:center;">
			<h3>${login.username}'s Diary</h3>
			<button type="button" onclick="location.href='add'"
				style="margin-top: 30px; margin-bottom: 20px;">Add New
				Diary</button>
			<br />
			<button type="button" onclick="location.href='../login/login'">Logout</button>
		</div>

		<div class="col2">
			<h1 style="margin-top: 20px;">One Chapter a Day</h1>
			<c:forEach items="${list}" var="u" varStatus="vs">
				<c:if test="${u.userid == login.userid}">
					<div class="card">
						<img class="card-img-top" src="${u.photo}" alt="Card image cap" style="height: 100px; border-radius: 30px; object-fit: cover;">
						<div class="card-body">
							<h5 class="card-title">${u.title}</h5>
							<%--    <a href = "deleteok/${u.stx}" class="btn btn-primary">Delete</a>--%>
							<!-- Trigger the modal with a button -->
							  <button class = "open" data-toggle="modal" data-target="#myModal${u.stx}">Open</button>
			
			
							  <!-- Modal -->
							  <div class="modal fade" id="myModal${u.stx}" role="dialog">
							    <div class="modal-dialog">
									<div class="modal-header">
									
									          <h2 class="modal-title" style="display:inline-block;">${login.username}'s Diary</h2>
									          <button class = "close" data-dismiss="modal">X</button>
						
							        </div>
							       
						
							      <!-- Modal content-->
							      
							      <div class = "wrapper">
							      <div class="modal-content" style = "flex: 0 0 65%;">
							        
							        <div class="modal-body">
							          <img src="${u.photo}" style="height: 100px;">
							        </div>
							        </div>
							        
							        <div class="modal-content" style = "flex: 1; width:100px; margin-left:10px;">
								         <div class = "modal-body2">
								        <h4 style = "margin: 10px 10px 20px 10px; overflow-y:auto;">${u.title}</h4>
								        <div style ="margin:10px 10px 25px 10px; height: 70%; overflow-y:auto;">${u.contents}</div>
								        <div>
										<div class = "buttons" style="margin-bottom:20px;"><button type='button' onclick="location.href='edit'" style = "margin-right: 20px; width:40%; height:30px; font-size: 15px;">Edit</button><button type="button" onclick="location.href='deleteok/${u.stx}'" style="width:40%; height:30px;font-size:15px;">Delete</button></div>
										</div>
								        </div>
							        </div>
									</div>
								</div>
								
							    </div>
					
						</div>
					</div>
				</c:if>
			</c:forEach>
			<br />
		</div>
	</div>
</body>
</html>
