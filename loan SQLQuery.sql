select*from bank_loan_data

select COUNT(id) as Total_loans
from bank_loan_data

select COUNT(id) As total_applications_per_months
from bank_loan_data
where MONTH(issue_date) = 12

select COUNT(id) As total_applications
from bank_loan_data
where MONTH(issue_date) = 11


select*from bank_loan_data

select SUM(loan_amount) as total_loan_amount
from bank_loan_data


select SUM(loan_amount) as "total loan amount per month"
from bank_loan_data
where MONTH(issue_date) = 12

select SUM(loan_amount) as total_loan_amount
from bank_loan_data
where MONTH(issue_date) = 11


select*from bank_loan_data

select SUM(total_payment) as total_amount 
from bank_loan_data


select SUM(total_payment) as total_amount_per_month
from bank_loan_data
where MONTH(issue_date) = 12


select SUM(total_payment) as total_amount_per_month
from bank_loan_data
where MONTH(issue_date) = 11


select*from bank_loan_data

select AVG(int_rate) * 100 as avg_int_rate
from bank_loan_data


select AVG(int_rate) * 100 as mtd_avg_int_rate
from bank_loan_data
where MONTH(issue_date) = 12

select AVG(int_rate) * 100 as mtd_avg_int_rate
from bank_loan_data
where MONTH(issue_date) = 11

select*from bank_loan_data

select AVG(dti) * 100 as avg_dti from bank_loan_data

select AVG(dti) * 100 as mtd_avg_dti 
from bank_loan_data
where MONTH(issue_date) = 12

select AVG(dti) * 100 as mtd_avg_dti 
from bank_loan_data
where MONTH(issue_date) = 11


select
COUNT(
case
when loan_status = 'Fully Paid' or loan_status = 'Current'
then id
end) *100.0 / COUNT(id) as good_loan_per
from bank_loan_data


select COUNT(id) as good_loan_app
from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'

select*from bank_loan_data

select SUM(loan_amount) as good_loan_funded_amount
from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


select SUM(total_payment) as good_loan_amount_received
from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


select COUNT(case when loan_status = 'Charged Off' then id end) *100.0 / COUNT(id) as bad_loan_per
from bank_loan_data

select COUNT(id) as bad_loan_application
from bank_loan_data
where loan_status = 'Charged Off'


select sum(loan_amount) as bad_loan_funded
from bank_loan_data
where loan_status = 'Charged Off'



select sum(total_payment) as bad_loan_amount_received
from bank_loan_data
where loan_status = 'Charged Off'


select*from bank_loan_data


select loan_status , COUNT(id) as loan_count , SUM(total_payment) as total_amount_received ,
SUM(loan_amount) as total_funded_amount , AVG(int_rate*100) as interest_rate , AVG(dti*100) as Dti
from bank_loan_data
group by loan_status


SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status


select MONTH(issue_date) as month_number , DATENAME(MONTH , issue_date) as month_name,
COUNT(id) as total_loan_application , SUM(loan_amount) as total_funded_amount ,
SUM(total_payment) as total_amount_received
from bank_loan_data
group by MONTH(issue_date) , DATENAME(MONTH , issue_date)
order by MONTH(issue_date)



select address_state as state,
COUNT(id) as total_loan_application , SUM(loan_amount) as total_funded_amount ,
SUM(total_payment) as total_amount_received
from bank_loan_data
group by address_state
order by address_state


select term as term,
COUNT(id) as total_loan_application , SUM(loan_amount) as total_funded_amount ,
SUM(total_payment) as total_amount_received
from bank_loan_data
group by term
order by term



select emp_length as Employee_Length,
COUNT(id) as total_loan_application , SUM(loan_amount) as total_funded_amount ,
SUM(total_payment) as total_amount_received
from bank_loan_data
group by emp_length
order by emp_length




select purpose as purpose , 
COUNT(id) as total_loan_application , SUM(loan_amount) as total_funded_amount ,
SUM(total_payment) as total_amount_received
from bank_loan_data
group by purpose
order by purpose




select home_ownership as home_ownership, 
COUNT(id) as total_loan_application , SUM(loan_amount) as total_funded_amount ,
SUM(total_payment) as total_amount_received
from bank_loan_data
group by home_ownership
order by home_ownership


SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose