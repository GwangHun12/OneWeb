<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../One.css/mypage.css">
		<style>
			display: flex;
    		justify-content: space-evenly;
   			font-size: 24px;
   			padding-top : 90px;
		</style>
	</head>
	<body>
	<header>
	 	<div id="header1">
          <a href="../index.jsp">
          <img src="../img/emisLOGO.svg" alt="One로고"></a>
        </div>
	 </header>
	<input type="hidden" name="memberId" value="${sessionScope.memberId}" />
	<h1>마이페이지</h1>
	<main id="main">
		<form action="/member/update.do" method="post">
			<fieldset>
	
					<legend>회원 상세 정보</legend>
					<ul>
						<li>
							<label for="memberId">아이디</label>
							<input type="text" id="memberId" name="memberId" value="${memberId }" readonly> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
						</li>
						<li>
							<label for="pass">비밀번호</label>
							<input type="password" id="pass" name="pass">
						</li>
					</ul>
				</fieldset>
				<div>
					<button type="submit">수정하기</button>
					<a href="javascript:void(0)" onclick="checkDelete();">탈퇴하기</a>
					<%-- <a href="/member/delete.do?memberId=${sessionScope.memberId }">탈퇴하기</a> --%>
					<!-- <button>탈퇴하기</button> -->
				</div>
			</form>
	</main>
			<script>
				function checkDelete(){
					if(confirm("탈퇴하시겠습니까?")){
						location.href = "/member/delete.do?memberId=${memberId}";
					}
				}
			</script>
	</body>
</html>