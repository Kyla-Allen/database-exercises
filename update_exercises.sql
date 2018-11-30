USE codeup_test_dp;

SELECT 'All albums' as 'Caption';
Select name from albums;
Update albums
  set sales = sales * 10,
  release_date = release_date - 100 WHERE release_date < 1980,
  artist = 'Peter Jackson' where artist = 'Michael Jackson';
Select * from albums;

select 'all albums released before 1980' as 'caption';
select name from albums where release_date < 1980;
Update albums
  set sales = sales * 10,
  release_date = release_date - 100 WHERE release_date < 1980,
  artist = 'Peter Jackson' where artist = 'Michael Jackson';
Select * from albums;

select 'all albums by Michael Jackson' as 'caption';
select name from albums where artist = 'Michael Jackson';
Update albums
  set sales = sales * 10,
  release_date = release_date - 100 WHERE release_date < 1980,
  artist = 'Peter Jackson' where artist = 'Michael Jackson';
Select * from albums;