<?php
    $db_server="localhost";
    $db_user="root";
    $db_pass="";
    $db_name="ERP1";
    $conn="";
    try{
    $conn=mysqli_connect($db_server,$db_user,$db_pass,$db_name);
    }
    catch(mysqli_sql_exception){
        echo"Couldn't connect.. <br>";
    }
    if($conn){
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IIT2022202','akshitha')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IIT2022199','meghana')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IIT2022224','neha')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IIT2022196','kavya')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IIT2022171','rakesh')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IEC2022181','hrishitha')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IEC2022185','meenakshi')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IEC2022223','akshitha')";
        // $sql="INSERT INTO users (enrollment,password) VALUES ('IEC2022212','vinod')";
        
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IIT2022202', 'IT', 'Akshitha', '4', 'Mr. Rajesh', 'Mrs. Meena', '2001-05-15', 'akshitha@example.com', '9876543210', '123 Street, City', 'GH-3', '102')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IIT2022199', 'IT', 'Meghana', '4', 'Mr. Anil', 'Mrs. Anita', '2000-11-25', 'meghana@example.com', '9876543211', '456 Avenue, City', 'GH-2', '105')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IIT2022224', 'IT', 'Neha', '4', 'Mr. Ramesh', 'Mrs. Sita', '1999-03-10', 'neha@example.com', '9876543212', '789 Lane, City', 'GH-3', '105')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IIT2022196', 'IT', 'Kavya', '4', 'Mr. Madan', 'Mrs. Haritha', '1999-04-10', 'kavya@example.com', '9876543220', '786 Lane, City', 'GH-1', '213')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IIT2022171', 'IT', 'Rakesh', '4', 'Mr. Srikanth', 'Mrs. Rama', '1999-03-11', 'rakesh@example.com', '9876543213', '785 Lane, City', 'BH-3', '514')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IEC2022212', 'ECE', 'Vinod', '4', 'Mr. Srinath', 'Mrs. Jyothi', '1999-09-10', 'vinod@example.com', '9876543214', '799 Lane, City', 'BH-3', '105')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IEC2022223', 'ECE', 'Akshitha B', '4', 'Mr. Sridhar', 'Mrs. Prashanthi', '2000-03-10', 'akshitha@example.com', '9876543215', '689 Lane, City', 'GH-3', '115')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IEC2022181', 'ECE', 'Hrishitha', '4', 'Mr. Ashish', 'Mrs. Saritha', '2001-03-10', 'hrishitha@example.com', '9876543216', '698 Lane, City', 'GH-3', '102')";
        // $sql = "INSERT INTO student_details (enrollment, department, name, semester, father_name, mother_name, dob, email, phone_no, address, hostel, room_no)
        // VALUES ('IEC2022185', 'ECE', 'Meenakshi', '4', 'Mr. Vijay', 'Mrs. Kavitha', '2000-04-10', 'meenakshi@example.com', '9876543217', '543 Lane, City', 'GH-3', '112')";

        // try{
        //     mysqli_query($conn,$sql);
        // }
        // catch(mysqli_sql_exception){
        //     echo"Couldn't register";
        // }
    }
?>