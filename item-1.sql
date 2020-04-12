SELECT
    CONCAT("T",LPAD(REPLACE(a.id, ",", ""),11,"0")) AS `ID`,
    a.nickname AS `Nickname`,
    CASE 
    	WHEN a.status = 0 THEN 'Discontinued' 
    	WHEN a.status = 1 THEN 'Active' 
    	WHEN a.status = 2 THEN 'Deactivated'
	END AS `Status`,
	CASE 
		WHEN a.role = 1 THEN 'Trainer' 
		WHEN a.role = 2 THEN 'Assessor' 
		WHEN a.role = 3 THEN 'Staff'
	END AS `Roles`
FROM
    trn_teacher a
LEFT JOIN trn_teacher_role b ON
    a.id = b.teacher_id;