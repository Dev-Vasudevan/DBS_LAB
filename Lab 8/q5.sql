-- alter table takes add  grade varchar(2); 
-- update  takes set grade='F';
-- alter table takes add gpa number(2);
-- update takes set gpa = mod (takes.year,5)+5;
-- select * from takes ; 
set serveroutput on ; 
declare 
cursor c is select * from takes for update  ;
reeva takes%rowtype;
begin 

For stu in c Loop 
    if stu.gpa = 10 then 
        update takes set grade ='A+' where current of c ; 
    elsif stu.gpa = 9 then 
        update takes set grade ='A' where current of c; 
    elsif stu.gpa =5 then 
        update takes set grade ='f' where current of c; 
    end if ;
end loop ;
select * into reeva from takes where id = 23121; 
-- dbms_output.put_line(reeva.course_id);

end ; 
/




