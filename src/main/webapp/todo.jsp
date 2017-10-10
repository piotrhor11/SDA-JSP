<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2017-10-09
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo</title>
    <%@ include file="header.jsp" %>
</head>
<body>
<%!
   List<String> todoList = new ArrayList<>();
%>
<ul>
<%
    String item = request.getParameter("newTask");
    if(item!=null && !item.equals(" ")) {
        todoList.add(item);
    }

    for (String task: todoList) {
        out.print("<li>");
        out.print(task);
    }
%>
</ul>

<div class="container">
    <form action="todo.jsp">
        <div class="form-group">
            <label for="newTask">New Task:</label>
            <input type="text" class="form-control" id="newTask" placeholder="new task" name="newTask" required="required" pattern="[A-Za-z0-9]{1,20}">
        </div>
    </form>
</div>


</body>
</html>
