<%
session.removeAttribute("m");
session.invalidate();
response.sendRedirect("login.jsp");
%>