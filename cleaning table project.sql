select * from customer;
select * from date;
select * from geography;
select * from internetsales;
select * from product;
select * from productcategory;
select * from productsubcategory;

create table SalesBudget (
	Date Date,
	Budget Numeric(10,2)
	)

copy SalesBudget from 'C:\Program Files\PostgreSQL\16\data\SalesBudget.csv' delimiter ',' csv header;

select * from salesbudget;

-- Join product, category, and subcategory tables
SELECT 
    a.productkey,
    a.englishproductname,
    b.englishproductsubcategoryname,
    c.englishproductcategoryname,
    a.safetystocklevel,
    a.reorderpoint,
    a.size,
    a.daystomanufacture
FROM 
    product a
JOIN 
    productsubcategory b ON a.productsubcategorykey = b.productsubcategorykey
JOIN 
    productcategory c ON b.productcategorykey = c.productcategorykey;



-- Join customer and geography tables
SELECT 
    c.customerkey,
    c.firstname,
    c.middlename,
    c.lastname,
    g.city,
    g.stateprovincename,
    c.yearlyincome,
    c.totalchildren,
    c.numberchildrenathome,
    c.englishoccupation,
    c.houseownerflag,
    c.numbercarsowned
FROM 
    customer c
JOIN 
    geography g ON c.geographykey = g.geographykey;

-- Join internetsales with product, category, and subcategory
SELECT 
    a.salesordernumber,
    a.orderdatekey,
    a.customerkey,
    a.productkey,
    a.salesamount,
    b.englishproductname,
    c.englishproductsubcategoryname,
    d.englishproductcategoryname
FROM 
    internetsales a
JOIN 
    product b ON a.productkey = b.productkey
JOIN 
    productsubcategory c ON b.productsubcategorykey = c.productsubcategorykey
JOIN 
    productcategory d ON c.productcategorykey = d.productcategorykey;

-- Join internetsales with customer and geography
SELECT 
    a.salesordernumber,
    a.orderdate,
    a.customerkey,
    a.productkey,
    a.salesamount,
    c.firstname,
    c.lastname,
    b.city,
    b.stateprovincename,
    c.yearlyincome,
    c.totalchildren,
    c.numberchildrenathome,
    c.englishoccupation,
    c.houseownerflag,
    c.numbercarsowned
FROM 
    internetsales a
JOIN 
    customer c ON a.customerkey = c.customerkey
JOIN 
    geography b ON c.geographykey = b.geographykey;

select * from date;

-- Sample SQL to join salesbudget with internetsales and date tables
SELECT 
    a.salesordernumber,
    a.orderdate,
    d.fulldatealternatekey as orderdate_full,
    d.daynumberofweek,
    d.englishdaynameofweek,
    d.daynumberofmonth,
    d.daynumberofyear,
    d.weeknumberofyear,
    d.englishmonthname,
    d.monthnumberofyear,
    d.calendarquarter,
    d.calendaryear,
    d.calendarsemester,
    a.customerkey,
    a.productkey,
    a.salesamount,
    c.firstname,
    c.lastname,
    b.city,
    b.stateprovincename,
    c.yearlyincome,
    c.totalchildren,
    c.numberchildrenathome,
    c.englishoccupation,
    c.houseownerflag,
    c.numbercarsowned
FROM 
    internetsales a
JOIN 
    customer c ON a.customerkey = c.customerkey
JOIN 
    geography b ON c.geographykey = b.geographykey
JOIN 
    date d ON CAST(TO_CHAR(CAST(a.orderdate AS date), 'YYYYMMDD') AS INTEGER) = d.datekey;
