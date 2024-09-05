SELECT
    *,
    CONCAT(
        customerName,
        '\nC/O ', contactFirstName, ' ', contactLastName,
        '\n', addressLine1,
        IF(addressLine2 IS NOT NULL, CONCAT('\n', addressLine2), ''),
        '\n', postalCode, ', ', city, ', ',
        IF(state IS NOT NULL, CONCAT(state, ', '), ''),
        country
    ) AS mailingAddress
FROM customers;

SELECT 
    *, 
    creditLimit,
    CASE 
        WHEN creditLimit = 0 THEN 'Bad customer'
        WHEN creditLimit > 100000 THEN 'Great customer'
        ELSE 'Good customer'
    END AS customer_qualifier
FROM 
    customers; 
    
    
    SELECT 
    *, 
    creditLimit,
    IF(creditLimit = 0, 'Bad customer', 
		IF(creditLimit > 100000, 'Great customer', 'Good customer')
    ) AS customer_qualifier
FROM 
    customers; 


