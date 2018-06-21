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
				<div class="panel-body">
					<div style="height: 100%; width: 100%" align="center">
					<table width="100%">
						<tr>
							<td>
								<table width="100%">
									<tr>
										<td>&nbsp;</td>
										<td align="center">Title</td>
										<td><input name="title"  maxlength="100" 
											style="border: none; border-right: 0px; width:100%; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
											value="${resultMap.TITLE }"></td>
										<td>&nbsp;</td>
									</tr>
									<tr height="1" bgcolor="#dddddd">
										<td colspan="4"></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td align="center">Name</td>
										<td><input readonly name="name"  maxlength="125"
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
										<td><textarea name="memo" cols="125" rows="40"
											style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; resize: none;"> ${resultMap.CONTENT }
						 				</textarea></td>
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
            <input type="file" name="profile">
            </div>
			</div>
				</div>
				<table align="center">
					<tr >
						<td>&nbsp;</td>
						<td colspan="2"><input type=submit value="Modify"> 
						<input type=button value="Cancle"
							onclick="location.href='<c:url value='/board/read?MC_BOARD_SEQ=${resultMap.MC_BOARD_SEQ}' />'">
						<td>&nbsp;</td>
					</tr>
				</table>

		</div>
	</div>
</div>
</body>