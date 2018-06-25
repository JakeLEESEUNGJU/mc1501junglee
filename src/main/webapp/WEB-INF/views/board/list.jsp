<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Carousel
    ================================================== -->
    <div class="carousel">
      
      <div class>
        <div class="item">
          <div class="container">
            <div class="carousel-caption" style=" margin-bottom: 20px;">
              <h2 class="featurette-heading" style="vertical-align:top; font-size:130px;">Board.</h2>
              <p  style="font-size:30px;">MC1501 Community</p>
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
				<div class="panel-heading">Free Board</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th class="text-center">No.</th>
									<th class="text-center">Title</th>
									<th class="text-center">Author</th>
									<th class="text-center">Date</th>
									<th class="text-center">View</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${resultList}" var="resultData"
									varStatus="loop">
									
									<tr
										class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
										<td>${loop.index+1}</td>
										<td><a
											href="<c:url value="/board/read?MC_BOARD_SEQ=${resultData.MC_BOARD_SEQ}" />">
												${resultData.TITLE}</a></td>
										<td>${resultData.NAME}</td>
										<td>${resultData.REGISTRY_DATE}</td>
										<td>${resultData.VIEWS}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
			<div align="right">
			<c:set var="principalName"
				value="${pageContext.request.userPrincipal.name}" /> 
			<input type=button value="write" class="btn btn-default"
							onclick="location.href='<c:url value='/board/write?MEMBER_SEQ=${principalName}' />' "> 
		</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->
