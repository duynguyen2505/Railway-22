INSERT INTO       employee( employee_last_name    ,  employee_first_name     , employee_hire_date     ,  employee_status     , supervisor_id     , social_security_number)
VALUES                    (  'nguyen'             ,  'duy'                   ,  '2019-01-07'          , 'fqwgqgqw'           ,   NULL             , '122'                 ),
                          (  'nguyen'             ,  'duong'                   , '2019-01-02'          , 'fqwgqw'           ,     '1'           , '112'                 ),
                          (  'nguyen'             ,  'huy'                   ,  '2019-01-03'          , 'fqsqgqw'           ,   '1'             , '132'                 );
INSERT INTO       projects(manager_id   , project_name     , project_start_date     ,  project_description     , project_detail    , project_completed_on  )
VALUES                    (   '2'       ,   'hoc'          ,   '2020-01-07'         ,  'dasfasfqas'            , 'ffasfgaw'        , '2020-03-07'          ),
						  (   '3'       ,   'hocs'          ,   '2020-01-07'         ,  'dasfasfqas'            , 'ffasfgaw'        , '2021-03-07'          ),
                          (   '1'       ,   'hoczx'          ,   '2020-01-07'         ,  'dasfasfqas'            , 'ffasfgaw'        , '2020-03-07'          );
                          



INSERT INTO project_modules(project_id     ,  employee_id     , project_modules_date    , project_modules_compled_on   , project_modules_decription  )
VALUES                     (  '1'         ,    '1'           ,  '2020-03-05'            , '2020-03-07'                 , 'afwafa'                    ),
                           (  '2'         ,    '3'           ,  '2020-03-02'            , '2020-03-04'                 , 'afwsafa'                    ),
                           (  '2'         ,    '2'           ,  '2020-02-05'            , '2021-10-03'                 , 'afwavfa'                    );

INSERT INTO       work_done(employee_id    , module_id      , workdone_date      ,  workdone_description     , workdone_status   )
VALUES                     (   '1'        ,   '1'           ,  '2020-03-07'      ,  'doen'                   , 'czxcas'          ),
                           (   '3'        ,   '2'           ,  '2020-03-08'      ,  'doesn'                   , 'czxccxvas'          ),
                           (   '2'        ,   '3'           ,  '2020-03-09'      ,  'doxzcen'                   , 'czxzxcas'          );

