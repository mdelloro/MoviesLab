<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%--
	On this page the user can choose to view movies or categories.
	
	Model: none
 --%>
<html>
<head>
	<title>Home</title>
	<link href="<c:url value="/resources/main.css"/>" rel="stylesheet"/>
</head>
<body>
<h1>
	Grand Circus Movie Site.
</h1>
<h2>To break your concentration...</h2>

<a href="<c:url value="/movies"/>"><h2>Movies</h2></a>
<a href="<c:url value="/categories"/>"><h2>Categories</h2></a>
</body>
</html>
