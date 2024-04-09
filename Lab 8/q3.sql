set serveroutput on ;

declare 

cursor c is select * from course ; 
cursor t is select * from takes ;
cnt number ;
begin 

for crs in c Loop
    cnt :=0 ; 
    for tks in t Loop 
        if crs.course_id = tks.course_id then 
            cnt := cnt +1 ; 
        end if ;
    end loop ;
    dbms_output.put_line(crs.course_id || ' ' || cnt);
end loop ;
end;
/


























-- set serveroutput on ; 

-- declare 
-- cursor courses is select * from course; 
-- cursor taks( cid course.course_id%type ) is select * from takes where cid = takes.course_id ; 
-- cnt number  ; 
-- begin 

-- for crs in courses Loop 
--     cnt :=0;
    
--     for taken in taks(crs.course_id) Loop 
--         -- dbms_output.put_line('1');
        
--             cnt:=cnt +1 ; 
        
--     end loop ; 
--     dbms_output.put_line(crs.title || ' ' || cnt);
-- end loop ; 
-- end ;
-- /


-- -- DECLARE 
-- --     CURSOR courses IS SELECT * FROM course; 
-- --     CURSOR taks(crs_id course.course_id%type) IS 
-- --         SELECT * FROM takes WHERE course_id = crs_id; 
-- --     cnt NUMBER; 
-- -- BEGIN 
-- --     FOR crs IN courses LOOP 
-- --         cnt := 0;
        
-- --         -- Corrected cursor usage with parameter
-- --         FOR taken IN taks(crs.course_id) LOOP 
-- --             dbms_output.put_line('1');
-- --             cnt := cnt + 1; 
-- --         END LOOP; 
        
-- --         dbms_output.put_line(crs.title || ' ' || cnt);
-- --     END LOOP; 
-- -- END; 
-- -- /

