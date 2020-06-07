--delete commentator which have commentated in stadium with capacity less than equal to 55000
delete from commentator where match_id in(
    select match_id from match natural join stadium where capacity<=55000
);

--delete coach with nationality=australian and who's team's atleast one member has batting average below 10
delete from coach where nationality='australian' and team_id in(
    select team_id from player where player_id in (
        select player_id from player where bat_avg<10
    )
);

--deleting entries from plays record
delete from plays where player_id=&player_id and league_id=&league_id;

--delete player of type bowler where rank is greater than 100
delete from player where player_id in (
    select player_id from player natural join ranking 
    where rank>100 and player_type='bowler'
);