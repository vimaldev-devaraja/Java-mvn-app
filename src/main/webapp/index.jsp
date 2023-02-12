<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Simple Interactive JSP</title>
  </head>
  <body>
    <%
      String name = request.getParameter("name");
      if (name != null) {
    %>
      <h2>Hello, <%= name %>!</h2>
    <%
      } else {
    %>
      <form action="<%= request.getRequestURI() %>" method="get">
        <label for="name">Enter your name:</label>
        <input type="text" id="name" name="name" required>
        <input type="submit" value="Submit">
      </form>
    <%
      }
    %>
  </body>
</html>
