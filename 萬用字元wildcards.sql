-- wildcards 萬用字元 %代表多個字元 _代表一個字元

-- 取得電話號碼尾數335的客戶
select * from `client` where `phone` like '254%';
-- 取得姓X的客戶
select * from `client` where `client_name` like '艾%';
-- 取得生日在12月的
select * from `employee` where `birth_date` like '_____12%';