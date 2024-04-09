drop table salary_raise; 
create table salary_raise(Id varchar2(5) , Raise_date Date , amt number (8,2) );
set serveroutput on ;
declare 
cursor c(dept instructor.dept_name % type) is select * from instructor  where dept_name = dept for update  ; 
department instructor.dept_name%type ; 

begin 

department := '&department';
for ins in c(department) Loop 
    insert into salary_raise values (ins.id , sysdate() , ins.salary*0.05);
    Update instructor set salary = salary*0.95 where current of c ;
end loop;
end ; 
/

