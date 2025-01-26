<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Database connection parameters
    String jdbcURL = "jdbc:mysql://localhost:3306/helpKindDataBase"; // Replace with your database name
    String dbUser = "root"; // Replace with your MySQL username
    String dbPassword = "snehal@2508"; // Replace with your MySQL password

    boolean isValidUser = false;

    try {
        // Load MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        // Query to validate user credentials
        String sql = "SELECT * FROM helpKindUsers WHERE username = ? AND password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            isValidUser = true;
             
             //store the userName for display in home page
            session.setAttribute("username", resultSet.getString("username"));
        }

        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Database connection error: " + e.getMessage() + "');</script>");
    }

    // Check login result
    if (isValidUser) {
        out.println("<script>window.location.href='homeAfterlogin.jsp';</script>");
    } else {
        out.println("<script>alert('Invalid username or password. Please try again.'); window.history.back();</script>");
    }
%>
