-- This procedure is used to get the number of matches each umpire has officated

CREATE or REPLACE PROCEDURE umpire_officated_count
as
CURSOR i is SELECT u_id, u_name FROM umpire;
CURSOR j is SELECT u_id FROM officiating;
u_id_i umpire.u_id%type;
u_name_i umpire.u_name%type;
u_id_j officiating.u_id%type;
counter number(5);
begin
    dbms_output.put_line('Umpire name'||'     '||'Matches officiated');
    open i;
        loop
            fetch i into u_id_i,u_name_i;
            exit when i%notfound;
            open j;
            counter:=0;
            loop
                fetch j into u_id_j;
                exit when j%notfound;
                if u_id_i=u_id_j then
                  counter:=counter+1;
                end if;
            end loop;
            close j;
            dbms_output.put_line(u_name_i||'  '||counter);
        end loop;
    close i;  
end;