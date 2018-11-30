USE codeup_test_db;

Select 'The name of all albums by Pink Floyd' AS 'info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';


Select 'The year Sgt Peppers Lonely Hearts CLub band was released' As 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt Peppers Lonely Hearts Club Band';

select 'The genre for Nevermind' as 'info';
select genre FROM albums WHERE name = 'Nevermind';

select 'Albums released in the 1990s' as 'info';
select name from albums where release_date BETWEEN 1990 AND 1999;

select 'albums less than 20 million sales' as 'info';
select name from albums where sales < 20;

select 'Albums with the genre of rock' as 'info';
select name from albums where genre = 'rock';