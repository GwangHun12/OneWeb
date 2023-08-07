<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 목록 조회</title>
		<link rel="stylesheet" href="../One.css/notice.css">
			<style>
				table {
					width : 800px;
					border : 1px solid black;
					border-collapse: collapse;
				}
				th, td {
					border : 1px solid black;
				}
			</style>
		</head>
		<body>
		<div id="container"></div>
                <input type="hidden" name="memberId" value="${sessionScope.memberId}" />

            <header>
                <div id="header">
                    <div id="header1">
                        <a href="../index.jsp">
                        <img src="../img/emisLOGO.svg" alt="One로고"></a>
                    </div>
                    <!-- <div id="header2"><img src="../img/bar.png" alt="햄버거 바"></div> -->
                    <input type="checkbox" id="icon">
                    <label for="icon">  <!--label은 인라인 스타일-->
                        <span></span>
                        <span></span>
                        <span></span>
                    </label>
                    <div id="header2">
                        <ul>
                        <c:if test="${memberId eq null }">
                            <li><a href="/member/register.do">로그인</a></li>
                            </c:if>
                        <c:if test="${memberId ne null }">
                            <li><a href="/member/logout.do">로그아웃</a></li>
                            </c:if>
                            <li><a href="../One/Info_Page.html">홈페이지 정보</a></li>
                            <li><a href="/member/myInfo.do">마이페이지</a></li>
                            <li><a href="/notice/list.do?currentPage=1">게시판</a></li>
                        </ul>
                    </div>
                </div>
                <style>
                    .info {
                        font-size: 30px;
                    }
                </style>
              </header>
              <div class="text_area">
		<div class="title">
			<h1>게시판 목록</h1>
			<a href="/notice/insert.do">글쓰기</a>
		</div>
			<table>
				<colgroup>
					<col width = "10%">
					<col width = "35%">
					<col width = "10%">
					<col width = "25%">
					<col width = "10%">
				</colgroup>
				<thead>
					<tr>
						<th>글번호</th>
						<th>글제목</th>
						<th>상품명</th>
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="notice" items="${requestScope.nList }">
						<tr>
							<td>${notice.noticeNo }</td>
							<td><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
							<td>${notice.noticeProduct }</td>
							<td>${notice.noticeWriter }</td>
							<td>${notice.noticeDate }</td>
							<td>${notice.viewCount }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5" align="center">
						${pageNavi }
<!-- 							<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> -->
						</td>
					</tr>
				</tbody>
			</table>
			</div>
	</body>
</html>