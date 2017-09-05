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

    <%-- TODO Deklaracje -->
    Aktualna data to:
    <br/>
    25 razy 4 to:
    <br/>
    Czy 50 jest mniejsze od 21?
    <br/>

    <%-- TODO zmienne zdefiniowane --%>
    Przeglądarka użytkonika:
    <br/>
    Język zapytania:
    <br/>
    Lista wszystkich nagłówków zapytania

</div>

<c:if test="{true}">
    Cos if
</c:if>

<%-- TODO Obsługa formy --%>
<%-- TODO Dodać <select> checkbox i radiobutton --%>
<%--
<div class="container" style="margin-top: 20px">
    <form>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email" name="email">
            <small id="emailHelp" class="form-text text-muted">Nigdy nie udostepnimy Twojego e-maila</small>
        </div>
        <div class="form-group">
            <label for="imie">Imie</label>
            <input type="text" class="form-control" id="imie" placeholder="Imie">
        </div>
        <div class="form-group">
            <label for="nazwisko">Nazwisko</label>
            <input type="text" class="form-control" id="nazwisko" placeholder="Nazwisko">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
--%>

</body>
</html>
