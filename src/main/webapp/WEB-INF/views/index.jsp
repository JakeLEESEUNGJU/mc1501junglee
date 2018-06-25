<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>

</head>

  <body>

    <!-- Carousel
    ================================================== -->
    <div class="carousel">
      
      <div class>
        <div class="item">
          <div class="container">
            <div class="carousel-caption" style=" margin-bottom: 20px;">
              <h3 class="featurette-heading" style="vertical-align:top; font-size:130px;">MC1501</h3>
              <p  style="font-size:30px;">Multicampus The Algorithm Group.</p>
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
        <div class="col-lg-4">
        <!-- board indicator -->
          <!-- <img class="img-circle" src="<c:url value='/resources/images/milk.png'/>" alt="milk" width="140" height="140">-->
          <img class="img-circle" src="<c:url value='/resources/images/ppakppak.png'/>" alt="board" width="140" height="140">
          <h2>자유 게시판</h2>
          <!-- <p>board indicator </p> -->
          <p><a class="btn btn-default" href="<c:url value='/board/list?CATEGORY=BOARD'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <!-- <img class="img-circle" src="<c:url value='/resources/images/hot.gif'/>" alt="hot" width="140" height="140">
          <h2>ëìì..</h2> --> 
          <img class="img-circle" src="<c:url value='/resources/images/foodtruck.jpg'/>" alt="food" width="140" height="140">
          <h2>Food Store</h2>
          <!-- <img class="img-circle" src="<c:url value='/resources/images/cold.png'/>" alt="cold" width="140" height="140">
          <h2>ì¸ìì..</h2> -->
          <p><a class="btn btn-default" href="<c:url value='/foodstore/list?CATEGORY=FOODSTORE'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="<c:url value='/resources/images/meeseng.jpg'/>" alt="Generic placeholder image" width="140" height="140">
          <h2>Get Job</h2>
          <p><a class="btn btn-default" href="<c:url value='/getjob/list?CATEGORY=GETJOB'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        
	</div><!-- /.container -->
</body></html>