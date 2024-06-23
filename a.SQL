select d.department_name from departments d inner join employees e on d.dept_id = e.dept_id group by e.dept_id having count(e.dept_id) > 2;

select d.department_name, AVG(e.salary) from employee e left join department d on e.dept_id = d.dept_id group by e.dept_id having AVG(e.salary) > 75000 order by d.dept_name desc;


select e.emp_name, m.manager_name from employee e left join manager m on e.manager_id = m.manager_id where e.city = m.city;

create view hello_world as select manager_id, name, salary from managers where salary > 40000;

create view marksview as select stu_details.name, stu_details.address, stu_marks.marks from stu_details, stu_marks where stu_details.name = stu_marks.name;

DROP view marksview;