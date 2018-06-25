<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Carousel
    ================================================== -->
<div class="carousel">

	<div class>
		<div class="item">
			<div class="container">
				<div class="carousel-caption" style="margin-bottom: 20px;">
					<h3 class="featurette-heading"
						style="vertical-align: top; font-size: 130px;">MC1501 Community</h3>
					<p style="font-size: 30px;">Multicampus Free Board</p>
				</div>
			</div>
		</div>

	</div>

</div>
<!-- ============================================= -->

<div class="container marketing">
	<div class="row">
		<div class="col-lg-12">
			<form role="form" method="POST"
				action="<c:url value='/board/merge'/>">
				
				<input type="hidden" name="MC_BOARD_SEQ" value="${resultMap.MC_BOARD_SEQ }">
				<c:set var="principalName"
				value="${pageContext.request.userPrincipal.name}" /> 
				<input type="hidden" name="MEMBER_SEQ" value="${principalName}">
				<input type="hidden" name="CATEGORY" value="BOARD">
				<input type="hidden" name="AUTHORITY_ID" value="${resultMap.AUTHORITY_ID}">
				<input type="hidden" name="forwardView" value="/board/read" />
				<div class="panel panel-default">
					<div class="panel-heading">Free Board</div>
					<div class="panel-body">
						<div class="form-group" style="height: 100%; width: 100%" align="center">
						<!-- Date Select -->
							<div class="form-group">
								<label for="inputStartDate" class="col-sm-2 control-label">StartDate</label>
								<div class="col-sm-9">
									<input type="date" name="START_DATE" class="form-control" 
									id="StartDate" placeholder="StartDate">
									<p class="col-sm-1"></p>
								</div>
							</div>
							<script type="text/javascript">
							
							</script>
							<div class="form-group">
								<label for="inputEndDate" class="col-sm-2 control-label">EndDate</label>
								<div class="col-sm-9">
									<input type="date" name="END_DATE" class="form-control"
										id="EndDate" placeholder="EndDate">
									<p class="col-sm-1"></p>
								</div>
							</div>
							<!-- ==================================== -->
							<table width="100%" class="form-group">
								<tr>
									<td>
										<table width="100%">
											<tr>
												<td>&nbsp;</td>
												<td align="center">Title</td>
												<td><input name="TITLE" maxlength="100"
													style="border: none; border-right: 0px; width: 100%; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
													value="${resultMap.TITLE }"></td>
												<td>&nbsp;</td>
											</tr>
											<tr height="1" bgcolor="#dddddd">
												<td colspan="4"></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td align="center">Name</td>
												<td><input readonly name="NAME" maxlength="125"
													style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
													value="${resultMap.NAME}"></td>
												<td>&nbsp;</td>
											</tr>

											<tr height="1" bgcolor="#dddddd">
												<td colspan="4"></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td align="center">Content</td>
												<td><textarea name="CONTENT" cols="120%" rows="40%" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; resize: none;"> ${resultMap.CONTENT }</textarea></td>
												<td>&nbsp;</td>
											</tr>
											<tr height="1" bgcolor="#dddddd">
												<td colspan="4"></td>
											</tr>
											<tr height="1" bgcolor="#82B5DF">
												<td colspan="4"></td>
											</tr>
										</table>
							</table>
						</div>
						<div align="right">
							<input type="file" name="ITEM" >
						</div>
					</div>
				</div>
				<div align="right">
					<button type="submit" class="btn btn-default" >Submit</button>
					<button class="btn btn-default"
						formaction="<c:url value='/board/delete?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />">Delete</button>
					<button class="btn btn-default"
						formaction="<c:url value='/board/read?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}'/>">Back</button>

				</div>
			</form>
		</div>
	</div>
</div>
</body>