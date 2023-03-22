DROP TABLE IF EXISTS Cust_Holdng_Prin;

CREATE TABLE MutualFunds.Cust_Holdng_Prin

With Primary_Cust_Acct as (
SELECT a.Acct_no,a.Cust_no,a.Cust_role,a.TaxPlan_Type,a.act_status,a.Lst_Change_date
FROM
	(
     Select 
     Cust_no,
     Acct_no,
     Cust_role,
     TaxPlan_Type,
     act_status,
     Lst_Change_date,
     row_number() Over (Partition by Acct_no order by Lst_Change_date DESC) as Acct_info
     from Cust_Acct) a
Where Acct_info = 1
AND Cust_role = 'O'
AND act_status IN ('Open','Dormant')
Order by a.Acct_no
)
,

Acct_Prncpl as (
Select Acct_no,Holdng_no,Orig_Branch,Instrm_na,Prin_amt,Posted_date
From acct_month_blnce
Where Posted_date = '2022-10-31'
Group by Acct_no,Holdng_no
)

SELECT 
c.Cust_no,
p.Acct_no,
p.Holdng_no,
p.Orig_Branch,
p.Instrm_na,
c.TaxPlan_Type,
p.Prin_amt,
p.Posted_date
FROM Primary_Cust_Acct as c
     LEFT JOIN
     Acct_Prncpl as p ON c.Acct_no = p.Acct_no
Group by c.Cust_no, p.Acct_no,p.Holdng_no,p.Orig_Branch,p.Instrm_na,c.TaxPlan_Type,p.Prin_amt,p.Posted_date
Order by c.Cust_no ASC;

