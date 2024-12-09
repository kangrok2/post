<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    <%
        <%@ include file = "signup_dbconn,jsp" %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);

            String sql = "SELECT * FROM user WHERE userID=? AND userPassword=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, userID);
            psmt.setString(2, password);
            rs = psmt.executeQuery();

            if (rs.next()) {
                out.println("Login Successful");
            } else {
                out.println("Invalid credentials. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (psmt != null) {
                try {
                    psmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
%>