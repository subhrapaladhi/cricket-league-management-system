CREATE or REPLACE PROCEDURE get_player_city
as CURSOR cur is SELECT team_id, name from player;
team_id_i player.team_id%type;
player_name player.name%type;
n VARCHAR2(20);
BEGIN
    open cur;
    dbms_output.put_line('City'||' '||'Player_name');
    dbms_output.put_line('---------------------------');
    loop
    fetch cur into team_id_i,player_name;
    exit when cur%notfound;
    if team_id_i=1 then
        n:='bangalore';
    elsif team_id_i=2 then
        n:='chennai';
    elsif team_id_i=3 then
        n:='mumbai';
    elsif team_id_i=4 then
        n:='kolkata';
    elsif team_id_i=5 then
        n:='jaipur';
    end if;
    dbms_output.put_line(n||' '||player_name);
    end loop;
CLOSE cur;
end;

set serveroutput on;

exec get_player_city