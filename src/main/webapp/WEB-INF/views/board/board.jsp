<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html><head>
  </head>
  <body>
    <!-- Carousel
    ================================================== -->
    <div class="carousel" style="height:250px; margin-bottom: 20px;">
        <div class="item" style="height:200px;">
          <div class="container">
            <div class="carousel-caption" style=" margin-bottom: 20px;">
              <p  style="font-size:30px;">Multicampus The Algorithm Group.</p>
            </div>
        </div>
      </div>
    </div>

    <!-- Marketing messaging and featurettes
    ================================================== -->
 	<!--게시판 목록 -->
    <!-- 타이틀  -->
    <div class="container marketing">
	<h2 class="text-center" style="margin-bottom:20px;">Board</h2>
	  <div class="row justify-content-md-center">
	    <div class="col-md-auto text-center">
	          <p>수업에 관련된 URI 등을 공유합니다! <br></p>
	          <br>
	    </div>
	  </div>
   
	<div class="container text-center" style="height:100%;">
	 <div class="row" style="height : 100%;">
	   <table class="table table-hover" style="width:100%; height:100%;">
	     <thead>
	       <tr>
	         <th class="text-center">번호</th>
	         <th class="text-center">제목</th>
	         <th class="text-center">작성자</th>
	         <th class="text-center">날짜</th>
	         <th class="text-center">조회수</th>
	       </tr>
	     </thead>
	     <tbody>
	       <tr>
	         <td>1</td>
	         <td>게시판입니다</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>2</td>
	       </tr>
	
	       <tr>
	         <td>2</td>
	         <td>직접입력하기</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>3</td>
	       </tr>
	
	       <tr>
	         <td>3</td>
	         <td>박수형입니다.</td>
	         <td>사기꾼</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>사기꾼입니다.</td>
	         <td>박수형</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>스타 배우고싶습니다.</td>
	         <td>임인호</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>열권이형..</td>
	         <td>박진우</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>안돼 진우야..</td>
	         <td>성열권</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>게시판</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>게시판</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>게시판</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>게시판</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	       <tr>
	         <td>3</td>
	         <td>게시판</td>
	         <td>이봉호</td>
	         <td>2018.05.16</td>
	         <td>4</td>
	       </tr>
	     </tbody>
	   </table>
	
	<div class="container">
	<div class="row">
	  <a class="btn btn-default pull-right" href="<c:url value='/board/write' />">글쓰기</a>
	</div>
		  <div class="row justify-content-md-center">
		   <div class="text-center">
		     <ul class="pagination">
		       <li><a href="#">1</a></li>
		       <li><a href="#">2</a></li>
		       <li><a href="#">3</a></li>
		       <li><a href="#">4</a></li>
		       <li><a href="#">5</a></li>
		     </ul>
		   </div>	
	   </div>
	 </div>
    </div>
   </div>
</div>
</body>
</html>