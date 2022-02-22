#1 Membuat seluruh tabel dan isilah values dalam tabel, serta menentukan primary key & foreign key apabila ada.

CREATE DATABASE Nutfleex;

CREATE TABLE Pengguna (
    [ID_Pengguna] NVARCHAR(6) NOT NULL PRIMARY KEY,
    [Nama_Pengguna] NVARCHAR(15) NOT NULL,
    [Tanggal_Lahir] DATE NOT NULL,
    [Jenis_Kelamin] NVARCHAR(9),
    [Tanggal_Bergabung] DATE NOT NULL,
    [Paket] NVARCHAR(8) NOT NULL,
);

INSERT INTO Pengguna VALUES
    (N'User01',N'Dinda Amira','2004-04-10',NULL,'2019-10-11',N'Berbayar'),
    (N'User02',N'Awan','2001-05-11',N'Perempuan','2019-05-26',N'Berbayar'),
    (N'User03',N'Bintang','1999-02-07',N'Perempuan','2017-10-11',N'Berbayar'),
    (N'User04',N'Arunika','1998-05-29',N'Perempuan','2018-12-06',N'Berbayar'),
    (N'User05',N'Atta Halilintar','1988-05-11',N'Laki-laki','2017-12-28',N'Berbayar'),
    (N'User06',N'Tulus','1986-05-23',NULL,'2018-12-03',N'Gratis'),
    (N'User07',N'Raisa','2003-10-15',N'Perempuan','2019-04-28',N'Gratis'),
    (N'User08',N'Naufal Harsa','1993-05-09',N'Laki-laki','2019-06-03',N'Berbayar'),
    (N'User09',N'Jonathan','1999-04-03',N'Laki-laki','2019-04-29',N'Berbayar'),
    (N'User10',N'Salman Luqman','2004-11-01',N'Laki-laki','2018-09-08',N'Gratis'),
    (N'User11',N'Hotman Paris','1987-10-15',N'Laki-laki','2019-01-27',N'Gratis'),
    (N'User12',N'Putra Rizal','1991-03-23',N'Laki-laki','2017-07-05',N'Berbayar'),
    (N'User13',N'Nabila','1992-05-02',N'Perempuan','2018-07-02',N'Berbayar'),
    (N'User14',N'Amalia Krida','1999-05-12',N'Perempuan','2017-02-06',N'Gratis'),
    (N'User15',N'Nadia Azzahra','1994-11-05',NULL,'2017-08-31',N'Gratis'
);

CREATE TABLE Production_Company (
    [ID_Production_Company] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [Nama_Production_Company] NVARCHAR(18) NOT NULL,
    [Negara] NVARCHAR(6),
    [Tahun_Berdiri] INT NOT NULL
);

INSERT INTO Production_Company VALUES
    (N'PH01',N'Studio Ghibli',N'Jepang',1985),
    (N'PH02',N'Walt Disney',N'USA',1923),
    (N'PH03',N'Warner Bros',N'USA',1923),
    (N'PH04',N'DC Films',NULL,2016),
    (N'PH05',N'Universal Pictures',N'USA',1912
);

CREATE TABLE Pemeran (
    [ID_Pemeran] NVARCHAR(3) NOT NULL PRIMARY KEY,
    [Nama_Pemeran] NVARCHAR(17) NOT NULL,
    [Jenis_Kelamin] NVARCHAR(9) NOT NULL,
    [Tanggal_Lahir] DATE NOT NULL,
    [Email] NVARCHAR(22) NOT NULL
);

INSERT INTO Pemeran VALUES
    (N'P01',N'Al Pacino',N'Laki-laki',N'1940-04-25',N'alpacino@gmail.com'),
    (N'P02',N'Joe Pesci',N'Laki-laki',N'1943-09-02',N'joepesci@gmail.com'),
    (N'P03',N'Robert de Niro',N'Laki-laki',N'1943-08-17',N'deniro@gmail.com'),
    (N'P04',N'Julie Walters',N'Perempuan',N'1950-02-22',N'juliewalters@gmail.com'),
    (N'P05',N'Matt Damon',N'Laki-laki',N'1970-08-10',N'mattdamon@gmail.com'),
    (N'P06',N'Ben Affleck',N'Laki-laki',N'1972-08-15',N'benaffleck@gmail.com'),
    (N'P07',N'Leonardo DiCaPRio',N'Laki-laki',N'1974-11-11',N'dicaPRio@gmail.com'),
    (N'P08',N'Gal Gadot',N'Perempuan',N'1985-04-30',N'galgadot@gmail.com'),
    (N'P09',N'Yumi Hiiragi',N'Perempuan',N'1987-01-08',N'y_hiiragi@gmail.com'),
    (N'P10',N'Emma Watson',N'Perempuan',N'1990-04-15',N'emmawatson@gmail.com'),
    (N'P11',N'Yuria Nara',N'Perempuan',N'1999-12-21',N'yurianara@gmail.com'
);

CREATE TABLE Kategori_Award (
    [ID_Kategori_Award] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [Nama_Kategori_Award] NVARCHAR(19) NOT NULL
);

INSERT INTO Kategori_Award VALUES
    (N'KA01',N'Best Sound Mixing'),
    (N'KA02',N'Best Music'),
    (N'KA03',N'Best Animated Film'),
    (N'KA04',N'Best Visual Effects'),
    (N'KA05',N'Best Picture'
);

CREATE TABLE Award (
    [ID_Award] NVARCHAR(3) NOT NULL PRIMARY KEY,
    [Nama_Award] NVARCHAR(14) NOT NULL,
    [Tahun] INT NOT NULL,
    [Penyelenggara] NVARCHAR(15) NOT NULL
);

INSERT INTO Award VALUES
    (N'A01',N'Oscars',2006,N'Octavia Spencer'),
    (N'A02',N'Golden Globe',2020,N'Hollywood PRess'),
    (N'A03',N'MTV',2002,N'MTV'),
    (N'A04',N'Critics Choice',2010,N'BFCA'),
    (N'A05',N'AACTA',2015,N'AACTA'
);

CREATE TABLE Sutradara (
    [ID_Sutradara] NVARCHAR(3) NOT NULL PRIMARY KEY,
    [Nama_Sutradara] NVARCHAR(17) NOT NULL,
    [Jenis_Kelamin] NVARCHAR(9) NOT NULL,
    [Tahun_Debut] INT NOT NULL,
);

INSERT INTO Sutradara VALUES
    (N'S01',N'Martin Scorsese',N'Laki-laki',1968),
    (N'S02',N'Hayao Miyazaki',N'Laki-laki',1979),
    (N'S03',N'Christopher Nolan',N'Laki-laki',1998),
    (N'S04',N'Jack Snyder',N'Laki-laki',1997),
    (N'S05',N'Joss Whedon',N'Laki-laki',1997),
    (N'S06',N'Mark Andrews',N'Laki-laki',1999),
    (N'S07',N'Brenda Chapman',N'Perempuan',1998),
    (N'S08',N'Steve Purcell',N'Laki-laki',1987
);

CREATE TABLE Film (
    [ID_Film] NVARCHAR(3) NOT NULL PRIMARY KEY,
    [Judul_Film] NVARCHAR(20) NOT NULL,
    [ID_Production_Company] NVARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Production_Company,
    [Tahun_Rilis] INT NOT NULL,
    [Genre] NVARCHAR(9) NOT NULL,
    [Durasi_(menit)] INT NOT NULL,
    [Rating] NVARCHAR(5),
    [ID_Award] NVARCHAR(3) FOREIGN KEY REFERENCES Award,
);

INSERT INTO Film VALUES
    (N'F01',N'The Irishman',N'PH05',2019,N'Drama',219,N'R',N'A02'),
    (N'F02',N'Goodfellas',N'PH03',1990,N'Thriller',148,N'R',N'A03'),
    (N'F03',N'Ponyo',N'PH01',2008,N'Animation',103,N'G',N'A04'),
    (N'F04',N'Spirited Away',N'PH01',2001,N'Animation',125,N'PG',N'A01'),
    (N'F05',N'Interstellar',N'PH03',2014,N'Adventure',169,N'PG-13',N'A02'),
    (N'F06',N'Inception',N'PH03',2010,N'Action',162,NULL,N'A04'),
    (N'F07',N'Justice League',N'PH04',2017,N'Action',120,N'PG-13',N'A02'),
    (N'F08',N'Brave',N'PH02',2012,N'Adventure',93,N'PG',NULL),
    (N'F09',N'Beauty and The Beast',N'PH02',2017,N'Romance',84,N'PG',N'A02'
);

CREATE TABLE Peran (
    [ID_Peran] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [Nama_Peran] NVARCHAR(20) NOT NULL,
    [ID_Film] NVARCHAR(3) NOT NULL FOREIGN KEY REFERENCES Film,
    [ID_Pemeran] NVARCHAR(3) NOT NULL FOREIGN KEY REFERENCES Pemeran,
);

INSERT INTO Peran VALUES
    (N'PR01',N'Frank',N'F01',N'P03'),
    (N'PR02',N'Jimmy',N'F01',N'P01'),
    (N'PR03',N'Russell',N'F01',N'P02'),
    (N'PR04',N'Jimmy',N'F02',N'P03'),
    (N'PR05',N'Tommy',N'F02',N'P02'),
    (N'PR06',N'Ponyo',N'F03',N'P11'),
    (N'PR07',N'Chihiro',N'F04',N'P09'),
    (N'PR08',N'Mann',N'F05',N'P05'),
    (N'PR09',N'Cobb',N'F06',N'P07'),
	(N'PR10',N'Batman',N'F07',N'P06'),
	(N'PR11',N'Wonder Woman',N'F07',N'P08'),
	(N'PR12',N'Merida',N'F08',N'P04'),
	(N'PR13',N'Belle',N'F09',N'P10'
);

CREATE TABLE Detail_Sutradara (
    [ID_Detail_Sutradara] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [ID_Film] NVARCHAR(3) NOT NULL FOREIGN KEY REFERENCES Film,
    [ID_Sutradara] NVARCHAR(3) NOT NULL FOREIGN KEY REFERENCES Sutradara,
);

INSERT INTO Detail_Sutradara VALUES
    (N'DS01',N'F01',N'S01'),
    (N'DS02',N'F02',N'S01'),
    (N'DS03',N'F03',N'S02'),
    (N'DS04',N'F04',N'S02'),
    (N'DS05',N'F05',N'S03'),
    (N'DS06',N'F06',N'S03'),
    (N'DS07',N'F07',N'S04'),
    (N'DS08',N'F07',N'S05'),
    (N'DS09',N'F08',N'S06'),
	(N'DS10',N'F08',N'S07'),
	(N'DS11',N'F08',N'S08'),
	(N'DS12',N'F09',N'S07'
);

CREATE TABLE Detail_Award (
    [ID_Detail_Award] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [ID_Film] NVARCHAR(3) NOT NULL FOREIGN KEY REFERENCES Film,
    [ID_Kategori_Award] NVARCHAR(4) FOREIGN KEY REFERENCES Kategori_Award,
);

INSERT INTO Detail_Award VALUES
    (N'DA01',N'F01',N'KA01'),
    (N'DA02',N'F01',N'KA05'),
    (N'DA03',N'F02',N'KA05'),
    (N'DA04',N'F03',N'KA03'),
    (N'DA05',N'F04',N'KA02'),
    (N'DA06',N'F04',N'KA03'),
    (N'DA07',N'F05',N'KA04'),
    (N'DA08',N'F06',N'KA05'),
    (N'DA09',N'F07',N'KA04'),
	(N'DA10',N'F09',N'KA02'
);

CREATE TABLE Detail_Film (
    [ID_Detail_Film] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [ID_Pengguna] NVARCHAR(6) FOREIGN KEY REFERENCES Pengguna,
    [ID_Film] NVARCHAR(3) NOT NULL FOREIGN KEY REFERENCES Film,
);

INSERT INTO Detail_Film VALUES
    (N'DF01',N'User01',N'F04'),
    (N'DF02',N'User01',N'F08'),
    (N'DF03',N'User01',N'F09'),
    (N'DF04',N'User02',N'F09'),
    (N'DF05',N'User02',N'F07'),
    (N'DF06',N'User02',N'F08'),
    (N'DF07',N'User03',N'F02'),
    (N'DF08',N'User03',N'F01'),
    (N'DF09',N'User03',N'F04'),
	(N'DF10',N'User04',N'F05'),
	(N'DF11',N'User04',N'F07'),
	(N'DF12',N'User05',N'F04'),
	(N'DF13',N'User05',N'F02'),
	(N'DF14',N'User06',N'F08'),
	(N'DF15',N'User06',N'F06'),
	(N'DF16',N'User07',N'F08'),
	(N'DF17',N'User07',N'F09'),
	(N'DF18',N'User08',N'F06'),
	(N'DF19',N'User08',N'F05'),
	(N'DF20',N'User09',N'F07'),
	(N'DF21',N'User09',N'F01'),
	(N'DF22',N'User10',N'F07'),
	(N'DF23',N'User10',N'F08'),
	(N'DF24',N'User11',N'F01'),
	(N'DF25',N'User11',N'F05'),
	(N'DF26',N'User12',N'F02'),
	(N'DF27',N'User12',N'F05'),
	(N'DF28',N'User13',N'F09'),
	(N'DF29',N'User14',N'F04'),
	(N'DF30',N'User14',N'F08'),
	(N'DF31',N'User15',N'F02'),
	(N'DF32',N'User15',N'F04'
);


#2 Menampilkan, tanpa pengulangan, judul-judul film yang ditonton oleh pengguna dengan paket berbayar.

SELECT DISTINCT Film.[Judul_Film]
FROM Film
INNER JOIN  Detail_Film
ON Film.[ID_Film] = Detail_Film.[ID_Film]
INNER JOIN Pengguna
ON Detail_Film.[ID_Pengguna] = Pengguna.[ID_Pengguna]
WHERE [Paket] = N'Berbayar'
;

#3 Menampilkan data film yang dirilis dibawah tahun 2010 dengan rating R.

SELECT *
FROM Film
WHERE [Tahun_Rilis] < 2010
AND [Rating] = N'R'
;

#4 Menampilkan data pemeran yang memiliki peran dalam lebih dari satu film beserta dengan judul filmnya.

SELECT Pemeran.* , Film.Judul_Film
FROM Peran 
INNER JOIN Pemeran
ON Pemeran.ID_Pemeran = Peran.ID_Pemeran
INNER JOIN Film
ON Peran.ID_Film = Film.ID_Film
WHERE EXISTS(
	SELECT ID_Pemeran
	FROM Peran
	INNER JOIN Film
	ON Peran.ID_Film = Film.ID_Film
	WHERE Pemeran.ID_Pemeran = Peran.ID_Pemeran
	GROUP BY ID_Pemeran
	HAVING COUNT(Peran.ID_Pemeran) > 1)
;

#5 Menampilkan seluruh data sutradara dengan jumlah award terbanyak.

SELECT Sutradara.*
FROM Sutradara
INNER JOIN Detail_Sutradara
ON Detail_Sutradara.ID_Sutradara = Sutradara.ID_Sutradara
INNER JOIN Film
ON Film.ID_Film = Detail_Sutradara.ID_Film
INNER JOIN Detail_Award
ON Detail_Award.ID_Film = Film.ID_Film
GROUP BY Sutradara.ID_Sutradara, Sutradara.Nama_Sutradara, Sutradara.Jenis_Kelamin, Sutradara.Tahun_Debut
HAVING COUNT(Detail_Award.ID_Film)=(
	SELECT MAX(Terbanyak) Jumlah_Award
	FROM (SELECT COUNT(Detail_Award.ID_Film) AS Terbanyak
    FROM Sutradara 
	INNER JOIN Detail_Sutradara
	ON Detail_Sutradara.ID_Sutradara=Sutradara.ID_Sutradara
	INNER JOIN Film
	ON Film.ID_Film = Detail_Sutradara.ID_Film
	INNER JOIN Detail_Award
	ON Detail_Award.ID_Film=Film.ID_Film
	WHERE Sutradara.ID_Sutradara = Detail_Sutradara.ID_Sutradara
	GROUP BY Sutradara.ID_Sutradara)z
);

#6 Menampilkan data pengguna yang menonton film pemenang award dengan kategori Best Picture

SELECT DISTINCT Pengguna.*
FROM Pengguna
INNER JOIN Detail_Film
ON Pengguna.[ID_Pengguna] = Detail_Film.[ID_Pengguna]
INNER JOIN Film
ON Detail_Film.[ID_Film] = Film.[ID_Film]
INNER JOIN Detail_Award
ON Film.[ID_Film] = Detail_Award.[ID_Film]
WHERE ID_Kategori_Award = N'KA05'
;

#7 Menampilkan data genre film diurutkan dari yang paling banyak ditonton oleh pengguna.

SELECT Film.[Genre], COUNT(Detail_Film.[ID_Film]) AS [Jumlah_Ditonton]
FROM Film
INNER JOIN Detail_Film
ON Detail_Film.[ID_Film] = Film.[ID_Film]
GROUP BY Film.[Genre]
ORDER BY COUNT(Detail_Film.[ID_Film]) DESC
;

#8  Menampilkan data film yang ditonton oleh pengguna yang bergabung pada tahun 2017.

SELECT DISTINCT Film.*
FROM Film
INNER JOIN Detail_Film
ON Film.[ID_Film] = Detail_Film.[ID_Film]
INNER JOIN Pengguna
ON Detail_Film.[ID_Pengguna] = Pengguna.[ID_Pengguna]
WHERE Tanggal_Bergabung LIKE '2017%'
;

#9  Menampilkan nama pengguna, paket, dan lama pengguna bergabung (dalam bulan) dengan Nutfleex yang memiliki lama pengguna bergabung (dalam bulan) lebih dari rata-rata

SELECT Pengguna.[Nama_Pengguna], Pengguna.[Paket], DATEDIFF(MONTH, Pengguna.[Tanggal_Bergabung],'2020-12-30') AS [Lama_Bergabung (bulan)]
FROM Pengguna 
GROUP BY Pengguna.[Nama_Pengguna], Pengguna.[Paket], Pengguna.[Tanggal_Bergabung]
	HAVING DATEDIFF(MONTH, Pengguna.[Tanggal_Bergabung],'2020-12-30') >
	(SELECT AVG(DATEDIFF(MONTH, Pengguna.[Tanggal_Bergabung],'2020-12-30'))
	FROM Pengguna)
;

#10 Menampilkan data production house beserta jumlah film dan jumlah award dari film yang diproduksinya.

SELECT Production_Company.[Nama_Production_Company], COUNT(DISTINCT Film.[ID_Film]) AS Jumlah_Film, COUNT(Film.[ID_Award]) AS Jumlah_Award
FROM Production_Company
INNER JOIN Film
ON Production_Company.[ID_Production_Company] = Film.[ID_Production_Company]
LEFT OUTER JOIN Award
ON Film.[ID_Award] = Award.[ID_Award]
GROUP BY Production_Company.[Nama_Production_Company]
;

#11 Menampilkan data pemeran yang berperan pada film yang diproduksi oleh Universal Picture.

SELECT Pemeran.*
FROM Pemeran 
INNER JOIN Peran
ON Peran.[ID_Pemeran] = Pemeran.[ID_Pemeran]
INNER JOIN Film
ON Film.[ID_Film] = Peran.[ID_Film]
INNER JOIN Production_Company
ON Film.[ID_Production_Company] = Production_Company.[ID_Production_Company]
WHERE Production_Company.[ID_Production_Company] = 'PH05'
;

#12
#a. Menampilkan data pengguna yang tidak membayar biaya langganan

SELECT *
FROM Pengguna
WHERE Paket = N'Gratis'
;

#b. Menampilkan data pemeran yang bermain di film pemenang penghargaan Oscars

SELECT Pemeran.*
FROM Pemeran
INNER JOIN Peran
ON Pemeran.[ID_Pemeran] = Peran.[ID_Pemeran]
INNER JOIN Film
ON Peran.[ID_Film] = Film.[ID_Film]
WHERE Film.[ID_Award] = N'A01'
;

#c. Menampilkan judul film yang belum diberikan rating

SELECT [Judul_Film] AS [Film_Yang_Belum_Dirating]
FROM Film
WHERE Rating IS NULL
;

#d. Menampilkan ID dari sutradara yang menghasilkan lebih dari satu film

SELECT ID_Sutradara, COUNT(ID_Sutradara) AS [Jumlah_Film]
FROM Detail_Sutradara
GROUP BY ID_Sutradara
HAVING  COUNT(ID_Sutradara) > 1
;

#e. Menampilkan nama pengguna beserta paket dan tanggal bergabungnya, dari pengguna yang bergabung mulai tahun 2018 dan diurutkan berdasarkan yang paling awal bergabung 

SELECT Nama_Pengguna, ID_Pengguna, Tanggal_Bergabung, Paket
FROM Pengguna
WHERE Tanggal_Bergabung > '2018-01-01'
ORDER BY Tanggal_Bergabung
;

#f. Menampilkan judul film yang diproduksi oleh Warner Bros

SELECT Film.[Judul_Film], Film.[ID_Film], Production_Company.[Nama_Production_Company]
FROM Film
INNER JOIN Production_Company
ON Film.[ID_Production_Company] = Production_Company.[ID_Production_Company]
WHERE [Nama_PRoduction_Company]= 'Warner Bros'
;

#g. Menampilkan judul beserta tahun rilis film yang keluar sejak tahun 2010

SELECT Judul_Film AS Nama_Film, Tahun_Rilis AS Rilis_2000
FROM Film
WHERE Tahun_Rilis >= 2010
;

#h. Menampilkan semua data yang ada

SELECT*FROM Pengguna;
SELECT*FROM Production_Company;
SELECT*FROM Kategori_Award;
SELECT*FROM Pemeran;
SELECT*FROM Award;
SELECT*FROM Film;
SELECT*FROM Sutradara;
SELECT*FROM Peran;
SELECT*FROM Detail_Sutradara;
SELECT*FROM Detail_Award;
SELECT*FROM Detail_Film;

#13 Menambahkan kolom jumlah penonton pada tabel film dan menampilkan tabel film.

ALTER TABLE Film
ADD Jumlah_Penonton INT;

UPDATE Film SET
[Jumlah_Penonton] = jumlahpenonton
FROM Film
INNER JOIN (SELECT ID_Film, count(ID_Film) AS jumlahpenonton
FROM Detail_Film
GROUP BY ID_Film)a
ON Film.ID_Film = a.ID_Film;

SELECT *
FROM Film
;
