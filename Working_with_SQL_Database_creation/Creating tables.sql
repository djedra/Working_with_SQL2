CREATE TABLE IF NOT exists genre (
	id SERIAL PRIMARY KEY,
	name_ganre VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT exists singer (
	id SERIAL PRIMARY KEY,
	name_singer VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS genre_singer (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT null REFERENCES singer(id), 
	genre_id INTEGER NOT null REFERENCES genre(id)
);


CREATE TABLE IF NOT exists album (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(40) NOT null,
	year_album integer	
);

CREATE TABLE IF NOT EXISTS singer_album (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT null REFERENCES singer(id), 
	album_id INTEGER NOT null REFERENCES album(id)
);

CREATE TABLE IF NOT exists tracks (
	id SERIAL PRIMARY KEY,
	name_track VARCHAR(40) NOT null,
	duration integer,
	album_id INTEGER NOT null REFERENCES album(id)
);

CREATE TABLE IF NOT exists collection (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(40) NOT null,
	year_collection integer	
);

CREATE TABLE IF NOT EXISTS track_collection (
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT null REFERENCES tracks(id), 
	collection_id INTEGER NOT null REFERENCES collection(id)
);