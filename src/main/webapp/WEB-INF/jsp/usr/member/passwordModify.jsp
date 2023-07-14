<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Password Modify" />
<%@ include file="../common/head.jsp" %>

	<section class="mt-8">
		<div class="container mx-auto">
			<form action="doPasswordModify" method="POST">
				<div class="table-box-type-1">
					<table>
						<colgroup>
							<col width="200" />
						</colgroup>
						<tbody>
							<tr>
								<th>새 비밀번호</th>
								<td><input class="input input-bordered input-accent w-96" type="text" name="loginPw" placeholder="새 비밀번호를 입력해주세요" /></td>
							</tr>
							<tr>
								<th>새 비밀번호 확인</th>
								<td><input class="input input-bordered input-accent w-96" type="text" name="loginPwChk" placeholder="새 비밀번호 확인을 입력해주세요" /></td>
							</tr>
							<tr>
								<td colspan="2"><button class="btn btn-accent btn-sm">변경</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
			<div class="mt-2">
				<button class="btn btn-accent btn-sm" onclick="history.back();">뒤로가기</button>
			</div>
		</div>
	</section>
	
<%@ include file="../common/foot.jsp" %>