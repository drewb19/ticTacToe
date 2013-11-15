DROP DATABASE ticTacToe;


CREATE DATABASE ticTacToe;

CREATE TABLE ticTacToe.player_Table(
 UID INT NOT NULL AUTO_INCREMENT,
 PRIMARY KEY(UID),
 Email varchar(100) NOT NULL,
 Username varchar(50) NOT NULL,
 Password varchar(64) NOT NULL,
 Player_Rank INT,
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
 BottomRight ENUM('none','UID_1', 'UID_2'),

CREATE TABLE ticTacToe.achievements(
 UID INT NOT NULL,
 win_First_Game ENUM('true','false'),
 lose_First_Game ENUM('true', 'false'),
 make_First_Friend ENUM('true','false');

