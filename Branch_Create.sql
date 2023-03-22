USE MutualFunds;

DROP TABLE IF EXISTS Branch;
CREATE TABLE Branch (
    Branch_no      VARCHAR(10)             NOT NULL,
    Country      VARCHAR(3)             NOT NULL,
    Region	 VARCHAR(20)      NOT NULL,
    Province	 VARCHAR(30)     NOT NULL,
    Municipality	 VARCHAR(30)      NOT NULL,
    Postal_Cd	 	 VARCHAR(7)     NOT NULL,
    Street_Address VARCHAR(40)      NOT NULL,
    Lst_Change_date   DATE            NOT NULL,
-- FOREIGN KEY (Acct_No) REFERENCES acct_month_blnce (Acct_ID) ON DELETE CASCADE,
    PRIMARY KEY (Branch_No, Lst_Change_date)
    );

INSERT INTO MutualFunds.Branch VALUES (1120,'CA','Atlantic','Newfoundland and Labrador','St. Johns','m5c 099','mfkg','2012-02-22'),
(1243,'CA','Atlantic','Prince Edward Island','Charlottetown','GHT 900','nnjnnk','1998-03-03'),
(1456,'CA','Atlantic','Nova Scotia','Halifax','JHG 045','fmgj','2000-05-05'),
(4093,'CA','Atlantic','New Brunswick','Fredericton','FRE 009','sdfg','2001-05-04'),
(1678,'CA','Central','Quebec','Québec City','QWE 456','mklgf','2001-09-08'),
(2578,'CA','Central','Ontario','Toronto','RTO 987','ljhds','1999-09-03'),
(6889,'CA','Central','Manitoba','Winnipeg','WNP 256','hjkld','2003-02-04'),
(8890,'CA','Praire','Saskatchewan','Regina','RGN 034','sdfbj','1998-08-08'),
(4396,'CA','Praire','Alberta','Edmonton','EDM 934','sdfg','2023-03-06'),
(4397,'CA','West Coast','British Columbia','Victoria','VIC 326','sfddfg','2011-02-21'),
(4398,'CA','West Coast','Nunavut','Iqaluit','NUN 987','hkjsdbkf','1999-06-06'),
(1345,'CA','North','Northwest Territories','Yellowknife','hjk 099','mdjfb','2001-03-03'),
(1569,'CA','North','Yukon Territory','Whitehorse','WHT 099','mnd vb','1978-01-03'),
(7898,'CA','Central','Manitoba','Winnipeg','HGL 877','bkhgf','1998-06-09'),
(3949,'CA','North','Yukon Territory','Whitehorse','YKN 000','jvgkg','1990-02-03'),
(3331,'CA','Central','Ontario','Toronto','RTO 236','mnkdfj','1995-05-09'),
(9897,'CA','Central','Ontario','Toronto','WQE 456','ksdjf','2023-05-05'),
(5678,'CA','Central','Quebec','Québec BranchCity','QWE 454','hjkkj','2002-05-31'),
(6578,'CA','West Coast','British Columbia','Victoria','VIT 788','vfegvdf','2010-04-30'),
(1120,'CA','Atlantic','Newfoundland and Labrador','St. Johns','m5t 098','fkgk','2023-01-02'),
(1243,'CA','Atlantic','Prince Edward Island','Charlottetown','GHT 900','nnmm','2021-04-04'),
(1243,'CA','Atlantic','Prince Edward Island','Charlottetown','GHT 900','nkne','1997-09-06'),
(4397,'CA','West Coast','British Columbia','Victoria','VIC 326','fghtyh','2021-03-23'),
(9999,'CA','Central','Ontario','Toronto','RTO 987','ljhds','1999-09-10');
