----------------------SQL SCRIPT--------------------------------------

create database LangLearnDB;
– 

create table AccountDb (
	accountID int not null identity(1,1),
	firstName varchar(50)  not null,
	lastName varchar(50) not null,
	email varchar(50) unique,
	phone varchar(10) unique,
    points int not null,
    streaks int not null,
    primary key(accountID)
);

create table Login(
    loginID int not null identity(1,1),
    username varchar(20) unique not null,
    password varchar(16) not null,
    accountID int not null,
    primary key(loginID)
);

create table Relationship(
-- they can be follow, mutal, blocked 
    followRelationshipID int identity(1,1),
    accountID int not null,
    account2ID int not null,
    statusRelationship varchar(7),
    PRIMARY KEY(followRelationshipID),
    FOREIGN KEY(accountID) references accountDb,
    FOREIGN KEY(account2ID) references accountDb,
    CHECK (accountID != account2ID)
);

create table taskDb(
    taskID int identity(1,1),
    task varchar(100),
    PRIMARY KEY(taskID)
);
create table achievementDb(
    achievementID int not null identity(1,1),
    title varchar(20) not null,
    pointNeccessery int,
    streaksNeccessery int,
    PRIMARY KEY(achievementID),
); 

create table languageList(
    languageId int identity(1,1),
    languageName varchar(30),
    hasAphabet tinyint, --s 0, if false, and 1, if true,
    PRIMARY KEY(languageId)
);
-------------------------------------------------insert-----------------------

insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Maria', 'Atanasova', 'mariaa@abv.bg', 0884567890, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Maria', 'Petova', 'mpetrovaabv.bg', 0884567891, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Ivana', 'Ivanova', 'ivanova@abv.bg', 0884567892, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Petia', 'Cvetkova', 'cvetkova@abv.bg', 0884567893, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Maria', 'Ivanova', 'mivanova@abv.bg', 0884567894, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Maria', 'Ivanova', 'mariaivanova@abv.bg', 0884567895, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Petar', 'Petrov', 'petar2@abv.bg', 0884567896, 200, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Boby', 'Cankov', 'cancov@abv.bg', 0884567897, 1000, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Ivan', 'Dimitrov', 'dimitrov@abv.bg', 0884567898, 800, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Stoqn', 'Iliev', 'snoqniliev@abv.bg', 0884567899, 1000, 1);
insert into AccountDb(firstName, lastName, email,phone, points, streaks)
values('Hrisi', 'Boqnova', 'hbt23a@abv.bg', 0884567810, 200, 1);

       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Tedi', 'Kalinova', 'kalinova@gmail.com', 08846811234, 500, 1); 
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Mira', 'Ivanova', 'inti521001@gmail.com', 08846802222, 500, 1);
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Pamela', 'Stefanova', 'inti521002@gmail.com', 0846811237, 500, 1); 
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Elena', 'Suares', 'inti521003@gmail.com', 0884682220, 500, 1);
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Rosica', 'Nikolaeva', 'inti521004@gmail.com', 0884818239, 500, 1); 
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Nikolai', 'Nikolov', 'inti521005@gmail.com', 0884812221, 500, 1);
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Nikoleta', 'Dinekova', 'inti521006@gmail.com', 0846811230, 500, 1); 
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Vladimir', 'Tzvetkov', 'inti521007@gmail.com', 0884811224, 500, 1); 
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Yourdan', 'Kirilov', 'inti521008@gmail.com', 0884681223, 500, 1); 
       insert into AccountDb(firstName, lastName, email,phone, points, streaks)
       values('Diana', 'Marinova', 'inti520002@gmail.com', 08848101222, 500, 1);
---------------

insert into Login(accountID, username, password)
values(1, 'matanasova', 'password884');
insert into Login(accountID, username, password)
values(21, 'mpetrova', 'petrova91');
insert into Login(accountID, username, password)
values(41, 'petia1', 'cvetcova');
insert into Login(accountID, username, password)
values(31, 'ivana', 'password');