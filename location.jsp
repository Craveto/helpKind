<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="application/json;charset=UTF-8" %>

<%
    // Database connection details
    String dbURL = "jdbc:mysql://localhost:3306/helpKindDataBase";
    String dbUser = "root";
    String dbPassword = "snehal@2508";

    double userLat = Double.parseDouble(request.getParameter("lat"));
    double userLng = Double.parseDouble(request.getParameter("lng"));
    double radius = Double.parseDouble(request.getParameter("radius"));

    List<Map<String, Object>> foundations = new ArrayList<>();

    try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword)) {
        String query = "SELECT id, name, latitude, longitude, description, " +
                       "(6371 * ACOS(COS(RADIANS(?)) * COS(RADIANS(latitude)) * COS(RADIANS(longitude) - RADIANS(?)) + SIN(RADIANS(?)) * SIN(RADIANS(latitude)))) AS distance " +
                       "FROM foundations " +
                       "HAVING distance <= ? " +
                       "ORDER BY distance ASC";

        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setDouble(1, userLat);
            stmt.setDouble(2, userLng);
            stmt.setDouble(3, userLat);
            stmt.setDouble(4, radius);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Map<String, Object> foundation = new HashMap<>();
                    foundation.put("id", rs.getInt("id"));
                    foundation.put("name", rs.getString("name"));
                    foundation.put("latitude", rs.getDouble("latitude"));
                    foundation.put("longitude", rs.getDouble("longitude"));
                    foundation.put("description", rs.getString("description"));
                    foundation.put("distance", rs.getDouble("distance"));
                    foundations.add(foundation);
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.setStatus(500); // Internal Server Error
    }

    // Convert the list to JSON and send it as a response
    Gson gson = new Gson();
    out.print(gson.toJson(foundations));
%>
