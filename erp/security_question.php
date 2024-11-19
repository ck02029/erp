<?php
// Start the session
session_start();

// Check if the user is logged in
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header('Location: sign.html');
    exit();
}

// Check if a security question is available in the session
if (!isset($_SESSION['security_question']) || !isset($_SESSION['security_answer'])) {
    header('Location: auth.php');
    exit();
}

// Initialize variables
$error = '';
$security_question = $_SESSION['security_question'];
$security_answer = $_SESSION['security_answer'];

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve the user's answer to the security question
    if (isset($_POST['answer'])) {
        $user_answer = $_POST['answer'];
        
        // Compare the user's answer to the stored answer
        if (strtolower($user_answer) === strtolower($security_answer)) {
            // Correct answer, redirect the user to the dashboard page
            header('Location: dashboard.php');
            exit();
        } else {
            // Incorrect answer, display an error message
            $error = 'Incorrect answer to the security question. Please try again.';
        }
    }
}

// Map the security question key to a human-readable question
$security_questions = [
    'childhood_frnd' => 'Name your first childhood friend:',
    'grandfather_name' => 'Your grandfather\'s name:',
    'childhood_crush' => 'Name your childhood crush:'
];

// Get the human-readable security question
$question_text = $security_questions[$security_question];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Security Question</title>
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
                    <a href="index.html">
                        <p class="para">Dashboard</p>
                    </a>
                </div>
                <div class="options">
                    <a href="#">
                        <p class="para">Admission</p>
                    </a>
                </div>
                <div class="options">
                    <a href="#">
                        <p class="para">Assessment</p>
                    </a>
                </div>
                <div class="options">
                    <a href="#">
                        <p class="para">Archive</p>
                    </a>
                </div>
            </div>
        </div>

        <div class="body">
            <div class="container">
                <div class="form-box">
                    <h1 id="title">Security Question</h1>
                    <?php if ($error !== '') { ?>
                        <p style="color: red;"><?php echo htmlspecialchars($error); ?></p>
                    <?php } ?>
                    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                        <div class="input-group">
                            <div class="input-field">
                                <label><?php echo htmlspecialchars($question_text); ?></label>
                                <input type="text" placeholder="Answer" name="answer" required autocomplete="off">
                            </div>
                        </div>
                        <div class="button-field">
                            <input type="submit" id="submitButton" value="Submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </header>

    <script src="sign.js"></script>
</body>

</html>
