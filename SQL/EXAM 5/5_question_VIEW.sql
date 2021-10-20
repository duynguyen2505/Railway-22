-- Cau 1
CREATE VIEW cau_1 AS
SELECT a.* ,
       d.department_name
FROM accounts a
INNER JOIN departments d
ON a.department_id = d.department_id
WHERE d.department_name = 'Sale';

-- Cau 2
CREATE VIEW cau_2 AS
SELECT a.*
FROM accounts a
INNER JOIN `groups` g
ON g.creator_id = a.account_id
GROUP BY a.account_id
HAVING COUNT(g.group_id) = (SELECT COUNT(g.group_id)
FROM accounts a
INNER JOIN `groups` g
ON g.creator_id = a.account_id
GROUP BY a.account_id
ORDER by COUNT(g.group_id)
LIMIT 1);

-- Cau 3
CREATE VIEW cau_3 AS
SELECT question_id,
       content	
FROM questions
WHERE lENGTH(content) > 300;

-- Cau 4
CREATE VIEW cau_4 AS
SELECT d.*
FROM accounts a
INNER JOIN departments d
ON a.department_id = d.department_id
GROUP BY d.department_id
HAVING COUNT(a.account_id) =(SELECT COUNT(a.account_id)
FROM accounts a
INNER JOIN departments d
ON a.department_id = d.department_id
GROUP BY d.department_id
ORDER BY COUNT(a.account_id) DESC
LIMIT 1);

-- Cau 5
CREATE VIEW cau_5 AS
SELECT q.question_id ,
       q.content
FROM questions q
RIGHT JOIN accounts a
ON q.creator_id = a.account_id
WHERE a.fullname LIKE "Nguyễn%";




