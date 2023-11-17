-- 1. What are the records of customers with an account balance greater than $1,000, sorted by their last transaction date in descending order, and limited to the top 10 results?"


SELECT * record FROM Customers
WHERE account_balance > 1000
ORDER BY last_transaction_date DESC LIMIT (10) ; 

-- 2. “Find the Branch IDs and transaction amounts for ATM-only transactions in November 2015 with amounts less than 100."
SELECT Branch_IDs, transaction_amounts FROM Transactions
WHERE transaction_type = "ATM-only"
AND Date <= "2015-11-01"
AND Date >= "2015-12-01"
AND amount < 100; 

-- 3. Suppose you have a database with a table named "Employees," and you want to retrieve the names and salaries of employees who earn more than $50,000 and work in the "Sales" department:
SELECT names, salaries FROM Employees 
WHERE salaries > 50000 
AND department = "Sales" ; 

-- 4. Suppose you have a database with a table named "Orders" and another table named "Customers." You want to retrieve a list of customer names and the total number of orders placed by each customer:
SELECT Customer.customer_name, COUNT(Orders.orders_ID) AS TotalOrder
FROM Customers 
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.customer_name; 

-- 5. Suppose you have a database with three tables: "Employees," "Departments," and "Salaries." You want to retrieve a list of department names along with the average salary for each department, 
but only for departments where the average salary is above $60,000:
SELECT Departments.Department_name , AVG (Salaries.Salaray) AS Average_Salary_per_Department 
FROM Employees 
LEFT JOIN Department ON Employees.Employee_ID = Department.Employee_ID 
LEFT JOIN Salaries ON Employees.Employee_ID= Salaries.Employee_ID 
GROUP BY Department.Department_name
HAVING AVG(Salaries.Salary) > 60000;

-- 6. Write a Python function to generate a list of prime numbers up to a given limit.
limit = 20
primes =[]
for num in range (2, limit + 1):
       is_prime= True
    for i in range (2, int(num **0.5)):
       if num % i == 0:
        is_prime = False
         break
     if is_prime:
       primes.append(num)
print(primes)
-- 7. Write a Python function to calculate the mean and median of a list of numbers.
num = [ 2, 4, 6, 8, 3 ]
mean_number = sum(num) / len(num)
sorted_number= sorted(num)
n = len(sorted_number)
if n % 2==1:
median = sorted_number[ n // 2]
else:
middle1 = sorted_number [n // 2-1]
middle2 = sorted_number [n // 2]
median = (middle1 + middel2) / 2
print (mean_number)
print(median)
-- 8. Write a Python function to count the number of vowels and consonants in a given string.
input_string = "Hello, World!"
vowels="AEIOUaeiou"
vowel_count = 0
consonant_count = 0
for char in input_string:
    if char.isalpha():
     if char in vowels:
     vowel_count +=1
else:
    consonant_count +=1
print(vowel_count, consonant_count)
-- 9. Write a python code to count the distinct words in a given comma-separated string.
input_string = "Hello, World!"
split_string = input_string.split(',')
unique_words = set(split_string)
distinct_words_count = len(unique_words)
print(distinct_words)












































