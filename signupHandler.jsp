<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    // Retrieve form data
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    if (!password.equals(confirmPassword)) {
        out.println("<h3>Passwords do not match!</h3>");
    } else {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the MySQL database
            String dbURL = "jdbc:mysql://localhost:3306/helpKindDataBase"; // Replace `UserDB` with your database name
            String dbUser = "root"; // Replace with your MySQL username
            String dbPassword = "snehal@2508"; // Replace with your MySQL password
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insert user details into the database
            String sql = "INSERT INTO helpKindUsers (username, email, password) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password); // Store hashed password in real-world scenarios

            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
               response.sendRedirect("homeAfterlogin.jsp");
            } else {
                out.println("<h3>Signup failed. Please try again.</h3>");
            }
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                out.println("<h3>Error while closing resources: " + e.getMessage() + "</h3>");
            }
        }
    }
%>
