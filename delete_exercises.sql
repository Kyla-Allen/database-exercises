USE codeup_test_db;

Select 'Deleting albums after 1991' as 'caption';
Delete from albums where release_date > 1991;

Select 'deleting labums with the disco genre' as 'caption';
delete from albums where genre = 'disco';

select 'deleting albums by Celine Dion' as 'caption';
delete from albums where artist = 'Celine Dion';
