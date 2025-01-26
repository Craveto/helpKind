<%
    // Invalidate the session and redirect to the login page
    session.invalidate();
    response.sendRedirect("index.html");
%>
