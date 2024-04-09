set serveroutput on  ; 

declare 

cursor inst is select * from instructor ;
cursor tak(cid takes.course_id%type ) is select * from takes where cid=course_id ; 
cursor t(tid teaches.id%type ) is select * from teaches where id = tid ;
stu student%rowtype ; 

begin 

for ins in inst Loop 
    dbms_output.put_line( chr(10));
    dbms_output.put_line(ins.name);
    
    for teach in t(ins.id) Loop 
        for ta in tak(teach.course_id) Loop 
            select * into stu from student where ta.id = student.id ; 
            dbms_output.put_line(stu.name);
        end loop;
    end loop;
end loop;

end ; 
/
