<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>메인 인덱스</title>
		<link rel="stylesheet" href="../One.css/main.css">
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
.
            <main id="main">
                <div class="img_area">
                    <div class="img_area_item img_area_item_01">
                        <a href="../One/cloth1_page.html">
                        <img src="../img/cloth.jpg" alt="옷1"></a></div>
                    <div class="img_area_item img_area_item_02">
                        <a href="../One/cloth2_page.html">
                        <img src="../img/cloth1.jpg" alt="옷2"></a>
                    </div>
                    <div class="img_area_item img_area_item_03">
                        <a href="../One/cloth3_page.html">
                        <img src="../img/cloth2.jpg" alt="옷3"></a></div>
                    <div class="img_area_item img_area_item_04">
                        <img src="../img/cloth3.jpg" alt="옷4">
                    </div>
                </div>
                <div class="text_area">
                    <div class="text_area_item">
                        <a href="../One/ALL_Page.html">All</a>
                    </div>
                    <div class="text_area_item">
                        <a href="../One/NEW_Page.html">new</a>
                    </div>
                    <div class="text_area_item">
                        <a href="../One/BEST_Page.html">best</a>
                    </div>
                    
                </div>
            </main>
            <footer id="footer">
                <div class="sns">
                    <img src="../img/Instagram 3d Icon Concept.png" alt="">
                    <p>INSTAGRAM : <a href="">@emis_official</a></p>
                </div>
                <div class="info">
                    <p class="inpo_1">•(주) emis쇼핑몰 | 오광훈 <br>
                        •Online Sales License. <br>
                        •2023-SEOUL <br>
                        •공휴일 휴무 <br>
                        •Business License. <br></p>
                    <p class="inpo_2">•12356789 <br>
                        •E-Mail business@emis.kr <br>
                        •Customer Center. 010 -
                        1234 - 5678 <br>
                        •월-금 / 1pm to 6pm / <br>
                        </p>
                    <p class="inpo_3">•STOCKIST <br>
                        •온라인 / 오프라인 <br>
                        •SHOWROOM <br>
                        •서울특별시 중구 남대문로 <br>
                        •OFFICE <br>
                    </p>
                </div>
                <!-- <div class="info1">    
                    <p inpo_3>•STOCKIST <br>
                        •온라인 / 오프라인 <br>
                        •SHOWROOM <br>
                        •서울특별시 중구 남대문로 <br>
                        •OFFICE <br>
                    </p>
                </div> -->
            </footer>
	</body>
</html>