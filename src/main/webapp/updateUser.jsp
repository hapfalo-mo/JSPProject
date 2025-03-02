<%-- 
    Document   : updateUser
    Created on : Mar 2, 2025, 6:37:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User Page</title>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                let user = localStorage.getItem("user");
                if (user) {
                    userObj = JSON.parse(user);
                    // Display User 
                    document.getElementById("userId").value = userObj.user_id;
                    document.getElementById("Username").value = userObj.username;
                    document.getElementById("email").value = userObj.user_email;
                    document.getElementById("phonenumber").value = userObj.user_phone_number;
                    document.getElementById("createdAt").value = userObj.user_created_at;
                    document.getElementById("updatedAt").value = userObj.user_updated_at;
                    document.getElementById("deletedAt").value = userObj.user_deleted_at;
                    document.getElementById("countorder").value = userObj.order_count;
                } else {
                    console.log("No user found !");
                }
            }
            );
            function updateUser(event) {
                event.preventDefault();
                let userUpdate = {
                    "username": document.getElementById("Username").value
                    "user_email": document.getElementById("email").value
                    "user_phone_number": document.getElementById("phonenumber").value
                };
                console.log(JSON.stringify(userUpdate));
            }
        </script>    
    </head>
    <body>
        <form onsubmit="updateUser(event)" >
            <label hidden="">User ID:</label>
            <input hidden="" type="text" id="userId" name="userId" ><br>
            <label>User Name:</label>
            <input type="text" id="Username" name="userId" ><br>
            <label>Email:</label>
            <input type="email" id="email" name="email" ><br>

            <label>Phone Number:</label>
            <input type="text" id="phonenumber" name="phoneNumber" ><br>

            <label>Created At:</label>
            <input type="text" id="createdAt" name="createdAt" ><br>

            <label>Updated At:</label>
            <input type="text" id="updatedAt" name="updatedAt" ><br>

            <label>Deleted At:</label>
            <input type="text" id="deletedAt" name="deletedAt" ><br>

            <label>Number of Orders:</label>
            <input type="number" id="countorder" name="numberOfOrders"><br>
            <button  type="submit">Update</button>
        </form>
    </body>
</html>
