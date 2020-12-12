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
			<img src="../img/profile.png" height="100" style=""vertical-align:center;">
			<h3>${login.username}'sDiary</h3>
			<button type="button" onclick="location.href='add'"
				style="margin-top: 30px; margin-bottom: 20px;">Add New
				Diary</button>
			<br />
			<button type="button" onclick="location.href='../login/login'">Logout</button>
		</div>

		<div class="col2">
			<h1 style="margin-top: 20px;">ToDiArY Entries</h1>
			<c:forEach items="${list}" var="u" varStatus="vs">
				<c:if test="${u.userid == login.userid}">
					<div class="card">
						<img class="card-img-top" src="${u.photo}" alt="Card image cap" style="height: 100px; border-radius: 30px; object-fit: cover;">
						<div class="card-body">
							<h5 class="card-title">${u.title}</h5>
							<!-- <p class="card-text">${u.contents}</p> -->
							<%--    <a href = "deleteok/${u.stx}" class="btn btn-primary">Delete</a>--%>
							<!-- Trigger the modal with a button -->
							  <button class="btn btn-primary" style="border-radius: 10px; background-color: #475438; border: none;" data-toggle="modal" data-target="#myModal${u.stx}">Open</button>

							  <!-- Modal -->
							  <div class="modal fade" id="myModal${u.stx}" role="dialog">
							    <div class="modal-dialog">

							      <!-- Modal content-->
							      <div class="modal-content">
							        <div class="modal-header">
							          <button data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">${u.title}</h4>
							        </div>
							        <div class="modal-body">
							          <img src="${u.photo}" alt="Card image cap" style="height: 100px;">
							          <p>${u.contents}</p>
							        </div>
							        <div class="modal-footer">
							          <button data-dismiss="modal">Close</button>
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
