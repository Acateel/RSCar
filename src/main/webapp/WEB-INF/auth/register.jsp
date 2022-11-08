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
    <title>Register</title>
    <jsp:include page="../bootstrapHead.html"/>
</head>
<body>
<jsp:include page="../Navbar.jsp"/>

<form action="Registration" method="post">
    <div class="container">
        <h1>Register</h1>
        <p>
            Enter fields
        </p>
        <hr>
        <em class="text-danger">
            * - required fields
        </em>
        <br/>
        <label for="email">
            Login<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Enter login"
               value="${requestScope.email}"
               name="email" id="email" required>

        <label for="psw">Password<span class="text-danger">*</span></label>
        <input type="password" class="form-control"
               placeholder="Enter password"
               value="${requestScope.psw}"
               name="psw" id="psw" required>

        <label for="lastname">Full name<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Enter full name"
               value="${requestScope.lastname}"
               name="lastname" id="lastname" required>

        <label for="firstname">Telephone number<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Enter number"
               value="${requestScope.firstname}"
               name="firstname" id="firstname" required>

        <label for="surname">Address<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Enter address"
               value="${requestScope.surname}"
               name="surname" id="surname" required>

        <label for="city">Passport number<span class="text-danger">*</span></label>
        <input type="text" class="form-control"
               placeholder="Enter number"
               value="${requestScope.city}"
               name="city" id="city" required>

        <hr>
        <button type="submit" class="button btn text-primary">Register</button>
    </div>

    <div class="container">
        <p>Registered? <a href="Login">Login</a>.</p>
    </div>
</form>
</body>
</html>
