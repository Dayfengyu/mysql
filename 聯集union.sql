-- union 聯集

-- 員工名字 union 客戶名字
select `name` from `employee` union select `client_name` from `client` union select `branch_name` from `branch`;
-- 員工ID+名字 union 客戶ID+名字
select `emp_id` , `name` from `employee` union select `client_id`,`client_name` from `client`;
-- 員工薪水union銷售金額
select `salary` from `employee` union select `total_sales` from `work_with`;