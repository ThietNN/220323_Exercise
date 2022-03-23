use classicmodels;
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
end //
DELIMITER ;

call findAllCustomers();

DELIMITER //
DROP PROCEDURE `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers where customerNumber = 175;
end //

call findAllCustomers();