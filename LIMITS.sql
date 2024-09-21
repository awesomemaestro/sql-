1.Select * From Users
where id = (SELECT owner_id FROM Rooms order by price DESC Limit 1)

2. Select good_name From Goods
WHERE good_id NOT IN (Select good FROM Payments)

3.Select * FROM ROOMS
WHERE (has_tv, has_internet, has_kitchen, has_air_con) = (SELECT has_tv, has_internet, has_kitchen, has_air_con FROM Rooms where id = 11)

4. Select member_name, (Select MAX(unit_price) From Payments WHERE Payments.family_member = FamilyMembers.member_id) AS good_price
From FamilyMembers
