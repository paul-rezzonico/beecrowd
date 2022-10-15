SELECT packages.year AS year, sender.name AS sender, receiver.name AS receiver FROM packages 
JOIN users AS sender
    ON packages.id_user_sender = sender.id
JOIN users AS receiver
    ON packages.id_user_receiver = receiver.id
WHERE (packages.color='blue' OR packages.year='2015') AND sender.address!= 'Taiwan' AND receiver.address!='Taiwan'
ORDER BY year DESC


