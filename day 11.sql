use earlycodestore;
create table GroupA_Records select* from studentsperformance where raceethnicity = 'group A';
create table GroupB_Records select* from studentsperformance where raceethnicity = 'group B';
create table GroupC_Records select* from studentsperformance where raceethnicity = 'group C';
create table GroupD_Records select* from studentsperformance where raceethnicity = 'group D';
create table GroupE_Records select* from studentsperformance where raceethnicity = 'group E';
alter table  GroupA_Records add column ID int primary key auto_increment not null first;
alter table  GroupB_Records add column ID int primary key auto_increment not null first;
alter table  GroupC_Records add column ID int primary key auto_increment not null first;
alter table  GroupD_Records add column ID int primary key auto_increment not null first;
alter table  GroupE_Records add column ID int primary key auto_increment not null first;

select *  from studentsperformance where lunch = 'standard' and mathscore>85; # AND condition
select *  from studentsperformance where lunch = 'standard' or mathscore>85; #OR condition
select * from studentsperformance where (lunch = 'standard' and raceethnicity = 'Group B') or (readingscore <= 55);
select gender, raceethnicity from studentsperformance where lunch like 'st%';
select gender, raceethnicity from studentsperformance where lunch like '%d';
select gender, raceethnicity from studentsperformance where lunch like '%ed';
select gender, raceethnicity from studentsperformance where lunch not like '%ed';

select * from studentsperformance where mathscore in (55,72, 85, 90, 100); # IN is a replacement for OR
select * from studentsperformance where writingscore <> 75; #<> means not equal in sql
select * from studentsperformance where parentallevelofeducation = null; # null is to get missing table
select * from studentsperformance where parentallevelofeducation is not null;
select * from studentsperformance where readingscore between 60 and 75;  #between works for numeric value

select GroupA_records.gender, GroupA_records.raceethnicity, GroupA_records.lunch, GroupB_records.gender, GroupB_records.raceethnicity, GroupB_records.lunch from GroupA_records inner join GroupB_records on GroupA_Records.ID = GroupB_Records.ID;
select GroupA_records.gender, GroupA_records.raceethnicity, GroupA_records.lunch, GroupB_records.gender, GroupB_records.raceethnicity, GroupB_records.lunch from GroupA_records left join GroupB_records on GroupA_Records.ID = GroupB_Records.ID;
select GroupA_records.gender, GroupA_records.raceethnicity, GroupA_records.lunch, GroupB_records.gender, GroupB_records.raceethnicity, GroupB_records.lunch from GroupA_records right join GroupB_records on GroupA_Records.ID = GroupB_Records.ID;
select ID, gender, lunch from GroupA_records cross join GroupB_records;