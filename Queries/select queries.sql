--getting player name, team name, retirement date of players
select player.name,team.name,player.ret_date
from player inner join team
on player.team_id=team.team_id
where ret_date is not null;



--getting highest ranking batsman in each team
select team_id,name,min(rank)
from team natural join (
    select team_id,rank from player natural join ranking
    where player_type ='batsman'
)
group by team_id,name;



--getting commentator and match id name for the match in given stadium and order by match id
select com_name,match_id from commentator
where match_id in (
    select match_id from match
    where s_name=&stadium_name
)
order by match_id;