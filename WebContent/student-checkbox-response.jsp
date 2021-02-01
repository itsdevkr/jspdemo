<html>
<head><title>Student Confirmation Title</title></head>
<body>
The student is confirmed : ${param.firstname} ${param.lastname}
<br>
Favorite Programming languages: 
<ul>
	<%
		String[] langs = request.getParameterValues("favLanguages");
		
		for (String tempLang : langs){
			out.println("<li>" + tempLang + "</li>");
		}
	%>
</ul>
</body>
</html>