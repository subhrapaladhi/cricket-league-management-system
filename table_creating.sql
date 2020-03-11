/*
create table team(
    team_id number(5) not null,
    name varchar2(20),
    phno number(10),
    address varchar2(20),
    city varchar(20),
    CONSTRAINT pk_team PRIMARY key(team_id)
);



create table Player(
    player_id number(5),
    name varchar2(20),
    team_id number(5),
    debut_match date,
    DOB date,
    age number(3),
    bat_avg number(3),
    centuries number(3),
    half_centuries number(3),
    best_score number(3),
    bowling_avg number(5),
    tot_wickets number(4),
    ret_date date,
    CONSTRAINT pk_player PRIMARY KEY(player_id),
    CONSTRAINT fk_player FOREIGN KEY(team_id) REFERENCES team(team_id)
);

create table leagues(
    league_id number(5) not null,
    country varchar2(3),
    league_contract varchar2(20),
    CONSTRAINT pk_leagues PRIMARY KEY(league_id)
);


create table plays(
    player_id number(5) not null,
    league_id number(5) not null,
    CONSTRAINT pk_plays PRIMARY KEY(player_id,league_id),
    CONSTRAINT fk_plays_player FOREIGN KEY(player_id) REFERENCES player(player_id),
    CONSTRAINT fk_plays_league FOREIGN KEY(league_id) REFERENCES leagues(league_id)
);


create table contract(
    contract_id number(5) not null,
    player_id number(5),
    fees number(10),
    contract_start_date date,
    contract_end_date date,
    CONSTRAINT pk_contract PRIMARY KEY(contract_id),
    CONSTRAINT fk_contract FOREIGN KEY(player_id) REFERENCES player(player_id)
);


create table ranking(
    player_type varchar2(20) not null,
    player_id number(5) not null,
    rank number(5),
    CONSTRAINT pk_ranking PRIMARY KEY(player_type,player_id),
    CONSTRAINT fk_ranking FOREIGN KEY(player_id) REFERENCES player(player_id)
);


create table stadium(
    s_name varchar2(20) not null,
    capacity number(10),
    city varchar2(20),
    CONSTRAINT pk_stadium PRIMARY KEY(s_name)
);

create table match(
    h_team_id number(5),
    a_team_id number(5),
    win_team_id number(5),
    s_name varchar(20),
    mom varchar(20),
    match_id number(5) not null,
    highest_score number(3),
    CONSTRAINT pk_match PRIMARY KEY(match_id),
    CONSTRAINT fk_host FOREIGN KEY(h_team_id) REFERENCES team(team_id),
    CONSTRAINT fk_anchor FOREIGN KEY(a_team_id) REFERENCES team(team_id),
    CONSTRAINT fk_win FOREIGN KEY(win_team_id) REFERENCES team(team_id),
    CONSTRAINT fk_sname FOREIGN KEY(s_name) REFERENCES stadium(s_name)
);



*/