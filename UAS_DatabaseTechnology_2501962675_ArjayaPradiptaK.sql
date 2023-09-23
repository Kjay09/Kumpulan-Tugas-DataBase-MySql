CREATE DATABASE Dealer_Mobil;
USE Dealer_Mobil;


Create Table Tabel_Pembeli (
id_pembeli INT PRIMARY KEY NOT NULL,
nama_pembeli VARCHAR (50) NOT NULL,
alamat_pembeli VARCHAR (100) NOT NULL,
kota VARCHAR (50) NOT NULL,
tgl_lahir DATE NOT NULL,
Usia INT NOT NULL,
no_kontak CHAR (13) NOT NULL,
email VARCHAR (100) NOT NULL,
pekerjaan VARCHAR (100) NOT NULL,
nama_perusahaan VARCHAR (100) NOT NULL,
hobi_1 VARCHAR (100) NULL,
hobi_2 VARCHAR (100) NULL
);


Create TABLE Tabel_Mobil (
id_mobil int PRIMARY KEY,
nama_mobil varchar (128) NOT NULL,
merk varchar (64) NOT NULL,
transmisi varchar (12) NOT NULL,
mesin varchar (12) NOT NULL,
tipe_bahan_bakar varchar (12) NOT NULL,
warna varchar (64) NOT NULL,
tahun_produksi year NOT NULL,
jumlah_pintu int NOT NULL,
kursi int NOT NULL,
kecepatan_km_per_jam int NOT NULL,
harga_jual int NOT NULL,
stok int NULL,
status varchar (32) NOT NULL
);


CREATE TABLE Tabel_Transaksi(
id_transaksi int PRIMARY KEY, id_pembeli int, id_mobil int,
tgl_transaksi date NOT NULL,
jumlah_pembelian int NOT NULL,
total_harga int NOT NULL,
jenis_pembayaran varchar (16) NOT NULL,
waktu_cicilan_bulan int NULL,
uang_muka int NULL,
status_pembayaran varchar (32) NOT NULL,
waktu_garansi_tahun int NOT NULL,
tgl_garansi date NOT NULL,
FOREIGN KEY (id_pembeli) REFERENCES Tabel_Pembeli(id_pembeli),
FOREIGN KEY (id_mobil) REFERENCES Tabel_Mobil(id_mobil)
);

INSERT INTO Tabel_pembeli VALUES (
15060001,
'Asep Maulana',
'jln. Belitung, no.53',
'Bandung',
'1985-03-15',
 37,
'08382256373',
'asep@gmail.com',
'Akuntan',
'PT. Langit Biru',
 'Memasak',
 null
);
INSERT INTO Tabel_pembeli VALUES (
17060002,
'Vina Muliani',
'jln. Sukaluyu, no.15',
'Bandung',
'1990-06-05',
 32,
'08572891239',
'vina@gmail.com',
'Administrator',
'PT. Indah Nusantara',
 'Sepeda',
 'Membaca Novel'
);
INSERT INTO Tabel_pembeli VALUES (
17060003,
'Deri Sanusi',
'jln. Kalidam, no.25',
'Cimahi',
'1992-05-23',
 30,
'08572746511',
'deri@gmail.com',
'IT Support',
'CV. Sepatuku',
 null,
 null
);
INSERT INTO Tabel_pembeli VALUES (
17060004,
'Sri Muliani',
'jln. Kalibanteng, no.105',
'Bandung',
'1970-07-05',
 52,
'08182451114',
'mulianisri@gmail.com',
'Akuntan',
'PT. Indonesia Raya',
 'Membaca Buku',
 'Bermain Golf'
);
INSERT INTO Tabel_pembeli VALUES (
17060005,
'Arjaya Pradipta K',
'Taman Kopo Indah 2 A9 No 9',
'Bandung',
'2003-02-09',
 20,
'085111999888',
'jaydipta@gmail.com',
'Pengusaha',
'PT. Angkers Jaya Abadi',
 'Bersepeda',
 'Hiking'
);
INSERT INTO Tabel_pembeli VALUES (
17060006,
'Harini',
'jln. Stasiun, no.250',
'Semarang',
'1999-09-09',
 23,
'08513097887',
'inihari@gmail.com',
'Konten Kreator',
'Youtube',
 'Bermain Game',
 'Membaca Novel'
);
INSERT INTO Tabel_pembeli VALUES (
17060007,
'Vinanta K',
'Jln. Sawah Besar 10/ 103',
'Semarang',
'1971-07-17',
 51,
'085134987567',
'vinanta@gmail.com',
'Ibu Rumah Tangga',
'-',
 'Membaca Novel',
 'Hiking'
);
INSERT INTO Tabel_pembeli VALUES (
17060008,
'I Wayan Dipta',
'Jln. Bali, No. 10',
'Denpasar',
'1977-03-15',
 44,
'085231765145',
'diptawayan@gmail.com',
'Pengusaha Travel',
'PT. Kencana Abadi',
'Traveling',
'Berbelanja'
);
INSERT INTO Tabel_pembeli VALUES (
17060009,
'Kevin',
'Batununggal 2 No 25',
'Bandung',
'1997-02-19',
 25,
'081223655764',
'kevin09@gmail.com',
'Pengusaha Roti',
'CV. Kuy Bakery',
'Bermain Musik',
'Bulu tangkis'
);
INSERT INTO Tabel_pembeli VALUES (
17060010,
'Sanjaya K',
'Mekarwangi 10 A1 No 20',
'Bandung',
'1995-11-19',
 27,
'085111999888',
'ksanjaya@gmail.com',
'Atlet',
'PT. Djarum',
 'Bersepeda',
 'Fotografi'
);
INSERT INTO Tabel_pembeli VALUES (
17060011,
'Vannessa',
'Jln. Sudirman, No. 999',
'Jakarta',
'2002-10-29',
 21,
'081345764879',
'Vannessaa1@gmail.com',
'Mahasiswa',
'Universitas Atmajaya',
 'Traveling',
 'Memasak'
);
INSERT INTO Tabel_pembeli VALUES (
17060012,
'Ferdinand Bryan',
'Kopo Permai ! No. 26',
'Bandung',
'1998-03-19',
 24,
'085100035765',
'ferdibray@gmail.com',
'Pengusaha Jamur',
'CV. Ferdinand Sinergi',
 'Bermain Musik',
 'Hiking'
);
INSERT INTO Tabel_mobil VALUES (
1200101,
'Xpander Cross',
'Mitshubishi',
'Automatic',
'4 Silinder',
 'Bensin',
'White',
'2019',
 5,
 7,
 165,
 31000000,
 5,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200102,
'Xpander Cross',
'Mitshubishi',
'Automatic',
'4 Silinder',
 'Bensin',
'Graphite Grey',
'2019',
 5,
 7,
 165,
 31000000,
 8,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
2190501,
'Brio Satya E',
'Honda',
'Manual',
'4 Silinder',
 'Bensin',
'Crystal Black Pearl',
'2018',
 5,
 5,
 145,
 18800000,
 null,
'Tidak Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
3210801,
'All new fortuner',
'Toyota',
'Automatic',
'4 Silinder',
 'Bensin',
'Phantom Brown',
'2016',
 5,
 7,
 190,
 52000000,
 2,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
4210501,
'All new Terios',
'Daihatsu',
'Manual',
'4 Silinder',
 'Bensin',
'Bronze Metallic',
'2017',
 5,
 7,
 165,
 23000000,
 4,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200502,
'Calya',
'Daihatsu',
'Manual',
'4 Silinder',
'bensin',
'Gun Metal',
'2020',
 5,
 8,
 130,
 13000000,
 3,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200201,
'Ioniq 5',
'Hyundai',
'Automatic',
'-',
'listrik',
'Black Glossy',
'2022',
 4,
 4,
 200,
 78000000,
 10,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200202,
'Santafe',
'Hyundai',
'Automatic',
'4 Silinder',
 'Diesel',
'Hitam',
'2022',
 4,
 6,
 200,
 80000000,
 15,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200203,
'Stargazer',
'Hyundai',
'Automatic',
'4 Silinder',
 'Bensin',
'Hitam',
'2022',
 4,
 7,
 180,
 29000000,
 10,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200802,
'GR Yaris',
'Toyota',
'Manual',
'4 Silinder',
'bensin',
'Black',
'2023',
 2,
 4,
 180,
 85000000,
 1,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200803,
'All New Avanza',
'Toyota',
'Automatic',
'4 Silinder',
'bensin',
'Hitam',
'2022',
4,
8,
165,
30000000,
17,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200110,
'Airev',
'Wuling',
'Automatic',
'-',
'Listrik',
'Biru',
'2022',
 3,
 4,
 120,
 35000000,
 5,
'Tersedia'
);
INSERT INTO Tabel_mobil VALUES (
1200111,
'Almaz',
'Wuling',
'Automatic',
'4 Silinder',
'Diesel',
'Hitam',
'2022',
 5,
 8,
 180,
 80000000,
 null,
'Tidak Tersedia'
);
INSERT INTO Tabel_transaksi VALUES (
211226001,
15060001,
1200101,
'2021-12-26',
1,
31000000,
'tunai',
null,
null,
'lunas',
5,
'2026-12-26'
);
INSERT INTO Tabel_transaksi VALUES (
221005001,
17060003,
1200102,
'2022-10-05',
2,
62000000,
'cicilan',
36,
10000000,
'belum lunas',
5,
'2027-10-05'
);
INSERT INTO Tabel_transaksi VALUES (
221108001,
17060002,
3210801,
'2022-11-08',
1,
52000000,
'tunai',
null,
null,
'lunas',
3,
'2025-11-08'
);
INSERT INTO Tabel_transaksi VALUES (
221005002,
17060004,
1200201,
'2023-01-03',
1,
78000000,
'cicilan',
60,
5000000,
'belum lunas',
5,
'2027-01-03'
);
INSERT INTO Tabel_transaksi VALUES (
221005003,
17060005,
1200202,
'2023-02-09',
1,
80000000,
'tunai',
null,
null,
'lunas',
5,
'2027-02-09'
);
INSERT INTO Tabel_transaksi VALUES (
221005004,
17060006,
2190501,
'2023-03-13',
1,
18800000,
'cicilan',
36,
2500000,
'belum lunas',
5,
'2027-01-03'
);
INSERT INTO Tabel_transaksi VALUES (
221005005,
17060007,
3210801,
'2023-01-21',
1,
52000000,
'cicilan',
60,
50000000,
'belum lunas',
5,
'2027-01-21'
);
INSERT INTO Tabel_transaksi VALUES (
221005006,
17060008,
1200203,
'2023-05-15',
1,
29000000,
'cicilan',
36,
25000000,
'belum lunas',
5,
'2027-05-15'
);
INSERT INTO Tabel_transaksi VALUES (
221005007,
17060009,
1200802,
'2023-02-19',
2,
170000000,
'tunai',
null,
null,
'lunas',
5,
'2027-02-20'
);
INSERT INTO Tabel_transaksi VALUES (
221005008,
17060010,
3210801,
'2023-07-28',
1,
52000000,
'tunai',
null,
null,
'lunas',
5,
'2027-07-28'
);
INSERT INTO Tabel_transaksi VALUES (
221005009,
17060011,
4210501,
'2023-06-19',
1,
23000000,
'cicilan',
60,
20000000,
'belum lunas',
5,
'2027-06-19'
);
INSERT INTO Tabel_transaksi VALUES (
221005010,
17060012,
1200110,
'2022-12-25',
3,
105000000,
'cicilan',
60,
50000000,
'belum lunas',
5,
'2026-12-25'
);
SELECT*FROM tabel_mobil WHERE merk='Hyundai' AND warna= 'Hitam'
OR tahun_produksi >= 2022;
SELECT*FROM tabel_pembeli WHERE kota='Bandung'AND Usia <= 27 OR 
pekerjaan= 'Pengusaha';
SELECT*FROM tabel_mobil WHERE warna NOT LIKE
'%Hit%';
SELECT*FROM tabel_transaksi WHERE jenis_pembayaran NOT LIKE
'%cic%';
SELECT*FROM tabel_mobil WHERE merk LIKE '%Hyun%' AND tahun_produksi IN ('2022');
SELECT*FROM tabel_pembeli WHERE nama_perusahaan LIKE '%PT.%' AND kota IN ('Bandung');
SELECT*FROM tabel_transaksi WHERE NOT status_pembayaran= 'lunas'
OR jenis_pembayaran IN ('cicilan');
SELECT*FROM tabel_mobil WHERE NOT transmisi= 'Manual'
OR merk IN ('Honda, Toyota');

CREATE TABLE Pegawai (
id_pegawai INT PRIMARY KEY NOT NULL,
Nama_pegawai VARCHAR (100) NOT NULL,
Pemberian_pelaporan_kepada varchar (50) NULL
);

INSERT INTO pegawai Values(
1001,
'Ratedjo Putera',
null
);
INSERT INTO pegawai Values(
1002,
'Putri Aviarta',
null
);
INSERT INTO pegawai Values(
1003,
'Doni Romdoni',
1001
);
INSERT INTO pegawai Values(
1004,
'Naufal Rahmani',
1002
);
INSERT INTO pegawai Values(
1005,
'Rahmatan Ganda',
1001
);

SELECT
id_transaksi,
tr.id_pembeli,
p.kota,
p.Usia,
total_harga
FROM tabel_transaksi AS tr
INNER JOIN tabel_pembeli AS p ON tr.id_pembeli = p.id_pembeli;

SELECT
id_transaksi,
tr.id_mobil,
tm.transmisi,
tm.tipe_bahan_bakar,
total_harga
FROM tabel_transaksi AS tr
LEFT JOIN tabel_mobil AS tm ON tr.id_mobil = tm.id_mobil;

SELECT
id_transaksi,
tr.id_mobil,
tp.kota,
tp.alamat_pembeli,
tp.Usia,
tp.email,
total_harga
FROM tabel_transaksi AS tr
RIGHT JOIN tabel_pembeli AS tp ON tr.id_mobil = tp.id_pembeli;

SELECT
tr.id_transaksi,
tm.id_mobil,
tm.Transmisi,
tm.nama_mobil,
tm.warna,
tr.total_harga
FROM tabel_transaksi AS tr
LEFT JOIN tabel_mobil AS tm ON tm.id_mobil = tr.id_mobil
UNION
SELECT
tr.id_transaksi,
tm.id_mobil,
transmisi,
nama_mobil,
warna,
tr.total_harga
FROM tabel_mobil AS tm
RIGHT JOIN tabel_transaksi AS tr ON tr.id_mobil = tm.id_mobil;

SELECT
pg.id_pegawai,
pg.nama_pegawai,
pg.pemberian_pelaporan_kepada,
pgw.nama_pegawai
FROM pegawai as pg LEFT JOIN pegawai as pgw ON
pg.pemberian_pelaporan_kepada = pgw.id_pegawai;

SELECT
tr.id_transaksi,
tr.tgl_transaksi,
tp.nama_pembeli,
tp.kota,
tp.Usia,
tm.nama_mobil,
tm.transmisi,
tr.total_harga,
tr.jenis_pembayaran
FROM tabel_transaksi as tr
JOIN tabel_mobil AS tm ON tr.id_mobil = tm.id_mobil
JOIN tabel_pembeli AS tp ON tr.id_pembeli = tp.id_pembeli
ORDER BY tr.total_harga ASC;

RENAME TABLE tabel_mobil TO list_mobil;
RENAME TABLE list_mobil TO tabel_mobil;

RENAME TABLE tabel_transaksi TO list_transaksi;
RENAME TABLE list_transaksi TO tabel_transaksi;

ALTER TABLE tabel_pembeli MODIFY nama_pembeli VARCHAR
(100);
ALTER TABLE tabel_transaksi MODIFY jenis_pembayaran VARCHAR
(50);

ALTER TABLE tabel_transaksi CHANGE uang_muka Down_Payment INT;
ALTER TABLE tabel_mobil CHANGE kecepatan_km_per_jam kecepatan_KmPerJam INT;

ALTER TABLE tabel_mobil MODIFY nama_mobil varchar (64) AFTER
merk;
ALTER TABLE tabel_transaksi MODIFY total_harga int AFTER
jenis_pembayaran;

ALTER TABLE tabel_mobil ADD tanggal_servis DATE
AFTER stok;
ALTER TABLE tabel_pembeli ADD kendaraan_sebelumnya varchar (50)
AFTER nama_perusahaan;

ALTER TABLE tabel_mobil DROP tanggal_servis;
ALTER TABLE tabel_pembeli DROP kendaraan_sebelumnya;

START TRANSACTION;
UPDATE tabel_mobil SET stok = stok - 1 WHERE id_mobil = '1200202';
UPDATE tabel_transaksi SET jumlah_pembelian = jumlah_pembelian + 1
WHERE id_transaksi = '221005003';
UPDATE tabel_transaksi SET total_harga = total_harga + 80000000*1 WHERE
id_transaksi = '221005003';
COMMIT;
START TRANSACTION;
UPDATE tabel_mobil SET stok = stok - 1 WHERE id_mobil = '1200110';
UPDATE tabel_transaksi SET jumlah_pembelian = jumlah_pembelian + 1
WHERE id_transaksi = '17060012';
UPDATE tabel_transaksi SET total_harga = total_harga + 35000000*1 WHERE
id_transaksi = '221005010';
COMMIT;

ALTER TABLE tabel_mobil ADD INDEX kombinasi_idx(id_mobil, nama_mobil,
merk, harga_jual, stok);
SHOW CREATE TABLE tabel_mobil;
ALTER TABLE tabel_pembeli ADD INDEX kombinasi_idxp(id_pembeli,
nama_pembeli, alamat_pembeli, no_kontak, email);
SHOW CREATE TABLE tabel_pembeli;