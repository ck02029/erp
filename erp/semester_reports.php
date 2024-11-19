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

// Initialize an array to store the data for each semester
$semester_data = [];

// Fetch student details (name and department) from the student_details table
$stmt_student_details = $conn->prepare('SELECT name, department FROM student_details WHERE enrollment = ?');
$stmt_student_details->bind_param('s', $enrollment);
$stmt_student_details->execute();
$result_student_details = $stmt_student_details->get_result();

if ($result_student_details->num_rows > 0) {
    $student_details = $result_student_details->fetch_assoc();
    $student_name = $student_details['name'];
    $student_department = $student_details['department'];
} else {
    echo "No student details found for the given enrollment.";
    exit();
}

// Close the prepared statement
$stmt_student_details->close();

// Fetch data for each semester (1 to 4)
for ($semester_number = 1; $semester_number <= 4; $semester_number++) {
    // Define the table name based on the semester number
    $table_name = "sem_$semester_number";
    
    // Prepare the SQL statement to retrieve the data for the current semester
    $stmt = $conn->prepare("SELECT course, credits, mid, end, internal, gpa, grade FROM $table_name WHERE enrollment = ?");
    $stmt->bind_param('s', $enrollment);
    $stmt->execute();
    $result = $stmt->get_result();
    
    // Fetch the data and store it in the array
    $semester_data[$semester_number] = [];
    while ($row = $result->fetch_assoc()) {
        $semester_data[$semester_number][] = $row;
    }
    
    // Close the prepared statement
    $stmt->close();
}

// Close the database connection
$conn->close();

// Start output buffering
ob_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semester Reports</title>
    <style>
        /* Include your existing styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #ccc5b9;
        }
        .container {
            width: 1500px;
            margin: 0 auto;
            background-color: #FFFFFF;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        h2 {
            margin-top: 40px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .section {
            margin-bottom: 20px;
            padding: 10px 20px;
            background-color: #FFFFFF;
        }
        .sections {
            margin-bottom: 20px;
            padding-left: 20px;
            background-color: #FFFFFF;
        }
        h2{
            text-align: center;
            margin-top: 5px;
        }
        hr{
            margin: 0;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1 style="padding-top: 20px;">Semester Reports</h1>
        <hr>
        <hr>

        <!-- Enrollment Number, Name, and Department Section -->
        <div class="sections">
            <h2>Student Information</h2>
            <div class="hi" style="margin-bottom: 10px;">
                <strong>Enrollment Number:</strong> <?= htmlspecialchars($enrollment) ?>
            </div>
            <div class="hi" style="margin-bottom: 10px;">
                <strong>Name:</strong> <?= htmlspecialchars($student_name) ?>
            </div>
            <div class="hi" style="margin-bottom: 10px;">
                <strong>Department:</strong> <?= htmlspecialchars($student_department) ?>
            </div>
        </div>
        <hr>

        <!-- Loop through each semester data and generate a section for each -->
        <?php for ($semester_number = 1; $semester_number <= 4; $semester_number++): ?>
            <div class="section">
                <h2>Semester <?= $semester_number ?></h2>
                <table>
                    <thead>
                        <tr>
                            <th>Course Name</th>
                            <th>No. of Credits</th>
                            <th>Midterm Exam</th>
                            <th>End Semester Exam</th>
                            <th>Internal Marks</th>
                            <th>Total GPA</th>
                            <th>Grade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($semester_data[$semester_number] as $course): ?>
                            <tr>
                                <td><?= htmlspecialchars($course['course']) ?></td>
                                <td><?= htmlspecialchars($course['credits']) ?></td>
                                <td><?= htmlspecialchars($course['mid']) ?></td>
                                <td><?= htmlspecialchars($course['end']) ?></td>
                                <td><?= htmlspecialchars($course['internal']) ?></td>
                                <td><?= htmlspecialchars($course['gpa']) ?></td>
                                <td><?= htmlspecialchars($course['grade']) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <hr>
        <?php endfor; ?>
    </div>
</body>

</html>

<?php
// Output the HTML content
echo ob_get_clean();
?>
