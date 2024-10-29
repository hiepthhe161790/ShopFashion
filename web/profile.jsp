<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Custom CSS -->
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        
        .containers {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
        }
        .alert-info {
            background-color: #d9edf7;
            border-color: #bce8f1;
            color: #31708f;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btns {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }
        .btn-primarys {
            background-color: #000;
        }
        h2 {
            margin-top: 0;
        }
        .card {
            padding: 20px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #fff;
        }
        .card-header {
            padding-bottom: 10px;
            border-bottom: 1px solid #ddd;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@include file="components/navBarComponent.jsp" %>
    <div class="containers">
        <c:if test="${not empty sessionScope.message}">
            <div class="alert alert-info">${sessionScope.message}</div>
            <c:remove var="message" scope="session"/>
        </c:if>

        <div class="card">
            <div class="card-header">
                <h2>Profile Information</h2>
            </div>
            <form action="updateProfile" method="post">
                <input type="hidden" name="uid" value="${sessionScope.acc.uid}">
                <div class="form-group">
                    <label for="user">Name:</label>
                    <input type="text" id="user" name="user" value="${sessionScope.acc.user}" required>
                </div>
                <div class="form-group">
                    <label for="pass">Password:</label>
                    <input type="text" id="pass" name="pass" value="${sessionScope.acc.pass}" required>
                </div>
                <button type="submit" class="btns btn-primarys">Save Changes</button>
            </form>
        </div>

        <div class="card">
            <div class="card-header">
                <h2>Change Password</h2>
            </div>
            <form action="updatePassword" method="post">
                <div class="form-group">
                    <label for="currentPassword">Current Password:</label>
                    <input type="password" id="currentPassword" name="currentPassword" required>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password:</label>
                    <input type="password" id="newPassword" name="newPassword" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm New Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
                <input type="hidden" name="user" value="${sessionScope.acc.user}">
                <button type="submit" class="btns btn-primarys">Change Password</button>
            </form>
        </div>
    </div>
    <%@include file="components/footerComponent.jsp" %>
</body>
</html>
