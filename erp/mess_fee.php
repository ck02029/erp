<?php
// Start the session
session_start();

// Check if the user is logged in
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header('Location: sign.html');
    exit();
}

// Include the database connection file
include 'db_connect.php';

// Retrieve the student's enrollment from the session
$enrollment = $_SESSION['enrollment'];

// Prepare the SQL statement to retrieve mess fee details
$stmt = $conn->prepare('SELECT * FROM mess_fee WHERE enrollment = ?');
$stmt->bind_param('s', $enrollment);
$stmt->execute();
$result = $stmt->get_result();

// Store the data in an array for use in the HTML file
$fee_details = [];
if ($result->num_rows > 0) {
    $fee_details = $result->fetch_assoc();
} else {
    echo "No mess fee details found for your enrollment.";
    exit();
}

// Close the prepared statement and connection
$stmt->close();
$conn->close();

// Use PHP's `extract()` function to make the array keys variables
extract($fee_details);

// Create the HTML content
ob_start(); // Start output buffering
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mess Fee Details</title>
    <style>
        body {
            background-color: #ccc5b9;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 40px;
            font-size: larger;
            margin-top: 10%;
            background-color: #FFFFFF;
        }
        .student {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 20px; 
            color: #403d39; 
            font-weight: 600;
        }
        .student-info {
            margin-bottom: 10px;
        }
        .student-info strong {
            margin-right: 5px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2 style="text-align: center; padding-bottom: 10px;">Mess Fee Details</h2>
        <div class="student">
            <div class="student-info">
                <strong>Enrollment Number:</strong> <?= htmlspecialchars($enrollment) ?>
            </div>
            <div class="student-info">
                <strong>Semester:</strong> <?= htmlspecialchars($semester) ?>
            </div>
            <div class="student-info">
                <strong>Name:</strong> <?= htmlspecialchars($name) ?>
            </div>
            <div class="student-info">
                <strong>Fees:</strong> <?= htmlspecialchars($fees) ?>
            </div>
            <div class="student-info">
                <strong>Status:</strong> <?= htmlspecialchars($status) ?>
            </div>
            <div class="student-info">
                <strong>Payment Date:</strong> <?= htmlspecialchars($payment_date) ?>
            </div>
            <div class="student-info">
                <strong>Transaction ID:</strong> <?= htmlspecialchars($transaction_id) ?>
            </div>
        </div>
    </div>
</body>

</html>
<?php
// Get the HTML content as a string
$html_content = ob_get_clean();

// Output the HTML content
echo $html_content;
?>
