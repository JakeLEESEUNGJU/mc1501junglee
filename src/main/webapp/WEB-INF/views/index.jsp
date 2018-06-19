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
              <h2 class="featurette-heading" style="vertical-align:top; font-size:130px;">MC1501Group</h2>
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
          <img class="img-circle" src="<c:url value='/resources/images/sul-go_greenlight.png'/>" alt="sssoju" width="140" height="140">
          <h2>자유 게시판</h2>
          <!-- <p>board indicator </p> -->
          <p><a class="btn btn-default" href="<c:url value='/'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <!-- <img class="img-circle" src="<c:url value='/resources/images/hot.gif'/>" alt="hot" width="140" height="140">
          <h2>ëìì..</h2> --> 
          <img class="img-circle" src="<c:url value='/resources/images/happy.gif'/>" alt="happy" width="140" height="140">
          <h2>Food Store</h2>
          <!-- <img class="img-circle" src="<c:url value='/resources/images/cold.png'/>" alt="cold" width="140" height="140">
          <h2>ì¸ìì..</h2> -->
          <p><a class="btn btn-default" href="<c:url value='/foodstore/list'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>Get Job</h2>
          <p><a class="btn btn-default" href="<c:url value='/getjob/list'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        
	</div><!-- /.container -->
</body></html>