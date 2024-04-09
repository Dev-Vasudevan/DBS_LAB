set serveroutput on ; 

-- begin 
-- for i in 1..10 loop 
--     if mod(i,2)=1 then 
--     dbms_output.put_line(i);
--     end if ; 
-- end loop;
-- end;
-- /
-- DECLARE
-- CURSOR C1 is select * from Department for update;
-- BEGIN
-- For dept in C1
-- LOOP
-- IF dept.Budget <= 70000 THEN
-- update Department SET Budget = Budget*1.2 where current of C1;
-- ELSIF dept.Budget > 7000 and dept.Budget <= 100000 THEN
-- update Department SET Budget = Budget*1.15 where current of C1;
-- ELSE
-- update Department SET Budget = Budget*1.1 where current of C1;
-- END IF;
-- END LOOP;
-- END;
-- /
DECLARE
cursor c(dname instructor.dept_name%TYPE) is select * 
from Instructor where dept_name = dname;
BEGIN
FOR tmp IN c('Comp. Sci.') 
LOOP
dbms_output.put_line('EMP_No: '||tmp.ID); 
dbms_output.put_line('EMP_Name: '||tmp.name); 
dbms_output.put_line('EMP_Dept: '||tmp.dept_name); 
dbms_output.put_line('EMP_Salary:'||tmp.salary); 
DBMS_OUTPUT.PUT_LINE( '-------------------------------');
END Loop; 
END;
/