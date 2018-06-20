<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<body>
	<!-- Carousel
    ================================================== -->
	<div class="carousel">

		<div class>
			<div class="item">
				<div class="container">
					<div class="carousel-caption" style="margin-bottom: 20px;">
						<h2 class="featurette-heading"
							style="vertical-align: top; font-size: 130px;">MC1501Group</h2>
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
				<div class="panel panel-default">
					<div class="panel-heading">Free Board</div>
					<form role="form" method="POST"
						action="<c:url value='/board/edit' />">
						<table>
							<tr>
								<td>
									<table width="100%" cellpadding="0" cellspacing="0" border="0">
										<tr style="text-align: center;">
											<td width="5"></td>
											<td>${resultMap.TITLE }</td>
											<td width="5"></td>
										</tr>
									</table>
									<table width="100%">

										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>

										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>
										<tr>
											<td align="left" width="319">No.${resultMap.MC_BOARD_SEQ }</td>
											<td align="right" width="319">${resultMap.NAME }</td>

										</tr>
										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>

										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>

										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>
										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>
										<tr>
											<td width="0"></td>
											<td align="right" width="319">${resultMap.REGISTRY_DATE }</td>
										</tr>
										<tr>
											<td width="0"></td>
											<td align="right" width="50">view: ${resultMap.VIEWS }</td>
										</tr>
										<tr>
											<td align="center" width="500" colspan="2" height="200">${resultMap.CONTENT }
										</tr>

										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>
										<tr height="1" bgcolor="#82B5DF">
											<td colspan="4" width="407"></td>
										</tr>
										<tr align="right">
											<td colspan="2" width="399"><input type=submit
												value="write" OnClick="window.location='write.jsp'">
												<input type=button value="reply"> <a
												href="<c:url value='/board/list?CATEGORY=BOARD' />">Back
													to List</a> <a
												href="<c:url value='/board/edit?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />">edit</a>
												<input type=button value="delete">
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
</body>
