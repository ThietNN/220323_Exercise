use classicmodels;

ALTER TABLE customers ADD INDEX idx_customerName(customerName);

ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);

ALTER TABLE customers DROP INDEX idx_full_name;