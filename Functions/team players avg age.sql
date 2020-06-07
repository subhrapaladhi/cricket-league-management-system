-- This function prints the average age of player for each team

create or replace function team_players_avg_age return varchar
as
cursor team_entry is select team_id from team;
cursor player_entry is select team_id,age from player;
i team_entry%rowtype;
j player_entry%rowtype;
agesum number(5,1);
avgage number(5,1);
counter number(5);
begin
  dbms_output.put_line('team id      average age');  
  for i in team_entry loop
    counter:=0;
    agesum:=0;
    avgage:=0;
    for j in player_entry loop
        if i.team_id=j.team_id then
          agesum:=agesum+j.age;
          counter:=counter+1;
        end if;
    end loop;
    avgage:=agesum/counter;
    dbms_output.put_line(i.team_id||'           '||avgage);
  end loop;
  return ' ';
end;
