


SELECT match_id,fixture,base_ticket_price FROM matches WHERE tournament_category='Champions League' AND match_status='Available';



SELECT user_id,full_name,email FROM users WHERE full_name LIKE 'Tanvir%' OR full_name ILIKE '%Haque%'




SELECT booking_id,user_id,match_id,COALESCE(payment_status,'Action Required') as systematic_status
FROM bookings WHERE payment_status is null 




SELECT booking_id,full_name,fixture,total_cost FROM bookings as b
INNER JOIN users on b.user_id=users.user_id
INNER JOIN matches on b.match_id=matches.match_id




  

SELECT users.user_id,full_name,booking_id FROM users LEFT JOIN bookings as b 
ON users.user_id=b.user_id





  

SELECT booking_id,match_id,total_cost FROM bookings 
WHERE total_cost> (
  SELECT AVG(total_cost) FROM bookings
)



  

SELECT match_id,fixture,base_ticket_price FROM matches ORDER BY base_ticket_price DESC LIMIT 2 OFFSET 1
