-- DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

-- CREATE TABLE users (
--   UserID int NOT NULL AUTO_INCREMENT,
--   username VARCHAR(20),
--   PRIMARY KEY(UserID)
-- );

-- CREATE TABLE rooms (
--   RoomID int NOT NULL AUTO_INCREMENT,
--   roomname VARCHAR(20),
--   PRIMARY KEY(RoomID)
-- ); 

-- CREATE TABLE messages (
--   id int NOT NULL AUTO_INCREMENT, 
--   message VARCHAR(40), 
--   UserID int,
--   RoomID int,
--   PRIMARY KEY (id),
--   FOREIGN KEY(UserID) REFERENCES users(UserID),
--   FOREIGN KEY(RoomID) REFERENCES rooms(RoomID)
-- );

-- DROP TABLE messages;

CREATE TABLE messages (
  id mediumint(8) unsigned NOT NULL auto_increment,
  username varchar(255) default NULL,
  messages TEXT default NULL,
  roomname TEXT default NULL,
  PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO messages (username,messages,roomname) VALUES ("Hermione Higgins","Nullam lobortis quam a","felis"),("Russell Buckner","Fusce aliquam, enim nec","porttitor"),("Nasim Richardson","et magnis dis parturient","vitae,"),("Jessamine Forbes","lacinia vitae, sodales at,","at"),("Orson Kane","pharetra sed, hendrerit a,","imperdiet"),("Bruce Leach","Cras vehicula aliquet libero.","Nunc"),("Galena Burton","pede blandit congue. In","facilisis"),("Wyoming Sawyer","ullamcorper magna. Sed eu","sed"),("Kendall Robbins","Pellentesque habitant morbi tristique","mauris"),("Marsden Holden","Aliquam gravida mauris ut","ut,");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Driscoll Greene","lectus rutrum urna, nec","sem"),("India Osborne","velit eu sem. Pellentesque","porttitor"),("Hiram Saunders","cursus. Integer mollis. Integer","Donec"),("Alfonso Reilly","dolor. Nulla semper tellus","quam"),("Casey Rodriquez","elementum, dui quis accumsan","eget"),("Deacon Brennan","est, vitae sodales nisi","Nulla"),("Penelope Workman","mollis lectus pede et","luctus,"),("Nadine Johnston","dapibus ligula. Aliquam erat","turpis."),("Ethan Grant","nec orci. Donec nibh.","in"),("James Contreras","nec tellus. Nunc lectus","non,");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Drew Moran","justo sit amet nulla.","at"),("Roary Mays","sem. Nulla interdum. Curabitur","in"),("Thane Mayer","facilisi. Sed neque. Sed","ornare,"),("Macon Shelton","tellus. Aenean egestas hendrerit","neque"),("Kyle Melton","massa lobortis ultrices. Vivamus","nisi"),("Geoffrey Craig","odio vel est tempor","et"),("Lester Jimenez","aliquet, metus urna convallis","parturient"),("Azalia Brock","a, enim. Suspendisse aliquet,","risus."),("Armand Glover","enim. Nunc ut erat.","luctus"),("Lenore Lowe","lorem semper auctor. Mauris","euismod");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Francis Sheppard","lorem fringilla ornare placerat,","est."),("Diana Snyder","natoque penatibus et magnis","volutpat."),("Malik Dunn","massa rutrum magna. Cras","Pellentesque"),("Rose Cantu","id, erat. Etiam vestibulum","Aliquam"),("Cody Livingston","ut, sem. Nulla interdum.","taciti"),("Kermit Burton","cubilia Curae; Donec tincidunt.","In"),("Tucker Ashley","mauris. Morbi non sapien","at"),("Abbot Tucker","ligula. Donec luctus aliquet","Quisque"),("Cailin Fulton","eget, venenatis a, magna.","mollis"),("Amy Kelly","pulvinar arcu et pede.","augue.");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Sonia Jennings","Vivamus euismod urna. Nullam","magnis"),("Moses Harrington","dignissim lacus. Aliquam rutrum","malesuada"),("Selma Holt","metus. In lorem. Donec","ullamcorper."),("Jocelyn Santos","pharetra nibh. Aliquam ornare,","lorem"),("Audra Branch","eu elit. Nulla facilisi.","iaculis"),("Elliott Yang","magna. Sed eu eros.","enim."),("Honorato Ward","nisi sem semper erat,","fringilla"),("Lynn Compton","sollicitudin adipiscing ligula. Aenean","odio,"),("Simon Britt","convallis convallis dolor. Quisque","sagittis"),("Basil Hill","tristique senectus et netus","augue");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Cedric Clark","vitae velit egestas lacinia.","vel"),("Jesse Rhodes","a, malesuada id, erat.","lorem"),("Deborah Mendez","Nulla interdum. Curabitur dictum.","vel,"),("Judah Spears","pede. Cum sociis natoque","lorem"),("Ashely Logan","nibh. Quisque nonummy ipsum","orci"),("Hop Stanton","Morbi non sapien molestie","elementum"),("Angela Hobbs","egestas. Duis ac arcu.","montes,"),("Cyrus Hansen","ultrices posuere cubilia Curae;","feugiat."),("Rebekah Fowler","scelerisque sed, sapien. Nunc","ac"),("Ahmed Carrillo","semper tellus id nunc","enim.");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Beverly Oneal","mi felis, adipiscing fringilla,","odio,"),("Omar Best","felis eget varius ultrices,","adipiscing"),("Rachel Oliver","diam. Proin dolor. Nulla","sapien."),("Jayme Gilliam","Proin mi. Aliquam gravida","venenatis"),("Caesar Rios","massa rutrum magna. Cras","luctus"),("Sophia Mendoza","arcu iaculis enim, sit","a,"),("Colby Clarke","facilisis vitae, orci. Phasellus","ante"),("Sawyer Gregory","lacinia. Sed congue, elit","tristique"),("Todd Gray","interdum ligula eu enim.","Morbi"),("Brynn Alford","nunc. Quisque ornare tortor","Aliquam");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Jared Bean","nunc id enim. Curabitur","ipsum"),("Quinn Carroll","ac, fermentum vel, mauris.","egestas"),("Hadassah Patel","adipiscing fringilla, porttitor vulputate,","ac"),("Emma Harper","sem, vitae aliquam eros","facilisis"),("Idona Bailey","egestas. Aliquam fringilla cursus","sapien,"),("Emmanuel Wilcox","semper tellus id nunc","ultrices"),("Ferris Brennan","purus. Duis elementum, dui","consectetuer"),("Simone Austin","dapibus rutrum, justo. Praesent","lectus"),("Barclay Moses","ultrices a, auctor non,","ante."),("Josiah Nolan","at, velit. Pellentesque ultricies","Donec");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Simon Humphrey","Proin vel nisl. Quisque","fringilla"),("Brett Miles","malesuada vel, convallis in,","Vestibulum"),("Dara Macdonald","mollis nec, cursus a,","ut,"),("Igor Dunn","amet nulla. Donec non","felis"),("Evan Huffman","vitae erat vel pede","nunc"),("Barclay Warner","aliquam adipiscing lacus. Ut","nec"),("Bradley Turner","Fusce feugiat. Lorem ipsum","auctor"),("Serena Rocha","dui quis accumsan convallis,","amet"),("Darius Mooney","est tempor bibendum. Donec","elit,"),("Karly Barnes","Sed diam lorem, auctor","amet");
-- INSERT INTO messages (username,messages,roomname) VALUES ("Georgia Whitney","dolor. Nulla semper tellus","pharetra."),("Hilda Reese","rutrum, justo. Praesent luctus.","rutrum."),("Ignatius Ratliff","dictum ultricies ligula. Nullam","volutpat"),("Dorian Lee","sed dolor. Fusce mi","Sed"),("Vivien Howell","elit elit fermentum risus,","aliquet"),("Theodore Casey","Mauris vel turpis. Aliquam","ut"),("Penelope Becker","dapibus rutrum, justo. Praesent","purus"),("Kasper Solis","purus. Maecenas libero est,","habitant"),("Kevin May","mauris sapien, cursus in,","diam."),("Constance Cole","non, cursus non, egestas","fringilla");


/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

