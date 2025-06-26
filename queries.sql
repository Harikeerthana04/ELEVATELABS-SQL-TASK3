mysql> INSERT INTO Employees (EmpID, Name, Department, Salary, JoiningDate) VALUES
    -> (1, 'Alice', 'HR', 50000, '2022-01-10'),
    -> (2, 'Bob', 'IT', 60000, '2021-07-15'),
    -> (3, 'Charlie', 'Finance', 70000, '2023-03-01'),
    -> (4, 'David', 'IT', 55000, '2020-10-20'),
    -> (5, 'Eva', 'HR', 52000, '2022-08-25');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Employees;
+-------+---------+------------+--------+-------------+
| EmpID | Name    | Department | Salary | JoiningDate |
+-------+---------+------------+--------+-------------+
|     1 | Alice   | HR         |  50000 | 2022-01-10  |
|     2 | Bob     | IT         |  60000 | 2021-07-15  |
|     3 | Charlie | Finance    |  70000 | 2023-03-01  |
|     4 | David   | IT         |  55000 | 2020-10-20  |
|     5 | Eva     | HR         |  52000 | 2022-08-25  |
+-------+---------+------------+--------+-------------+
5 rows in set (0.02 sec)

mysql> SELECT Name, Department FROM Employees;
+---------+------------+
| Name    | Department |
+---------+------------+
| Alice   | HR         |
| Bob     | IT         |
| Charlie | Finance    |
| David   | IT         |
| Eva     | HR         |
+---------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Employees WHERE Department = 'IT';
+-------+-------+------------+--------+-------------+
| EmpID | Name  | Department | Salary | JoiningDate |
+-------+-------+------------+--------+-------------+
|     2 | Bob   | IT         |  60000 | 2021-07-15  |
|     4 | David | IT         |  55000 | 2020-10-20  |
+-------+-------+------------+--------+-------------+
2 rows in set (0.02 sec)

mysql> SELECT * FROM Employees WHERE Department = 'IT' AND Salary > 55000;
+-------+------+------------+--------+-------------+
| EmpID | Name | Department | Salary | JoiningDate |
+-------+------+------------+--------+-------------+
|     2 | Bob  | IT         |  60000 | 2021-07-15  |
+-------+------+------------+--------+-------------+
1 row in set (0.02 sec)

mysql> SELECT * FROM Employees WHERE Name LIKE 'A%';
+-------+-------+------------+--------+-------------+
| EmpID | Name  | Department | Salary | JoiningDate |
+-------+-------+------------+--------+-------------+
|     1 | Alice | HR         |  50000 | 2022-01-10  |
+-------+-------+------------+--------+-------------+
1 row in set (0.02 sec)

mysql> SELECT * FROM Employees WHERE Salary BETWEEN 50000 AND 60000;
+-------+-------+------------+--------+-------------+
| EmpID | Name  | Department | Salary | JoiningDate |
+-------+-------+------------+--------+-------------+
|     1 | Alice | HR         |  50000 | 2022-01-10  |
|     2 | Bob   | IT         |  60000 | 2021-07-15  |
|     4 | David | IT         |  55000 | 2020-10-20  |
|     5 | Eva   | HR         |  52000 | 2022-08-25  |
+-------+-------+------------+--------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM Employees ORDER BY Salary DESC;
+-------+---------+------------+--------+-------------+
| EmpID | Name    | Department | Salary | JoiningDate |
+-------+---------+------------+--------+-------------+
|     3 | Charlie | Finance    |  70000 | 2023-03-01  |
|     2 | Bob     | IT         |  60000 | 2021-07-15  |
|     4 | David   | IT         |  55000 | 2020-10-20  |
|     5 | Eva     | HR         |  52000 | 2022-08-25  |
|     1 | Alice   | HR         |  50000 | 2022-01-10  |
+-------+---------+------------+--------+-------------+
5 rows in set (0.02 sec)

mysql> SELECT * FROM Employees LIMIT 3;
+-------+---------+------------+--------+-------------+
| EmpID | Name    | Department | Salary | JoiningDate |
+-------+---------+------------+--------+-------------+
|     1 | Alice   | HR         |  50000 | 2022-01-10  |
|     2 | Bob     | IT         |  60000 | 2021-07-15  |
|     3 | Charlie | Finance    |  70000 | 2023-03-01  |
+-------+---------+------------+--------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT Name AS EmployeeName, Department AS Dept FROM Employees;
+--------------+---------+
| EmployeeName | Dept    |
+--------------+---------+
| Alice        | HR      |
| Bob          | IT      |
| Charlie      | Finance |
| David        | IT      |
| Eva          | HR      |
+--------------+---------+
5 rows in set (0.02 sec)

mysql> SELECT DISTINCT Department FROM Employees;
+------------+
| Department |
+------------+
| HR         |
| IT         |
| Finance    |
+------------+
3 rows in set (0.02 sec)