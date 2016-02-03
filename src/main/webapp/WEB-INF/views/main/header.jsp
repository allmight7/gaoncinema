<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>[header.jsp]</title>

<c:if test="${not empty msgbox }">
<script>
alert('${msgbox}');
</script>
<%session.removeAttribute("msgbox"); %>
</c:if>

<script src="./resources/js/header.js"></script>

<div class="backcolor"></div>
<div class="header-wrap">
	
	<span class="logo">
		<a href="main.do"><img id="logoimg" src="./resources/img/Gaonlogo.png"></a>
	</span>

	<ul class="nav">
		<li><a href="movie.do">영화</a></li>
		<li><a href="reservation.do">예매</a></li>
		<li><a href="theater.do">영화관</a></li>
		<li><a href="store.do">스토어</a></li>
		<li><a href="event.do">이벤트</a></li>
		<li><a href="qna.do">고객센터</a></li>
	<% 
	if(session.getAttribute("NowUser")==null){
	%>
		<li><button id="loginbt">로그인</button></li>
	<%
  } else { String id=(String)session.getAttribute("NowUser"); 
 	 if(id.equals("admin")){
	  %>
		<li><%=id %> 님</li>
  	<a href="#">관리자페이지</a>
  	<li><a href='logout.do' class='logintext'>Logout</a></li>  
	<%
 	 }else if(id!="admin"){ 
	%>
  	<li><%=id %> 고객님 ▶&nbsp;</li>
		<%
		if(id!=null){
		%>		
  	<li><a href='?id=<%=id %>'onClick=''>회원정보</a></li>
  	<%
		}}}
	%>
	</ul>
	<div class="login">
	 <!-- <img alt="" src=""> 이미지 로고 -->
		<form name="myform" action="login.do">
			<input type="text" name="name" placeholder="아이디"> <br>
			<input type="password" name="secret" placeholder="비밀번호">
			<input type="button" onclick="login()" value="로그인">
		</form>
			<input type="button" name="idpwFind" value="ID/PW찾기">
			<input type="button" name="join" value="회원가입">
	</div>
	
</div>
