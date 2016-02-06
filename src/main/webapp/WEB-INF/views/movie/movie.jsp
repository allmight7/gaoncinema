<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="movie">
<div class="movie-wrap">
<div align="center" id="moviesbt">
	<button class="nowmovie selected" type="button" value="nowmovie">현재상영작</button>
	<button class="nextmovie" type="button" value="nextmovie">상영예정작</button>
</div>
<div class="nowmoviepage">
	<ul>
		<c:forEach  var="bean" items="${nowmovie}">
		<li class=item>
			<img class="poster" src="./resources/img/movie/${bean.POSTER }">
			<c:if test="${bean.rn <= 5}"> <span class="rank">${bean.rn}</span> </c:if>
			<c:if test="${bean.rn > 5}"> <span class="rank_empty"></span> </c:if>
			<div class="AVG-wrap"><div class="AVG">평점 ${bean.AVG }</div><div class="star-empty"><span class="star-wrap"  style="width:${13.1*bean.AVG} ;"><span class="star"></span></span></div></div>
			<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie${bean.AGE}.png"><div class="title">${bean.NAME_K}</div></div>
		 	<button class="detail" onclick="moviedetail('${bean.MOVIE_ID}')">상세정보</button><button class="rev">예매하기</button>
		 </li>
		 </c:forEach>
	</ul>
</div>
<div class="nextmoviepage">
	<ul>
		<c:forEach  var="bean" items="${nextmovie}">
		<li class=item>
			<img class="poster" src="./resources/img/movie/${bean.POSTER }">
			 <span class="rank_empty"></span>
			<div class="AVG-wrap"><div class="AVG"><fmt:formatDate value="${bean.STARTDATE }" pattern="yyyy-MM-dd"/> </div><span class="dday">D-${bean.dday}</span></div>
			<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie${bean.AGE }.png"><div class="title">${bean.NAME_K}</div></div>
		 	<button class="detail">상세정보</button><button class="rev">예매하기</button>
		 </li>
		 </c:forEach>
	</ul>
</div>
</div>

<div class='detailpopup mfp-hide'>
	<button type='button' class='mfp-close'>×</button>
	<div class="d_top">
		<div class="d_POSTER"> <img src="./resources/img/movie/BG_poster.jpg"> </div>
		<div class="d_top_right">
			<div class="d_title">
				<div class="d_AGE"><img src="./resources/img/movie/movie12.png"></div>
				<div class="d_NAME_K">번개맨</div>
				<div class="d_NAME_E">Bungaeman</div>
			</div>
			<div class="d_rev">
				<div class="star-empty"><span class="star-wrap"  style="width:118;"><span class="star"></span></span></div>
				<div class="d_AVG">7.5</div>
			</div>
			<ul class="info_wrap">
				<li><strong>개봉일</strong> : 2016.01.28</li>
				<li><strong>감독</strong> : 알레산드로 칼로니, 여인영</li>
				<li><strong>출연진</strong> :
					더스틴 호프만<span>(시푸)</span>,&nbsp;데이빗 크로스<span>(크레인)</span>,&nbsp;루시 리우<span>(바이퍼)</span>,&nbsp;성룡<span>(몽키)</span>,&nbsp;세스 로건<span>(맨티스)</span>,&nbsp;안젤리나 졸리<span>(타이그리스)</span>,&nbsp;잭 블랙<span>(포)</span>,&nbsp;J.K. 시몬스<span>(카이)</span>					
				</li>
				<li><strong>장르</strong> : 액션, 애니메이션, 어드벤처 / 95 분</li>
				<li>
					<strong>공식홈페이지</strong> : 
				</li>
			</ul>
			
		</div>
	</div>
</div>

</div>















