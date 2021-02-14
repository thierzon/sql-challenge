-- Employee SQL-challenge by Matthias Zonneveld
-- Query 1: List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no);


-- Query 2: List first name, last name, and hire date for employees who were hired in 1986.

select e.first_name, e.last_name, e.hire_date
from employees e
where hire_date like '%1986';


-- Query 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments d
join dept_manager dm
on d.dept_no = dm.dept_no
join employees e
on dm.emp_no = e.emp_no;


-- Query 4: List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
join dept_emp de
on d.dept_no = de.dept_no
join employees e
on de.emp_no = e.emp_no;


-- Query 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select e.first_name, e.last_name, e.sex
from employees e
where first_name = 'Hercules' and last_name like 'B%';


-- Query 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
join dept_emp de
on d.dept_no = de.dept_no
join employees e
on de.emp_no = e.emp_no
where dept_name = 'Sales';


-- Query 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
join dept_emp de
on d.dept_no = de.dept_no
join employees e
on de.emp_no = e.emp_no
where dept_name = 'Sales' or dept_name = 'Development';


-- Query 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "last_name_count"
from employees
group by last_name
order by "last_name_count" desc;

