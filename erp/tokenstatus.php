<?php
// Include the database connection file
include 'db_connect.php';

// Start the session
session_start();

// Check if the user is logged in
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header('Location: login.html');
    exit();
}

// Retrieve the user's enrollment number from the session
$enrollment = $_SESSION['enrollment'];

// Prepare the SQL query to join the `complaints` and `token_status` tables
$query = "SELECT c.token_id, c.enrollment, s.status, c.complaint_regarding AS type, c.complaint_text AS description, u.name
          FROM erp1.complaints AS c
          JOIN erp1.token_status AS s ON c.token_id = s.token_id
          JOIN erp1.student_details AS u ON c.enrollment = u.enrollment
          WHERE c.enrollment = ?";

// Prepare and execute the statement
$stmt = $conn->prepare($query);
$stmt->bind_param('s', $enrollment);
$stmt->execute();
$result = $stmt->get_result();

// Output HTML structure
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Token Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #ccc5b9;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 40px;
            background-color: #FFFFFF;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Token Details</h2>';

// Check if any records were found
if ($result->num_rows > 0) {
    echo '<table>
        <tr>
            <th>Token ID</th>
            <th>Enrollment</th>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Status</th>
        </tr>';

    // Display the details of each token
    while ($row = $result->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . htmlspecialchars($row['token_id']) . '</td>';
        echo '<td>' . htmlspecialchars($row['enrollment']) . '</td>';
        echo '<td>' . htmlspecialchars($row['name']) . '</td>';
        echo '<td>' . htmlspecialchars($row['type']) . '</td>';
        echo '<td>' . htmlspecialchars($row['description']) . '</td>';
        echo '<td>' . htmlspecialchars($row['status']) . '</td>';
        echo '</tr>';
    }
    echo '</table>';
} else {
    // No records found
    echo '<p>No tokens found for your enrollment.</p>';
}

// Close the prepared statement and connection
$stmt->close();
$conn->close();

// Close HTML structure
echo '</div>
</body>
</html>';
?>
