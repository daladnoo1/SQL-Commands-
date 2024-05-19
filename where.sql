---- where function
--1. Show surnames and job_ids of people hired in department 50 who have salary higher than 3000.
select last_name, job_id, department_id
from employees
where department_id=50 and salary>3000
;

-- 2.Show employee_ids and total annual earnings (monthly salary + annual bonus).

select employee_id, salary+nvl(bonus,0) as annual_earnings
from employees
;

--3. Who is not programmer? ("PROG" at the end of job_id)
select *
from employees
where job_id not in ('IT_PROG')
;

--4. Who was hired in 1993?
select *
from employees
where to_char(hire_date,'yyyy')=1993
;

--5. Who was hired after January 1, 1993?
select *
from employees
where hire_date>to_date('1993.01.01','yyyy.mm.dd')
;

--6. Show employees from department 10 and 90.
select *
from employees
where department_id=10 or department_id=90
;

--7. Show people listed alphabetically before King.

select *
from employees
where last_name<'King'
;

--8. Who doesn't charge commission?
select *
from employees
where nvl(commission_pct,0)=0
;

--9. Who charge commission?
select *
from employees
where commission_pct is not null
;

--10. Who has a 4-letter surname starting with "K"?

select *
from employees
where last_name like 'K___'
;

--11. Who earns more than 5000 and less than 10000?
select *
from employees
where salary >5000 and salary<10000
;

