<!DOCTYPE html>
<html>
<head>
    <title>College ERP Dashboard</title>
    <link rel="stylesheet" href="dashboard2.css">
</head>
<body>
    <div class="navbar">
        <div class="nav-logo border">
            <a href="index.html"><div class="logo"></div></a>
        </div>
        <div class="nav-options">
            <div class="options">
                <a href="#">
                    <p class="para">Dashboard</p>
                </a>
            </div>
            <div class="options">
                <a href="semester_reports.php">
                    <p class="para">Assessment</p>
                </a>
            </div>
            <div>
                <form id="nav-form" method="post">
                    <select name="category" id="category-dropdown" onchange="redirectToPage()">
                        <option value="default">Select an option</option>
                        <option value="semester_fee_details">Semester FEE details</option>
                        <option value="mess_fee_details">Mess FEE details</option>
                        <option value="backexam_registration">Backexam Registration</option>
                        <option value="raise_token">Raise Token</option>
                        <option value="token_status">View token status</option>
                        <option value="feedback">Feedback</option>
                        <option value="semester_reports">Semester reports</option>
                    </select>
                </form>
            </div>
            <div class="button-group">
                <a href="sign_out.php"><button class="signin-button">Sign out</button></a>
            </div>
        </div>
    </div>

    <main>
        <h2>Student Details</h2>
        <div class="hiii">
            <div class="student-details">
                <?php
                // Start the session
                session_start();
                // Include database connection
                include 'db_connect.php';

                // Retrieve the logged-in student's enrollment number
                $enrollment = $_SESSION['enrollment'] ?? '';

                // Fetch student details from the `student_details` table for the logged-in enrollment
                $sql_student = "SELECT * FROM student_details WHERE enrollment = ?";
                $stmt = $conn->prepare($sql_student);
                $stmt->bind_param("s", $enrollment);
                $stmt->execute();
                $student_result = $stmt->get_result();

                // Display student details
                if ($student_result->num_rows > 0) {
                    $student = $student_result->fetch_assoc();
                    echo '<p><strong>Name:</strong> ' . htmlspecialchars($student['name']) . '</p>';
                    echo '<p><strong>Phone No:</strong> ' . htmlspecialchars($student['phone_no']) . '</p>';
                    echo '<p><strong>Room No:</strong> ' . htmlspecialchars($student['room_no']) . '</p>';
                    echo '<p><strong>Semester:</strong> ' . htmlspecialchars($student['semester']) . '</p>';
                    echo '<p><strong>Department:</strong> ' . htmlspecialchars($student['department']) . '</p>';
                    echo '<p><strong>Mother Name:</strong> ' . htmlspecialchars($student['mother_name']) . '</p>';
                    echo '<p><strong>Father Name:</strong> ' . htmlspecialchars($student['father_name']) . '</p>';
                    echo '<p><strong>Hostel:</strong> ' . htmlspecialchars($student['hostel']) . '</p>';
                    echo '<p><strong>Email:</strong> ' . htmlspecialchars($student['email']) . '</p>';
                
                } else {
                    echo '<p>No student details found for your enrollment.</p>';
                }

                // Close the prepared statement
                $stmt->close();
                ?>
            </div>
        </div>
        <hr>
        <br>
        <!-- Academic Calendar PDF View -->
        <div>
            <h2>Academic Calendar</h2>
            <br>
            <a href="academic_calendar.pdf" target="_blank" style="text-decoration: none; color:black; font-weight: bold;">View Academic Calendar PDF</a>
        </div><br>
        <hr>
        <br>
        <!-- Display previous semester details -->
        <h2>Previous Semester Details</h2><br>
        <?php
        // Fetch previous semester details from the `sem_3` table for the logged-in enrollment
        $sql_sem_3 = "SELECT * FROM sem_3 WHERE enrollment = ?";
        $stmt = $conn->prepare($sql_sem_3);
        $stmt->bind_param("s", $enrollment);
        $stmt->execute();
        $result_sem_3 = $stmt->get_result();

        // Display previous semester details
        if ($result_sem_3->num_rows > 0) {
            echo '<table>';
            echo '<thead>';
            echo '<tr>';
            echo '<th>Course Name</th>';
            echo '<th>No. of Credits</th>';
            echo '<th>Midterm Exam</th>';
            echo '<th>End Semester Exam</th>';
            echo '<th>Internal Marks</th>';
            echo '<th>Total GPA</th>';
            echo '<th>Grade</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            while ($row = $result_sem_3->fetch_assoc()) {
                echo '<tr>';
                echo '<td>' . htmlspecialchars($row['course']) . '</td>';
                echo '<td>' . htmlspecialchars($row['credits']) . '</td>';
                echo '<td>' . htmlspecialchars($row['mid']) . '</td>';
                echo '<td>' . htmlspecialchars($row['end']) . '</td>';
                echo '<td>' . htmlspecialchars($row['internal']) . '</td>';
                echo '<td>' . htmlspecialchars($row['gpa']) . '</td>';
                echo '<td>' . htmlspecialchars($row['grade']) . '</td>';
                echo '</tr>';
            }
            echo '</tbody>';
            echo '</table>';
        } else {
            echo '<p>No previous semester details found for your enrollment.</p>';
        }

        // Close the prepared statement
        $stmt->close();

        ?>
<br><hr><br>
        <!-- Display current semester details -->
        <h2>Current Semester Details</h2><br>
        <?php
        // Fetch current semester details from the `sem_4` table for the logged-in enrollment
        $sql_sem_4 = "SELECT * FROM sem_4 WHERE enrollment = ?";
        $stmt = $conn->prepare($sql_sem_4);
        $stmt->bind_param("s", $enrollment);
        $stmt->execute();
        $result_sem_4 = $stmt->get_result();

        // Display current semester details
        if ($result_sem_4->num_rows > 0) {
            echo '<table>';
            echo '<thead>';
            echo '<tr>';
            echo '<th>Course Name</th>';
            echo '<th>No. of Credits</th>';
            echo '<th>Midterm Exam</th>';
            echo '<th>End Semester Exam</th>';
            echo '<th>Internal Marks</th>';
            echo '<th>Total GPA</th>';
            echo '<th>Grade</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            while ($row = $result_sem_4->fetch_assoc()) {
                echo '<tr>';
                echo '<td>' . htmlspecialchars($row['course']) . '</td>';
                echo '<td>' . htmlspecialchars($row['credits']) . '</td>';
                echo '<td>' . htmlspecialchars($row['mid']) . '</td>';
                echo '<td>' . htmlspecialchars($row['end']) . '</td>';
                echo '<td>' . htmlspecialchars($row['internal']) . '</td>';
                echo '<td>' . htmlspecialchars($row['gpa']) . '</td>';
                echo '<td>' . htmlspecialchars($row['grade']) . '</td>';
                echo '</tr>';
            }
            echo '</tbody>';
            echo '</table>';
        } else {
            echo '<p>No current semester details found for your enrollment.</p>';
        }

        // Close the prepared statement
        $stmt->close();

        // Close the database connection
        $conn->close();
        ?>
        </div>
    </main>

    <footer>
        <p>&copy; College ERP</p>
    </footer>

    <script>
        function redirectToPage() {
            // Get the selected option from the dropdown
            const selectedOption = document.getElementById('category-dropdown').value;

            // Get the form element
            const form = document.getElementById('nav-form');

            // Set the form's action attribute based on the selected option
            switch (selectedOption) {
                case 'semester_fee_details':
                    form.action = 'sem_fee.php';
                    break;
                case 'mess_fee_details':
                    form.action = 'mess_fee.php';
                    break;
                case 'backexam_registration':
                    form.action = 'backexam.php';
                    break;
                case 'raise_token':
                    form.action = 'token.php';
                    break;
                case 'token_status':
                    form.action = 'tokenstatus.php';
                    break;
                case 'feedback':
                    form.action = 'feedback.php';
                    break;
                case 'semester_reports':
                    form.action = 'semester_reports.php';
                    break;
                case 'sign_out':
                    form.action = 'sign_out.php';
                    break;
                default:
                    form.action = '#';
                    return;
            }

            // Submit the form
            form.submit();
        }
    </script>
</body>
</html>
