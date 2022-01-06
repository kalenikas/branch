--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary 
on employees.id=employee_salary.employee_id 
join salary 
on salary.id=employee_salary.salary_id;
--2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary 
on employees.id=employee_salary.employee_id 
join salary 
on salary.id=employee_salary.salary_id
where monthly_salary < 2000;
--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
insert into salary(monthly_salary)
values 	(2400),
		(2600),
		(2700),
		(2800),
		(2900),
		(1999),
		(3000);
select salary.monthly_salary from salary
left join employee_salary 
on salary.id=employee_salary.salary_id
where employee_salary.employee_id is null;
--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary from salary
left join employee_salary 
on salary.id=employee_salary.salary_id
where employee_salary.employee_id is null and monthly_salary <2000;
--5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary 
from employees
left join employee_salary 
on employees.id=employee_salary.employee_id 
left join salary 
on salary.id=employee_salary.salary_id
where monthly_salary is null;
--6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name 
from employees
left join roles_employee 
on employees.id=roles_employee.employee_id
left join roles 
on roles_employee.role_id=roles.id; 
--7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name 
from employees
left join roles_employee 
on employees.id=roles_employee.employee_id
left join roles 
on roles_employee.role_id=roles.id
where role_name like '%Java %';
--8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name 
from employees
left join roles_employee 
on employees.id=roles_employee.employee_id
left join roles 
on roles_employee.role_id=roles.id 
where role_name like '%Python%';
--9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name 
from employees
left join roles_employee
on employees.id=roles_employee.employee_id 
left join roles
on roles_employee.role_id=roles.id 
where role_name like '%QA%';
--10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name 
from employees
left join roles_employee
on employees.id=roles_employee.employee_id 
left join roles
on roles_employee.role_id=roles.id 
where role_name like '%Manual%';
--11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name 
from employees
left join roles_employee
on employees.id=roles_employee.employee_id 
left join roles
on roles_employee.role_id=roles.id 
where role_name like '%Automation%';
--12. ������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary
on employees.id=employee_salary.employee_id 
join roles_employee
on employee_salary.employee_id=roles_employee.employee_id
join roles 
on roles_employee.role_id=roles.id 
join salary
on employee_salary.salary_id=salary.id
where role_name like 'Junior%';
--13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary
on employees.id=employee_salary.employee_id 
join roles_employee
on employee_salary.employee_id=roles_employee.employee_id
join roles 
on roles_employee.role_id=roles.id 
join salary
on employee_salary.salary_id=salary.id
where role_name like 'Middle%';
--14. ������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary
on employees.id=employee_salary.employee_id 
join roles_employee
on employee_salary.employee_id=roles_employee.employee_id
join roles 
on roles_employee.role_id=roles.id 
join salary
on employee_salary.salary_id=salary.id
where role_name like 'Senior%';
--15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary 
from roles 
join roles_employee
on roles.id = roles_employee.role_id 
join employee_salary
on roles_employee.employee_id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
where role_name like '%Java %';
--16. ������� �������� Python �������������
select roles.role_name, salary.monthly_salary 
from roles 
join roles_employee
on roles.id = roles_employee.role_id 
join employee_salary
on roles_employee.employee_id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
where role_name like '%Python%';
--17. ������� ����� � �������� Junior Python �������������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
left join roles_employee re 
on e.id = re.employee_id 
left join roles r 
on re.role_id = r.id 
left join employee_salary es 
on es.id=re.employee_id 
left join salary s 
on es.salary_id =s.id 
where role_name like 'Junior Python%';
--18. ������� ����� � �������� Middle JS �������������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on es.id=re.employee_id 
join salary s 
on es.salary_id =s.id 
where role_name like 'Middle JavaScript%';
--19. ������� ����� � �������� Senior Java �������������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on es.id=re.employee_id 
join salary s 
on es.salary_id =s.id 
where role_name like 'Senior Java%';
--20. ������� �������� Junior QA ���������
select r.role_name, s.monthly_salary 
from salary s 
join employee_salary es 
on s.id=es.salary_id 
join roles_employee re 
on es.employee_id =re.employee_id 
join roles r 
on re.role_id =r.id 
where role_name like 'Junior %QA%';
--21. ������� ������� �������� ���� Junior ������������
select avg(s.monthly_salary)  
from salary s 
join employee_salary es 
on s.id=es.salary_id 
join roles_employee re 
on es.employee_id =re.employee_id 
join roles r 
on re.role_id =r.id 
where role_name like 'Junior%';
-- 22. ������� ����� ������� JS �������������
select sum(s.monthly_salary)  
from salary s
join employee_salary es 
on s.id =es.salary_id 
join roles_employee re 
on es.employee_id =re.employee_id 
join roles r
on re.role_id =r.id 
where role_name like '%JavaScript%';
--23. ������� ����������� �� QA ���������
select min(s.monthly_salary)  
--select r.role_name ,s.monthly_salary 
from salary s
join employee_salary es 
on s.id =es.salary_id 
join roles_employee re 
on es.employee_id =re.employee_id 
join roles r
on re.role_id =r.id 
where role_name like '%QA%';
--24. ������� ������������ �� QA ���������
select max(s.monthly_salary)   
from salary s
join employee_salary es 
on s.id =es.salary_id 
join roles_employee re 
on es.employee_id =re.employee_id 
join roles r
on re.role_id =r.id 
where role_name like '%QA%';
--25. ������� ���������� QA ���������
select count(roles.role_name)
from roles
where role_name like '%QA%';
--26. ������� ���������� Middle ������������.
select count(roles.role_name)
from roles
where role_name like 'Middle%';
--27. ������� ���������� �������������
select count(roles.role_name)
from roles
where role_name like '%developer';
--28. ������� ���� (�����) �������� �������������.
select sum(s.monthly_salary) 
from salary s 
join employee_salary es 
on s.id =es.salary_id 
join roles_employee re 
on es.employee_id =re.employee_id 
join roles r 
on re.role_id =r.id 
where role_name like '%developer';
--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id =r.id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
order by s.monthly_salary;
--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id =r.id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;
--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id =r.id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where s.monthly_salary < 2300
order by s.monthly_salary;
--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id =r.id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where s.monthly_salary=1100 or s.monthly_salary=1500 or s.monthly_salary=2000
order by s.monthly_salary;



