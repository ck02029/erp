<?php
// Include the database connection file
include 'db_connect.php';

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the form was submitted by the user for backexam registration
    if (isset($_POST["Submit"])) {
        // Get form data
        $enrollment = $_POST["uname"];
        $email = $_POST["email"];
        $back_exam = $_POST["category"];

        // Check if enrollment exists in the database
        $sql_check_enrollment = "SELECT * FROM student_details WHERE enrollment = ?";
        $stmt_check_enrollment = $conn->prepare($sql_check_enrollment);
        $stmt_check_enrollment->bind_param("s", $enrollment);
        $stmt_check_enrollment->execute();
        $result_check_enrollment = $stmt_check_enrollment->get_result();

        // Check if the provided email is valid
        $email_pattern = "/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/";
        $is_valid_email = preg_match($email_pattern, $email);

        if ($result_check_enrollment->num_rows > 0 && $is_valid_email) {
            // Enrollment and email are valid, proceed with the registration
            $sql = "INSERT INTO backexam (enrollment, email, back_subject) VALUES (?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sss", $enrollment, $email, $back_exam);

            if ($stmt->execute()) {
                echo "Registration successful!";
            } else {
                echo "Error: " . $stmt->error;
            }

            // Close the prepared statement
            $stmt->close();
        } else {
            if ($result_check_enrollment->num_rows == 0) {
                echo "Invalid enrollment number.";
            } else {
                echo "Invalid email address.";
            }
        }

        // Close the prepared statement for enrollment check
        $stmt_check_enrollment->close();
    }
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Backexam Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="backexam.css">
</head>
<body>
    <h1>Backexam Registration</h1>
    <div class="form-box">
        <form method="post">
            <label for="uname">Enrollment</label>
            <input type="text" id="uname" name="uname" required>
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" required>
            <label>Opt course</label>
            <select name="category" required>
                <option value="LAL">LAL</option>
                <option value="DBMS">DBMS</option>
                <option value="UMC">UMC</option>
                <option value="DSA">DSA</option>
                <option value="DAA">DAA</option>
                <option value="PPL">PPL</option>
            </select>
            <button type="submit" name="Submit">Submit</button>
            <button type="button" onclick="window.location.href='dashboard.php'">Exit</button>
        </form>
    </div>
</body>
</html>
