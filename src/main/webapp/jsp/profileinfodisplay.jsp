<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #1a0dab;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        table th {
            background-color: #f2f2f2;
        }

        a {
            color: #4caf50;
            text-decoration: none;
            cursor: pointer;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Profile Information</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Contact Information</th>
            <th>Bio</th>
            <th>Profile Picture</th>
        </tr>   
        <tr>
            <td><c:out value="${profile.name}"/></td>
            <td><c:out value="${profile.contactInformation}"/></td>
            <td><c:out value="${profile.bio}"/></td>
            <td><c:out value="${profile.profilePicture}"/></td>
        </tr>       
    </table>
    <a href="view">Home</a>
</body>
</html>
