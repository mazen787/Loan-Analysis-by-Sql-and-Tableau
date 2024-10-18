-- Fetch all data from the bank loan table
SELECT * FROM bank_loan_data;


-- Calculate total number of loans
SELECT COUNT(id) AS Total_loans
FROM bank_loan_data;


-- Calculate the number of loan applications for December
SELECT COUNT(id) AS total_applications_per_month
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;


-- Calculate the number of loan applications for November to compare it 
SELECT COUNT(id) AS total_applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;



-- Calculate the total loan amount disbursed
SELECT SUM(loan_amount) AS total_loan_amount
FROM bank_loan_data;


-- Calculate the total loan amount for December
SELECT SUM(loan_amount) AS total_loan_amount_per_month
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- Calculate the total loan amount for November to compare it
SELECT SUM(loan_amount) AS total_loan_amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;



-- Calculate the total amount received from borrowers
SELECT SUM(total_payment) AS total_amount 
FROM bank_loan_data;


-- Calculate the total amount received for December
SELECT SUM(total_payment) AS total_amount_per_month
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;


-- Calculate the total amount received for November
SELECT SUM(total_payment) AS total_amount_per_month
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;



-- Calculate the average interest rate across all loans
SELECT AVG(int_rate) * 100 AS avg_int_rate
FROM bank_loan_data;

-- Calculate the average interest rate for December
SELECT AVG(int_rate) * 100 AS mtd_avg_int_rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- Calculate the average interest rate for November
SELECT AVG(int_rate) * 100 AS mtd_avg_int_rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

-- Fetch all data again (duplicate)
SELECT * FROM bank_loan_data;

-- Calculate the average Debt-to-Income (DTI) ratio
SELECT AVG(dti) * 100 AS avg_dti
FROM bank_loan_data;

-- Calculate the average DTI for December
SELECT AVG(dti) * 100 AS mtd_avg_dti
FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

-- Calculate the average DTI for November
SELECT AVG(dti) * 100 AS mtd_avg_dti
FROM bank_loan_data
WHERE MONTH(issue_date) = 11;


-- Calculate the percentage of good loans (Fully Paid or Current)
SELECT COUNT(
    CASE
        WHEN loan_status = 'Fully Paid' OR loan_status = 'Current'
        THEN id
    END) * 100.0 / COUNT(id) AS good_loan_per
FROM bank_loan_data;


-- Count the number of good loan applications
SELECT COUNT(id) AS good_loan_app
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


SELECT * FROM bank_loan_data;

-- Calculate the total funded amount for good loans
SELECT SUM(loan_amount) AS good_loan_funded_amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


-- Calculate the total amount received for good loans
SELECT SUM(total_payment) AS good_loan_amount_received
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


-- Calculate the percentage of bad loans (Charged Off)
SELECT COUNT(
    CASE
        WHEN loan_status = 'Charged Off'
        THEN id
    END) * 100.0 / COUNT(id) AS bad_loan_per
FROM bank_loan_data;


-- Count the number of bad loan applications
SELECT COUNT(id) AS bad_loan_application
FROM bank_loan_data
WHERE loan_status = 'Charged Off';


-- Calculate the total funded amount for bad loans
SELECT SUM(loan_amount) AS bad_loan_funded
FROM bank_loan_data
WHERE loan_status = 'Charged Off';


-- Calculate the total amount received for bad loans
SELECT SUM(total_payment) AS bad_loan_amount_received
FROM bank_loan_data
WHERE loan_status = 'Charged Off';



-- Group loans by status and calculate the number of loans, total amount received, 
-- total funded amount, average interest rate, and average DTI for each status
SELECT loan_status, 
    COUNT(id) AS loan_count, 
    SUM(total_payment) AS total_amount_received, 
    SUM(loan_amount) AS total_funded_amount, 
    AVG(int_rate * 100) AS interest_rate, 
    AVG(dti * 100) AS Dti
FROM bank_loan_data
GROUP BY loan_status;


-- Calculate the Month-to-Date (MTD) total amount received and funded amount for December,
-- grouped by loan status
SELECT loan_status, 
    SUM(total_payment) AS MTD_Total_Amount_Received, 
    SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status;


-- Group loans by month, calculate the number of loan applications, total funded amount,
-- and total amount received, ordered by month
SELECT MONTH(issue_date) AS month_number, 
    DATENAME(MONTH, issue_date) AS month_name,
    COUNT(id) AS total_loan_application, 
    SUM(loan_amount) AS total_funded_amount, 
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);


-- Group loans by state, calculate the number of loan applications, total funded amount,
-- and total amount received, ordered by state
SELECT address_state AS state,
    COUNT(id) AS total_loan_application, 
    SUM(loan_amount) AS total_funded_amount, 
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;


-- Group loans by term, calculate the number of loan applications, total funded amount,
-- and total amount received, ordered by term
SELECT term AS term,
    COUNT(id) AS total_loan_application, 
    SUM(loan_amount) AS total_funded_amount, 
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY term
ORDER BY term;


-- Group loans by employee length, calculate the number of loan applications, total funded amount,
-- and total amount received, ordered by employee length
SELECT emp_length AS Employee_Length,
    COUNT(id) AS total_loan_application, 
    SUM(loan_amount) AS total_funded_amount, 
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;


-- Group loans by purpose, calculate the number of loan applications, total funded amount,
-- and total amount received, ordered by purpose
SELECT purpose AS purpose, 
    COUNT(id) AS total_loan_application, 
    SUM(loan_amount) AS total_funded_amount, 
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;


-- Group loans by home ownership status, calculate the number of loan applications, total funded amount,
-- and total amount received, ordered by home ownership status
SELECT home_ownership AS home_ownership, 
    COUNT(id) AS total_loan_application, 
    SUM(loan_amount) AS total_funded_amount, 
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY homeownership;


-- Group loans by purpose for grade 'A' loans, calculate the number of loan applications,
-- total funded amount, and total amount received, ordered by purpose
SELECT purpose AS PURPOSE, 
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose;
