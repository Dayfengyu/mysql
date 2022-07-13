-- subquery 子查詢

-- 找出研發部門的經理名字

select `name` from `employee` where `emp_id` = (
	select `manager_id` from `branch` where `branch_name` = '研發'
);

-- 找出對單一位客戶銷售金額超過50000的員工名字
select `name` from `employee` where `emp_id` in (
	select `emp_id` from `work_with` where `total_sales` > 50000
);