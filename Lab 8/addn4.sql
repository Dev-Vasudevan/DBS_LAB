set serveroutput on ; 

declare 
cursor departments is select dept_name from department;

course_count number ;
student_count number ; 

begin 

for dept in departments Loop

    select count(course_id) into course_count from course where course.dept_name = dept.dept_name group by dept_name; 
    select count(id ) into student_count from student where dept_name like (dept.dept_name) group by dept_name;
    dbms_output.put_line (dept.dept_name || '-Course count :' || course_count|| ' -> Stud count : '||student_count );
End loop;
end;
/
