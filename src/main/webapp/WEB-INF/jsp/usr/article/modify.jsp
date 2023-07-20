<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Modify" />
<%@ include file="../common/head.jsp" %>
<%@ include file="../common/toastUIEditorLib.jsp" %>

	<section class="mt-8">
		<div class="container mx-auto">
			<form action="doModify" method="POST" onsubmit="submitForm(this); return false;">
				<input type="hidden" name="id" value="${article.id }" />
				<input type="hidden" name="body" />
				<div class="table-box-type-1">
					<table class="table">
						<colgroup>
							<col width="200" />
						</colgroup>
						<tbody>
							<tr>
								<th>번호</th>
								<td><span class="badge badge-neutral">${article.id }</span></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td>${article.regDate }</td>
							</tr>
							<tr>
								<th>수정일</th>
								<td>${article.updateDate }</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>${article.writerName }</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input class="input input-bordered input-accent w-full" type="text" name="title" value="${article.title }"/></td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<div class="toast-ui-editor">
								    	<script type="text/x-template">${article.body }</script>
								    </div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><button class="btn btn-accent btn-sm">수정</button></td>
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