use music_player_management;

Create table User_ (user_id int NOT NULL, 
					user_full_name varchar(255) NOT NULL, 
                    user_email varchar(255), 
                    user_phone bigint,
                    PRIMARY KEY(user_id));
                    
Create table User_login (login_id int NOT NULL, 
					userame varchar(255) NOT NULL, 
                    password_ varchar(255), 
                    user_id int NOT NULL,
                    FOREIGN KEY (user_id) REFERENCES User_(user_id),
                    PRIMARY KEY(login_id));

Create table premium_subscription (premium_id int NOT NULL,
								type_ varchar(255),
                                start_date datetime,
                                end_date datetime,
                                user_id int NOT NULL,
                                FOREIGN KEY (user_id) REFERENCES User_(user_id),
                                PRIMARY KEY(premium_id));
                                
                                
Create table Podcaster( Podcaster_id int NOT NULL,
						Podcaster_name varchar(255),
                        Podcaster_followers int,
                        total_podcasts int,
                        PRIMARY KEY(podcaster_id));
		
create table podcasts ( Podcast_id int NOT NULL,
						podcast_name varchar(255),
                        podcaster_id int NOT NULL,
                        FOREIGN KEY (podcaster_id) REFERENCES Podcaster(Podcaster_id),
                        PRIMARY KEY (podcast_id));
                        
create table Artist (artist_id int NOT NULL,
					artist_name varchar(255),
                    followers int,
                    verified varchar(5),
                    PRIMARY KEY (artist_id));

create table Song (song_id int NOT NULL,
					song_name varchar(255),
                    genre varchar(50),
                    listeners int,
                    PRIMARY KEY (song_id));
                    
create table Album (album_id int NOT NULL,
					no_of_songs int,
                    release_year year,
                    duration time,
                    PRIMARY KEY (album_id));

create table listens_to ( user_id int NOT NULL,
						song_id int NOT NULL,
                        likes varchar(5),
                        FOREIGN KEY (user_id) REFERENCES User_(user_id),
                        FOREIGN KEY (song_id) REFERENCES Song(song_id));

create table song_features (song_id int NOT NULL,
							album_id int NOT NULL,
                            artist_id int NOT NULL,
                            FOREIGN KEY (album_id) REFERENCES Album(album_id),
							FOREIGN KEY (song_id) REFERENCES Song(song_id),
                            FOREIGN KEY (artist_id) REFERENCES Artist(artist_id));
                            
CREATE TABLE IF NOT EXISTS user (
    `User_ID` INT,
    `name` VARCHAR(9) CHARACTER SET utf8,
    `email` VARCHAR(27) CHARACTER SET utf8,
    `phone` BIGINT
);

ALTER TABLE podcaster MODIFY podcaster_followers varchar(50);
ALTER TABLE premium_subscription modify start_date varchar(50);
ALTER TABLE premium_subscription modify end_date varchar(50);
ALTER TABLE artist MODIFY followers varchar(50);

INSERT INTO user_ VALUES
    (973111,'Richa','richaramesh2002@gmail.com',9304837465),
    (973112,'Thejaswi','thejaswi2@gmail.com',8038475903),
    (973113,'Rachitha','rachs123@gmail.com',8291026378),
    (973114,'Pratheek','pratheek007@gmail.com',9374801938),
    (973115,'Apoorva','apoorvasarvade@gmail.com',7891273801),
    (973116,'Jeffrey','jeff06112@gmail.com',6809283762),
    (973117,'Swathi','nvswathi1@gmail.com',9183638936),
    (973118,'Sada','sadzkakarla24@gmail.com',8862920184),
    (973119,'Shristi','shristinadakatti@gmail.com',8392016182),
    (973120,'Prarthana','prarthanakalal123@gmail.com',9910273649),
    (973121,'Suhas','suhasg06@gmail.com',9990027261),
    (973122,'Vivek','rapakavivek@gmail.com',6782989372),
    (973123,'Rhea','rheasudheer.19@gmail.com',7022993724),
    (973124,'Manas','manasarora@gmail.com',7624352498),
    (973125,'Rohit','rohit1912@gmail.com',8524398926),
    (973126,'Aadithya','aadithyagoel2002@gmail.com',6700239287),
    (973127,'Anirudh','anirudhramesh@gmail.com',8929745290),
    (973128,'Karan','karan20aggarwal@gmail.com',6678992527),
    (973129,'Ananya','ananyasingh23@gmail.com',9887546777),
    (973130,'Anvesha','anveshanaik9@gmail.com',7376489973);


INSERT INTO user_login VALUES
    (1001,'richaramesh','iuhfvndv',973111),
    (1002,'teju','ijfcws98',973112),
    (1003,'rachitha10','sjdcnfh23298',973113),
    (1004,'pratheek007','89ijfdvnk',973114),
    (1005,'approve1','8932nkjf',973115),
    (1006,'jeff16','39edui398',973116),
    (1007,'nvrupali','8923dj',973117),
    (1008,'sadak','jkndkcfn',973118),
    (1009,'shrishnadakatti','98edfjo',973119),
    (1010,'prar14','jh8u9',973120),
    (1011,'suhasg','23r4rf24',973121),
    (1012,'rapakav','83rduhj38',973122),
    (1013,'rheas','982e4fr',973123),
    (1014,'manasarora01','2eufhd',973124),
    (1015,'rohits66','28e94fj',973125),
    (1016,'goelaadithya001','2e8fh',973126),
    (1017,'anirudhs','982efh',973127),
    (1018,'karanp','2eiwed',973128),
    (1019,'anan09ya','9238ru',973129),
    (1020,'anvnair','893ur3',973130);

INSERT INTO premium_subscription VALUES
    ('8889','individual','14-11-2020','14-11-2023',973112),
    ('8890','mini','16-09-2021','15-02-2022',973113),
    ('8891','student','02-01-2022','01-01-2023',973114),
    ('8892','student','02-01-2022','01-06-2022',973115),
    ('8894','individual','13-12-2021','12-12-2022',973117),
    ('8896','duo','18-11-2022','17-12-2022',973119),
    ('8897','family','09-09-2021','08-09-2023',973120),
    ('8898','mini','19-12-2021','18-12-2024',973121),
    ('8899','duo','14-02-2022','13-08-2022',973122),
    ('8900','duo','14-02-2022','13-08-2022',973123),
    ('8902','mini','29-10-2022','28-11-2022',973125),
    ('8903','family','12-12-2021','11-06-2022',973126),
    ('8904','individual','14-11-2020','14-11-2023',973127),
    ('8905','student','16-09-2021','15-02-2022',973128),
    ('8906','family','02-01-2022','01-01-2023',973129),
    ('8907','family','02-01-2022','01-06-2022',973130);

INSERT INTO podcaster VALUES
    (679748,' Wade','100K',50),
    (679749,'Dave','26K',9),
    (679750,' Seth','50.2K',25),
    (679751,' Ivan','10K',30),
    (679752,' Riley','99K',43),
    (679753,' Gilbert','200K',79),
    (679754,' Jorge','8K',8),
    (679755,' Dan','35K',45),
    (679756,' Brian','90K',20),
    (679757,'Roberto','44K',38);

INSERT INTO podcasts VALUES
    (1,'Start with This',679748),
    (2,'Philosophy Bites',679751),
    (3,'Why Won''t You Date Me?',679750),
    (4,'Crime Show',679757),
    (5,'In the Dark',679748),
    (6,'The New Yorker Fiction Podcast',679757),
    (7,'Black Girl Songbook.',679754),
    (8,'This American Life.',679752),
    (9,'Dolly Parton''s America',679756),
    (10,' WTF',679749),
    (11,' Reply All',679753),
    (12,'Stuff You Should Know',679755),
    (13,'The Daily',679752),
    (14,'Office Ladies',679752),
    (15,'My Favorite Murder',679749);


INSERT INTO artist VALUES
    (2020,'Taylor Swift','250M','Yes'),
    (2021,'Drake','70M','Yes'),
    (2022,'Justin Beiber','100M','Yes'),
    (2023,'Post Malone','34M','Yes'),
    (2024,'Maren Morris','50K','No'),
    (2025,'Kari Jobe','18M','No'),
    (2026,'Dua Lipa','100K','No');

INSERT INTO song VALUES
    (7812,'Love yourself','EDM',5678),
    (7813,'Stay','EDM',89432),
    (7814,'Blank Space','Pop',2389),
    (7815,'All too well','Country Music',2837),
    (7816,'Goodbyes','Hip hop',7945),
    (7817,'Sunflower','Hip hop',2323),
    (7818,'Nothing Else','Gospel',38492),
    (7819,'Levitating','Disco',9298),
    (7820,'God''s plan','Pop rap',38927),
    (7821,'The Middle','Alternative/indie',839),
    (7822,'Knife talk','Rap',48920),
    (7823,'Chasing after you','Country Music',79298);
    


INSERT INTO album VALUES
    (4002,10,2011,'01:40'),
    (4003,9,2018,'01:27'),
    (4004,3,2022,'00:10'),
    (4005,8,2017,'0:40:00'),
    (4006,15,2021,'02:10'),
    (4007,5,2020,'00:25'),
    (4008,7,2021,'00:40'),
    (4009,5,2020,'00:20'),
    (4010,11,2022,'00:55');


INSERT INTO listens_to VALUES
    (973111,7812,'yes'),
    (973112,7820,'yes'),
    (973113,7812,'no'),
    (973114,7822,'no'),
    (973115,7818,'yes'),
    (973116,7813,'yes'),
    (973117,7817,'yes'),
    (973118,7815,'no'),
    (973119,7814,'no'),
    (973120,7813,'no'),
    (973121,7817,'no'),
    (973122,7812,'yes'),
    (973123,7813,'yes'),
    (973124,7816,'yes'),
    (973125,7815,'yes'),
    (973126,7819,'yes'),
    (973127,7823,'yes'),
    (973128,7821,'yes'),
    (973129,7819,'yes'),
    (973130,7822,'yes'),
    (973122,7817,'yes'),
    (973124,7817,'yes'),
    (973116,7812,'yes'),
    (973113,7819,'yes');


INSERT INTO song_features VALUES
    (7812,4002,2022),
    (7813,4002,2022),
    (7814,4006,2020),
    (7815,4006,2020),
    (7816,4003,2023),
    (7817,4007,2023),
    (7818,4004,2025),
    (7819,4010,2026),
    (7820,4009,2021),
    (7821,4005,2024),
    (7822,4008,2021),
    (7823,4005,2024);
