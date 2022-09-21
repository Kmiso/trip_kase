<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행카세: Header</title>
<link href="/resources/css/header.css" rel="stylesheet">
</head>
<body>
	<div id="tk_wrap">
		<ul id="tk_header">
			<li class="tk_h_item" id="tk_logo"><a href="/home.tripkase"><img id="tk_logo_img" alt="여행카세 로고" src="/resources/images/logo_tripkase.png"></a></li>
			<li class="tk_h_item" id="tk_menu1"><a href="#">여행</a></li>
			<li class="tk_h_item" id="tk_menu2"><a href="/trip/tripList.tripkase">소통</a></li>
			<li class="tk_h_item" id="tk_menu3"><a href="/notice/list.tripkase">공지</a></li>
			<c:if test="${sessionScope.loginMember eq null }">
		        <div>
		        	<table align="right">
			           <tr>
			              <td><a href="/member/loginView.tripkase">로그인</a></td>
			           </tr>
		        	</table>
		        </div>
	        </c:if>
	      	<c:if test="${sessionScope.loginMember ne null }"> <!-- ne : not equal -->
	      		<table align="right">
		        	<tr>
			            <td colspan="2">${sessionScope.loginMember.memberName }님 환영합니다!</td>
			            <td></td>
		        	</tr>
		         	<tr>
		            	<c:if test="${loginMember.adminYN == 'Y' }">
		               		<td><a href="/admin/adminMainPage.tripkase">관리자페이지</a></td>
		            	</c:if>
		            	<td><a href="/member/myPage.tripkase">마이페이지</a></td>
		            	<td><a href="/member/logout.tripkase">로그아웃</a></td>
		         	</tr>
	        	</table>
	    	</c:if>
		</ul>
	</div>
</body>
</html>