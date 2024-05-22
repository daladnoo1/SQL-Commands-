--functions
-- 1. Show all employee data starting with the employee with the lowest salary
select *
from employees
order by salary
;

--2. Show employees from department 50, starting with the longest-working person
select first_name,last_name,hire_date
from employees
where department_id=50
order by hire_date
;

--3. Show last_names, job_ids and salaries of the employees. Sort the data by last name alphabetically and by salary (salary: descending order)

select last_name,job_id,salary
from employees
order by last_name, salary desc
;

--4. Show employee last names in 3 ways: as they are stored in the database, in lower and upper case

select last_name
from employees
;
select upper(last_name) as upper_name ,lower(last_name) as lower_name
from employees
;

--5. Build a code for each employee consisting of the first two letters of the surname, department number and the first letter of the job ids

select substr(last_name,1,2) as first_two_letters_of_the_surname,department_id,substr(job_id,1,1) as fist_letter_of_the_job_id
from employees
;

--6. Who has the fourth and fifth letters le in their surname?
select last_name
from employees
where substr(last_name,4,2)='le'
;
--7. Show the original names of employees from department 60, as well as the changed ones: replace the letters o with i

select last_name,replace(last_name,'o','i') as replace_name
from employees
where department_id=60
;

--8. Show details of people whose last name is longer than 4 letters

select *
from employees
where length(last_name)<4
;

--9. Show the last names and salaries of employees from department 50 and calculate their bonuses as 7.5% of the salary. The bonus should be rounded to the nearest ten cents.
select last_name,salary,round(salary/7.5,2) as new_bonus
from employees
;

--10. Show the last names of employees and ids of their bosses. For employees who do not have a boss, show '***'.

select last_name,manager_id,
    case when manager_id>0 then to_char(manager_id)
    else '***'
    end as boss_boss
from employees
;