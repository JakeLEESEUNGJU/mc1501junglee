<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
var fn_setFormAuthority = function(url, id, params) {
	$
			.ajax({
				type : "POST",
				url : url,
				data : {MEMBER_SEQ : params},
				cache : false,
				success : function(data) {
					var formTag = "";
					formTag += "<select class='form-control' name='MEMBER_SEQ'>";
					$.each(	data,function(i, item) {
										formTag += '<option value="'+item.MEMBER_SEQ+'">'
												+ item.AUTHORITY_ID;
									});
					formTag += '</select> ';
					$('#' + id).html(formTag);
				},
				error : function(xhr, status, exception) {
					alert("Failure \n (" + status + ")");
					return false;
				}
			});
}
$(document).ready(
		function() {
			fn_setFormAuthority("<c:url value='/ws/authorityID' />","authorityDIV", "${paramMap.MEMBER_SEQ}");	
		});

<!--

//-->
</script>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" method="POST" action="<c:url value='/member/edit' />">
	                                    <div class="form-group">
											<label>MEMBER_ID Static Control</label>
											<p class="form-control-static">${resultMap.MEMBER_ID}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>PASSWORD Static Control</label>
											<p class="form-control-static">${resultMap.PASSWORD}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>NAME Static Control</label>
											<p class="form-control-static">${resultMap.NAME}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>EMAIL Static Control</label>
											<p class="form-control-static">${resultMap.EMAIL}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>CELLPHONE Static Control</label>
											<p class="form-control-static">${resultMap.CELLPHONE}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>ORGANIZATION NAME</label>
<%-- 											<p class="form-control-tatic">${resultMap.NAME}</p> --%>
	                                    </div>
	                                    <div class="form-group">
	                                    	<label>AUTHORITY NAME</label>
											<div id="authorityDIV"></div>
	                                    </div>
                                        <button type="submit" class="btn btn-default">Add Button</button>
										<a href="<c:url value='/member/list' />">Add With a Tag</a>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <div class="form-group">
										<label>MEMBER_SEQ Static Control</label>
										<p class="form-control-static">${resultMap.MEMBER_SEQ}</p>
                                    </div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
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
