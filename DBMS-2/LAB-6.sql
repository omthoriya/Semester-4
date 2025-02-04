CREATE TABLE Products (
 Product_id INT PRIMARY KEY,
 Product_Name VARCHAR(250) NOT NULL,
 Price DECIMAL(10, 2) NOT NULL
);
-- Insert data into the Products table
INSERT INTO Products (Product_id, Product_Name, Price) VALUES
(1, 'Smartphone', 35000),
(2, 'Laptop', 65000),
(3, 'Headphones', 5500),
(4, 'Television', 85000),
(5, 'Gaming Console', 32000);
select * from Products


--Part - A
--1. Create a cursor Product_Cursor to fetch all the rows from a products table.
DECLARE @ID INT,@PRODUCT_NAME VARCHAR(100),@PRICE DECIMAL(10,2)

DECLARE Product_Cursor CURSOR 
FOR
	SELECT * FROM Products

OPEN Product_Cursor

FETCH NEXT FROM Product_Cursor INTO
	@ID,
	@PRODUCT_NAME,
	@PRICE;

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CAST(@ID AS VARCHAR)+'-'+@PRODUCT_NAME+'-'+CAST(@PRICE AS VARCHAR)
	FETCH NEXT FROM Product_Cursor INTO
	@ID,
	@PRODUCT_NAME,
	@PRICE;
END

CLOSE Product_Cursor
DEALLOCATE Product_Cursor
--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.
--(Example: 1_Smartphone)
DECLARE @ID INT,@PRODUCT_NAME VARCHAR(100)

DECLARE Product_Cursor_Fetch CURSOR 
FOR
	SELECT Product_id,Product_Name FROM Products

OPEN Product_Cursor_Fetch

FETCH NEXT FROM Product_Cursor_Fetch INTO
	@ID,
	@PRODUCT_NAME;

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CAST(@ID AS VARCHAR)+'_'+@PRODUCT_NAME
	FETCH NEXT FROM Product_Cursor_Fetch INTO
	@ID,
	@PRODUCT_NAME
END

CLOSE Product_Cursor_Fetch
DEALLOCATE Product_Cursor_Fetch
--3. Create a Cursor to Find and Display Products Above Price 30,000.
DECLARE @ID INT,@PRODUCT_NAME VARCHAR(100),@PRICE DECIMAL(10,2)

DECLARE Product_Cursor_30000 CURSOR 
FOR
	SELECT * FROM Products
	WHERE Price>30000

OPEN Product_Cursor_30000

FETCH NEXT FROM Product_Cursor_30000 INTO
	@ID,
	@PRODUCT_NAME,
	@PRICE;

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CAST(@ID AS VARCHAR)+'-'+@PRODUCT_NAME+'-'+CAST(@PRICE AS VARCHAR)
	FETCH NEXT FROM Product_Cursor_30000 INTO
	@ID,
	@PRODUCT_NAME,
	@PRICE;
END

CLOSE Product_Cursor_30000
DEALLOCATE Product_Cursor_30000
--4. Create a cursor Product_CursorDelete that deletes all the data from the Products table
DECLARE @ID INT

DECLARE Product_Cursor_Delete CURSOR 
FOR
	SELECT Product_id FROM Products

OPEN Product_Cursor_Delete

FETCH NEXT FROM Product_Cursor_Delete INTO
	@ID

WHILE @@FETCH_STATUS=0
BEGIN
	DELETE FROM Products WHERE Product_id=@ID
	FETCH NEXT FROM Product_Cursor_Delete INTO
	@ID
END

CLOSE Product_Cursor_Delete
DEALLOCATE Product_Cursor_Delete

--Part – B
--5. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases
--the price by 10%.
DECLARE @Product_id int,@Product_name varchar(100),@Price int

DECLARE Product_Cursor_Update cursor
FOR 
	select Product_id,Product_name,Price from Products

OPEN Product_Cursor_Update

FETCH NEXT FROM Product_Cursor_Update INTO 
	@Product_id,
	@Product_name,
	@Price

WHILE @@FETCH_STATUS=0
BEGIN
	update Products
	set Price=Price+Price*0.1

	fetch next from Product_Cursor_Update 
	into @Product_id,@Product_name,@Price

END

CLOSE Product_Cursor_Update

DEALLOCATE Product_Cursor_Update

select * from Products
--6. Create a Cursor to Rounds the price of each product to the nearest whole number.	
declare @Price int

declare Product_CursorRound cursor
for 
	select Price from Products

open Product_CursorRound

fetch next from Product_CursorRound
into @Price

while @@FETCH_STATUS=0
begin
	update Products
	set Price=Round(Price,0)
		
	fetch next from Product_CursorRound 
	into @Price

end

close Product_CursorRound

deallocate Product_CursorRound
		
select * from Products

--Part – C
--7. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop”
--(Note: Create NewProducts table first with same fields as Products table)

--8. Create a Cursor to Archive High-Price Products in a New Table (ArchivedProducts), Moves products
--with a price above 50000 to an archive table, removing them from the original Products table.