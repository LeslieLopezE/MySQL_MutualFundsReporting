USE MutualFunds;

DROP TABLE IF EXISTS Cust_Acct;

CREATE TABLE MutualFunds.Cust_Acct (
    Acct_No      INT             NOT NULL,
    Cust_No      INT             NOT NULL,
    Cust_role	 ENUM('O','B')      NOT NULL,
    Acct_Type	 VARCHAR(10)     	NOT NULL,
    Lst_Change_date   DATE            NOT NULL,
    Currency	 VARCHAR(3)      NOT NULL,
    act_status	 	 VARCHAR(10)     NOT NULL,
    TaxPlan_Type VARCHAR(4)      NOT NULL,
-- FOREIGN KEY (Acct_No) REFERENCES acct_month_blnce (Acct_ID) ON DELETE CASCADE,
    PRIMARY KEY (Cust_No, Lst_Change_date)
) 
; 

INSERT INTO MutualFunds.Cust_Acct VALUES (88890,1456877,'O','Multi','2022-08-31','CAD','Open','RSP'),
(88891,1456878,'O','Regular','2021-04-01','CAD','Open','TFSA'),
(88891,1456879,'B','Regular','2020-01-30','CAD','closed','TFSA'),
(88892,1456880,'O','Regular','2022-01-30','CAD','Dormant','RSP'),
(88893,1456881,'O','Regular','2021-01-30','USD','blocked','TFSA'),
(88893,1456882,'B','Regular','2021-06-07','CAD','Open','TFSA'),
(88894,1456883,'O','Multi','2020-02-08','CAD','Open','RSP'),
(88895,1456884,'O','Multi','2021-10-11','CAD','Dormant','TFSA'),
(88895,1456884,'O','Multi','2022-10-11','CAD','closed','TFSA'),
(88896,1456885,'O','Regular','2022-04-11','CAD','Dormant','RSP'),
(88897,1456886,'O','Regular','2022-09-30','CAD','Dormant','TFSA'),
(88897,1456887,'B','Regular','2022-10-11','CAD','Dormant','TFSA'),
(88898,1456888,'O','Regular','2021-08-31','CAD','Dormant','RSP'),
(88899,1456889,'O','Regular','2021-12-31','CAD','Dormant','TFSA'),
(88900,1456890,'O','Regular','2022-04-11','CAD','Dormant','RSP'),
(88901,1456891,'O','Regular','2022-09-30','CAD','Dormant','TFSA'),
(88902,1456892,'O','Regular','2022-10-11','CAD','Open','RSP'),
(88903,1456893,'O','Regular','2021-08-31','CAD','Open','TFSA'),
(88904,1456894,'O','Regular','2021-12-31','CAD','Open','RSP'),
(88905,1456895,'O','Multi','2022-04-11','CAD','Open','TFSA'),
(88906,1456896,'O','Regular','2021-08-31','CAD','Open','RSP'),
(88907,1456897,'O','Regular','2021-12-31','CAD','Open','TFSA'),
(88908,1456898,'O','Regular','2022-04-11','CAD','Open','RSP'),
(88909,1456899,'O','Regular','2022-09-30','CAD','Open','TFSA'),
(88911,1456901,'O','Regular','2021-08-31','CAD','Open','TFSA'),
(88912,1456902,'O','Regular','2021-12-31','CAD','Open','RSP'),
(88914,1456904,'O','Regular','2022-09-30','CAD','Open','RSP'),
(88915,1456905,'O','Regular','2022-10-11','CAD','Open','TFSA'),
(88916,1456906,'O','Regular','2021-08-31','CAD','Open','RSP'),
(88917,1456907,'O','Regular','2021-12-31','CAD','Open','TFSA'),
(88918,1456908,'O','Regular','2022-04-11','CAD','Open','RSP'),
(88919,1456909,'O','Regular','2022-09-30','CAD','Open','TFSA'),
(88920,1456910,'O','Regular','2022-10-11','CAD','Open','RSP'),
(88921,1456911,'O','Regular','2021-08-31','CAD','Open','TFSA'),
(88922,1456912,'O','Multi','2021-12-31','CAD','Open','RSP'),
(88923,1456913,'O','Regular','2022-09-30','CAD','Open','TFSA'),
(88924,1456914,'O','Regular','2022-04-11','CAD','closed','RSP'),
(88925,1456915,'O','Regular','2022-04-11','CAD','closed','TFSA'),
(88926,1456916,'O','Regular','2022-09-30','CAD','closed','RSP'),
(88827,1456878,'O','Regular','2022-10-31','CAD','Open','RSP'),
(88828,1456917,'O','Regular','2022-10-31','CAD','Open','RSP'),
(88829,1456918,'O','Regular','2022-10-31','CAD','Open','RSP'),
(88830,1456919,'O','Regular','2022-10-31','CAD','Open','RSP'),
(88831,1456907,'O','Regular','2022-10-31','CAD','Open','RSP'),
(88932,1456896,'O','Regular','2022-10-31','CAD','Open','RSP');