<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile Information System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h4 {
            color: #1a0dab;
            text-decoration: underline;
            cursor: pointer;
            margin-bottom: 20px;
        }

        a {
            color: #4caf50;
            text-decoration: none;
            cursor: pointer;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        table td, table th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        menu {
            list-style-type: none;
            padding: 0;
        }

        menu li {
            margin-bottom: 10px;
        }

        menu li a {
            display: block;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            color: #4caf50;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        menu li a:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h4>PROFILE ADDED SUCCESSFULLY</h4>
    <table>
        <tr>
            <td><c:out value="${profile.name}"/></td>
            <td><c:out value="${profile.contactInformation}"/></td>
            <td><c:out value="${profile.bio}"/></td>
            <td><c:out value="${profile.profilePicture}"/></td>
        </tr>
    </table>
    <h4>Select Your option</h4>
    <menu>
        <li><a href="addProfile">Add Profile</a></li>
        <li><a href="DeleteProfile">Delete Profile</a></li>
        <li><a href="UpdateProfile">Modify/Update Profile Info</a></li>
        <li><a href="ProfileDetail">Profile Details</a></li>
        <li><a href="allprofiledetails">All Profile Details</a></li>
        <li><a href="view">Home</a></li>
    </menu>
</body>
</html>
