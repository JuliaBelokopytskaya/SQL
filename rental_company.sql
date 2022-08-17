SELECT client.last_name
FROM `view`
INNER JOIN client ON `view`.`client_id` = `client`.`id` 
INNER JOIN apartament ON `view`.`apartment_id` = `apartament`.`id` 
WHERE rooms=3 
GROUP BY client.last_name
HAVING count(`view`.client_id)>=2
