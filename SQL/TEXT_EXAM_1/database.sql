INSERT INTO customer(`name`     , phone        , email                 , address         ,  note     )
VALUE               ('duy'      , '12243'       ,'duynt@gmail.com'       , '11 kham thien' ,'avds'     ),
					('duy1'      , '124'        ,'duy1nt@gmail.com'       , '12 kham thien' ,'avdw'     ),
                    ('duy2'      , '122'        ,'duy2nt@gmail.com'       , '13 kham thien' ,'avvd'     ),
                    ('duy3'      , '153'        ,'duy3nt@gmail.com'       , '14 kham thien' ,'avxd'     ),
                    ('duy4'      , '192'        ,'duy4nt@gmail.com'       , '15 kham thien' ,'azdavd'     );
                    
INSERT INTO `order`(customer_id  , car_id    , amount     , saleprice     , orderdate    , deliverydate   ,  `status`    , note   )
VALUE              (   '1'        ,   '1'       ,  '2'         ,  '100'   , '2020-03-05' , '2020-03-15'   ,    '0'       ,'vcxv'  ),
                   (   '3'        ,   '3'       ,  '2'         ,  '200'   , '2020-02-05' , '2020-03-18'   ,    '1'       ,'vcxsdv'  ),
                   (   '2'        ,   '4'       ,  '3'         ,  '300'   , '2020-01-05' , '2020-03-20'   ,    '1'       ,'vcxxv'  ),
                   (   '2'        ,   '2'       ,  '5'         ,  '400'   , '2020-02-15' , '2020-03-21'   ,    '2'       ,'vcvxv'  ),
                   (   '4'        ,   '1'       ,  '1'         ,  '500'   , '2020-02-15' , '2020-03-28'   ,    '1'       ,'vcxasxv'  );
                   
INSERT INTO car( maker    , modal    , `year`      , color      ,  note     )
VALUE          ('HONDA'   , 'SSS'    , '2020'      , 'black'    ,'asfsfjw'  ),
               ('HONDA'   , 'SS'    , '2019'      , 'yellow'    ,'asfjw'  ),
			   ('TOYOTA'   , 'ASS'    , '2018'      , 'purple'    ,'as2sfjw'  ),
               ('NISSAN'   , 'BSS'    , '2017'      , 'brown'    ,'asvcfjw'  ),
               ('TOYOTA'   , 'CSS'    , '2016'      , 'black'    ,'asasdfjw'  );

                     