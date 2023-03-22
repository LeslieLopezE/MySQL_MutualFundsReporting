
WITH Totals as
	(
     SELECT 
		sum(Prin_Amt) as AUM_total,
        count(DISTINCT cust_no) as Customer_Total,
        count(DISTINCT Acct_no) as Accounts_Total
    FROM Cust_Holdng_Prin)
,

Branch_Region as (
Select b.Region, b.branch_no, BranchInfo
From 
	(
	 SELECT Region,
     branch_no,
	 row_number() Over (Partition by Branch_no order by Lst_Change_date DESC) as BranchInfo
	 FROM Branch) b
Where BranchInfo = 1)


Select 
	r.Region,
    -- m.Instrm_na,
    -- m.TaxPlan_Type,
    count(distinct m.Cust_no) as Unique_customer,
	count(distinct m.Cust_no)*100/max(t.Customer_Total) as Pct_Customers,
    count(distinct m.Acct_no) as Unique_Accounts,
	count(distinct m.Acct_no)*100/max(t.Accounts_Total) as Pct_Accounts,
    sum(Prin_amt) as AUM,
	sum(Prin_amt)*100/max(t.AUM_total) as Pct_AUM
From Cust_Holdng_Prin as m
	Left join
    Branch_Region as r on m.Orig_Branch = r.Branch_no
    join
    Totals t
    
Group by r.Region -- m.Instrm_na,m.TaxPlan_Type
Order by AUM DESC;
