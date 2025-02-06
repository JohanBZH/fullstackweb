-- Reprendre pour aller chercher les constantes dans le .env


CREATE DATABASE cesi_003;
CREATE USER 'cesi'@'%' IDENTIFIED BY 'cesi';
GRANT ALL PRIVILEGES ON cesi_003.* TO 'cesi'@'%';
FLUSH PRIVILEGES;

CREATE TABLE User_base(
   id_user VARCHAR(50) ,
   login VARCHAR(50)  NOT NULL,
   password VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_user),
   UNIQUE(login),
   UNIQUE(password)
);

CREATE TABLE Data(
   id_data VARCHAR(50) ,
   Nom VARCHAR(50) ,
   note VARCHAR(50) ,
   id_user VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_data),
   FOREIGN KEY(id_user) REFERENCES User_base(id_user)
);