-- Fourth Highest
SELECT Max(quantity)
FROM Orders
WHERE quantity NOT IN 
	-- First Highest
    (SELECT Max(quantity) FROM Orders
    UNION
    -- Second Highest
    SELECT Max(quantity) FROM Orders WHERE quantity NOT IN (SELECT Max(quantity) FROM Orders)
    UNION
    -- Third Highest
    SELECT Max(quantity)
	FROM Orders
	WHERE quantity NOT IN 
	(SELECT Max(quantity) FROM Orders
    UNION
    SELECT Max(quantity) FROM Orders WHERE quantity NOT IN (SELECT Max(quantity) FROM Orders))
    );
