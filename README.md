# Financial Loan Data Analysis Project

## [Click here to go to the Dynamic Tableau Dashboard](https://public.tableau.com/views/BankLoansProject/OVERVIEW?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) 


### Dashboard Snapshots:
1. ![Dashboard Summary]![Screenshot 2024-10-17 111014](https://github.com/user-attachments/assets/c5cf3a0e-17f5-4aff-bf13-139b42effb2a)

2. ![Dashboard Overview]![Screenshot 2024-10-17 111028](https://github.com/user-attachments/assets/3fbe3938-52f9-4de1-8f88-9421706e0b88)

3. ![Dashboard Details]![Screenshot 2024-10-17 111113](https://github.com/user-attachments/assets/9263f672-11ab-48bb-b9da-df4915c091bc)


---

## Overview

This project focuses on analyzing a financial loan dataset to uncover patterns in loan applications, approval rates, and repayment behaviors. The analysis was performed using SQL to extract insights from the data, and Tableau was used to visualize key performance indicators (KPIs) and trends. The project aims to provide a comprehensive understanding of the loan performance and customer behavior based on factors such as loan status, purpose, and demographic information.

## Dataset

The dataset `financial_loan.csv` contains the following details:
- **Customer Information**: Demographic data, home ownership, and employment length.
- **Loan Details**: Loan amounts, interest rates, debt-to-income ratio (DTI), and loan status.
- **Repayment Data**: Total loan payments and loan issue dates.

## Project Workflow

### 1. **Data Cleaning and Preprocessing**
   - Removed any null or irrelevant data.
   - Ensured consistency in the data format to streamline analysis.

### 2. **Exploratory Data Analysis (EDA)**
   - Analyzed overall loan applications, the amount of loans disbursed, and repayment rates.
   - Explored key factors such as loan status, loan purpose, and customer demographics (e.g., employment length, home ownership).

### 3. **KPI Tracking**
   Several KPIs were calculated to track the performance of loans:
   
   - **Total Loan Applications**: The total number of loan applications received over different periods (e.g., monthly applications).
   - **Total Loan Amount**: The total amount of loans approved and funded.
   - **Default Rate**: Percentage of loans that were charged off or defaulted, which highlights areas of risk.
   - **Repayment Rate**: The proportion of loans fully paid or in good standing, reflecting the success of loan repayments.
   - **Interest Rates**: The average interest rate applied to loans, allowing insight into loan cost trends.
   - **Good Loan VS Bad Loan**: based on Loan Status , Average Dti (Average Debt-to-Income Ratio) and other factors

### 4. **Insights on Loan Status and Purpose**
   - **Loan Status Performance**: Loans were categorized as Fully Paid, Current, or Charged Off. A significant portion of loans were in good standing, while a smaller percentage of loans were charged off, indicating potential risk areas.
   - **Purpose of Loans**: The dataset revealed the most common loan purposes, such as personal loans, home improvement, and debt consolidation. Different loan purposes showed varying levels of performance, with some purposes having higher default rates.
   - **Grade 'A' Loans**: Loans with a higher grade ('A') had better repayment rates and performance compared to lower-graded loans.

### 5. **Demographic Analysis**
   - **Employment Length**: Loans were analyzed based on the length of a borrower's employment, revealing that borrowers with longer employment histories tended to have better repayment outcomes.
   - **Home Ownership**: The relationship between home ownership status and loan repayment was explored, indicating that homeowners were more likely to repay their loans compared to non-homeowners.

## Key Insights

1. **Seasonality in Loan Applications**: There was a notable increase in loan applications towards the end of the year, particularly in December, suggesting a seasonal trend.
   
2. **High Loan Approval for Grade 'A' Loans**: Loans with a higher grade (Grade 'A') had better performance in terms of repayment, making them lower-risk for lenders.
   
3. **Default Rates**: Loans categorized as 'Charged Off' had significant financial losses. By analyzing these trends, better risk management strategies can be put in place for future loans.
   
4. **Purpose Matters**: Certain loan purposes, such as home improvement and personal loans, had a higher volume of applications but also varied in repayment success rates.

5. **Interest Rates and DTI**: A detailed look at interest rates and debt-to-income ratios (DTI) showed correlations between higher DTI ratios and increased default risks.

## Tableau Dashboards

Using Tableau, the following dashboards were created to visually represent the findings:

- **Monthly Loan Applications**: A dashboard showing trends in loan applications over time, revealing monthly peaks.
- **Loan Status Distribution**: A breakdown of loan status (Fully Paid, Charged Off, etc.) with corresponding financial metrics like total funded amounts and repayment amounts.
- **Loan Purpose and Performance**: A visual exploration of different loan purposes, their funding amounts, and repayment success rates.
- **Demographic Insights**: Interactive charts showing loan performance by customer characteristics, including employment length, home ownership, and state of residence.

## Tools Used

- **SQL**: For querying and analyzing the financial loan data.
- **Tableau**: For building interactive visualizations and dashboards.

## Conclusion

This project provided valuable insights into loan application trends, approval processes, and repayment behaviors. The analysis highlighted areas of potential risk, such as high default rates for certain loan purposes, and emphasized the strong performance of higher-grade loans. The results could be useful for financial institutions to better assess loan risk and refine their loan approval and repayment strategies.
