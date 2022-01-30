create table if not exists Genre (
	genre_id serial primary key,
	genre_name varchar(40) unique not null
	);

create table if not exists Artist (
	artist_id serial primary key,
	artist_name varchar(40) unique not null,
	id_genre integer references Genre(genre_id)
	);
	
create table if not exists Albums (
	album_id serial primary key,
	album_name varchar(40) unique not null,
	releaseYear integer not null check (releaseYear>0),
	artist_id integer references Artist(artist_id)
	);
	
create table if not exists Tracks (
	track_id serial primary key,
	title varchar(40) unique not null,
	duration integer not null check (duration>0),
	album_id integer references Albums(album_id)
	);