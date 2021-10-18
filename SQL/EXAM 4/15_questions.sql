-- Question 1: Thêm ít nhất 10 record vào mỗi table --done

-- Question 2: lấy ra tất cả các phòng ban
SELECT * FROM departments;

-- Question 3: lấy ra id của phòng ban "Sale"
SELECT department_id FROM departments WHERE department_name = 'sale';

-- Question 4: lấy ra thông tin account có full name dài nhất
SELECT * FROM accounts
WHERE length(fullname) = (SELECT MAX(length(fullname)) FROM accounts);

-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3
SELECT * FROM accounts
WHERE (length(fullname) = (SELECT MAX(length(fullname)) FROM accounts) AND department_id = 3 );

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT group_name FROM `groups`
WHERE create_date < 20/12/2019;

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời
SELECT questions.question_id 
FROM questions
INNER JOIN answers
ON (questions.question_id  = answers.question_id)
GROUP BY questions.question_id 
HAVING COUNT(questions.question_id) > 3;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT exam_id 
FROM exams
WHERE duration > 60 AND createdate < 20/12/2019;

-- Question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT * FROM `groups`
ORDER BY group_id DESC
LIMIT 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT COUNT(departments.department_id) count_id
FROM departments
WHERE departments.department_id = 2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT username 
FROM accounts
WHERE username LIKE "D%o";

-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE FROM exams 
WHERE createdate < 20/12/2019;

-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE FROM questions 
WHERE content LIKE "câu hỏi%";

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE accounts SET fullname = "Nguyễn Bá Lộc", email = "loc.nguyenba@vti.com.vn" 
WHERE account_id  = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE accounts SET creator_id = 5
WHERE group_id = 4;
