
-- Data Analysis 1 - Select employee number, last name, first name sex and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on employees.emp_no=salaries.emp_no;

-- Data Analysis 2 - select first name, last name and hire date for employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where extract(year from hire_date) = 1986;

-- Data Analysis 3 List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no
order by departments.dept_no;

-- Data Analysis 4 list the department of each employee including employee number, last name, first name and deparment name

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no;
	
-- Data Analysis 5	list first name, last name and sex for employees whose first name is "hercules" and last name begins with b

select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- Data Analysis 6 list all employees in the sales department including employee number, last name, first name and department name

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

-- Data Analysis 7 list all employees in the sales and development departments including the employee number, last name, first name and deparment name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'
or departments.dept_name = 'Development';

-- Data Analysis 8  in descending order, list the frequency count of employee last names

Select last_name, COUNT(last_name) AS "Total Last Name"
from employees
Group by last_name
Order by "Total Last Name" DESC;
