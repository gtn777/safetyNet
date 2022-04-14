DROP TABLE IF EXISTS persons;
CREATE TABLE persons
(
   id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR (250) NOT NULL,
   last_name VARCHAR (250) NOT NULL,
   address VARCHAR (250) NOT NULL,
   city VARCHAR (250) NOT NULL,
   zip VARCHAR (250) NOT NULL,
   phone VARCHAR (250) NOT NULL,
   mail VARCHAR (250) NOT NULL,
   birth_date Date NOT NULL
);
INSERT INTO persons
(
   first_name,
   last_name,
   address,
   city,
   zip,
   phone,
   mail,
   birth_date
)
VALUES
(
   'Laurent',
   'GINA',
   'address1',
   'city1',
   'zip1',
   'phone1-111',
   'laurentgina@mail.com',
   '2014-12-02'
),

(
   'Sophie',
   'FONCEK',
   'address2',
   'city2',
   'zip2',
   'phone2-111',
   'sophiefoncek@mail.com',
   '2004-05-25'
),

(
   'Agathe',
   'FEELING',
   'address3',
   'city3',
   'zip3',
   'phone3-111',
   'agathefeeling@mail.com',
   '1994-10-15'
);
DROP TABLE IF EXISTS firestations;
CREATE TABLE firestations
(
   id INT AUTO_INCREMENT PRIMARY KEY,
   address VARCHAR (205) NOT NULL,
   station VARCHAR (250) NOT NULL
);
INSERT INTO firestations
(
   address,
   station
)
VALUES
(
   '44, rue de la paix',
   '37'
),

(
   '15, Avenue Foch',
   '75'
);
DROP TABLE IF EXISTS allergies;
CREATE TABLE allergies
(
   person_id int NOT NULL,
   allergie VARCHAR (250) NOT NULL,
   PRIMARY KEY
   (
      person_id,
      allergie
   ),
   FOREIGN KEY (person_id) REFERENCES persons (id)
);
INSERT INTO allergies
(
   person_id,
   allergie
)
VALUES
(
   1,
   'polen'
),

(
   2,
   'poussiere'
),

(
   2,
   'allergie 2'
),

(
   2,
   'chats'
);