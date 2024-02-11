#1. Retrieve the book title, category, and rental price of all available books.
SELECT Book_title, Category, Rental_Price FROM Books;

#2. List the employee names and their respective salaries in descending order of salary.
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

#3. Retrieve the book titles and the corresponding customers who have issued those books.
SELECT I.Issued_book_name,c.Customer_name FROM IssueStatus I INNER JOIN Customer c ON I.Issued_cust = c.Customer_Id;

#4. Display the total count of books in each category.
SELECT Category AS Book_Category, COUNT(*) FROM Books GROUP BY Book_Category;

#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name, Position FROM Employee WHERE Salary > 50000;

#6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT Customer_name, Reg_date FROM Customer WHERE Reg_date< '2022-01-01' AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);

#7. Display the branch numbers and the total count of employees in each branch.
SELECT Branch_no, COUNT(Emp_name) AS Total_Employees FROM Employee GROUP BY Branch_no;

#8. Display the names of customers who have issued books in the month of June 2023.
SELECT Customer_name FROM Customer WHERE Customer_Id IN (SELECT Issued_cust FROM IssueStatus WHERE MONTH(Issue_date) = 6 AND year(Issue_date) =2023);

#9. Retrieve book_title from book table containing history.
SELECT Book_title FROM Books WHERE Category = "History";

#10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
SELECT Branch_no, COUNT(Emp_name) AS Total_Employee FROM Employee GROUP BY Branch_no HAVING Total_Employee>5;