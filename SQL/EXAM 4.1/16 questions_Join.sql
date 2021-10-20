-- Cau 1
USE testing_system;
SELECT accounts.username, 
       accounts.fullname,
       accounts.email,
       d.department_name
FROM accounts
INNER JOIN departments d
ON accounts.department_id = d.department_id;

-- Cau 2
SELECT *
FROM accounts
WHERE create_date < 20/12/2010;

-- Cau 3
SELECT accounts.username, 
       accounts.fullname,
       accounts.email,
       c.position_name
FROM accounts
INNER JOIN positions c
ON (accounts.position_id = c.position_id AND position_name = "Dev");

-- Cau 4
SELECT accounts.username, 
       accounts.fullname,
       accounts.email,
       d.department_name
FROM accounts
INNER JOIN departments d
ON accounts.department_id = d.department_id
GROUP BY d.department_id
HAVING COUNT(d.department_name) >= 3;

-- Cau 5
SELECT  q.content,
        e.exam_id 	
FROM questions q
INNER JOIN exam_questions e
ON e.question_id = q.question_id
GROUP BY q.question_id
HAVING COUNT(q.question_id) = (SELECT COUNT(q.question_id)
FROM questions q
INNER JOIN exam_questions e
ON e.question_id = q.question_id
GROUP BY q.question_id
ORDER BY COUNT(q.question_id) DESC
LIMIT 1);




-- Cau 6
SELECT a.category_name,
	   q.category_id,
       q.question_id 
FROM category_questions a
INNER JOIN questions q
ON q.category_id = a.category_id
GROUP BY q.category_id ;

-- CAU 7
SELECT  q.question_id,
        q.content,
        a.exam_id,
        Count(a.exam_id)
FROM questions q
LEFT JOIN exam_questions a
ON q.question_id = a.question_id
GROUP BY q.question_id;

-- CAU 8
SELECT q.content,
       q.question_id	 
FROM questions q
INNER JOIN answers a
ON  q.question_id = a.question_id
GROUP BY q.question_id
HAVING COUNT(q.question_id) = (SELECT COUNT(q.question_id) 
FROM questions q
INNER JOIN answers a
ON  q.question_id = a.question_id
GROUP BY q.question_id
ORDER BY COUNT(q.question_id) DESC
LIMIT 1);

-- Cau 9
SELECT COUNT(a.account_id),
       g.group_id 
FROM `groups` g
LEFT JOIN group_accounts a
ON a.group_id = g.group_id
GROUP BY g.group_id;

-- Cau 10
SELECT p.position_name
FROM  accounts a 
INNER JOIN positions p
ON a.position_id = p.position_id
GROUP BY p.position_name
HAVING COUNT(a.account_id) = (SELECT 
       COUNT(a.account_id) AS count_id
FROM  accounts a 
INNER JOIN positions p
ON a.position_id = p.position_id
GROUP BY p.position_name
ORDER BY count_id
LIMIT 1);

-- Cau 11
SELECT p.department_id,
       COUNT(a.position_id)
FROM accounts a
INNER JOIN departments p
ON a.department_id = p.department_id
GROUP BY a.department_id;

-- Cau 12
SELECT q.content,
	   t.type_name,
       a.username,
       asw.content
FROM questions q
INNER JOIN type_questions t ON t.type_id = q.type_id
INNER JOIN accounts a ON q.creator_id = a.account_id
INNER JOIN answers asw ON asw.question_id = q.question_id;

-- CAU 13
SELECT Count(q.question_id),
       t.type_name 
FROM type_questions t
INNER JOIN questions q
GROUP BY t.type_name;

-- Cau 14
SELECT g.group_name,
       a.account_id 
FROM `groups` g
LEFT JOIN accounts a
ON g.creator_id = a.account_id
WHERE a.account_id IS NULL;

-- Cau 15
SELECT q.content,
       a.answer_id
FROM questions q
LEFT JOIN answers a
ON  a.question_id = q.question_id
WHERE a.answer_id IS NULL;

-- UNION
-- Cau 16
SELECT *
FROM accounts a
INNER JOIN `groups` g
ON a.account_id = g.creator_id
WHERE group_id = 1;
       
-- Cau 17
SELECT *
FROM accounts a
INNER JOIN `groups` g
ON a.account_id = g.creator_id
WHERE group_id = 2;

-- Cau 18
SELECT *
FROM accounts a
INNER JOIN `groups` g
ON a.account_id = g.creator_id
WHERE group_id = 1
UNION
SELECT *
FROM accounts a
INNER JOIN `groups` g
ON a.account_id = g.creator_id
WHERE group_id = 2;

-- Cau 19
SELECT g.group_name,
       g.group_id,
       COUNT(a.account_id)
FROM `groups` g
INNER JOIN accounts a
ON a.account_id = g.creator_id
GROUP BY g.group_id
HAVING COUNT(a.account_id) > 4; 

-- Cau 20
SELECT g.group_name,
       g.group_id,
       COUNT(a.account_id)
FROM `groups` g
INNER JOIN accounts a
ON a.account_id = g.creator_id
GROUP BY g.group_id
HAVING COUNT(a.account_id) < 7;

-- Cau 21
SELECT g.group_name,
       g.group_id,
       COUNT(a.account_id)
FROM `groups` g
INNER JOIN accounts a
ON a.account_id = g.creator_id
GROUP BY g.group_id
HAVING COUNT(a.account_id) > 4
UNION
SELECT g.group_name,
       g.group_id,
       COUNT(a.account_id)
FROM `groups` g
INNER JOIN accounts a
ON a.account_id = g.creator_id
GROUP BY g.group_id
HAVING COUNT(a.account_id) < 7;


