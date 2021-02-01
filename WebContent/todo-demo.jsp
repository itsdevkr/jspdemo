<%@ page import="java.util.*" %>

<html>
<body>
<!-- Step 1: Create HTML form -->
<form action="todo-demo.jsp">
Add new item: <input type="text" name="theItem">&nbsp<input type="submit" name="Submit" value="Submit">

</form>

<!-- Step 2: Add new item to "TO DO list" -->
<%
	//get the TO DO items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	//if the TO DO items doesn't exist, then create a new oone
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	if(theItem != null){
		items.add(theItem);
	}
%>
<!-- Step 3: Display all item to "TO DO" from the sessions  -->
<hr>
<b> To List Items:</b><br>

<ol>
	<%
		for(String temp: items){
			out.println("<li>" + temp + "</li>");
		}
	%>
</ol>

</body>
</html>