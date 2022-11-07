<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 07.11.2022
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>ShowCars</title>
    <jsp:include page="bootstrapHead.html"/>
</head>
<body>
<jsp:include page="Navbar.jsp"/>
<div class="container">
    <h1>All cars</h1>
    <form action="Cars" method="post">
        <label for="order">
            Order
        </label>
        <select name="order" id="order">
            <option value="byId">By Id</option>
            <option value="byName">By name</option>
            <option value="byNameRevers">By price</option>
            <option value="byBudget">By price reverse</option>
        </select>
        <button class="btn btn-light">
            Order
        </button>
    </form>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Make</th>
            <th scope="col">Type</th>
            <th scope="col">Graduation Year</th>
            <th scope="col">Vin code</th>
            <th scope="col">Technical Condition</th>
            <th scope="col">Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="car" items="${requestScope.cars}">
            <tr>
                <th scope="row"><c:out value="${car.id}"/></th>
                <td><c:out value="${car.name}"/></td>
                <td><c:out value="${car.make}"/></td>
                <td><c:out value="${car.type}"/></td>
                <td><c:out value="${car.graduationYear}"/></td>
                <td><c:out value="${car.vinCode}"/></td>
                <td><c:out value="${car.technicalCondition}"/></td>
                <td><c:out value="${car.price}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
