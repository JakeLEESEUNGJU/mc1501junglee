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
        <!-- sul-go indicator가 아직 활성화 안됐을 때 -->
          <!-- <img class="img-circle" src="<c:url value='/resources/images/milk.png'/>" alt="milk" width="140" height="140">
          <h2>건전한 오늘</h2>
          <p>오늘은 아직 건전한 날입니다.</p> -->
          <img class="img-circle" src="<c:url value='/resources/images/sul-go_greenlight.png'/>" alt="sssoju" width="140" height="140">
          <h2>술고!!!</h2>
          <!-- <p>sul-go indicator가 <초록/빨강>으로 빛나고 있습니다. 현재<#>명이 sul-go!를 외쳤습니다. 아래의 버튼을 클릭하여 sul-go 멤버를 확인하세요. </p> -->
          <p><a class="btn btn-default" href="<c:url value='/sul-go/sul-go'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <!-- <img class="img-circle" src="<c:url value='/resources/images/hot.gif'/>" alt="hot" width="140" height="140">
          <h2>더워요..</h2> --> 
          <img class="img-circle" src="<c:url value='/resources/images/happy.gif'/>" alt="happy" width="140" height="140">
          <h2>딱좋아요!</h2>
          <!-- <img class="img-circle" src="<c:url value='/resources/images/cold.png'/>" alt="cold" width="140" height="140">
          <h2>츄워요..</h2> -->
          <p><a class="btn btn-default" href="<c:url value='/resources/coldhot/coldhot'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>기능추가예정</h2>
          <p><a class="btn btn-default" href="<c:url value='#'/>" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
	</div><!-- /.container -->
</body></html>