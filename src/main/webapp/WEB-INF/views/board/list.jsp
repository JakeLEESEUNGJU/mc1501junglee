<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#layerModal").click(function() {
			$("#myModal").modal();
		});
	});
	<!--
//-->
</script>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">${paramMap.PARENT_COMMON_CODE_ID}List</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<button id="layerModal">Launch Demo Modal with jQuery</button>
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">Lorem ... laborum.</div>
				<div class="modal-footer">
					<button type="button" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Advanced Tables</div>
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
											href="<c:url value="/board/read?TITLE=${resultData.BOARD_SEQ}" />">
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
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->
