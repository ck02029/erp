<?php
// Start the session
session_start();

// Include the database connection file
include 'db_connect.php';

// Initialize variables
$enrollment = '';
$password = '';
$error = '';

// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve form data
    if (isset($_POST['enrollment'])) {
        $enrollment = $_POST['enrollment'];
    }

    if (isset($_POST['password'])) {
        $password = $_POST['password'];
    }

    // Prepare the SQL statement to retrieve the user's information
    $stmt = $conn->prepare('SELECT * FROM users WHERE enrollment = ?');
    $stmt->bind_param('s', $enrollment);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if the user exists
    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();

        // Check if the user is blocked
        if ($user['is_blocked']) {
            $error = 'Your account is temporarily blocked due to multiple failed login attempts. Please try again tomorrow.';
        } else {
            // Verify the password
            if ($password == $user['password']) {
                // Password is correct, set session variables
                $_SESSION['loggedin'] = true;
                $_SESSION['enrollment'] = $enrollment;
                
                // Retrieve the user's security question and answer
                $stmt_security = $conn->prepare('SELECT * FROM security_question WHERE enrollment = ?');
                $stmt_security->bind_param('s', $enrollment);
                $stmt_security->execute();
                $security_result = $stmt_security->get_result();
                
                // Check if security question and answer exist
                if ($security_result->num_rows > 0) {
                    $security_data = $security_result->fetch_assoc();
                    
                    // Set the security question and answer in session
                    $_SESSION['security_question'] = array_keys($security_data)[1]; // Get the first key (e.g., 'childhood_frnd')
                    $_SESSION['security_answer'] = $security_data[$_SESSION['security_question']];
                    
                    // Redirect to the security question page
                    header('Location: security_question.php');
                    exit();
                } else {
                    // If there is no security question or answer, show an error message
                    $error = 'No security question found for your account. Please contact support.';
                }
                
                // Close the security statement
                $stmt_security->close();
            } else {
                // Log the failed login attempt
                log_failed_login_attempt($conn, $enrollment);
                
                // Invalid password
                $error = 'Invalid enrollment or password.';
            }
        }
    } else {
        // No user found with the given enrollment number
        $error = 'Invalid enrollment or password.';
    }

    // Close the prepared statement
    $stmt->close();
}

// Function to log a failed login attempt
function log_failed_login_attempt($conn, $enrollment) {
    $today_date = date('Y-m-d');
    $successful = false;
    
    // Insert the failed login attempt into the login_attempts table
    $stmt = $conn->prepare('INSERT INTO login_attempts (enrollment, attempt_date, successful) VALUES (?, ?, ?)');
    $stmt->bind_param('sss', $enrollment, $today_date, $successful);
    $stmt->execute();
    $stmt->close();
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
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="sign.css">
</head>

<body>
    <header>
        <div class="navbar">
            <div class="nav-logo border">
                <div class="logo"></div>
            </div>
            <div class="nav-options">
                
                <div class="options">
                    <a href="#">
                        <p class="para">Dashboard</p>
                    </a>
                </div>
                <div class="options">
                    <a href="#">
                        <p class="para">Assessment</p>
                    </a>
                </div>
            </div>
        </div>

        <div class="body">
            <div class="container">
                <div class="form-box">
                    <h1 id="title">Login</h1>
                    <?php if ($error !== '') { ?>
                        <p style="color: red;"><?php echo htmlspecialchars($error); ?></p>
                    <?php } ?>
                    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                        <div class="input-group">
                            <div class="input-field">
                                <i class="fa-solid fa-envelope"></i>
                                <input type="text" placeholder="Enrollment" name="enrollment" required autocomplete="off">
                            </div>
                            <div class="input-field">
                                <i class="fa-solid fa-lock"></i>
                                <input type="password" placeholder="Password" name="password" required autocomplete="off">
                            </div>
                        </div>
                        <div class="button-field">
                            <input type="submit" id="signinButton" value="Login">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </header>

    <script src="sign.js"></script>
</body>

</html>
