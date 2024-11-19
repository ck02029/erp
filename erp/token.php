<?php
// Start the session
session_start();

// Include the database connection file
include 'db_connect.php';

// Initialize variables
$enrollment = '';
$email = '';
$complaint_regarding = '';
$complaint_text = '';
$error = '';
$success = '';

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize input data
    if (isset($_POST["Submit"])) {
        $enrollment = mysqli_real_escape_string($conn, $_POST["uname"]);
        $email = mysqli_real_escape_string($conn, $_POST["email"]);
        $complaint_regarding = mysqli_real_escape_string($conn, $_POST["category"]);
        $complaint_text = mysqli_real_escape_string($conn, $_POST["msg"]);

        // Validate email using filter_var
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Check if enrollment exists in the database
            $stmt_check_enrollment = $conn->prepare("SELECT COUNT(*) FROM student_details WHERE enrollment = ?");
            $stmt_check_enrollment->bind_param("s", $enrollment);
            $stmt_check_enrollment->execute();
            $stmt_check_enrollment->bind_result($enrollment_count);
            $stmt_check_enrollment->fetch();
            $stmt_check_enrollment->close();

            if ($enrollment_count > 0) {
                // Enrollment and email are valid, proceed with insertion
                $stmt = $conn->prepare("INSERT INTO complaints (enrollment, email, complaint_regarding, complaint_text) VALUES (?, ?, ?, ?)");
                $stmt->bind_param("ssss", $enrollment, $email, $complaint_regarding, $complaint_text);

                if ($stmt->execute()) {
                    // Get the inserted token ID and display success message
                    $token_id = $stmt->insert_id;
                    $success = "Complaint submitted successfully! Your token ID is $token_id.";
                } else {
                    $error = "Error: " . $stmt->error;
                }

                $stmt->close();
            } else {
                $error = "Invalid enrollment number.";
            }
        } else {
            $error = "Invalid email address.";
        }
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
    <title>Raise Token</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="token.css">
</head>

<body>
    <h1>Raise Token</h1>
    <div class="form-box">
        <?php if ($success !== ''): ?>
            <p style="color: green;"><?php echo htmlspecialchars($success); ?></p>
        <?php elseif ($error !== ''): ?>
            <p style="color: red;"><?php echo htmlspecialchars($error); ?></p>
        <?php endif; ?>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <label for="uname"><i class="fa fa-solid fa-user"></i> Enrollment</label>
            <input type="text" id="uname" name="uname" required>
            <label for="email"><i class="fa fa-solid fa-envelope"></i> Email Address</label>
            <input type="email" id="email" name="email" required>
            <label><i class="fa-solid fa-list"></i> Category</label>
            <select name="category" required>
                <option value="electricity">Electricity</option>
                <option value="network">Network</option>
                <option value="maintenance">Maintenance</option>
            </select>
            <label for="msg"><i class="fa-solid fa-comments" style="margin-right: 3px;"></i> Complaint</label>
            <textarea id="msg" name="msg" rows="4" cols="10" required></textarea>
            <button type="submit" name="Submit">Submit</button>
            <button type="button" onclick="window.location.href='dashboard.php'">Exit</button>
        </form>
    </div>
</body>

</html>
