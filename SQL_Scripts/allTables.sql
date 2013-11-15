DROP DATABASE ticTacToe;


CREATE DATABASE ticTacToe;

CREATE TABLE ticTacToe.player_Table(
 UID INT NOT NULL AUTO_INCREMENT,
 PRIMARY KEY(UID),
 Email varchar(100) NOT NULL,
 Username varchar(50) NOT NULL,
 Password varchar(64) NOT NULL,
 Player_Rank INT AUTO_INCREMENT,
 Wins INT,
 Losses INT,
 Ties INT);
 
 
CREATE TABLE ticTacToe.friend_Table(
 UID INT NOT NULL,
 FOREIGN KEY(UID) REFERENCES player_Table(UID),
 Friend_UID INT NOT NULL);
 
CREATE TABLE ticTacToe.wait_Lobby(
 UID INT NOT NULL,
 FOREIGN KEY(UID) REFERENCES player_Table(UID),
 Rank INT NOT NULL);
 
CREATE TABLE ticTacToe.game_Lobby(
 GameID INT NOT NULL AUTO_INCREMENT,
 PRIMARY KEY(GameID),
 Rank_1 INT NOT NULL,
 Rank_2 INT NOT NULL,
 UID_1 INT NOT NULL,
 UID_2 INT NOT NULL,
 Username_1 varchar(50) NOT NULL,
 Username_2 varchar(50) NOT NULL,
 TopLeft ENUM('none','UID_1', 'UID_2'),
 TopCenter ENUM('none','UID_1', 'UID_2'),
 TopRight ENUM('none','UID_1', 'UID_2'),
 MiddleLeft ENUM('none','UID_1', 'UID_2'),
 MiddleCenter ENUM('none','UID_1', 'UID_2'),
 MiddleRight ENUM('none','UID_1', 'UID_2'),
 BottomLeft ENUM('none','UID_1', 'UID_2'),
 BottomCenter ENUM('none','UID_1', 'UID_2'),
 BottomRight ENUM('none','UID_1', 'UID_2'));

CREATE TABLE ticTacToe.achievements(
 UID INT NOT NULL,
 PRIMARY KEY(UID),
 win_First_Game ENUM('true','false'),
 lose_First_Game ENUM('true', 'false'),
 make_First_Friend ENUM('true','false'));

INSERT INTO ticTacToe.player_Table (Email, Username, Password, Player_Rank, Wins, Losses, Ties) VALUES (
	'pikachu@pokemon.com',
	'pikachu',
	'pika-pe',
	1,
	2,
	0,
	0);
	
INSERT INTO ticTacToe.player_Table (Email, Username, Password, Player_Rank, Wins, Losses, Ties) VALUES (
	'bulbasaur@pokemon.com',
	'bulbasaur',
	'bulba',
	2,
	1,
	1,
	1);

INSERT INTO ticTacToe.player_Table (Email, Username, Password, Player_Rank, Wins, Losses, Ties) VALUES (
	'charmander@pokemon.com',
	'charmander',
	'char',
	3,
	0,
	0,
	2);
	
INSERT INTO ticTacToe.player_Table (Email, Username, Password, Player_Rank, Wins, Losses, Ties) VALUES (
	'squirtle@pokemon.com',
	'squirtle',
	'squuiirtle',
	4,
	0,
	2,
	1);
	
INSERT INTO ticTacToe.achievements VALUES (
	'1',
	'true',
	'true',
	'true');

INSERT INTO ticTacToe.achievements VALUES (
	'2',
	'true',
	'true',
	'true');

INSERT INTO ticTacToe.achievements VALUES (
	'3',
	'true',
	'false',
	'true');

INSERT INTO ticTacToe.achievements VALUES (
	'4',
	'true',
	'false',
	'false');
	
INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'1',
	'2');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'2',
	'1');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'1',
	'3');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'3',
	'1');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'2',
	'3');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'3',
	'2');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'3',
	'1');

INSERT INTO ticTacToe.friend_table (UID, Friend_UID) VALUES (
	'1',
	'3');
	
INSERT INTO ticTacToe.game_Lobby (Rank_1, Rank_2, UID_1, UID_2, Username_1, Username_2, TopLeft, TopCenter, TopRight, MiddleLeft, MiddleCenter, MiddleRight, BottomLeft, BottomCenter, BottomRight) VALUES (
	'1',
	'2',
	'1',
	'2',
	'pikachu',
	'bulbasaur',
	'UID_1',
	'UID_2',
	'none',
	'none',
	'UID_1',
	'none',
	'UID_2',
	'none',
	'none');

INSERT INTO ticTacToe.wait_Lobby VALUES (
	'3',
	'3');
