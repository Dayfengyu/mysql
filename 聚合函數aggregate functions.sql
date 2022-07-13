-- aggregate functions 聚合函數

-- 取得某選項人數
select count(*) from `employee`;
select count(`sup_id`) from `employee`;
-- 取得出生於1970/1/1之後的女性員工人數
select count(*) from `employee` where `birth_date` > '1970-01-01' and `sex` = 'F';
-- 取得平均薪水
select avg(`salary`) from `employee`;
-- 取得薪水總和
select sum(`salary`) from `employee`;
-- 取得薪水最高、最低
select max(`salary`) from `employee`;
select min(`salary`) from `employee`;