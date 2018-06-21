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
					<h2 class="featurette-heading"
						style="vertical-align: top; font-size: 130px;">MC1501Group</h2>
					<p style="font-size: 30px;">Multicampus GetJob Board</p>
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
				action="<c:url value='/getjob/merge'/>">

				<input type="hidden" name="MC_BOARD_SEQ"
					value="${resultMap.MC_BOARD_SEQ }"> <input type="hidden"
					name="MEMBER_SEQ" value="M0006"> <input type="hidden"
					name="CATEGORY" value="GETJOB"> <input type="hidden"
					name="AUTHORITY_ID" value="AUT001"> <input type="hidden"
					name="forwardView" value="/getjob/list" />
				<div class="panel panel-default">
					<div class="panel-heading">GetJob Board</div>
					<div class="panel-body">
						<div style="width: 100%" align="center">

							<!-- Date Select -->
							<div class="form-group">
								<label for="inputStartDate" class="col-sm-2 control-label">StartDate</label>
								<div class="col-sm-9">
									<input type="date" name="START_DATE" class="form-control" id=""
										StartDate"" placeholder="StartDate">
									<p class="col-sm-1"></p>
								</div>
							</div>

							<div class="form-group">
								<label for="inputEndDate" class="col-sm-2 control-label">EndDate</label>
								<div class="col-sm-9">
									<input type="date" name="END_DATE" class="form-control"
										id="EndDate" placeholder="EndDate">
									<p class="col-sm-1"></p>
								</div>
							</div>
							<!-- ==================================== -->

							<table width="100%">
								<tr>
									<td>
										<table width="100%">
											<tr>
												<td>&nbsp;</td>
												<td align="center">Title</td>
												<td><input name="TITLE" maxlength="50"
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
												<td><input readonly name="NAME" maxlength="50"
													style="border: none; border-right: 0px; width: 100%; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
													value="${resultMap.NAME }"></td>
												<td>&nbsp;</td>
											</tr>

											<tr height="1" bgcolor="#dddddd">
												<td colspan="4"></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td align="center">Content</td>
												<td><input name="CONTENT" maxlength="125"
													value='${resultMap.CONTENT }'
													style="border: none; border-right: 0px; width: 100%; border-top: 0px; boder-left: 0px; boder-bottom: 0px;">
												</td>
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
							<input type="file" name="ITEM">
						</div>
					</div>
				</div>
				<div align="center">
					<button type="submit" class="btn btn-default">submit</button>
					<button class="btn btn-default"
						action="<c:url value='/getjob/list?CATEGORY=GETJOB' />">cancel</button>

				</div>
			</form>
		</div>
	</div>
</div>
</body>