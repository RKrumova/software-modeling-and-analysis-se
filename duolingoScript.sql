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

create table dictunaryFrench(
	--languageId varchar(3) not null,
	word varchar(28) not null unique,
	pronunciation varchar(50) not null,
	englishCorrespond varchar(50) not null,
	PRIMARY KEY(word),
);
create table dictunarySpanish(
	word varchar(28) not null unique,
	pronunciation varchar(50) not null,
	englishCorrespond varchar(50) not null,
	PRIMARY KEY(word),
);
create table dictunaryGerman(
	--languageId varchar(3) not null,
	word varchar(28) not null unique,
	pronunciation varchar(50) not null,
	englishCorrespond varchar(50) not null,
	PRIMARY KEY(word),
);
create table dictunaryIrish(
	word varchar(28) not null unique,
	pronunciation varchar(50) not null,
	englishCorrespond varchar(50) not null,
	PRIMARY KEY(word),
);
create table dictunaryRussian(
	--languageId varchar(3) not null,
	word varchar(28) not null unique,
	pronunciation varchar(50) not null,
	englishCorrespond varchar(50) not null,
	PRIMARY KEY(word),
);
create table dictunaryChinese(
	word varchar(28) not null unique,
	pronunciation varchar(50) not null,
	englishCorrespond varchar(50) not null,
	PRIMARY KEY(word),
);
create table langUserConnection(
	id int identity(1,1),
	accountID int,
	languageID int,
	languageName varchar,
	primary key (id),
	foreign key(accountID) references AccountDb,
	foreign key(languageID) references languageList
);

create procedure showLanguageLearner as
begin
Select LanguageLearners.languageId, LanguageLearners.accountId, languageList.languageId
From LanguageLearners
Inner join languageList 
On languageList.languageId=languageList.languageName;
end;
--call
showLanguageLearner (select * from LanguageLearners);
----
create trigger deleteUser on Login
for delete as begin delete from AccountDb where AccountDb.accountID = accountID;
end ;;
delete from Login where accountID = 1;
----
Select * from AccountDb if(points > 200, 'Active user', 'New user') as Message 

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
-----------------
– wildfire
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Wildfire Level 1',null, 3);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Wildfire Level 2',null, 7);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Wildfire Level 3',null, 30);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Wildfire Level 4',null, 50);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Wildfire Level 5',null, 75);
-- sage
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Sage Level 1',250,null);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Sage Level 2',1000,null);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Sage Level 3',4000,null);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Sage Level 4',12500,null);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Sage Level 5',30000,null);
--conquer
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Conqueror Level 1',1000,3);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Conqueror Level 2',12500,10);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Conqueror Level 3',30000, 15);
insert into achievementDb(title, pointNeccessery, streaksNeccessery)
values('Conqueror Level 4',50000, 20); 
----
Update AccountDb set streaks = 8 where firstName='Maria'
insert into languageList(languageName) values('french'),('spanish'),('german'),('irish');
insert into languageList(languageName, hasAphabet) values('russian', 1),('chinese', 1);
--------------------------------
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Cat','chat','shah');
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Butterfly','Le papillon','Luh papee-on');
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Dog', 'Le chien', 'Luh sheeang');
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Fish', 'Le poisson','Luh pwasson ');
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Cow', 'La vache','La vash ');
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Horse', 'Le cheval', 'Luh shuh-val');
insert into dictunaryFrench(englishCorrespond, word, pronunciation)
values('Pig', 'Le cochon', 'Luh koshon');
insert into dictunarySpanish(word, pronunciation, englishCorrespond)
values('Los Acuaticos', 'Los Acuaticos', 'Aquatic');
insert into dictunarySpanish(word, pronunciation, englishCorrespond)
values('Los Domesticos','Los Domesticos','Domestic');
insert into dictunarySpanish(word, pronunciation, englishCorrespond)
values('Los Insectos', 'Los Insectos','Insects');
insert into dictunarySpanish(word, pronunciation, englishCorrespond)
values('Las Aves', 'Las Aves','Birds');
