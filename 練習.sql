/*
int -- 整數
decimal(總共有幾位數,小數點有幾位數) -- 有小數點的數
varchar(字元) -- 字串
blob -- (binary large object) 圖片、影片、檔案...
date -- 'YYYY-MM-DD' 日期
timestamp -- 'YYYY-MM-DD HH:MM:SS 紀錄時間
*/

create database `sql_tutorial`; /*建立資料庫*/
show databases;
use `sql_tutorial`; /*使用資料庫*/

/*資料庫所需要的列表*/
create table `student`(
	`studnet_id` int primary key,
    `name` varchar(20),
    `major` varchar(20)
);

describe `student`; /*顯示資料表格*/
drop table `student`; /*刪除資料表格*/

alter table `student` add gpa decimal(3,2); /*新增欄位*/
alter table `student` drop column gpa; /*刪除欄位*/