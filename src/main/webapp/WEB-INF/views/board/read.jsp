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
							style="vertical-align: top; font-size: 130px;">MC1501 Community</h2>
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
					<div class="panel-body">
						<table width="100%">
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
											<td align="left" width="319">게시판 번호 :
												${resultMap.MC_BOARD_SEQ }</td>
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
											<c:set var="views" value="${resultMap.VIEWS+1}" />
											<td align="right" width="50">view: ${views }</td>
										</tr>
										
										<tr>
										<td width="0"></td>
										<td align="right" width="319"><a href="<c:url value='/resources/images/${resultMap.ITEM }' />" download>
										 ${resultMap.ITEM}
										</a></td>
										</tr>
									</table>
									<table align="center">
										<tr>
											<td><textarea readonly name="CONTENT" cols="120"
													rows="40"
													style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; resize: none;"> ${resultMap.CONTENT }</textarea></td>
										</tr>

										<tr height="1" bgcolor="#dddddd">
											<td colspan="4" width="407"></td>
										</tr>
										<tr height="1" bgcolor="#82B5DF">
											<td colspan="4" width="407"></td>
										</tr>

									</table>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div>
			<div align="right">
				
				<input type=button value="Modify" class="btn btn-default"
					onclick="location.href='<c:url value='/board/edit?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />' ">
				<input type=button value="Delete" class="btn btn-default"
					onclick="location.href='<c:url value='/board/delete?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />' ">
				<input type=button value="Cancel" class="btn btn-default"
					onclick="location.href='<c:url value='/board/list?CATEGORY=BOARD' />' ">
			</div>
</body>
