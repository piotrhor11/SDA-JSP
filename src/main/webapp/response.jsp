<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2017-10-09
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response</title>
</head>
<body>
<%
    out.print("Name: ");
    out.print(request.getParameter("name"));
    out.print("<br>Surname: ");
    out.print(request.getParameter("surname"));
    out.print("<br>email: ");
    out.print(request.getParameter("email"));

%>




</body>
</html>
