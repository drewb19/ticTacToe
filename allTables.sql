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
 TopLeft BIT(2),
 TopCenter BIT(2),
 TopRight BIT(2),
 MiddleLeft BIT(2),
 MiddleCenter BIT(2),
 MiddleRight BIT(2),
 BottomLeft BIT(2),
 BottomCenter BIT(2),
 BottomRight BIT(2));
 
