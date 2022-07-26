-----------------------------------------------------------------------
--Questão n°01

SELECT u.id, u.name, c.name AS city
FROM users u
JOIN cities c
ON u."cityId" = c.id

-----------------------------------------------------------------------
--Questão n°02

SELECT t.id, u1.name AS writer, u2.name AS recipient, t.message
FROM testimonials t
JOIN users u1
ON t."writerId" = u1.id
JOIN users u2
ON t."recipientId" = u2.id

-----------------------------------------------------------------------
--Questão n°03

SELECT u.id, u.name, c.name AS course, s.name AS school, e."endDate"
FROM users u 
JOIN educations e
ON e."userId" = u.id
JOIN courses c
ON c.id = e."courseId"
JOIN schools s
ON s.id = e."schoolId"
WHERE u.id = '30'

-----------------------------------------------------------------------
--Questão n°04

SELECT u.id, u.name, r.name AS role, c.name AS company, e."startDate"
FROM users u
JOIN experiences e
ON u.id = e."userId"
JOIN roles r 
ON r.id = e."roleId"
JOIN companies c
ON c.id = e."companyId"
WHERE u.id = '50' AND e."endDate" IS NULL

