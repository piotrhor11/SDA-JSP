<%@ page import="java.util.Date" %>
<%@ page import="org.sda.jsp.JspUtil" %>
<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%!
    // TODO dodaj kod który pobierze godzinę o której JSP jest zainicjalizowane
    public void jspInit() {
    }

    // TODO wyświetl informację o której godzinie była inicjalizacja i jaka jest godzina teraz

    public void jspDestroy() {
    }
%>

<html>
<head>
    <title>$Title$</title>
    <%@ include file="header.jsp" %>
</head>
<body>

<div class="container" style="margin-top: 20px">

    <%-- TODO Hello World i aktualna godzina--%>
    <%= JspUtil.getUpperCase("Hello World")%><br>

    <%-- TODO Deklaracje --%>
    Aktualna data to:
    <%= new Date() %>
    <br/>
    25 razy 4 to:
    <% out.println(25*4);%>
    <br/>
    Czy 50 jest mniejsze od 21?
    <% out.println(50<21); %>
    <br/>

    <%-- TODO zmienne zdefiniowane --%>
    Przeglądarka użytkonika:
    <%= request.getHeader("User-Agent") %>
    <br/>
    Język zapytania:
    <%= request.getLocale()%>
    <br/>
    Lista wszystkich nagłówków zapytania
    <ul>
    <%
      Enumeration<String> headers = request.getHeaderNames();
      while (headers.hasMoreElements()){
          String header = headers.nextElement();
          out.print("<li>");
          out.println(header);
          out.print(" : ");
          out.print(request.getHeader(header));
          out.print("</li></br>");
      }
    %>
    </ul>

</div>

<c:if test="{true}">
    Cos if
</c:if>

<%-- TODO Obsługa formy --%>
<%-- TODO Dodać <select> checkbox i radiobutton --%>

<div class="container">
    <form>
        <select name=“country”>
            <option>Brazil</option>
            <option>France</option>
            <option>Germany</option>
            <option>India</option>
        </select>

        <input type="radio" name="favoriteLanguage" value="Java"> Java
        <input type="radio" name="favoriteLanguage" value="C#"> C#

        <input type="checkbox" name="favoriteLanguage" value="Java"> Java
        <input type="checkbox" name="favoriteLanguage" value="C#"> C#
    </form>
</div>

<div class="container" style="margin-top: 20px">
    <form action="response.jsp">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email" name="email">
            <small id="emailHelp" class="form-text text-muted">Nigdy nie udostepnimy Twojego e-maila</small>
        </div>
        <div class="form-group">
            <label for="imie">Imie</label>
            <input type="text" class="form-control" id="imie" placeholder="Imie" name="name">
        </div>
        <div class="form-group">
            <label for="nazwisko">Nazwisko</label>
            <input type="text" class="form-control" id="nazwisko" placeholder="Nazwisko" name="surname">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<div class="container">
    <%@ include file="footer.jsp" %>
</div>


</body>
</html>
