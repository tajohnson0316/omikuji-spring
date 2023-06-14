<%--
  Created by IntelliJ IDEA.
  User: arman
  Date: 6/13/2023
  Time: 5:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<html>
<head>
  <title>Omikuji</title>
</head>
<body>
<div class="container p-5">
  <h1 class="text-center">Send an Omikuji</h1>
  <div class="card">
    <div class="card-body">
      <form action="/process" method="POST">
        <div class="mb-3">
          <label for="number" class="form-label">Pick any number from 5 to 25:</label>
          <input
              type="number"
              class="form-control"
              name="number"
              id="number"
              min="5"
              max="25"
          >
        </div>
        <div class="mb-3">
          <label for="city" class="form-label">Enter the name of any city:</label>
          <input type="text" class="form-control" name="city" id="city">
        </div>
        <div class="mb-3">
          <label for="person" class="form-label">Enter the name of any real person:</label>
          <input type="text" class="form-control" name="person" id="person">
        </div>
        <div class="mb-3">
          <label for="profession" class="form-label">Enter any professional endeavor or hobby:</label>
          <input type="text" class="form-control" name="profession" id="profession">
        </div>
        <div class="mb-3">
          <label for="thing" class="form-label">Enter any type of living thing:</label>
          <input type="text" class="form-control" name="thing" id="thing">
        </div>
        <div class="mb-3">
          <label for="saySomething" class="form-label">Say something nice to someone:</label>
          <textarea
              class="form-control"
              name="saySomething"
              id="saySomething"
          >
          </textarea>
        </div>
        <div class="d-flex justify-content-end">
          <p class="fst-italic">Send and show a friend</p>
        </div>
        <div class="mb-3 d-flex justify-content-end">
          <button type="submit" class="btn btn-primary">Send</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
