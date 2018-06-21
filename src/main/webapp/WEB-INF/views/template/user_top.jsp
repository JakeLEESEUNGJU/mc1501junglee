<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
</head>
<body>
<!-- Nav -->
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<c:url value='/'/>">MC1501Group</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<c:url value='/'/>">Home</a></li>
                <li class="active"><a href="<c:url value='/board/list?CATEGORY=BOARD'/>">Board</a></li>
                <li class="active"><a href="<c:url value='/foodstore/list?CATEGORY=FOODSTORE'/>">FoodBorad</a></li>
                <li class="active"><a href="<c:url value='/getjob/list?CATEGORY=GETJOB'/>">GetJobBoard</a></li>


                <!-- nav dropdown bar eliminated -->
                <!-- li class="dropdown">
                  <a href="http://bootstrapk.com/examples/carousel/#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Action</a></li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Another action</a></li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Separated link</a></li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">One more separated link</a></li>
                  </ul>
                </li -->
              <!--  leftside nav bar -->
              </ul>
              <ul class="nav navbar-nav navbar-right">
			     <li><a href="<c:url value='/login/signup'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			     <li><c:set var="principalName"
            value="${pageContext.request.userPrincipal.name}" /> 
            <i class="fa fa-user fa-fw"></i>
            <i class="fa fa-caret-down"></i> 
            <a href=${principalName == null ? '/myapp/login/login' : '/myapp/j_spring_security_logout' }>
            ${principalName == null ? 'Login' : 'Logout' }</a></li>
		      </ul>              
            </div>
          </div>
        </nav>
      </div>
    </div><!-- /.navbar-wrapper  -->


</body>
</html>