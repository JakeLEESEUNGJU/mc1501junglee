<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>

</head>

<body>

	<!-- Carousel
    ================================================== -->
	<div class="carousel">

		<div class>
			<div class="item">
				<div class="container">
					<div class="carousel-caption" style="margin-bottom: 20px;">
						<h2 class="featurette-heading"
						style="vertical-align: top; font-size: 130px;">Food.</h2>
					<p style="font-size: 30px;">MC1501 Community</p>
					</div>
				</div>
			</div>

		</div>

	</div>

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->
	<!-- Three columns of text below the carousel -->
	<div class="container marketing">
		<div class="row">
			<div class="col-lg-6">
				<div class="panel panel-default ">
					<div class="panel-heading">FoodStore Board</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
					<c:forEach items="${resultList}" var="resultData" varStatus="loop">
						<div class="col-lg-6">
							<a href="${resultData.CONTENT }">
							<img class="img-circle" src="<c:url value='/resources/images/${resultData.ITEM }'/>"
								alt="${resultData.CONTENT }" width="140" height="140">
								</a>
							<h3><a href="<c:url value='/foodstore/edit?MC_BOARD_SEQ=${resultData.MC_BOARD_SEQ}'/>">${resultData.TITLE}</a></h3>
							<!-- <p>board indicator </p> -->
						</div>
					</c:forEach>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				<div align="right">
				<c:set var="principalName"
				value="${pageContext.request.userPrincipal.name}" /> 
			<input type=button value="write" class="btn btn-default"
							onclick="location.href='<c:url value='/foodstore/write?MEMBER_SEQ=${principalName}' />' "> 
		</div>
			</div>
			<!-- food calendar -->
			<div class="col-lg-6"><img src="<c:url value='/resources/images/foodcalendar.jpg'/>"></div></div>


		</div>
		<!-- /.container -->
</body>
</html>