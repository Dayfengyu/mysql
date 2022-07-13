/*unique 不能重複
  not null 不能為空
  default 預設 
  auto_increment 自動增加*/
create table `student`(
	`student_id` int auto_increment primary key,
    `name` varchar(20) not null ,
    `major` varchar(20) default "國文"
);
drop table `student`;
/*列出所有資料*/
select * from `student`; 

/*創建資料要照順序填*/
insert into `student` values(1,"小宇","資訊");
insert into `student` values(2,"小白","歷史");
insert into `student` values(3,"小宇","英語");
/*創建資料要不照順序填*/
insert into `student`(`name`,`major`) values("小白","國文");