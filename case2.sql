---decode+case

---1. Display last names and comments on employees seniority:
 -- a. for employees hired in 1990 - long term service
  -- b. for employees hired in 2000 - mid term service
  -- c. for the other employees - ***

select last_name,
  case when to_char(hire_date,'yyyy')='1990' then 'long term service'
       when to_char(hire_date,'yyyy')='2000' then 'mid term service'
  else '***' 
  end as seniority_comment
from employees
;

--3. Display last names and comments on employees managers:
--   a. for employees with president (ID 100) as direct manager - SMT
 --  b. for lower level employees - their job IDs.
 --  c. for president (ID 100) - CEO


Select last_name,
    case when manager_id=100 then 'SMT'
        when manager_id>100 then Job_id
    else 'CEO'
end as comment_manager
from employees
;