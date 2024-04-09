set serveroutput on ; 

declare 
    yr number;
begin 
    yr := '&year';
    if mod(yr,4)=0 then 
        dbms_output.put_line('Leap year');
    else 
        dbms_output.put_line('Not leap');
    end if ;
end;
/