<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta charset="UTF-8">
	<tiles:insertAttribute name="layout.header" />
	<title><tiles:getAsString name="layout.title" /></title>
</head>
<body>
	<!-- Navigation -->
	<tiles:insertAttribute name="layout.top" />
	
	<!-- Body -->
	<tiles:insertAttribute name="layout.body" />

	<!-- Footer -->
	<tiles:insertAttribute name="layout.footer" />
</body>
</html>