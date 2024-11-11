<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile Details</title>
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

        form {
            margin-top: 20px;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        input[type="text"], input[type="submit"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #ffffff;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus, input[type="submit"]:hover {
            border-color: #1a0dab;
        }

        input[type="submit"] {
            background-color: #1a0dab;
            color: #ffffff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #4caf50;
        }
    </style>
</head>
<body>
    <form action="updateProfileInfo">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="${profile.name}"></td>
            </tr>
            <tr>
                <td>Contact Information</td>
                <td><input type="text" name="contactInformation" value="${profile.contactInformation}"></td>
            </tr>
            <tr>
                <td>Bio</td>
                <td><input type="text" name="bio" value="${profile.bio}"></td>
            </tr>
            <tr>
                <td>Profile Picture</td>
                <td><input type="text" name="profilePicture" value="${profile.profilePicture}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Profile"></td>
            </tr>
        </table>
    </form>
</body>
</html>
