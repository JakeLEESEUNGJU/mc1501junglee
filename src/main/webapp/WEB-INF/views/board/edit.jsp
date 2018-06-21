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
				<table align="center" width="100%">
					<tr>
						<td>
							<form role="form" method="POST"
								action="<c:url value='/board/merge?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />">
								<table >
									<tr>
										<td>&nbsp;</td>
										<td align="center">Title</td>
										<td><input name="title" size="50" maxlength="100"
											style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
											value="${resultMap.TITLE }"></td>
										<td>&nbsp;</td>
									</tr>
									<tr height="1" bgcolor="#dddddd">
										<td colspan="4"></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td align="center">Name</td>
										<td><input readonly name="name" size="50" maxlength="50"
											style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
											value="${resultMap.NAME }"></td>
										<td>&nbsp;</td>
									</tr>

									<tr height="1" bgcolor="#dddddd">
										<td colspan="4"></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td align="center">Content</td>
										<td><textarea name="memo" cols="50" rows="13"
												style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 1100; resize: none;"> ${resultMap.CONTENT }
						 				</textarea></td>
										<td>&nbsp;</td>
									</tr>
									<tr height="1" bgcolor="#dddddd">
										<td colspan="4"></td>
									</tr>
									<tr height="1" bgcolor="#82B5DF">
										<td colspan="4"></td>
									</tr>
									<tr align="center">
										<td>&nbsp;</td>
										<td colspan="2"><input type=submit value="Modify">
											<input type=button value="Cancle"
											onclick="window.location.href='<c:url value='/board/read?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />'">
										<td>&nbsp;</td>
									</tr>
								</table>
							</form>
				</table>
			</div>

		</div>
	</div>
</div>
</body>