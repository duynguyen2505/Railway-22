-- Add data Department
INSERT INTO departments(department_name)
VALUES
						(N'Marketing'	),
						(N'Sale'		),
						(N'Bảo vệ'		),
						(N'Nhân sự'		),
						(N'Kỹ thuật'	),
						(N'Tài chính'	),
						(N'Phó giám đốc'),
						(N'Giám đốc'	),
						(N'Thư kí'		),
						(N'Bán hàng'	);

-- Add data position
INSERT INTO positions(position_name) 
VALUES 					('Dev'			),
						('Test'			),
						('Scrum Master'	),
						('PM'			); 

INSERT INTO `accounts`(email							, username			, fullname				, department_id	, position_id, create_date)
VALUES 				('haidang29productions@gmail.com'	, 'dangblack'		,'Nguyễn hải Đăng'		,   '5'			,   '1'		,'2020-03-05'),
					('account1@gmail.com'				, 'quanganh'		,'Nguyen Chien Thang2'	,   '1'			,   '2'		,'2020-03-05'),
                    ('account2@gmail.com'				, 'vanchien'		,'Nguyen Van Chien'		,   '2'			,   '3'		,'2020-03-07'),
                    ('account3@gmail.com'				, 'cocoduongqua'	,'Duong Do'				,   '3'			,   '4'		,'2020-03-08'),
                    ('account4@gmail.com'				, 'doccocaubai'		,'Nguyen Chien Thang1'	,   '4'			,   '4'		,'2020-03-10'),
                    ('dapphatchetngay@gmail.com'		, 'khabanh'			,'Ngo Ba Kha'			,   '6'			,   '3'		,'2020-04-05'),
                    ('songcodaoly@gmail.com'			, 'huanhoahong'		,'Bui Xuan Huan'		,   '7'			,   '2'		, NULL		),
                    ('sontungmtp@gmail.com'				, 'tungnui'			,'Nguyen Thanh Tung'	,   '8'			,   '1'		,'2020-04-07'),
                    ('duongghuu@gmail.com'				, 'duongghuu'		,'Duong Van Huu'		,   '9'			,   '2'		,'2020-04-07'),
                    ('vtiaccademy@gmail.com'			, 'vtiaccademy'		,'Vi Ti Ai'				,   '10'		,   '1'		,'2020-04-09');
	
INSERT INTO `groups` (group_name , creator_id ,  create_date)
VALUES              ('a_group'                , '1'             , '2020-04-05'     ),
                    ('b_group'                , '9'            , '2020-04-06'     ),
                    ('c_group'                , '2'             , '2020-07-05'     ),
                    ('d_group'                , '1'             , '2020-04-12'     );
                    
INSERT INTO group_accounts(group_id       , account_id      , join_date        )
VALUES                    ('1'           , '1'             , '2020-06-05'     ),
						  ('2'          , '9'             , '2020-08-05'     ),
                          ('3'        , '2'             , '2020-02-05'     ),
                          ('4'          , '1'             , '2020-09-05'     );

INSERT INTO type_questions (type_name)
VALUES                     ('essay'),
						   ('essay'),
                           ('multiple_choice');
					
INSERT INTO category_questions (category_name)
VALUES                         ('duy'),
                               ('dung'),
                               ('duong'),
                               ('hoang');
                               
INSERT INTO questions (content	   , category_id    , type_id    , creator_id 	 , create_date    )
VALUES                ( 'abc'      ,  '2'           , '1'        , '2'          , '2020-12-05'),
                       ( 'abcd'     ,  '1'           , '1'        , '9'          , '2020-01-05'),
                        ( 'abcf'   ,  '3'           , '2'        , '7'          , '2020-03-05');


                          

    
