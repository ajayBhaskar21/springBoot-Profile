<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
    }

    h4 {
        color: #4caf50;
        text-decoration: underline;
        cursor: pointer;
        margin-bottom: 20px;
    }

    .menu {
        list-style-type: none;
        padding: 0;
    }

    .menu li {
        margin-bottom: 10px;
    }

    .menu li a {
        display: block;
        padding: 15px;
        border: 1px solid #4caf50;
        border-radius: 5px;
        background-color: #ffffff;
        color: #1a0dab;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    .menu li a:hover {
        background-color: #4caf50;
        color: #ffffff;
    }
</style>
</head>
<body>
    <div class="container">
        <h4>PROFILE INFORMATION SYSTEM</h4>
        <h4>Select Your Option</h4>
        <ul class="menu">
            <li><a href="addProfile">Add Profile</a></li>
            <li><a href="DeleteProfile">Delete Profile</a></li>
            <li><a href="UpdateProfile">Modify/Update Profile Info</a></li>
            <li><a href="ProfileInformation">Profile Information</a></li>
            <li><a href="allprofiledetails">All Profile Details</a></li>
        </ul>
    </div>
</body>
</html>
