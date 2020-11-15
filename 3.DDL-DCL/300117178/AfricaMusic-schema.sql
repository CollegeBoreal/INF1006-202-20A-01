##africaMusic

CREATE DATABASE AfricaMusic;
use AfricaMusic;

CREATE TABLE Artists(
Name_Artist VARCHAR(20) PRIMARY KEY NOT NULL,
Country_Artist VARCHAR(20),
Image_Artist VARCHAR(20)
);
CREATE TABLE Albums(
Title_Album VARCHAR(20) PRIMARY KEY NOT NULL,
Release_date date,
Cover_Album VARCHAR(20)
);

CREATE TABLE Genres(
Title_Genre VARCHAR(20)PRIMARY KEY
);

CREATE TABLE Songs(
Name_Music VARCHAR(20) PRIMARY KEY NOT NULL,
Source_Music VARCHAR(20) NOT NULL,
Title_Genre VARCHAR(20),
FOREIGN KEY (Title_Genre) REFERENCES Genres(Title_Genre)

);

CREATE TABLE ArtistAlbum(
Name_Artist VARCHAR(20), 
Title_Album VARCHAR(20), 
PRIMARY KEY(Name_Artist,Title_Album),
FOREIGN KEY (Name_Artist) REFERENCES Artists(Name_Artist),
FOREIGN KEY (Title_Album) REFERENCES Albums(Title_Album)
);

CREATE TABLE AlbumMusic(
Name_Music VARCHAR(20) REFERENCES Songs(Name_Music),
Title_Album VARCHAR(20) REFERENCES Albums(Title_Album),
PRIMARY KEY(Name_Music,Title_Album),
FOREIGN KEY (Name_Music) REFERENCES Songs(Name_Music),
FOREIGN KEY (Title_Album) REFERENCES Albums(Title_Album)

);
