<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2017-10-09
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mail form</title>
    <%@ include file="header.jsp" %>
</head>
<body>

<div class="container">
    <form action="mail.jsp">
        <div class="form-group">
            <label for="emailAddress">Email address:</label>
            <input type="email" class="form-control" id="emailAddress" placeholder="email address" name="emailAddress" required="required">
        </div>
        <div class="form-group">
            <label for="emailText">Text:</label>
            <textarea id="emailText" placeholder="Write here your useless message :)" name="emailText" required="required" rows="10" cols="30"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
