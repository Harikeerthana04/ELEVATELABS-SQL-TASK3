mysql> create database task3;
Query OK, 1 row affected (0.04 sec)

mysql> use task3;
Database changed
mysql> CREATE TABLE Employees (
    ->     EmpID INTEGER PRIMARY KEY,
    ->     Name TEXT NOT NULL,
    ->     Department TEXT,
    ->     Salary INTEGER,
    ->     JoiningDate DATE
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> INSERT INTO Employees (EmpID, Name, Department, Salary, JoiningDate) VALUES
    -> (1, 'Alice', 'HR', 50000, '2022-01-10'),
    -> (2, 'Bob', 'IT', 60000, '2021-07-15'),
    -> (3, 'Charlie', 'Finance', 70000, '2023-03-01'),
    -> (4, 'David', 'IT', 55000, '2020-10-20'),
    -> (5, 'Eva', 'HR', 52000, '2022-08-25');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0
