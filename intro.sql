---- SQL TASKS 
select *
from employees
;
----1. Show employee surnames and job_ids.
select employee_id,job_id
from employees
;
--2. Show the department names and numbers of their managers.
select department_id, count(manager_id)
from employees
group by department_id
;

--3. Show employee surnames, their employee_ids and their quarterly earnings (salary and bonus). Use aliases for new columns.
select last_name, employee_id, salary+nvl(bonus,0) as quarterly_earnings
from employees
;

--4 Show surnames, job_ids, current salaries and future salaries after a planned increase of 10%.

select last_name,job_id, salary, salary*1.1 as new_salary
from employees
;


;