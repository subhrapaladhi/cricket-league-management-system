-- This function returns the ratio of matches that host team has won

CREATE or REPLACE FUNCTION get_host_team_win_ratio RETURN number
as 
CURSOR cur is SELECT h_team_id, win_team_id from match;
match_itr cur%rowtype;
home_wins number :=0;
i number :=0;
ratio number(5,3);
BEGIN
for match_itr in cur loop
    i:=i+1;
    if match_itr.h_team_id=match_itr.win_team_id then
        home_wins:=home_wins+1;
    end if;
end loop;
ratio:=home_wins/i;
return ratio;
end;


begin
    dbms_output.put_line('Win Ratio of home team in matches = '||get_host_team_win_ratio);
end;