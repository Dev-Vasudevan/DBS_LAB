select name , salary from instructor ;
set serveroutput on ; 
declare 
cursor c is select * from instructor order by salary DESC  ; 

begin 
for ins in c Loop 
    dbms_output.put_line(ins.name || '  ' || ins.salary|| ' ' || c%rowcount);
    if c%rowcount= 10 then 
        exit ; 
    end if ; 
end loop; 
end ;
/