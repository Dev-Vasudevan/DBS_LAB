set serveroutput on ; 

declare 
cursor s is select * from student ; 
cursor t(s_id takes.id %type ,cid takes.course_id%type ) is select * from takes where cid =course_id and s_id =takes.id for update ;

begin 

for stu in s Loop 
    if (stu.tot_cred <= 60 ) then 
        for tks in t(stu.id , 'CS-101') LOOP 
            dbms_output.put_line(stu.name || ' ' || stu.id || ' ' || stu.tot_cred);
            delete from takes  where takes.id =stu.id;
        end loop ; 
    end if ;
end loop ;

end ;
/
