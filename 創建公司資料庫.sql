-- 創建公司資料庫
use `sql_tutorial`; /*使用資料庫*/

create table `employee`(
	`emp_id` int primary key,
    `name` varchar(20),
    `birth_date` date,
    `sex` varchar(1),
    `salary` int,
    `branch_id` int,
    `sup_id` int
);

create table `branch`(
	`branch_id` int primary key,
    `branch_name` varchar(20),
    `manager_id` int,
    foreign key (`manager_id`) references `employee`(`emp_id`) on delete set null
);

alter table `employee`
add foreign key(`branch_id`)
references `branch`(`branch_id`)
on delete set null;

alter table `employee`
add foreign key(`sup_id`)
references `employee`(`emp_id`)
on delete set null;

create table `client`(
	`client_id` int primary key,
    `client_name` varchar(20),
    `phone` varchar(20)
);

create table `work_with`(
	`emp_id` int,
    `client_id` int,
    `total_sales` int,
    primary key(`emp_id`,`client_id`),
    foreign key(`emp_id`) references `employee`(`emp_id`) on delete cascade,
    foreign key(`client_id`) references `client`(`client_id`) on delete cascade
);
insert into `branch` values(1,'研發',NULL);
insert into `branch` values(2,'行政',NULL);
insert into `branch` values(3,'資訊',NULL);

insert into `employee` values(206,'小黃','1998-10-08','F',50000,1,NULL);
insert into `employee` values(207,'小綠','1985-09-16','M',29000,2,206);
insert into `employee` values(208,'小黑','2000-12-19','M',35000,3,206);
insert into `employee` values(209,'小白','1997-01-22','F',39000,3,207);
insert into `employee` values(210,'小藍','1925-11-10','F',84000,1,207);

update `branch`
set `manager_id` = 208
where `branch_id` = 3;

insert into `client` values(400,'阿狗','254354335');
insert into `client` values(401,'阿貓','25633899');
insert into `client` values(402,'旺來','45354345');
insert into `client` values(403,'露西','54354365');
insert into `client` values(404,'艾瑞克','18783783');

insert into `work_with` values(206,400,'70000');
insert into `work_with` values(207,401,'24000');
insert into `work_with` values(208,402,'9800');
insert into `work_with` values(209,403,'24000');
insert into `work_with` values(210,404,'87940');

-- 取得所有員工資料
select * from `employee`;
-- 取得所有客戶資料
select * from `client`;
-- 按照薪水低到高取得員工資料
select * from `employee` order by `salary` ;
-- 取得薪水前三高的員工
select * from `employee` order by `salary` desc limit 3 ;
-- 取得所有員工的名字
select `name` from `employee` ;
-- 某條件不要重複跳出的話
select distinct `sex` from `employee`;
