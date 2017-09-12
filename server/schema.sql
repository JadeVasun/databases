CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  UserID int NOT NULL AUTO_INCREMENT,
  username VARCHAR(20),
  PRIMARY KEY(UserID)
);

CREATE TABLE rooms (
  RoomID int NOT NULL AUTO_INCREMENT,
  roomname VARCHAR(20),
  PRIMARY KEY(RoomID)
); 

CREATE TABLE messages (
  id int NOT NULL AUTO_INCREMENT, 
  message VARCHAR(40), 
  UserID int,
  RoomID int,
  PRIMARY KEY (id),
  FOREIGN KEY(UserID) REFERENCES users(UserID),
  FOREIGN KEY(RoomID) REFERENCES rooms(RoomID)
);

/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

