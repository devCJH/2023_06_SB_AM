<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Detail" />
<%@ include file="../common/head.jsp" %>

<script>
	function getReactionPoint(){
		
		$.get('../reactionPoint/getReactionPoint', {
			relTypeCode : 'article',
			relId : ${article.id }
		}, function(data){
			
			console.log(data);
			console.log(data.data1.sumReactionPoint);
			
			if (data.data1.sumReactionPoint > 0) {
				let goodBtn = $('#goodBtn');
				goodBtn.removeClass('btn-outline');
			} else if (data.data1.sumReactionPoint < 0) {
				let badBtn = $('#badBtn');
				badBtn.removeClass('btn-outline');
			}
			
			
		}, 'json')
		
	}
	
	getReactionPoint();
</script>

	<section class="mt-8">
		<div class="container mx-auto">
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
							<th>조회수</th>
							<td><span id="articleDetail_increaseHitCnt">${article.hitCnt }</span></td>
						</tr>
						<tr>
							<th>추천</th>
							<td>
								<c:if test="${rq.getLoginedMemberId() == 0}">
									<span>${article.sumReactionPoint }</span>
								</c:if>
								<c:if test="${rq.getLoginedMemberId() != 0}">
									<div>
										<a id="goodBtn" class="btn btn-accent btn-outline btn-xs" href="../reactionPoint/doInsertReactionPoint?relTypeCode=article&relId=${article.id }&point=1">좋아요👍</a>
										<span class="ml-2">좋아요 : ${article.goodReactionPoint }개</span>
									</div>
									<div class="mt-2">
										<a id="badBtn" class="btn btn-accent btn-outline btn-xs" href="../reactionPoint/doInsertReactionPoint?relTypeCode=article&relId=${article.id }&point=-1">싫어요👎</a>
										<span class="ml-2">싫어요 : ${article.badReactionPoint }개</span>
									</div>
								</c:if>
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${article.writerName }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${article.title }</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${article.body }</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="mt-2">
				<button class="btn btn-accent btn-sm" onclick="history.back();">뒤로가기</button>
				
				<c:if test="${article.memberId == rq.getLoginedMemberId() }">
					<a class="btn btn-accent btn-sm" href="modify?id=${article.id}">수정</a>
					<a class="btn btn-accent btn-sm" href="doDelete?id=${article.id}" onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;">삭제</a>
				</c:if>
			</div>
		</div>
	</section>
	
<%@ include file="../common/foot.jsp" %>