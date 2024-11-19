INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(1, 'Dr. John Smith', 45, TO_DATE('1977-05-20', 'YYYY-MM-DD'), 'Male', 'Michael Smith', 'john.smith@example.com', '1234567890', '123 Main St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(2, 'Dr. Sarah Johnson', 40, TO_DATE('1982-02-15', 'YYYY-MM-DD'), 'Female', 'David Johnson', 'sarah.johnson@example.com', '9876543210', '456 Elm St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(3, 'Prof. Robert Brown', 50, TO_DATE('1972-08-10', 'YYYY-MM-DD'), 'Male', 'James Brown', 'robert.brown@example.com', '5551234567', '789 Oak St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(4, 'Prof. Jennifer Wilson', 55, TO_DATE('1967-11-30', 'YYYY-MM-DD'), 'Female', 'William Wilson', 'jennifer.wilson@example.com', '9995551234', '246 Maple St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(5, 'Dr. Michael Lee', 42, TO_DATE('1980-04-05', 'YYYY-MM-DD'), 'Male', 'Christopher Lee', 'michael.lee@example.com', '1112223333', '369 Cedar St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(6, 'Prof. Emily Taylor', 48, TO_DATE('1974-07-15', 'YYYY-MM-DD'), 'Female', 'Daniel Taylor', 'emily.taylor@example.com', '4447778888', '852 Walnut St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(7, 'Dr. Daniel Martinez', 47, TO_DATE('1975-10-25', 'YYYY-MM-DD'), 'Male', 'Jose Martinez', 'daniel.martinez@example.com', '6669991111', '753 Cherry St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(8, 'Dr. Olivia Garcia', 49, TO_DATE('1973-01-05', 'YYYY-MM-DD'), 'Female', 'David Garcia', 'olivia.garcia@example.com', '2223334444', '963 Birch St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(9, 'Prof. David Hernandez', 51, TO_DATE('1971-03-15', 'YYYY-MM-DD'), 'Male', 'Juan Hernandez', 'david.hernandez@example.com', '7778889999', '159 Spruce St, City, Country');
INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address)
VALUES
(10, 'Dr. Sophia Rodriguez', 44, TO_DATE('1978-06-20', 'YYYY-MM-DD'), 'Female', 'Jose Rodriguez', 'sophia.rodriguez@example.com', '8889990000', '357 Oak St, City, Country');

INSERT INTO course (course_id, course_name, curr_sem, cgpa, coursefee)
VALUES
(1, 'Computer Science', 'Spring 2022', 3.5, 5000);
INSERT INTO course (course_id, course_name, curr_sem, cgpa, coursefee)
VALUES
(2, 'Mechanical Engineering', 'Spring 2022', 3.7, 5500);
INSERT INTO course (course_id, course_name, curr_sem, cgpa, coursefee)
VALUES
(3, 'Electrical Engineering', 'Spring 2022', 3.6, 5200);

INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(1, 'John Doe', 20, TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Male', 'Michael Doe', 'john.doe@example.com', '1234567890', '123 Main St, City, Country', 'ACC123456', 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(2, 'Jane Smith', 21, TO_DATE('1999-02-15', 'YYYY-MM-DD'), 'Female', 'Steven Smith', 'jane.smith@example.com', '9876543210', '456 Elm St, City, Country', 'ACC654321', 2, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(3, 'Alice Johnson', 22, TO_DATE('1998-05-20', 'YYYY-MM-DD'), 'Female', 'David Johnson', 'alice.johnson@example.com', '5551234567', '789 Oak St, City, Country', 'ACC789012', 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(4, 'Bob Williams', 23, TO_DATE('1997-08-10', 'YYYY-MM-DD'), 'Male', 'Robert Williams', 'bob.williams@example.com', '3339876543', '101 Pine St, City, Country', 'ACC345678', 3, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(5, 'Emily Brown', 24, TO_DATE('1996-11-30', 'YYYY-MM-DD'), 'Female', 'Christopher Brown', 'emily.brown@example.com', '9995551234', '246 Maple St, City, Country', 'ACC901234', 2, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(6, 'Michael Wilson', 25, TO_DATE('1995-04-05', 'YYYY-MM-DD'), 'Male', 'James Wilson', 'michael.wilson@example.com', '1112223333', '369 Cedar St, City, Country', 'ACC678901', 3, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(7, 'Sophia Lee', 26, TO_DATE('1994-07-15', 'YYYY-MM-DD'), 'Female', 'William Lee', 'sophia.lee@example.com', '4447778888', '852 Walnut St, City, Country', 'ACC234567', 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(8, 'Daniel Taylor', 27, TO_DATE('1993-10-25', 'YYYY-MM-DD'), 'Male', 'Daniel Taylor Sr.', 'daniel.taylor@example.com', '6669991111', '753 Cherry St, City, Country', 'ACC890123', 2, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(9, 'Olivia Martinez', 28, TO_DATE('1992-01-05', 'YYYY-MM-DD'), 'Female', 'Jose Martinez', 'olivia.martinez@example.com', '2223334444', '963 Birch St, City, Country', 'ACC456789', 3, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO student (stud_id, fullname, age, dob, gender, fathername, mail, phonenumber, address, accountno, course_id, registration_date)
VALUES
(10, 'David Garcia', 29, TO_DATE('1991-03-15', 'YYYY-MM-DD'), 'Male', 'David Garcia Sr.', 'david.garcia@example.com', '7778889999', '159 Spruce St, City, Country', 'ACC012345', 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'));

INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(1, 'Transcript', 1);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(2, 'ID Card', 2);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(3, 'Passport', 3);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(4, 'Driver License', 4);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(5, 'Birth Certificate', 5);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(6, 'Health Insurance Card', 6);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(7, 'Social Security Card', 7);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(8, 'Voter Registration Card', 8);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(9, 'Bank Statement', 9);
INSERT INTO document (doc_id, doc_name, stud_id)
VALUES
(10, 'Utility Bill', 10);

INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(1, 500, 'ACC123456', 'Paid', 1);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(2, 600, 'ACC654321', 'Pending', 2);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(3, 450, 'ACC789012', 'Paid', 3);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(4, 550, 'ACC345678', 'Pending', 4);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(5, 700, 'ACC901234', 'Paid', 5);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(6, 400, 'ACC678901', 'Pending', 6);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(7, 750, 'ACC234567', 'Paid', 7);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(8, 600, 'ACC890123', 'Pending', 8);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(9, 500, 'ACC456789', 'Paid', 9);
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id)
VALUES
(10, 650, 'ACC012345', 'Pending', 10);

INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(1, 100, 'ACC123456', 'Paid', 1);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(2, 150, 'ACC654321', 'Pending', 2);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(3, 120, 'ACC789012', 'Paid', 3);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(4, 130, 'ACC345678', 'Pending', 4);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(5, 200, 'ACC901234', 'Paid', 5);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(6, 90, 'ACC678901', 'Pending', 6);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(7, 180, 'ACC234567', 'Paid', 7);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(8, 150, 'ACC890123', 'Pending', 8);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(9, 100, 'ACC456789', 'Paid', 9);
INSERT INTO mess (payment_id, amount, accountno, status, stud_id)
VALUES
(10, 160, 'ACC012345', 'Pending', 10);

INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(1, 1, 1);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(2, 2, 2);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(3, 3, 3);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(4, 4, 4);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(5, 5, 5);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(6, 6, 6);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(7, 7, 7);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(8, 8, 8);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(9, 9, 9);
INSERT INTO receipt (receipt_id, payment_id, stud_id)
VALUES
(10, 10, 10);

INSERT INTO subjects (sub_id, sub_name, course_id, professor_id, marks, credits, gpa)
VALUES
(1, 'Introduction to Programming', 1, 1, 85, 3, 3.5);
INSERT INTO subjects (sub_id, sub_name, course_id, professor_id, marks, credits, gpa)
VALUES
(2, 'Mechanics of Materials', 2, 2, 90, 3, 3.7);
INSERT INTO subjects (sub_id, sub_name, course_id, professor_id, marks, credits, gpa)
VALUES
(3, 'Circuit Analysis', 3, 3, 88, 3, 3.6);
