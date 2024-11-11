<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h4 {
            color: #1a0dab;
            text-decoration: underline;
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

        input[type="number"], input[type="submit"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #ffffff;
            transition: border-color 0.3s ease;
        }

        input[type="number"]:focus, input[type="submit"]:hover {
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
    <div class="container">
        <h4>UPDATE PROFILE INFORMATION</h4>
        <form action="UpdateProfileDetails">
            <table>
                <tr>
                    <td>Profile ID</td>
                    <td><input type="number" name="id"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update Profile"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
