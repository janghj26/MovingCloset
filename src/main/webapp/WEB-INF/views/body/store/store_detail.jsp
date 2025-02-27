<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script>
	function plusminus(id){
		//console.log("넘어온 값 "+id);
		var num = document.getElementById("quantity");

		if(id=="minus"){ 
			if(num.value <= 1){
				num.value = 1;
			}else{
				num.value = parseInt(num.value) - 1;
			}
		}
		
		if(id=="plus"){ 
			num.value = parseInt(num.value) + 1;
		}
		
	}

	$(function(){
		$('#btnReview').click(function(){

			var child;
			child = window.open("./reviewPage.do", "reviewpopup", "height:500px, width:250px");
		});

	});
</script>

<style>
	.img{width:100%; height:300px; margin:0 0 10px 10px; }
	span.a { display:inline; float:left; }
	#btnBuy, #basket, #wish{
		padding: 5%;
		border-radius: 5px;
		background-color: black;
		color: white;
		font-size: 1em;
		font-weight: bold;
		border: black solid 1px;
		outline: 0;
	}
	#basket, #wish{ background-color: white; color: black; }
	#btnBuy:hover{background-color:darkgray; border:#343A40;}
	#basket, #with:hover{border:gray;}
	
	#brandName ,#shoes ,#prodCount ,#price {
		font-size: 1em;
	}
	#brandName{ display: inline; }
	#prodName {font-size:1.5em;}
	#prodCount{text-align:right; vertical-align:center;}
	
	#sizeNum{ width:100%; height:40px; font-size:1em;}
    #sizeNum:focus{outline:none;}
    
	#btnReview{
		width:200px; height:40px;
		border-radius: 3px;
		background-color: black; color: white;
		outline: 0;	
	}
</style>
<style>
	body {font-family: Arial, Helvetica, sans-serif;}
	
	.myImg {
	  border-radius: 5px;
	  cursor: pointer;
	  transition: 0.3s;
	}
	.myImg:hover {opacity: 0.7;}
	
	/* The Modal (background) */
	.modal {
	  display: none; /* Hidden by default */
	  position: fixed; /* Stay in place */
	  z-index: 1; /* Sit on top */
	  padding-top: 100px; /* Location of the box */
	  left: 0;
	  top: 0;
	  width: 100%; /* Full width */
	  height: 100%; /* Full height */
	  overflow: auto; /* Enable scroll if needed */
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
	}
	
	/* Modal Content (image) */
	.modal-content {
	  margin: auto;
	  display: block;
	  width: 80%;
	  max-width: 700px;
	}
	
	/* Caption of Modal Image */
	#caption {
	  margin: auto;
	  display: block;
	  width: 80%;
	  max-width: 700px;
	  text-align: center;
	  color: #ccc;
	  padding: 10px 0;
	  height: 150px;
	}
	
	/* 애니메이션 효과 있는 부분 주석처리함 */
	/* Add Animation */
	/* .modal-content, #caption {  
	  -webkit-animation-name: zoom;
	  -webkit-animation-duration: 0.6s;
	  animation-name: zoom;
	  animation-duration: 0.6s;
	} */
	
	@-webkit-keyframes zoom {
	  from {-webkit-transform:scale(0)} 
	  to {-webkit-transform:scale(1)}
	}
	
	@keyframes zoom {
	  from {transform:scale(0)} 
	  to {transform:scale(1)}
	}
	
	/* The Close Button */
	.close {
	  position: absolute;
	  top: 100px;
	  right: 300px;
	  color: #f1f1f1;
	  font-size: 40px;
	  font-weight: bold;
	  transition: 0.3s;
	  
	}
	.close:hover,
	.close:focus {
	  color: #bbb;
	  text-decoration: none;
	  cursor: pointer;
	}
	
	/* 100% Image Width on Smaller Screens */
	@media only screen and (max-width: 700px){
	  .modal-content {
		width: 100%;
	  }
	}

	.modaltext{
		color: white;
		word-spacing: 20px;
	}

	a{ color:black; text-decoration: none; }
	a:hover{
		text-decoration: none;
		color:black;
	}
	button a, button a:hover{
		color: black; text-decoration:none;
	}
	
	#pages{
       	text-align:right;
		margin:2% 2% 3% 0;
    }
    #pageSel{
    	width:80px; height:40px;
    	border:lightgray solid 1px;
    	text-align:center; font-size:11pt;
    }
    #pgTotal{
    	color:gray; font-size: 10pt; 
    	margin:0 10px 0 10px;
    }
    .pageMove{
    	width:40px; height:40px;
    	border:none; padding:0;
    	color:white; font-size:10pt; font-weight:bold;}
    .pageMove:focus{outline:none;}
    #pmL{background-color:gray;}
    #pmR{background-color:black;}
    
    .container{
    	width:990px;
    }
    
	</style>
<title>Store</title>
</head>
<body>
	<div class="container" style="margin-top:5%;margin-bottom:3%;">
		<div class="row" style="height: 600px;">
			<div class="col-8 d-flex justify-content-center" >
				<div class="col-6" style="padding:0;display:block;height:300px;">
					<span class="a">
						<img src="../resources/images/details/1.1.png" alt="상품이미지" class='img' class="rounded"/>
					</span>
					<span class="a">
						<img src="../resources/images/details/1.2.png" alt="상품이미지" class='img' class="rounded"/>
					</span>
				</div>
				<div class="col-6" style="padding:0;display:block;height:300px;">
					<span class="a">
						<img src="../resources/images/details/1.3.png" alt="상품이미지" class='img' class="rounded"/>
					</span>
					<span class="a">
						<img src="../resources/images/details/1.4.png" alt="상품이미지" class='img' class="rounded"/>
					</span>
				</div>
				
			</div>
			
			<div class="col-4" style="padding-left:3%; padding-top:5%;">
				<div id="brandName">Converse</div>
				<div id="prodName">척 70 클래식 로우 화이트</div>&nbsp;&nbsp;&nbsp;
				<div id="price">&nbsp;85,000원</div>
				<br>

				<div class="row">
					<div class="col-11">
						<select name="size" id="sizeNum" style="border: solid lightgray 1px; border-radius:2px; padding:3px;">
							<option value=""diabled select hidden>사이즈</option>
							<option value="220">220</option>
							<option value="230">230</option>
							<option value="240">240</option>
							<option value="250">250</option>
							<option value="260">260</option>
							<option value="270">270</option>
							<option value="280">280</option>
						</select>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-4" style="vertical-align:center; text-align:right; padding-top:5px;">
						<span id="prodCount">수량</span>
					</div>
					<div class="col-8">
						<button class="btn" id="plus" onclick="plusminus(this.id);"><i class="fa fa-plus"></i></button>
						<input type="text" id="quantity" value="1" style="border:none; width:50px; background-color: none;text-align:center;">
						<button class="btn" id="minus" onclick="plusminus(this.id);"><i class="fa fa-minus"></i></button>
					</div>
				</div>
				<hr />
				<br>
				<div>
					<button id="btnBuy" style="width:92%;"><a href="#" style="color:white;">구매하기</a> </button>
				</div><br> 
				<div>
					<span><button style="width: 45%;" id="basket"><a href="#">장바구니</a></button></span>
					<span><button style="width: 45%;" id="wish" onclick="location.href='#';">위시리스트 <i class="fa fa-heart" style="color: red;"></i></button></span>
				</div>
			</div>
			
		</div>
	</div><br /><br /><br />
	
	<hr>

	<div class="container">
		<h4>평균 평점 : <span>5.0</span></h4>
		<div class="row" style="padding: 1%; padding-left:5%;">
			<div class="d-flex mr-auto" >
				<input type="checkbox" name="photocheck" id="photocheck" value="photocheck" class="form-check-input" style="zoom: 1.5;">
					<label for="photocheck" style="font-size:1em;">포토리뷰</label>
			</div>
			<div class="d-flex ml-auto">
				<button id="btnReview" >리뷰 쓰기</button>
			</div>
		</div>

		<table class="table table-hover" style="text-align: center;">
			<thead>
			<tr>
				<th style="width: 15%;">평점
					<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
					<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
					<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
					<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
					<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				</th>
				<th style="width: 40%;">한줄평</th>
				<th style="width: 20%;">작성일</th>
				<th style="width: 250%;"></th>
			</tr>
			</thead>
			<tbody>
			<tr >
				<td>
				평점 
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				</td>
				<td>신발이 예뻐요!</td>
				<td>2021-07-31</td>
				<td>
					<img class="myImg" src="../resources/images/feet-1840619_640.jpg" alt="상품이미지"
					style="width: 100px; height: auto;"/>
				</td>
			</tr>
			<tr >
				<td>
				평점 
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				</td>
				<td>신발이 예뻐요!</td>
				<td>2021-07-31</td>
				<td>
					<img class="myImg" src="../resources/images/feet-1840619_640.jpg" alt="상품이미지"
					style="width: 100px; height: auto;"/>
				</td>
			</tr>
			<tr >
				<td>
				평점 
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				</td>
				<td>신발이 예뻐요!</td>
				<td>2021-07-31</td>
				<td>
					<img class="myImg" src="../resources/images/feet-1840619_640.jpg" alt="상품이미지"
					style="width: 100px; height: auto;"/>
				</td>
			</tr>
			<tr >
				<td>
				평점 
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				</td>
				<td>신발이 예뻐요!</td>
				<td>2021-07-31</td>
				<td>
					<img class="myImg" src="../resources/images/feet-1840619_640.jpg" alt="상품이미지"
					style="width: 100px; height: auto;"/>
				</td>
			</tr>
			<tr >
				<td>
				평점 
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				<i class="fa fa-star" style="color:#FF6C2F; font-size:14pt;"></i>
				</td>
				<td>신발이 예뻐요!</td>
				<td>2021-07-31</td>
				<td>
					<img class="myImg" src="../resources/images/feet-1840619_640.jpg" alt="상품이미지"
					style="width: 100px; height: auto;"/>
				</td>
			</tr>

			</tbody>
		</table>
			<hr />
			<div id="pages">
			    <select name="pageSel" id="pageSel" placeholder="1">
					<option value="pageNum">1</option>
					<option value="pageNum">2</option>
					<option value="pageNum">3</option>
					<option value="pageNum">4</option>
					<option value="pageNum">5</option>
			    </select>
			    <span id="pgTotal">of 5</span>
			    <button class="pageMove" id="pmL"> < </button>
			    <button class="pageMove" id="pmR"> > </button>
			</div>
			<br />
		</div>

	<!-- The Modal -->
	<div id="myModal" class="modal">
		<span class="close">&times;</span>
		<img class="modal-content" id="img01" />
		<div class="modaltext" style="text-align: center;">
			<br>
			<!-- 키, 몸무게, 발사이즈 -->
			<span>키</span>
			<span>몸무게</span>
			<span>발사이즈</span>
			<br><br>
			<!-- 해시태그 부분 -->
			<span>#정사이즈</span>
			<span>#흰색</span>
			<span>#예뻐요</span> 
		</div>
	</div>

	<script>
		// Get the modal
		var modal = document.getElementById("myModal");
		
		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById("myImg");

		var modalImg = document.getElementById("img01");
		img.onclick = function(){
		  modal.style.display = "block";
		  modalImg.src = this.src;;
		}
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() { 
		  modal.style.display = "none";
		}
	</script>

</body>
</html>