use classicmodels;

DELIMITER //
create procedure getCusById
    (IN cusNum INT(11))
BEGIN
    SELECT * FROM customers where customerNumber = cusNum;
end //
DELIMITER ;
call getCusById(175);


DELIMITER //
create procedure getCusCountByCity
    (IN in_city varchar(50),
    OUT total INT
)
begin
    SELECT COUNT(customerNumber)
        INTO total
    FROM customers
        WHERE city = in_city;
end //
DELIMITER ;

call getCusCountByCity('Lyon',@total);
SELECT @total;

DELIMITER //
CREATE PROCEDURE SetCounter(
inout counter INT,
IN inc INT
)
BEGIN
    SET counter = counter + inc;
end //
DELIMITER ;

SET @counter = 1;
call SetCounter(@counter,1);
call SetCounter(@counter,1);
call SetCounter(@counter,5);
SELECT @counter;