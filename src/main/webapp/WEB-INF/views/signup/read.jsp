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
    <!-- sign up  -->
	<h2 class="col-sm-12" style="text-align: center; margin-bottom:40px;">sign up</h2>
	
	
	<form class="form-horizontal">
	<!-- 1. email -->
	  <div class="form-group" id="email">
	    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.email }</p>
	      <span id="emailCheckSymbol"></span>
	      <span id="emailCheckSymbolStatus"></span>
		  <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	 <!-- 2. email check -->
	  <div class="form-group" id="emailCheck">
	    <label for="inputEmailCheck" class="col-sm-2 control-label">Check-Email</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.emailCheck }</p>
	      <span id="emailCheckCheckSymbol"></span>
	      <span id="emailCheckCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 3. pw -->
	  <div class="form-group" id="password">
	    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.password }</p>
	      <span id="passwordCheckSymbol"></span>
	      <span id="passwordCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 4. pw check -->
	  <div class="form-group" id="passwordCheck">
	    <label for="inputPasswordCheck" class="col-sm-2 control-label">Check-Password</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.passwordCheck }</p>
   	      <span id="passwordCheckCheckSymbol"></span>
	      <span id="passwordCheckCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 5. name -->
	  <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label">Name</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.name }</p>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 6. birthday -->
	  <div class="form-group">
	    <label for="inputBirthday" class="col-sm-2 control-label">Birthday</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.birthday }</p>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 7. Telephone Number -->
	  <div class="form-group">
	    <label for="inputTelNum" class="col-sm-2 control-label">Tel</label>
	    <div class="col-sm-9">
	      <p class="form-control">${ resultMap.telNum }</p>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>

	  <!-- 8. address
	  10 : 경기도
	  20 : 전라도
	  30 : 경상도
	   -->
	 
	  <div class="form-group">
	    <label for="inputAddr" class="col-sm-2 control-label">Address</label>
	    <div class="col-sm-9">
		    <div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputAddr">
			<label class="btn btn-secondary active">
		    	<p class="form-control">${ resultMap.addr }</p>
		 	</label>
		</div>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	   <!-- 9. hobby
	  100 : 수영
	  200 : 음악감상
	  300 : 공부
	   -->
	 
	  <div class="form-group">
	    <label for="inputHobbies" class="col-sm-2 control-label">Hobby</label>
	    <div class="col-sm-9">
		    <div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputHobbies">
			<label class="btn btn-secondary">
		    	<input type="checkbox" name="hobbies" value="100" > 수영
		 	</label>
		    <label class="btn btn-secondary">
		    	<input type="checkBox" name="hobbies" value="200" > 음악감상
		  	</label>
		  	<label class="btn btn-secondary">
		    	<input type="checkBox" name="hobbies" value="300" > 공부
		  	</label>
		</div>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">sign up</button>
	      <button type="submit" class="btn btn-default">cancel</button>
	    </div>
	  </div>
	</form>
