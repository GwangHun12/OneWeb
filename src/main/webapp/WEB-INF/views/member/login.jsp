<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../One.css/login.css?after">
</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">로그인</label> <input id="tab-2" type="radio"
				name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
			<div class="login-form">
				<form id="login-form" action="/member/login.do" method="post">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">아이디를 입력해주세요.</label> <input
								id="user" type="text" class="input" name="memberId">
						</div>
						<div class="group">
							<label for="pass" class="label">비밀번호를 입력해주세요.</label> <input
								id="pass" type="password" class="input" data-type="password" name="pass">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon" name="repass"></span> 로그인 유지</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="로그인">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">비밀번호를 잊으셨나요?</a>
						</div>
					</div>
				</form>
				<form id="signup-form" action="/member/register.do" method="post">
					<div class="sign-up-html">
						<div class="group">
							<label for="user" class="label">아이디를 입력해주세요.</label> <input
								id="user" type="text" class="input" name="memberId">
						</div>
						<div class="group">
							<label for="pass" class="label">비밀번호를 입력해주세요.</label> <input
								id="pass" type="password" class="input" name="pass" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">비밀번호를 재입력해주세요.</label> <input
								id="repass" type="password" class="input" data-type="password" name="repass">
						</div>
<!-- 						<div class="group"> -->
<!-- 							<label for="pass" class="label">이메일을 입력해주세요.</label> <input -->
<!-- 								id="pass" type="text" class="input" name="email"> -->
<!-- 						</div> -->
						<div class="group">
							<input type="submit" class="button" value="회원가입">
						</div>
						<div class="hr"></div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
	const loginForm = document.getElementById("login-form");
	const signupForm = document.getElementById("signup-form");
	const loginTab = document.getElementById("tab-1");
	const signupTab = document.getElementById("tab-2");
	loginForm.style.display = "block";
	signupForm.style.display = "none";

	loginTab.addEventListener("click", function () {
		loginForm.style.display = "block";
		signupForm.style.display = "none";
	});

	signupTab.addEventListener("click", function () {
		loginForm.style.display = "none";
		signupForm.style.display = "block";
	});
	</script>
</body>
</body>
</html>