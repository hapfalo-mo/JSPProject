<%-- 
    Document   : homepage
    Created on : Mar 2, 2025, 8:01:26 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
    </head>
    <body>
        <h1>User List</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">UserID</th>
                    <th scope="col">Email</th>
                    <th scope="col">PhoneNumber(Password)</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Updated At</th>
                    <th scope="col">Deleted At</th>
                    <th scope="col">Number of Order</th>
                </tr>
            </thead>
           <% 
               var userList = localStorage.getItem("user")
               %>
        </table>
    </body>
</html>
