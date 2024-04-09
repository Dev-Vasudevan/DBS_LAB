
-- set serveroutput on ;

-- declare 
-- cursor c is select * from instructor order by salary desc;
-- x number :=0;
-- begin 
-- for ins in c Loop
--     dbms_output.put_line (ins.name ||' '|| ins.salary);
--     x := x + 1;
--     if x >=5 then 
--         EXIT;
--     End if ; 
-- End Loop;

-- End;
-- /
drop table salary_raise; 
create table salary_raise (name varchar (15) , raise_dt date , raise_amt number(8,2) );
set serveroutput on ; 

declare 
cursor c (dept instructor.dept_name%type ) is select * from instructor where dept_name like (dept ) for update ;
dept_nm instructor.dept_name%type ;

begin
dept_nm := '&dept_nm';
for ins in c(dept_nm) Loop 
    dbms_output.put_line(ins.name ||'  ' || ins.salary|| ' ' || c%rowcount);
    insert into salary_raise values ( ins.name , '22-Nov-2004', ins.salary*0.05);
    Update instructor Set salary= salary *1.05 where current of c ;
    End Loop ; 
    
End;
/
-- select * from instructor;
select * from salary_raise;

