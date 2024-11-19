CREATE TABLE admin_login (
  admin_name VARCHAR2(150) NOT NULL,
  username VARCHAR2(15) NOT NULL,
  password VARCHAR2(15) NOT NULL
);

INSERT INTO admin_login (admin_name, username, password) VALUES
('AdminUser', 'admin123', '444444');

CREATE TABLE admission_detail (
  user_id VARCHAR2(15) PRIMARY KEY,
  fname VARCHAR2(100) NOT NULL,
  lname VARCHAR2(100),
  gender VARCHAR2(10),
  dob DATE,
  address VARCHAR2(100),
  phone_no NUMBER(10),
  email VARCHAR2(100),
  branch VARCHAR2(100),
  year VARCHAR2(10),
  date_of_adm DATE,
  total_fee NUMBER(15),
  fees_paid NUMBER(15),
  father_name VARCHAR2(100),
  mother_name VARCHAR2(100),
  parent_no NUMBER(15)
);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1001', 'Shailaja', 'Pandey', 'Female', TO_DATE('2001-04-01', 'YYYY-MM-DD'), 'B-23/03 Shree G', 7977006043, 'shailaja@gmail.com', 'Computer Engineering', '2nd', TO_DATE('2021-08-11', 'YYYY-MM-DD'), 90000, 123355, 'Rajendra Pandey', 'Kavitha Pandey', 8356831742);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1002', 'Sid', 'Sharma', 'Male', TO_DATE('2000-12-14', 'YYYY-MM-DD'), 'Badlapur, Maharashtra', 4744464468, 'sid@gmail.com', 'Computer Engineering', '1st', TO_DATE('2019-05-10', 'YYYY-MM-DD'), 90000, 90000, 'Gagan Sharma','Saritha Sharma', 8679789878);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1004', 'Manasa', 'Varma', 'Female', TO_DATE('2002-04-13', 'YYYY-MM-DD'), 'DADAR', 5884851889, 'manasa@gmail.com', 'Computer Engineering', '2nd', TO_DATE('2022-04-23', 'YYYY-MM-DD'), 80000, 50000, 'Srikanth Varma', 'Rama Varma', 5658965);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1005', 'Jitendra', 'Shetty', 'Male', TO_DATE('2003-04-01', 'YYYY-MM-DD'), 'Wada', 85879589, 'jitendra@gmail.com', 'Electrical Engineering', '2nd', TO_DATE('2022-04-15', 'YYYY-MM-DD'), 72000, 57000, 'Pankaj Shetty', 'Vidya Shetty', 758785475);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1006', 'Lalitha', 'Sharma', 'Female', TO_DATE('2001-03-23', 'YYYY-MM-DD'), 'Byculla', 54885665, 'lalitha@gmail.com', 'Civil Engineering', '1st', TO_DATE('2022-04-25', 'YYYY-MM-DD'), 68000, 50000, 'Suresh Sharma', 'Harika', 75755745);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1007', 'Rahul', 'Vardhan', 'Male', TO_DATE('2002-02-08', 'YYYY-MM-DD'), 'Mumbai Central', 26954875, 'rahul@gmail.com', 'Computer Engineering', '3rd', TO_DATE('2022-04-22', 'YYYY-MM-DD'), 100000, 68000, 'Harish', 'Kamala', 58874595);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1008', 'Vighnesh', 'Vihar', 'Male', TO_DATE('2001-12-27', 'YYYY-MM-DD'), 'Palghar', 8587765, 'vighnesh@gmail.com', 'Mechanical Engineering', '1st', TO_DATE('2022-04-08', 'YYYY-MM-DD'), 72000, 50000, 'Atharv', 'Amala', 75454855);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1009', 'Aditya', 'Shah', 'Male', TO_DATE('2002-01-03', 'YYYY-MM-DD'), 'Marine', 89559432, 'aditya@gmail.com', 'Civil Engineering', '2nd', TO_DATE('2022-04-22', 'YYYY-MM-DD'), 68000, 57000, 'Kapil', 'Manisha', 75758684);

  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES ('1010', 'Vidya', 'Mane', 'Female', TO_DATE('2002-04-09', 'YYYY-MM-DD'), 'CSMT', 56956452, 'vidya@gmail.com', 'Biology', '1st', TO_DATE('2022-04-22', 'YYYY-MM-DD'), 100000, 57000, 'Naresh', 'Sujatha', 584877548);

CREATE TABLE student_detail (
  student_id VARCHAR(20) PRIMARY KEY,
  s_first_name VARCHAR2(100) NOT NULL,
  s_last_name VARCHAR2(100),
  branch VARCHAR2(100),
  sem NUMBER,
  email VARCHAR2(100),
  phoneno NUMBER(10),
  address VARCHAR2(100)
);

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1001', 'Shailaja', 'Pandey', 'Computer Engineering', 2, 'shailaja@gmail.com', 7977006043, 'B-23/03 Shree G');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1002', 'Sid', 'Sharma', 'Computer Engineering', 1, 'sid@gmail.com', 4744464468, 'Badlapur, Maharashtra');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1004', 'Manasa', 'Varma', 'Computer Engineering', 2, 'manasa@gmail.com', 5884851889, 'DADAR');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1005', 'Jitendra', 'Shetty', 'Electrical Engineering', 2, 'jitendra@gmail.com', 85879589, 'Wada');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1006', 'Lalitha', 'Sharma', 'Civil Engineering', 1, 'lalitha@gmail.com', 54885665, 'Byculla');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1007', 'Rahul', 'Vardhan', 'Computer Engineering', 3, 'rahul@gmail.com', 26954875, 'Mumbai Central');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1008', 'Vighnesh', 'Vihar', 'Mechanical Engineering', 1, 'vighnesh@gmail.com', 8587765, 'Palghar');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1009', 'Aditya', 'Shah', 'Civil Engineering', 2, 'aditya@gmail.com', 89559432, 'Marine');

INSERT INTO student_detail (student_id, s_first_name, s_last_name, branch, sem, email, phoneno, address) 
VALUES ('1010', 'Vidya', 'Mane', 'Biology', 1, 'vidya@gmail.com', 56956452, 'CSMT');

CREATE TABLE professor (
 professor_id NUMBER PRIMARY KEY,
 professor_name VARCHAR2(100),
 age NUMBER,
 dob DATE,
 gender VARCHAR2(10),
 fathername VARCHAR2(100),
 mail VARCHAR2(100),
 phoneno VARCHAR2(20),
 address VARCHAR2(255)
);

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (1, 'John Doe', 45, TO_DATE('1979-05-12', 'YYYY-MM-DD'), 'Male', 'Michael Doe', 'john.doe@example.com', '1234567890', '123 Main St, Anytown, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (2, 'Jane Smith', 38, TO_DATE('1986-08-25', 'YYYY-MM-DD'), 'Female', 'Robert Smith', 'jane.smith@example.com', '9876543210', '456 Oak St, Anycity, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (3, 'David Johnson', 50, TO_DATE('1972-03-18', 'YYYY-MM-DD'), 'Male', 'Richard Johnson', 'david.johnson@example.com', '4561237890', '789 Elm St, Anystate, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (4, 'Emily Brown', 42, TO_DATE('1980-11-30', 'YYYY-MM-DD'), 'Female', 'William Brown', 'emily.brown@example.com', '7894561230', '101 Pine St, Anycity, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (5, 'Michael Johnson', 48, TO_DATE('1974-09-08', 'YYYY-MM-DD'), 'Male', 'James Johnson', 'michael.johnson@example.com', '6549873210', '202 Maple St, Anystate, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (6, 'Jessica Davis', 35, TO_DATE('1989-02-15', 'YYYY-MM-DD'), 'Female', 'Daniel Davis', 'jessica.davis@example.com', '3217894560', '303 Oak St, Anycity, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (7, 'Christopher Wilson', 55, TO_DATE('1969-07-21', 'YYYY-MM-DD'), 'Male', 'Matthew Wilson', 'christopher.wilson@example.com', '9876541230', '404 Elm St, Anystate, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (8, 'Amanda Martinez', 40, TO_DATE('1982-04-27', 'YYYY-MM-DD'), 'Female', 'Jose Martinez', 'amanda.martinez@example.com', '4567890123', '505 Pine St, Anycity, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (9, 'William Taylor', 47, TO_DATE('1975-12-03', 'YYYY-MM-DD'), 'Male', 'John Taylor', 'william.taylor@example.com', '8901234567', '606 Maple St, Anystate, USA');

INSERT INTO professor (professor_id, professor_name, age, dob, gender, fathername, mail, phoneno, address) 
VALUES (10, 'Sarah Anderson', 36, TO_DATE('1988-06-17', 'YYYY-MM-DD'), 'Female', 'David Anderson', 'sarah.anderson@example.com', '5678901234', '707 Oak St, Anycity, USA');

CREATE TABLE document (
 doc_id NUMBER PRIMARY KEY,
 doc_name VARCHAR2(100),
 stud_id VARCHAR2(100),
 FOREIGN KEY (stud_id) REFERENCES student_detail(student_id)
);

INSERT INTO document (doc_id, doc_name, stud_id) VALUES (1, 'Intermediate_Memo.pdf', '1001');
INSERT INTO document (doc_id, doc_name, stud_id) VALUES (2, 'Passport_Photo', '1002');
INSERT INTO document (doc_id, doc_name, stud_id) VALUES (3, 'Aadhar_Card.pdf', '1007');
INSERT INTO document (doc_id, doc_name, stud_id) VALUES (4, 'Medical_Certificate.pdf', '1004');
INSERT INTO document (doc_id, doc_name, stud_id) VALUES (5, 'Aadhar_Card.pdf', '1005');

CREATE TABLE fee_payment (
 payment_id NUMBER PRIMARY KEY,
 amount NUMBER,
 accountno VARCHAR2(20),
 status VARCHAR2(20),
 stud_id VARCHAR2(100),
 FOREIGN KEY (stud_id) REFERENCES student_detail(student_id)
);

INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id) VALUES (1, 50000, '1234567890', 'Paid', '1001');
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id) VALUES (2, 70000, '0987654321', 'Paid', '1002');
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id) VALUES (3, 60000, '9876543210', 'Pending', '1006');
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id) VALUES (4, 80000, '0123456789', 'Paid', '1004');
INSERT INTO fee_payment (payment_id, amount, accountno, status, stud_id) VALUES (5, 55000, '6789012345', 'Pending', '1005');

CREATE TABLE mess (
 payment_id NUMBER PRIMARY KEY,
 amount NUMBER,
 accountno VARCHAR2(20),
 status VARCHAR2(20),
 stud_id VARCHAR2(100),
 FOREIGN KEY (stud_id) REFERENCES student_detail(student_id)
);

INSERT INTO mess (payment_id, amount, accountno, status, stud_id) VALUES (1, 2000, '1234567890', 'Paid', '1001');
INSERT INTO mess (payment_id, amount, accountno, status, stud_id) VALUES (2, 2500, '0987654321', 'Pending', '1002');
INSERT INTO mess (payment_id, amount, accountno, status, stud_id) VALUES (3, 2200, '9876543210', 'Paid', '1007');
INSERT INTO mess (payment_id, amount, accountno, status, stud_id) VALUES (4, 1800, '0123456789', 'Paid', '1004');
INSERT INTO mess (payment_id, amount, accountno, status, stud_id) VALUES (5, 2300, '6789012345', 'Pending', '1005');

CREATE TABLE receipt (
 receipt_id NUMBER PRIMARY KEY,
 payment_id NUMBER,
 stud_id VARCHAR2(100),
 FOREIGN KEY (payment_id) REFERENCES fee_payment(payment_id),
 FOREIGN KEY (stud_id) REFERENCES student_detail(student_id)
);

INSERT INTO receipt (receipt_id, payment_id, stud_id) VALUES (1, 1, '1001');
INSERT INTO receipt (receipt_id, payment_id, stud_id) VALUES (2, 2, '1002');
INSERT INTO receipt (receipt_id, payment_id, stud_id) VALUES (3, 3, '1006');
INSERT INTO receipt (receipt_id, payment_id, stud_id) VALUES (4,4, '1004');
INSERT INTO receipt (receipt_id, payment_id, stud_id) VALUES (5,5, '1005');

CREATE TABLE subjects (
 sub_id NUMBER PRIMARY KEY,
 sub_name VARCHAR2(100),
 professor_id NUMBER,
 credits NUMBER,
 FOREIGN KEY (professor_id) REFERENCES professor(professor_id)
);

INSERT INTO subjects (sub_id, sub_name, professor_id, credits) VALUES (1, 'Mathematics', 1, 4);
INSERT INTO subjects (sub_id, sub_name, professor_id, credits) VALUES (2, 'Physics', 2, 3);
INSERT INTO subjects (sub_id, sub_name, professor_id, credits) VALUES (3, 'Chemistry', 3, 3);
INSERT INTO subjects (sub_id, sub_name, professor_id, credits) VALUES (4, 'Biology', 4, 3);
INSERT INTO subjects (sub_id, sub_name, professor_id, credits) VALUES (5, 'Computer Science', 5, 4);

CREATE TABLE student_complaints (
    token_id NUMBER PRIMARY KEY,
    student_id VARCHAR2(20) NOT NULL,
    complaint_date DATE NOT NULL,
    complaint_text VARCHAR2(1000),
    status VARCHAR2(20) DEFAULT 'Pending',
    resolved_by VARCHAR2(100),
    resolution_date DATE,
    FOREIGN KEY (student_id) REFERENCES student_detail(student_id)
);

INSERT INTO student_complaints (token_id, student_id, complaint_date, complaint_text, status)
VALUES (1, '1001', TO_DATE('2024-04-17', 'YYYY-MM-DD'), 'Internet connection issue in the library', 'Pending');

INSERT INTO student_complaints (token_id, student_id, complaint_date, complaint_text, status)
VALUES (2, '1002', TO_DATE('2024-04-16', 'YYYY-MM-DD'), 'Unavailability of study material for subjects', 'Pending');

INSERT INTO student_complaints (token_id, student_id, complaint_date, complaint_text, status)
VALUES (3, '1005', TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Noise disturbance in the hostel', 'Resolved');

CREATE TABLE feedback (
  feedback_id NUMBER PRIMARY KEY,
  student_id VARCHAR2(20) NOT NULL,
  feedback_date DATE NOT NULL,
  feedback_text VARCHAR2(1000),
  CONSTRAINT fk_feedback_student_id FOREIGN KEY (student_id) REFERENCES student_detail(student_id)
);

CREATE TABLE grades (
    student_id VARCHAR2(20),
    subject_id NUMBER,
    grade VARCHAR2(2),
    FOREIGN KEY (student_id) REFERENCES student_detail(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(sub_id)
);

CREATE TABLE login_attempts (
    student_id VARCHAR2(20),
    attempt_date DATE,
    attempt_count NUMBER DEFAULT 0,
    CONSTRAINT pk_login_attempts PRIMARY KEY (student_id, attempt_date)
);

CREATE TABLE login_history (
    login_id NUMBER PRIMARY KEY,
    student_id VARCHAR2(20),
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    login_success CHAR(1),
    CONSTRAINT fk_login_history_student FOREIGN KEY (student_id) REFERENCES student_detail(student_id)
);

CREATE TABLE audit_log (
    log_id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    table_name VARCHAR2(50),
    action VARCHAR2(10),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id VARCHAR2(30),
    CONSTRAINT pk_audit_log PRIMARY KEY (log_id)
);

CREATE TABLE admin_notification (
    notification_id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    complaint_id NUMBER,
    student_id VARCHAR2(20),
    complaint_date DATE,
    complaint_text VARCHAR2(1000),
    status VARCHAR2(20),
    resolved_by VARCHAR2(100),
    resolution_date DATE,
    notification_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_admin_notification_complaint FOREIGN KEY (complaint_id) REFERENCES student_complaints(token_id),
    CONSTRAINT fk_admin_notification_student FOREIGN KEY (student_id) REFERENCES student_detail(student_id),
    CONSTRAINT ck_admin_notification_status CHECK (status IN ('Pending', 'Resolved')),
    PRIMARY KEY (notification_id)
);

CREATE OR REPLACE PROCEDURE addStudent(p_user_id IN admission_detail.user_id%TYPE,
                                      p_fname IN admission_detail.fname%TYPE,
                                      p_lname IN admission_detail.lname%TYPE,
                                      p_gender IN admission_detail.gender%TYPE,
                                      p_dob IN admission_detail.dob%TYPE,
                                      p_address IN admission_detail.address%TYPE,
                                      p_phone_no IN admission_detail.phone_no%TYPE,
                                      p_email IN admission_detail.email%TYPE,
                                      p_branch IN admission_detail.branch%TYPE,
                                      p_year IN admission_detail.year%TYPE,
                                      p_date_of_adm IN admission_detail.date_of_adm%TYPE,
                                      p_total_fee IN admission_detail.total_fee%TYPE,
                                      p_fees_paid IN admission_detail.fees_paid%TYPE,
                                      p_father_name IN admission_detail.father_name%TYPE,
                                      p_mother_name IN admission_detail.mother_name%TYPE,
                                      p_parent_no IN admission_detail.parent_no%TYPE) IS
BEGIN
  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES (p_user_id, p_fname, p_lname, p_gender, p_dob, p_address, p_phone_no, p_email, p_branch, p_year, p_date_of_adm, p_total_fee, p_fees_paid, p_father_name, p_mother_name, p_parent_no);
EXCEPTION
  WHEN dup_val_on_index THEN
    DBMS_OUTPUT.PUT_LINE('User ID already exists.');
END;
/

CREATE OR REPLACE PROCEDURE addSubject(p_sub_id IN subjects.sub_id%TYPE,
                                      p_sub_name IN subjects.sub_name%TYPE,
                                      p_professor_id IN subjects.professor_id%TYPE,
                                      p_credits IN subjects.credits%TYPE) IS
BEGIN
  INSERT INTO subjects (sub_id, sub_name, professor_id, credits) 
  VALUES (p_sub_id, p_sub_name, p_professor_id, p_credits);
EXCEPTION
  WHEN dup_val_on_index THEN
    DBMS_OUTPUT.PUT_LINE('Subject ID already exists.');
END;
/

CREATE OR REPLACE PROCEDURE addComplaint(p_student_id IN student_complaints.student_id%TYPE,
                                      p_complaint_date IN student_complaints.complaint_date%TYPE,
                                      p_complaint_text IN student_complaints.complaint_text%TYPE) IS
BEGIN
  INSERT INTO student_complaints (student_id, complaint_date, complaint_text, status) 
  VALUES (p_student_id, p_complaint_date, p_complaint_text, 'Pending');
END;
/

CREATE OR REPLACE PROCEDURE updateComplaint(p_token_id IN student_complaints.token_id%TYPE,
                                      p_status IN student_complaints.status%TYPE,
                                      p_resolved_by IN student_complaints.resolved_by%TYPE,
                                      p_resolution_date IN student_complaints.resolution_date%TYPE) IS
BEGIN
  UPDATE student_complaints
  SET status = p_status,
      resolved_by = p_resolved_by,
      resolution_date = p_resolution_date
  WHERE token_id = p_token_id;
EXCEPTION
  WHEN no_data_found THEN
    DBMS_OUTPUT.PUT_LINE('Complaint not found.');
END;
/

CREATE OR REPLACE PROCEDURE deleteComplaint(p_token_id IN student_complaints.token_id%TYPE) IS
BEGIN
  DELETE FROM student_complaints
  WHERE token_id = p_token_id;
EXCEPTION
  WHEN no_data_found THEN
    DBMS_OUTPUT.PUT_LINE('Complaint not found.');
END;
/

CREATE OR REPLACE FUNCTION calculate_gpa(p_student_id VARCHAR2) RETURN NUMBER IS
    v_total_credits NUMBER := 0;
    v_total_grade_points NUMBER := 0;
    v_gpa NUMBER;
BEGIN
    SELECT SUM(s.credits) INTO v_total_credits
    FROM subjects s
    JOIN grades g ON s.sub_id = g.subject_id;
    
    SELECT SUM(s.credits * CASE
                            WHEN g.grade = 'A+' THEN 10.0
                            WHEN g.grade = 'A' THEN 9.0
                            WHEN g.grade = 'B+' THEN 8.0
                            WHEN g.grade = 'B' THEN 7.0
                            WHEN g.grade = 'C+' THEN 6.0
                            WHEN g.grade = 'C' THEN 5.0
                            WHEN g.grade = 'D' THEN 4.0
                            ELSE 0.0
                        END) INTO v_total_grade_points
    FROM grades g
    JOIN subjects s ON s.sub_id = g.subject_id
    WHERE g.student_id = p_student_id;
    
    IF v_total_credits > 0 THEN
        v_gpa := v_total_grade_points / v_total_credits;
    ELSE
        v_gpa := 0;
    END IF;
    
    RETURN v_gpa;
END;
/

CREATE OR REPLACE PROCEDURE addStudentWithPassword(p_user_id IN admission_detail.user_id%TYPE,
                                                    p_fname IN admission_detail.fname%TYPE,
                                                    p_lname IN admission_detail.lname%TYPE,
                                                    p_gender IN admission_detail.gender%TYPE,
                                                    p_dob IN admission_detail.dob%TYPE,
                                                    p_address IN admission_detail.address%TYPE,
                                                    p_phone_no IN admission_detail.phone_no%TYPE,
                                                    p_email IN admission_detail.email%TYPE,
                                                    p_branch IN admission_detail.branch%TYPE,
                                                    p_year IN admission_detail.year%TYPE,
                                                    p_date_of_adm IN admission_detail.date_of_adm%TYPE,
                                                    p_total_fee IN admission_detail.total_fee%TYPE,
                                                    p_fees_paid IN admission_detail.fees_paid%TYPE,
                                                    p_father_name IN admission_detail.father_name%TYPE,
                                                    p_mother_name IN admission_detail.mother_name%TYPE,
                                                    p_parent_no IN admission_detail.parent_no%TYPE,
                                                    p_password IN admin_login.password%TYPE) IS
BEGIN
  INSERT INTO admission_detail (user_id, fname, lname, gender, dob, address, phone_no, email, branch, year, date_of_adm, total_fee, fees_paid, father_name, mother_name, parent_no) 
  VALUES (p_user_id, p_fname, p_lname, p_gender, p_dob, p_address, p_phone_no, p_email, p_branch, p_year, p_date_of_adm, p_total_fee, p_fees_paid, p_father_name, p_mother_name, p_parent_no);

  INSERT INTO admin_login (admin_name, username, password) 
  VALUES ('AdminUser', p_email, p_password);
EXCEPTION
  WHEN dup_val_on_index THEN
    DBMS_OUTPUT.PUT_LINE('Error:This user_id already exists.');
END;
/

CREATE OR REPLACE FUNCTION get_unresolved_complaints RETURN NUMBER IS
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM student_complaints WHERE status = 'Pending';
  RETURN v_count;
END;
/

CREATE OR REPLACE TRIGGER log_login_history
AFTER INSERT ON login_history
FOR EACH ROW
BEGIN
    IF :NEW.login_success = 'Y' THEN
        DBMS_OUTPUT.PUT_LINE('Login successful for student ' || :NEW.student_id || ' at ' || TO_CHAR(:NEW.login_time, 'YYYY-MM-DD HH24:MI:SS'));
    ELSE
        DBMS_OUTPUT.PUT_LINE('Login failed for student ' || :NEW.student_id || ' at ' || TO_CHAR(:NEW.login_time, 'YYYY-MM-DD HH24:MI:SS'));
    END IF;
END;
/

CREATE OR REPLACE TRIGGER update_login_attempts
BEFORE INSERT ON login_history
FOR EACH ROW
DECLARE
    v_attempt_count NUMBER;
BEGIN
    -- Get the current attempt count for the student on the current date
    SELECT attempt_count INTO v_attempt_count
    FROM login_attempts
    WHERE student_id = :NEW.student_id
    AND attempt_date = TRUNC(SYSDATE);
    
    -- Check if the attempt count exceeds the limit
    IF v_attempt_count >= 3 THEN
        -- Raise an exception to prevent login
        RAISE_APPLICATION_ERROR(-20001, 'Maximum login attempts exceeded for today.');
    ELSE
        UPDATE login_attempts
        SET attempt_count = attempt_count + 1
        WHERE student_id = :NEW.student_id
        AND attempt_date = TRUNC(SYSDATE);
    END IF;
EXCEPTION
    -- If there is no record for the student on the current date, initialize the attempt count to 1
    WHEN NO_DATA_FOUND THEN
        INSERT INTO login_attempts (student_id, attempt_date, attempt_count)
        VALUES (:NEW.student_id, TRUNC(SYSDATE), 1);
END;
/

ALTER TABLE student_detail
ADD account_status VARCHAR2(20);

CREATE OR REPLACE TRIGGER inactive_account
BEFORE INSERT OR UPDATE ON login_history
FOR EACH ROW
DECLARE
    v_last_login TIMESTAMP;
BEGIN
    SELECT MAX(login_time) INTO v_last_login
    FROM login_history
    WHERE student_id = :NEW.student_id;

    IF v_last_login IS NOT NULL AND v_last_login < SYSTIMESTAMP - INTERVAL '6' MONTH THEN
        UPDATE student_detail
        SET account_status = 'Inactive'
        WHERE student_id = :NEW.student_id;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER audit_trail
AFTER INSERT OR UPDATE OR DELETE ON student_detail
FOR EACH ROW
DECLARE
    v_action VARCHAR2(10);
BEGIN
    IF INSERTING THEN
        v_action := 'INSERT';
    ELSIF UPDATING THEN
        v_action := 'UPDATE';
    ELSE
        v_action := 'DELETE';
    END IF;

    INSERT INTO audit_log (table_name, action, change_date, user_id)
    VALUES ('STUDENT_DETAIL', v_action, SYSDATE, USER);
END;
/

CREATE OR REPLACE TRIGGER prevent_delete_professor
BEFORE DELETE ON professor
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM subjects
    WHERE professor_id = :OLD.professor_id;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Cannot delete professor with associated subjects.');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER check_valid_email_format
BEFORE INSERT ON professor
FOR EACH ROW
BEGIN
    IF NOT REGEXP_LIKE(:NEW.mail, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$') THEN
        RAISE_APPLICATION_ERROR(-20005, 'Invalid email format.');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER check_valid_account_number
BEFORE INSERT ON fee_payment
FOR EACH ROW
BEGIN
    IF LENGTH(:NEW.accountno) <> 10 THEN
        RAISE_APPLICATION_ERROR(-20008, 'Account number must be 10 digits long.');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER prevent_delete_with_unresolved_complaints
BEFORE DELETE ON student_detail
FOR EACH ROW
DECLARE
    v_unresolved_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_unresolved_count
    FROM student_complaints
    WHERE student_id = :OLD.student_id
    AND status = 'Pending';

    IF v_unresolved_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20007, 'Cannot delete student with unresolved complaints.');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER notify_admin_on_new_complaint
AFTER INSERT ON student_complaints
FOR EACH ROW
BEGIN
    INSERT INTO admin_notification (complaint_id, student_id, complaint_date, complaint_text, status)
    VALUES (:NEW.token_id, :NEW.student_id, :NEW.complaint_date, :NEW.complaint_text, :NEW.status);
END;
/
