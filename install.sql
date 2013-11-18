
CREATE TABLE IF NOT EXISTS `questions` 
(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`typ` int(11),
`obj_id` int(11),
`move` int(11),
 PRIMARY KEY  (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `choices` 
(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`up` int(11),
`obj_id` int(11),
`move` int(11),
 PRIMARY KEY  (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `objects` 
(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`text` text,
 PRIMARY KEY  (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;



insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (1,1,1,null);
insert into `objects` (`id`,`text`) values (1,'Тип проблемы?');

insert into `choices` (`up`,`obj_id`,`move`) values (1,2,2);
insert into `objects` (`id`,`text`) values (2,'Техническая');


insert into `objects` (`id`,`text`) values (3,'Все работает?');
insert into `objects` (`id`,`text`) values (4,'Да');
insert into `objects` (`id`,`text`) values (5,'Нет');
insert into `objects` (`id`,`text`) values (6,'Не трогай');
insert into `objects` (`id`,`text`) values (7,'Вот и нет проблемы');
insert into `objects` (`id`,`text`) values (8,'Ты это трогал?');
insert into `objects` (`id`,`text`) values (9,'Идиот?');
insert into `objects` (`id`,`text`) values (10,'Ты попал');
insert into `objects` (`id`,`text`) values (11,'Кто нибудь знает?');
insert into `objects` (`id`,`text`) values (12,'Надо спрятать');
insert into `objects` (`id`,`text`) values (13,'Можно все свалить на другого?');
insert into `objects` (`id`,`text`) values (14,'Тебе это надо?');
insert into `objects` (`id`,`text`) values (15,'Притворись, что не видел');





insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (2,1,3,null);
insert into `choices` (`up`,`obj_id`,`move`) values (2,4,3);
insert into `choices` (`up`,`obj_id`,`move`) values (2,5,4);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (3,2,6,5);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (5,3,7,null);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (4,1,8,null);
insert into `choices` (`up`,`obj_id`,`move`) values (4,4,6);
insert into `choices` (`up`,`obj_id`,`move`) values (4,5,7);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (7,1,14,null);
insert into `choices` (`up`,`obj_id`,`move`) values (7,4,8);
insert into `choices` (`up`,`obj_id`,`move`) values (7,5,9);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (9,2,15,5);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (6,1,9,null);
insert into `choices` (`up`,`obj_id`,`move`) values (6,4,8);
insert into `choices` (`up`,`obj_id`,`move`) values (6,5,10);


insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (10,1,11,null);
insert into `choices` (`up`,`obj_id`,`move`) values (10,4,8);
insert into `choices` (`up`,`obj_id`,`move`) values (10,5,11);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (11,2,12,5);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (8,2,10,12);

insert into `questions` (`id`, `typ` , `obj_id`, `move`) values (12,1,13,null);
insert into `choices` (`up`,`obj_id`,`move`) values (12,4,5);
insert into `choices` (`up`,`obj_id`,`move`) values (12,5,8);

