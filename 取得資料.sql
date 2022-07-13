-- 取得資料
-- DESC由高到低
-- limit 限制
-- where `資料` in(A,B)

select *
from `student`
where `major` = '英語'
order by `score`
limit 2;