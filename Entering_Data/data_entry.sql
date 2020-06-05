----------------------- team table ------------------------
insert into team values(    1,'rcb',9003814273,    'rcb hq bangalore',    'bangalore');
insert into team values(    2,'csk',9458059340,    'csk hq chennai',    'csk');
insert into team values(    3,'mi',7317681795,    'mi hq mumbai',    'mumbai');
insert into team values(    4,'kkr',7535009447,    'kkr hq kolkata',    'kolkata');
insert into team values(    5,'rr',9004814276,    'rr hq jaipur',    'jaipur');


----------------------- team table ------------------------
insert into Player values(1,'Rohit Sharma',1,'12-APR-2008','14-MAR-1986',36,65,15,30, 264,30,22,'24-OCT-2020');
insert into Player values(2,'Virat Kohli',1,'23-MAY-2012','22-APR-1990',30,45,7,8,134,20,8,NULL);
insert into Player values(3,'Ab deVillars',1,'23-JUN-2006','18-MAY-1988',32,35,5,12,167,22,9,'20-AUG-2018');
insert into Player values(4,'MS Dhoni',2,'11-MAR-2004','10-JUN-1991',29,25,2,3,129,15,2,'21-OCT-2019');
insert into Player values(5,'Suresh Raina',2,'5-APR-2008','9-JUL-1985',35,35,4,13,164,31,15,'19-JUN-2017');
insert into Player values(7,'Keiran Pollard',3,'9-DEC-2008','25-NOV-1988',32,28,3,12,86,9,45,'9-FEB-2019');
insert into Player values(8,'Jasprit Bumrah',3,'15-FEB-2016','18-OCT-1986',34,4,NULL,NULL,6,30,129,NULL);
insert into Player values(9,'Quinton de kock',3,'24-MAR-2012','1-MAR-1986',34,29,1,3,101,20,5,NULL);
insert into Player values(10,'Steven Smith',4,'8-JAN-2006','10-JAN-1983',37,40,3,9,123,12,42,NULL);
insert into Player values(11,'Ajinkya Rahane',4,'12-JAN-2013','9-FEB-1987',33,38,2,7,134,28,7,NULL);
insert into Player values(12,'Jofra Archer',4,'30-JUN-2016','19-DEC-1995',25,25,NULL,NULL,26,4,122,NULL);
insert into Player values(13,'Dinesh Kartick',5,'15-AUG-2005','15-AUG-1984',36,40,3,8,145,23,10,NULL);
insert into Player values(14,'Andre Russell',5,'12-SEP-2010','17-NOV-1993',27,50,1,13,123,14,32,'14-JUN-2020');
insert into Player values(15,'Sunil Narine',5,'19-APR-2011','23-SEP-1992',28,15,NULL,NULL,67,8,76,NULL);
insert into Player values(6,'Shaun Tait',2,'8-JUL-2008','30-SEP-1986',34,5,NULL,1,34,11,93,'15-JAN-2019');


------------------------ league table --------------------------
insert into leagues values(1, 'India');
insert into leagues values(2, 'Australia');
insert into leagues values(3, 'England');
insert into leagues values(4, 'South Africa');
insert into leagues values(5, 'West indies');


---------------------------- contract table -------------------------
insert into contract values(    1,1,    50000000,   '15-JUL-2014',  '23-SEP-2020');
insert into contract values(    2,2,    40000000,   '12-APR-2016',  '16-JUL-2020');
insert into contract values(    3,3,    15000000,   '29-DEC-2015',  '04-SEP-2018');
insert into contract values(    4,4,    5000000,    '11-APR-2014',  '23-NOV-2019');
insert into contract values(    5,5,    4000000,    '06-APR-2014',  '09-SEP-2020');
insert into contract values(    6,6,    6000000,    '21-APR-2014',  '14-FEB-2019');
insert into contract values(    7,7,    7000000,    '20-APR-2015',    '15-SEP-2020');
insert into contract values(    8,8,    9000000,    '12-MAR-2014',    '23-AUG-2020');
insert into contract values(    9,9,    17000000,    '21-JUL-2013',    '11-FEB-2019');
insert into contract values(    10,10,    4000000,    '23-JAN-2015',    '02-MAY-2019');
insert into contract values(    11,11,    40000000,    '20-MAY-2015',    '15-OCT-2020');
insert into contract values(    12,12,    1230000,    '14-MAY-2014',    '19-SEP-2020');
insert into contract values(    13,13,    3000000,    '20-APR-2014',    '04-MAY-2017');
insert into contract values(    14,14,    5000000,    '23-APR-2014',    '02-JUL-2018');
insert into contract values(    15,15,    5000000,    '13-MAR-2014',    '28-SEP-2018');


------------------- ranking table -------------------------

insert into ranking values('batsman',1,2);
insert into ranking values('batsman',2,1);
insert into ranking values('batsman',3,5);
insert into ranking values('batsman',4,7);
insert into ranking values('batsman',5,8);
insert into ranking values('bowler',6,72);
insert into ranking values('batsman',7,27);
insert into ranking values('bowler',8,1);
insert into ranking values('batsman',9,21);
insert into ranking values('batsman',10,3);
insert into ranking values('batsman',11,57);
insert into ranking values('bowler',12,2);
insert into ranking values('batsman',13,31);
insert into ranking values('batsman',14,11);
insert into ranking values('bowler',15,5);
insert into ranking values('bowler',1,7);
insert into ranking values('batsman',6,4);
insert into ranking values('bowler',13,11);
insert into ranking values('batsman',15,44);
insert into ranking values('bowler',5,32);


------------------- stadium table ----------------------
insert into stadium values('chinnaswamy',55000,'bengaluru');
insert into stadium values('wankhede',70000,'mumbai');
insert into stadium values('eden garden',60000,'kolkata');
insert into stadium values('chepak',65000,'chennai');
insert into stadium values('sawai madhao',50000,'jaipur');

---------------------------- match table -------------------------
insert into match values(1,2,1,'chinnaswamy','virat',1,121);
insert into match values(2,1,1,'chepak','ab devillers',2,111);
insert into match values(2,3,2,'chepak','ms dhoni',3,98);
insert into match values(3,2,3,'wankhede','rohit sharma',4,105);
insert into match values(3,4,4,'wankhede','dinesh kartik',5,72);
insert into match values(4,3,4,'eden garden','andre russel',6,86);
insert into match values(4,5,5,'eden garden','steve smith',7,94);
insert into match values(5,4,4,'sawai madhao','sunil narine',8,96);
insert into match values(1,5,1,'chinnaswamy','virat kohli',9,126);
insert into match values(5,1,5,'sawai madhao','jofra archer',10,158);

------------------- commentator table -----------------------
insert into commentator values('ravi shastri',1,1);
insert into commentator values('akash chopra',2,2);
insert into commentator values('vivek dahiya',3,3);
insert into commentator values('navjot singh siddhu',4,4);
insert into commentator values('harsha bhogle',5,5);

------------------- coach table -----------------------
insert into coach values('sanjay bangar','indian',1,1);
insert into coach values('justin langer','australian',2,2);
insert into coach values('mike hesson','new zeland',3,3);
insert into coach values('ottis gibson','west indian',4,4);
insert into coach values('gary kristen','south african',5,5);

------------------- umpire table -----------------------
insert into umpire values(1,'ian gould',72);
insert into umpire values(2,'Nigel Long',89);
insert into umpire values(3,'Rod Tucker',16);
insert into umpire values(4,'kumar dharamsena',56);
insert into umpire values(5,'chris gaffaney',65);

------------------- officiating table -----------------------
insert into officiating values(1,1);
insert into officiating values(2,1);
insert into officiating values(3,2);
insert into officiating values(4,2);
insert into officiating values(5,3);
insert into officiating values(1,3);
insert into officiating values(2,4);
insert into officiating values(3,4);
insert into officiating values(4,5);
insert into officiating values(5,5);
insert into officiating values(2,6);
insert into officiating values(3,6);
insert into officiating values(4,7);
insert into officiating values(5,7);
insert into officiating values(1,8);
insert into officiating values(2,8);
insert into officiating values(3,9);
insert into officiating values(4,9);
insert into officiating values(5,10);
insert into officiating values(1,10);
