SELECT t1.Name AS Employee FROM Employee t1 JOIN Employee t2 ON t1.ManagerId = t2.Id WHERE t1.Salary > t2.Salary
