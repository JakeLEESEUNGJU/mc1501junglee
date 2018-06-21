<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Carousel
    ================================================== -->
<div class="carousel">

	<div class>
		<div class="item">
			<div class="container">
				<div class="carousel-caption" style="margin-bottom: 20px;">
					<h2 class="featurette-heading"
						style="vertical-align: top; font-size: 130px;">MC1501Group</h2>
					<p style="font-size: 30px;">Multicampus GetJob Board.</p>
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
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">GetJob Board</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<c:forEach items="${resultList}" var="resultData" varStatus="loop">
						<div class="col-lg-4">
							<a href="${resultData.CONTENT }">
							<img class="img-circle" src="<c:url value='${resultData.ITEM}'/>"
								alt="${resultData.CONTENT }" width="140" height="140">
								</a>
							<h2><a href="<c:url value='/getjob/edit?MC_BOARD_SEQ=${resultData.MC_BOARD_SEQ}'/>">${resultData.TITLE}</a></h2>
							<!-- <p>board indicator€ </p> -->
						</div>
					</c:forEach></div>
				<!-- /.table-responsive -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</div>
<!-- /#page-wrapper -->
