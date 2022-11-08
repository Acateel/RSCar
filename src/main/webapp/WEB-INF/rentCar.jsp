<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 26.05.2022
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Rent Car</title>
    <jsp:include page="bootstrapHead.html"/>
</head>
<body>
<jsp:include page="Navbar.jsp"/>

<form action="" method="post">
    <div class="container">
        <h1>Rent Car</h1>
        <hr>
        <br/>
        <label for="faculty_name">
            Car</label>
        <input type="text" class="form-control"
               placeholder="Car"
               name="faculty_name"
               id="faculty_name" required>
        <br/>
        <label for="budget_seats">
            Now<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Now"
               name="budget_seats" id="budget_seats" required>
        <br/>
        <label for="total_seats">
            How long take car(days)<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Enter day"
               name="total_seats" id="total_seats" required>

        <hr>
        <button type="submit" class="button btn btn-light">Rent</button>
    </div>
</form>

</body>
</html>
