CREATE DATABASE Library;

USE Library;

-- Create the Branch table
CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(250),
    Contact_no VARCHAR(15)
);

-- Create the Employee table
CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

-- Create the Customer table
CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(250),
    Customer_address VARCHAR(250),
    Reg_date DATE
);

-- Create the Books table
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(250),
    Category VARCHAR(50),
    Rental_Price DECIMAL(10, 2),
    Status VARCHAR(3),
    Author VARCHAR(250),
    Publisher VARCHAR(250)
);

-- Create the IssueStatus table
CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(250),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

-- Create the ReturnStatus table
CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(250),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);



-- Insert values into the Branch table
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1, 101, '123 Main St', '555-1234'),
(2, 102, '456 Oak St', '555-5678'),
(3, 103, '789 Pine St', '555-9876'),
(4, 104, '101 Elm St', '555-4321'),
(5, 105, '202 Maple St', '555-8765'),
(6, 106, '303 Birch St', '555-2345'),
(7, 107, '404 Cedar St', '555-6789'),
(8, 108, '505 Walnut St', '555-3456'),
(9, 109, '606 Willow St', '555-7890'),
(10, 110, '707 Oak St', '555-6543');

-- Insert values into the Employee table
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(201, 'John Doe', 'Manager', 60000.00, 1),
(202, 'Jane Smith', 'Clerk', 40000.00, 1),
(203, 'Bob Johnson', 'Manager', 65000.00, 2),
(204, 'Mary White', 'Clerk', 42000.00, 2),
(205, 'Alice Black', 'Clerk', 42000.00, 3),
(206, 'Charlie Brown', 'Manager', 70000.00, 3),
(207, 'David Davis', 'Clerk', 45000.00, 4),
(208, 'Eva Green', 'Manager', 75000.00, 4),
(209, 'Frank Jones', 'Clerk', 48000.00, 5),
(210, 'Grace Lee', 'Manager', 80000.00, 5);

-- Insert values into the Customer table
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(301, 'Alice Johnson', '789 Pine St', '2023-01-15'),
(302, 'Bob Williams', '101 Elm St', '2023-02-20'),
(303, 'Charlie Davis', '202 Maple St', '2023-03-10'),
(304, 'David Smith', '303 Birch St', '2023-04-05'),
(305, 'Eva Brown', '404 Cedar St', '2023-05-15'),
(306, 'Frank White', '505 Walnut St', '2023-06-20'),
(307, 'Grace Lee', '606 Willow St', '2023-07-10'),
(308, 'Helen Jones', '707 Oak St', '2023-08-05'),
(309, 'Ivan Green', '808 Pine St', '2023-09-15'),
(310, 'Jack Black', '909 Elm St', '2023-10-20');

-- Insert values into the Books table
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
('ISBN001', 'Book1', 'Fiction', 5.99, 'Yes', 'Author1', 'Publisher1'),
('ISBN002', 'Book2', 'Non-Fiction', 7.99, 'Yes', 'Author2', 'Publisher2'),
('ISBN003', 'Book3', 'Mystery', 6.99, 'Yes', 'Author3', 'Publisher3'),
('ISBN004', 'Book4', 'Science Fiction', 8.99, 'Yes', 'Author4', 'Publisher4'),
('ISBN005', 'Book5', 'Biography', 9.99, 'Yes', 'Author5', 'Publisher5'),
('ISBN006', 'Book6', 'History', 4.99, 'Yes', 'Author6', 'Publisher6'),
('ISBN007', 'Book7', 'Romance', 3.99, 'Yes', 'Author7', 'Publisher7'),
('ISBN008', 'Book8', 'Thriller', 5.99, 'Yes', 'Author8', 'Publisher8'),
('ISBN009', 'Book9', 'Fantasy', 6.99, 'Yes', 'Author9', 'Publisher9'),
('ISBN010', 'Book10', 'Self-Help', 7.99, 'Yes', 'Author10', 'Publisher10');

-- Insert values into the IssueStatus table
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
(401, 301, 'Book1', '2023-03-01', 'ISBN001'),
(402, 302, 'Book2', '2023-03-05', 'ISBN002'),
(403, 303, 'Book3', '2023-03-10', 'ISBN003'),
(404, 304, 'Book4', '2023-03-15', 'ISBN004'),
(405, 305, 'Book5', '2023-03-20', 'ISBN005'),
(406, 306, 'Book6', '2023-03-25', 'ISBN006'),
(407, 307, 'Book7', '2023-03-30', 'ISBN007'),
(408, 308, 'Book8', '2023-04-05', 'ISBN008'),
(409, 309, 'Book9', '2023-04-10', 'ISBN009'),
(410, 310, 'Book10', '2023-04-15', 'ISBN010');

-- Insert values into the ReturnStatus table
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(501, 301, 'Book1', '2023-03-10', 'ISBN001'),
(502, 302, 'Book2', '2023-03-15', 'ISBN002'),
(503, 303, 'Book3', '2023-03-20', 'ISBN003'),
(504, 304, 'Book4', '2023-03-25', 'ISBN004'),
(505, 305, 'Book5', '2023-03-30', 'ISBN005'),
(506, 306, 'Book6', '2023-04-05', 'ISBN006'),
(507, 307, 'Book7', '2023-04-10', 'ISBN007'),
(508, 308, 'Book8', '2023-04-15', 'ISBN008'),
(509, 309, 'Book9', '2023-04-20', 'ISBN009'),
(510, 310, 'Book10', '2023-04-25', 'ISBN010');



