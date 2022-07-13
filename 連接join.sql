-- join 連接

insert into `branch` values(4,'偷懶',NULL);
select * from `employee` join `branch` on `emp_id` = `manager_id`;
select `emp_id` , `name`,`branch_name` from `employee` right join `branch` on `employee`.`emp_id` = `branch`.`manager_id`;