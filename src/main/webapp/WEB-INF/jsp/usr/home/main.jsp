<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Main" />
<%@ include file="../common/head.jsp" %>
	
	<section class="mt-8">
		<div class="container mx-auto">
			<div>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat molestiae maiores fugiat nisi eos a inventore illum eaque eius aspernatur alias qui. Ut recusandae id ratione sit minima nihil saepe.
			</div>
			<div>
				안녕하세요
			</div>
			<div>
				<img src="/resource/images/고양이.jpg"/>
			</div>
			<div>
				<span class="modal-exam">모달예시</span>
			</div>
			
			<div class="layer-bg"></div>
			<div class="layer">
				<h1>MODAL</h1>
				<span class="close-x-btn">&times;</span>
				<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis culpa nobis reprehenderit quam veritatis tenetur ex possimus aliquam officia at iste odio impedit ipsum dicta eaque harum maxime voluptatibus hic.</div>
				<button id="closeBtn" class="btn btn-accent btn-sm">CLOSE</button>
			</div>
		</div>
	</section>

<%@ include file="../common/foot.jsp" %>