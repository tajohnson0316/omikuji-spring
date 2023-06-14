<%--
  Created by IntelliJ IDEA.
  User: arman
  Date: 6/14/2023
  Time: 3:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<html>
<head>
  <title>Omikuji</title>
</head>
<body>
<style>
  span {font-weight: bold}
</style>
  <div class="container p-5">
    <h1 class="text-center mb-3">Your Omikuji Results</h1>
    <div class="d-flex justify-content-center">
      <div class="card fs-3 mb-3" style="width: 18rem">
        <div class="card-body text-center">
          <p>
            In <span><c:out value="${number}"/></span> years,
            you will live in <span><c:out value="${city}"/></span>
            with <span><c:out value="${person}"/></span> as your roommate,
            <span><c:out value="${profession}"/></span> for a living.
            The next time you see a <span><c:out value="${thing}"/></span>,
            you will have good luck. Also, <span><c:out value="${saySomething}"/></span>
          </p>
        </div>
      </div>
    </div>
    <div class="d-flex justify-content-center">
      <a href="/" class="fs-5">Return to Form</a>
    </div>
  </div>
</body>
</html>
