create table message_comment(
 id integer auto_increment primary key
  ,title varchar(100) 
  ,message text
  ,user_id varchar(50)
  ,status integer 
  ,created_at datetime
  ,updated_at datetime
);


insert into message_comment 
(title,message,user_id,status,created_at,updated_at)
values 
('title1b','message1','user1',1,'2019-01-01 09:00:00','2019-01-01 09:10:00')
,('title2','message2','user1',1,'2019-01-01 09:00:00','2019-01-01 09:10:00')
,('title3','message2','user1',1,'2019-01-01 09:00:00','2019-01-01 09:10:00')
;
