<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MyPage" />
<%@ include file="../common/head.jsp" %>

	<section class="mt-8">
		<div class="container mx-auto">
			<div class="table-box-type-1">
				<table class="table">
					<colgroup>
						<col width="200" />
					</colgroup>
					<tbody>
						<tr>
							<th>가입일</th>
							<td>${rq.loginedMember.regDate }</td>
						</tr>
						<tr>
							<th>로그인 아이디</th>
							<td>${rq.loginedMember.loginId }</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>${rq.loginedMember.name }</td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td>${rq.loginedMember.nickname }</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td>${rq.loginedMember.cellphoneNum }</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${rq.loginedMember.email }</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="mt-2 flex justify-between">
				<button class="btn btn-accent btn-sm" onclick="history.back();">뒤로가기</button>
				<a class="btn btn-accent btn-sm" href="passwordChk">회원정보수정</a>
			</div>
		</div>
	</section>
	
<%@ include file="../common/foot.jsp" %>