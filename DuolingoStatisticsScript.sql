
create database DuolingoStatistics;
use DuolingoStatistics;

create table UserGenderSurvey(
 ID int identity(1,1) primary key,
 languageName varchar(10),
 educationLevel varchar(200),
 employmentType varchar(50),
 studyTime int,
 levelOfSuccess varchar(200),
 percentFemale decimal,
 percentMale decimal,
 percentNonBinary decimal,
 percentOther decimal
);
create table AgeGenderDistribution(
age int,
female int,
male int, 
nonBinary int
);
create table StudyTime(
 stats varchar(200),
 lessons decimal,
 Translation decimal,
 Other decimal
 );
 create table Effectiveness(
 stats varchar(30),
 ImprovementPerHour decimal
 );
 -- Reason for Studying  as Factor for Effectiveness
 create table reasonStudyEffect(
 Reason varchar(20),
 number int,
 EffectivenessMin decimal,
 EffectivenessMax decimal);

 insert into reasonStudyEffect(Reason, number, EffectivenessMin, EffectivenessMax)
 values('Travel',10, 17.6, 22.7);
 insert into reasonStudyEffect(Reason, number, EffectivenessMin, EffectivenessMax)
 values('Business/Work',16,11.4,15.7);
 insert into reasonStudyEffect(Reason, number, EffectivenessMin, EffectivenessMax)
 values('Personal or School', 62, 5.7,7.0);


 insert into Effectiveness(stats, ImprovementPerHour)
 values('Mean(std)', 8.1);
 insert into Effectiveness(stats, ImprovementPerHour)
 values('Median',3.9);
 insert into Effectiveness(stats, ImprovementPerHour)
 values('Min', -5.6);
 insert into Effectiveness(stats, ImprovementPerHour)
 values('Max', 60.4);
 insert into Effectiveness(stats, ImprovementPerHour)
 values('95% Confidence Interval', 10.7);
 insert into Effectiveness(stats, ImprovementPerHour)
 values('N',88);

insert into AgeGenderDistribution(age, female, male, nonBinary)
values(20, 3, 14, 22);
insert into AgeGenderDistribution(age, female, male, nonBinary)
values(30, 53, 45, 25);
insert into AgeGenderDistribution(age, female, male, nonBinary)
values(40, 13, 32, 17);
insert into AgeGenderDistribution(age, female, male, nonBinary)
values(90, 20, 16, 5);
 insert into StudyTime(stats, lessons, Translation, other)
 values('Mean(std)', 70.0,9.0,21.0);
 insert into StudyTime(stats, lessons, Translation, other)
 values('Median', 70.4, 5.0, 20.1);
 insert into StudyTime(stats, lessons, Translation, other)
 values('Min',26,0, 1);
insert into StudyTime(stats, lessons, Translation, other)
 values('Max', 95, 52, 46);
insert into StudyTime(stats, lessons, Translation, other)
 values('N', 88, 88, 88);
