<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<style>

.input-form-background {
padding-top: 50px; padding-bottom: 50px; 

}

.input-form-wrap {
	width: 80%; height: 90%;
}

.input-form {
margin-bottom: 15px;
padding-bottom: 40px;
justify-content: center;
display: flex;
align-items: center;
-webkit-border-radius: 10px;
-moz-border-radius: 10px;
border-radius: 10px;
-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}



#moyoFrm *:not(input, select){
	border: 0;
}

.productImg {
	width: 350px; height: 350px;
}

</style>
</head>
<body>
	<div class="container">
		<div class="input-form-background row">
			<div class="input-form col-md-12 mx-auto">
					<div class="input-form-wrap">
						<h4 class="mb-3">신청할 모여 정보</h4>
						
						<div>

							<img class="productImg" src="../resources/images/list/2.jpg">

						</div>
					</div>
				</div>
				<div class="input-form col-md-12 mx-auto">
					<div class="input-form-wrap">
						<h4 class="mb-3">신청자 정보</h4>
						<form name="moyoFrm" id="moyoFrm" action="#" method="post" > 
						<table class="table table-bordered">
							<colgroup>
								<col width="20%"/>
								<col width="*"/>
							</colgroup>
							<tbody>
								<tr>
									<td class="text-center"
										style="vertical-align:middle;">이름</td>
									<td>
										<input type="text" name="title" class="form-control" required/>
									</td>
								</tr>
								<tr>
									<td class="text-center"
										style="vertical-align:middle;">전화번호</td>
									<td class="form-inline">
										<select name="mobile1" class="form-control" 
										onchange="phoneFocus(3, this, 'mobile2');" style="width:80px;" required>
											<option value=" "> </option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
										&nbsp;&nbsp;-&nbsp;&nbsp;
										<input type="text" class="form-control" name="mobile2" value="" 
										maxlength="4" onkeyup="phoneFocus(4, this, 'mobile3');" style="width:100px;" required/>
										&nbsp;&nbsp;-&nbsp;&nbsp;
										<input type="text" class="form-control" name="mobile3"  value="" 
										maxlength="4" style="width:100px;" required/>
									</td>
								</tr>
								<tr>
									<td class="text-center"
										style="vertical-align:middle;">이메일</td>
									<td class="form-inline">
										<input type="text" class="form-control" name="email1" value="" style="width:30%;" required />
										&nbsp;@&nbsp;
										<input type="text" class="form-control" name="email2" value="" style="width:30%;" required/>&nbsp;&nbsp;
										<select name="email_domain" class="form-control" onchange="emailSelect(this);" style="width:25%;">
											<option value="">- 직접입력 -</option>
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="gmail.com">gmail.com</option>
										</select>
									</td>
								</tr>
							</tbody>
							</table>
						</form>
						
						<hr class="mb-4">

						<h4 class="mb-3">약관동의</h4>

						<textarea rows="6" name="content" class="form-control" style="resize:none;"
							placeholder="개인정보수집약관" readonly></textarea>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="aggrement"
								required> <label class="custom-control-label"
								for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
						</div>
						<textarea rows="6" name="content" class="form-control" style="resize:none;"
							placeholder="노쇼약관노쇼약관" readonly></textarea>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="aggrement"
								required> <label class="custom-control-label"
								for="aggrement">노쇼 시 부여되는 경고사항에 대해 동의합니다.</label>
						</div>

						<button class="btn btn-primary btn-lg btn-block" type="submit">모여!</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>


