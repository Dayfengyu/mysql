-- 修改、刪除資料
set SQL_SAFE_UPDATES = 0;

create table `student`(
	`student_id` int primary key,
    `name` varchar(20) ,
    `major` varchar(20) ,
    `score` int
);

drop table `student`;
select * from `student`;

/* update更新 */ /* set鎖定 */ /* where 要更改的 */
UPDATE `student`
SET `name`='小灰' , `major` = "物理"
WHERE `student_id`= 1;

delete from `student`;