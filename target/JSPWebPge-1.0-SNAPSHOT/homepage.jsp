<%-- 
    Document   : homepage
    Created on : Mar 2, 2025, 8:01:26 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                let user = localStorage.getItem("user");
                if (user) {
                    userObj = JSON.parse(user);
                    // Display User 
                    document.getElementById("UserID").innerText = userObj.user_id;
                    document.getElementById("Username").innerText = userObj.username;
                    document.getElementById("email").innerText = userObj.user_email;
                    document.getElementById("phonenumber").innerText = userObj.user_phone_number;
                    document.getElementById("createdAt").innerText = userObj.user_created_at;
                    document.getElementById("updatedAt").innerText = userObj.user_updated_at;
                    document.getElementById("deletedAt").innerText = userObj.user_deleted_at;
                    document.getElementById("countorder").innerText = userObj.order_count;
                } else {
                    console.log("No user found !");
                }
            }
            );

            // Move to update UserPage
            function update() {
                window.location.href = "updateUser.jsp";
            }            
            // Function logout
             async function logout(){
                localStorage.removeItem("user");
                sessionStorage.removeItem("user");
                setTimeout(() => {
                    window.location.href = "index.html";
                },1000);
            }
        </script>
    </head>
    <body>
        <h1>User Info</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">UserID</th>
                    <th scope="col">Username</th>
                    <th scope="col">Email</th>
                    <th scope="col">PhoneNumber(Password)</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Updated At</th>
                    <th scope="col">Deleted At</th>
                    <th scope="col">Number of Order</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td id="*"></td>
                    <td id="UserID"></td>
                    <td id="Username"></td>
                    <td id="email"></td>
                    <td id="phonenumber"></td>
                    <td id="createdAt"></td>
                    <td id="updatedAt"></td>
                    <td id="deletedAt"></td>
                    <td id="countorder"></td>
                </tr>
            </tbody>
        </table>
        <div>
            <button class="btn btn-warning" id="update" onclick="update()">
                Update Info User
            </button>
            <button class="btn btn-danger" id="update" onclick="logout()">
                Logout
            </button>
        </div>
    </body>
</html>
