/* Assignment */
/* Table 1 */
create table SalesPeople(
    Snum int PRIMARY KEY,
    Sname varchar(30) UNIQUE,
    city varchar (20),
    comm int
);

INSERT INTO SalesPeople (Snum, Sname,City,Comm)
values ((1001,'peel','London',12),
(1002,'serres','sanjose',13),
(1004 ,'Monika','London',11),
(1007,'Rifkin', 'Barcelona', 15)
(1003, 'Axelrod', 'Newyork', 10)
);

/* Table2 */
create table Customers(
    Cnum int PRIMARY KEY,
    city varchar (20) NOT NULL,
    Cname varchar(10),
     Snum int Foreign KEY REFERENCE,
     SalesPeople (Snum)
);

INSERT INTO Customers (Cnum, Cname, City, Snum)
values ((2001,  'Hoffman', 'London', 1001),
(2002,  'Giovanni' ,'Rome', 1003)

(2003,  'Liu', 'Sanjose', 1002)

(2004,  'Grass', 'Berlin', 1002)

(2006, 'Clemens', 'London', 1001)

(2008, 'Cisneros', 'Sanjose', 1007)

(2007, 'Pereira', 'Rome', 1004)

);

/* Table3 */

create table Orders(
    Onum int PRIMARY KEY,
    Amt float (10,2),
    Odata Date ,
    Cnum int Foreign KEY REFERENCE Customers(Cnum),
     Snum int Foreign KEY REFERENCE,
     SalesPeople (Snum)

);
INSERT INTO Orders(Onum, Amt, Odate, Cnum ,Snum)
values((3001, 18.69 , 3-10-1990, 2008, 1007)

(3003, 767.19, '3-10-1990', 2001, 1001)

(3002, 1900.10, '3-10-1990' 2007, 1004)

(3005,  5160.45, '3-10-1990', 2003 ,1002)

(3006,  1098.16, '3-10-1990', 2008, 1007)

(3009 ,1713.23 ,'4-10-1990', 2002 ,1003)

(3007,  75.75, '4-10-1990' ,2004, 1002)

(3008,  4273.00, '5-10-1990' ,2006, 1001)

(3010,  1309.95, '6-10-1990' ,2004, 1002)

(3011,  9891.88, '6-10-1990', 2006, 1001)

);




Q 1.A--
select count(Sname) from SalesPeople where Sname like 'a%' or 'A%';
Q2. A--
Select SP.Sname from SalesPeople SP inner join Orders Od ON SP.Snum = Od.Snum 
Where Amt>2000;
Q 3. A --
Select count(Sname) from SalesPeople where City= 'Newyork';
Q 4.A--
Select count(C.Snum) from SalesPeople SP inner join Customer C ON
SP.Snum = C.Snum
Where City = 'London' and City = 'Paris';
Q 5.A--
Select Onum, Snum, ODate from Orders group by Snum

















 