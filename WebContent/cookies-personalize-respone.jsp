<html>
<head>
<title>Confirmation</title>
</head>
<% 
	//read the form data
	String favLang = request.getParameter("favoriteLanguage");
	
	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);
	
	//set the life span
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to the browser
	response.addCookie(theCookie);
%>
	
<body>
Thanks, We set your favorite Language to: ${param.favoriteLanguage}
<br><br>
<a href="cookies-homepage.jsp">Return to HomePage</a>
</body>
</html>