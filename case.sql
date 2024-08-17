SELECT *,
CASE 
	WHEN age > 17 THEN "is older enough"
    ELSE 'is not older enough'
END AS agetext
FROM users