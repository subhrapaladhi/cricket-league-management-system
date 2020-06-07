--updating fees of rank 1 batsman and bowler

update contract set fees = 100000000 where player_id in (select player_id from player natural join ranking where rank=1);

--updating a teams phone number
update team set phno = &phone_number where team_id = &team_id;


--update rank=100 of batsman with avg below 10

update ranking set rank=100 where player_id in(
    select player_id from player 
    where bat_avg<10 and player_type='batsman'
);

--update commentator name to akash chopra for matches held in wankhede stadium
update commentator set com_name='Akash Chopra' where match_id in (
    select match_id from match natural join stadium where s_name='wankhede'
);