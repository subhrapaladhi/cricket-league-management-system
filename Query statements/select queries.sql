--1.getting player name, team name, retirement date of players
select player.name,team.name,player.ret_date
from player inner join team
on player.team_id=team.team_id
where ret_date is not null;


--2. getting highest ranking batsman in each team
select team_id,name,min(rank)
from team natural join (
    select team_id,rank from player natural join ranking
    where player_type ='batsman'
)
group by team_id,name;

--3. getting commentator and match id name for the match in given stadium and order by match id
select com_name,match_id from commentator
where match_id in (
    select match_id from match
    where s_name=&stadium_name
)
order by match_id;


--4. getting the player name and fees ordered by fees
select name,fees from player natural join contract
order by fees;

--5. select the stadium with maximum capacity
select s_name,capacity from stadium
where capacity in (
    select max(capacity) from stadium
);


--6. get players who have played in a given stadium
select name from player
where team_id in(
    (
        select h_team_id as team_id from match 
        where s_name = 'chinnaswamy'   
    )
    union
    (
        select a_team_id as team_id from match 
        where s_name = 'chinnaswamy'
    )
);

--7. get the number of years played by a retired player
select (ret_date - debut_match)/365 as years_played,name,debut_match,ret_date from player
where ret_date is not null;

--8. get the player id and name who plays in some or the other league
select player_id,name from player
where exists(
    select distinct player_id from plays
    where exists(
        select league_id from leagues
    )
);
