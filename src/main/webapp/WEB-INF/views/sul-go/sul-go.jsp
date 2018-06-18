<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
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
     <!-- 술고?  -->
	<h2 class="text-center" style="margin-bottom:20px;">술고?!</h2>
	<div class="row justify-content-md-center">
	  <div class="col-md-auto text-center">
	        <p>여러분의 음주를 지향합니다. <br>
		   	자연스럽고 노골적으로 오늘의 술 한 잔을 제안하세요. <br>
	       	2명 이상이 술고? 버튼을 누를 경우 메인에 술고?! 인디케이터가 활성화됩니다.</p>
	        <br>
	  </div>
    </div>

	<div class="container">
	  <div class="row text-center">
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="button" class="btn btn-success btn-lg">술고?!</button>
					
				<!-- Indicates a dangerous or potentially negative action -->
				<button type="button" class="btn btn-danger btn-lg ">Nope!</button>
		</div>
	</div>	
	<br>
	<br>
	<div class="text-center">
		<div class="dropdown" >
		  
		  <!-- 2명 이상이 술고 버튼을 누르지 않앗을 때에는 
		  <button class="btn btn-secondary dropdown-toggle disabled" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    오늘의 술고 전사 보기
		  </button>  
		     -->
		  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    오늘의 술고 전사 보기
		  </button>
		  
		  
		  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		    
		    <p class="dropdown-item text-center">김봉남</p>
		    <p class="dropdown-item text-center">이말숙</p>
		    <p class="dropdown-item text-center">박준홍</p>
		  </div>
		</div>
	</div>
   </body>
   </html>