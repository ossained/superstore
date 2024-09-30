-----selecting to get the full table---
select * from superstore1

-----selecting to get null values--------

select * from superstore1
where Order_ID is null or Order_Date is null or Ship_Date is null or Ship_Mode is null or Customer_ID is null or Customer_Name is null or
      Segment is null or Country_Region is null or city is null or State is null or Postal_Code is null or Region is null or Product_ID is null 
	  or Category is null or Sub_Category is null or Product_Name is null or sales is null or quantity is null or Discount is null or profit is null


---------noticed that postal_code column and profit column has some null value,so in fixing the null value in postal_code column first--------- 

select city,State,postal_code
from superstore1
where Postal_Code is null

-------got the actual value that was missing in the postal_code colun so im inputting them----
update superstore1
set Postal_Code=05054
where Postal_Code is null 


-----selecting to see what i should fix more or if the colun is okay now------
select city,State,postal_code
from superstore1
where State = 'vermont'





alter table superstore1
alter column postal_code varchar(10)

update superstore1
set Postal_Code ='05054'
where Postal_Code='5054'

update superstore1
set Profit=0
where Profit is null


select city,State,postal_code
from superstore1
where len(postal_code)=4

update superstore1
set postal_code =concat(0,postal_code)
where len(postal_code)=4


select * from superstore1

alter table superstore1
alter column order_date date

alter table superstore1
add year_num int

select datepart(year,order_date)
from superstore1

update superstore1
set year_num = datepart(year,order_date)
