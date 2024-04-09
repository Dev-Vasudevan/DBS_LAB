set serveroutput on ; 

declare
cursor c is select * from student order by tot_cred  ; 

begin 

for stud in c Loop 
dbms_output.put_line(stud.id ||'  '|| stud.name ||'  '|| stud.dept_name ||'  '|| stud.tot_cred);
if c%rowcount = 5 then
EXIT;
End if;
End Loop;
End;
/
