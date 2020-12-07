
-- insetion countries
insert into countries (Name_Country) values("congo");
insert into countries (Name_Country) values("cameroun");
insert into countries (Name_Country) values("cote ivoire");
insert into countries (Name_Country) values("senegal");
insert into countries (Name_Country) values("togo");
insert into countries (Name_Country) values("nigeria");

-- insetion Artists
insert into artists (Name_Artist,Image_Artist,country) values('Tenor baflan','/img/tenor.img',2);
insert into artists (Name_Artist,Image_Artist,country) values('Locko','/img/locko.img',2);
insert into artists (Name_Artist,Image_Artist,country) values('davido','/img/davido.img',6);
insert into artists (Name_Artist,Image_Artist,country) values('burna boy','/img/davido.img',6);
insert into artists (Name_Artist,Image_Artist,country) values('kif no beat','/img/kif-no-beat.img',4);
insert into artists (Name_Artist,Image_Artist,country) values('koffi olimide','/img/koffi.img',1);
insert into artists (Name_Artist,Image_Artist,country) values('fally ipupa','/img/fally-ipupa.img',1);

-- insertion genres
insert into genres (Title_Genre) values('POP');
insert into genres (Title_Genre) values('Rap');
insert into genres (Title_Genre) values('Dance');
insert into genres (Title_Genre) values('Romance');
insert into genres (Title_Genre) values('RNB');
insert into genres (Title_Genre) values('Classique');
insert into genres (Title_Genre) values('Mix');

-- insertion albums

insert into albums(Title_Album,Release_date,Cover_Album) values('Tcha Tcho','1994-09-08','/cover/tcha-tcho.jpg');
insert into albums(Title_Album,Release_date,Cover_Album) values('Koweit Rive Gauche','1994-10-08','/cover/k-r-gauche.jpg');
insert into albums(Title_Album,Release_date,Cover_Album) values('Baddest','2015-10-08','/cover/Baddest.jpg');
insert into albums(Title_Album,Release_date,Cover_Album) values('Son Of Mercy','2015-10-08','/cover/s-of-m.jpg');

-- insertion songs
insert into songs(Name_Music,Source_Music,genre) values('FALL','src/fall.mp3',7);
insert into songs(Name_Music,Source_Music,genre) values('GOBE','src/gobe.mp3',7);
insert into songs(Name_Music,Source_Music,genre) values('One Love','src/one-love.mp3',7);
insert into songs(Name_Music,Source_Music,genre) values('Ecole','src/Ecole.mp3',7);
insert into songs(Name_Music,Source_Music,genre) values('Allo Telephone','src/Ecole.mp3',3);
insert into songs(Name_Music,Source_Music,genre) values('Mama Amy','src/mama-amy.mp3',7);
insert into songs(Name_Music,Source_Music,genre) values('Requiem','src/requiem.mp3',7);

-- insertion artist music
insert into albummusic(song,album) values(1,3);
insert into albummusic(song,album) values(2,3);

-- insertion artist albums
insert into artistalbum(artist,album) values(6,1);
insert into artistalbum(artist,album) values(6,2);
insert into artistalbum(artist,album) values(3,4);



