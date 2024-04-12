<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="db.FetchingData" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catch My Show</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, black, #4b4369);
            color: #ecc18e;
            height:100%;
        }

        .table-container {
            background-color: #4b4369;
            color: #ecc18e;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            margin-top: 20px;
        }

        .table th, .table td {
            text-align: center;
            padding: 15px;
        }

        .table thead th {
            background-color: #292b2c;
            color: red;
        }

        .table tbody {
            background-color white;
        }

        .no-data {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <%
        String mobile = (String) session.getAttribute("mobile");
        List<Map<String, String>> seatsList = new ArrayList<>();

        try {
            FetchingData fd = new FetchingData();
            Connection con = fd.con();

            try {
                String query = "SELECT MNO, SEATS, COUNT, LOCATION FROM seatsdata WHERE MNO=?";
                try (PreparedStatement pst = con.prepareStatement(query)) {
                    pst.setString(1, mobile);

                    try (ResultSet rs = pst.executeQuery()) {
                        while (rs.next()) {
                            Map<String, String> seatInfo = new HashMap<>();
                            seatInfo.put("mno", rs.getString("MNO"));
                            seatInfo.put("seats", rs.getString("SEATS"));
                            seatInfo.put("count", rs.getString("COUNT"));
                            seatInfo.put("location", rs.getString("LOCATION"));
                            seatsList.add(seatInfo);
                        }
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    <div class="container mt-2">
        <div class="table-container">
            <h2 class="text-center">My Orders</h2>
            <% if (!seatsList.isEmpty()) { %>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Movie and Location</th>
                            <th>Seats</th>
                            <th>Count</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Map<String, String> seatInfo : seatsList) { %>
                            <tr>
                                <td><%= seatInfo.get("location") %></td>
                                <td><%= seatInfo.get("seats") %></td>
                                <td><%= seatInfo.get("count") %></td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            <% } else { %>
                <p class="no-data">No seat information available</p>
            <% } %>
        </div>
    </div>

</body>
</html>
