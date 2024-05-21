-- NAMA	: ADMIRA SABTATIL YADAINI
-- NIM	: 22241073
-- MODUL 2

-- Menggunakan Data Base
use undikma_mart;

-- Nilai Literal Angka
SELECT 77;
SELECT 77 as Angka;

-- Menampilkan beberapa nilai literal dengan nilai data berbeda
SELECT 77 as Angka,
True as Nilai_Logika,
'UNDIKMA' as Teks;

-- NULL
-- Menampilkan NULL
SELECT NULL as Kosong;

-- OPERATOR MATEMATIKA
-- Kalkulasi ekspresi matematika
SELECT 5%2 AS Sisa_Bagi,
5/2 as Hasil_Bagi,
5 DIV 2 as Hasil_Bagi_2;

-- Latihan Mandiri 1
SELECT 4*2 as Hasil_Perkalian,
(4*8)%7 Hasil_Perkalian_Sisa_Bagi,
(4*8) MOD 7;

-- SELECT * FROM tr_penjualan_dqlab;
SELECT qty*harga as total_belanja FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN
-- Melakukan Operator Perbandingan
SELECT 5 = 5, 5 <> 5, 5 <> 4,  5 != 5, 5 != 4, 5 > 4;

-- Latihan Mandiri 2
SELECT 1 = 1, 1 = 2, 5 >= 5, 5.2 = 5.20000, NULL = 1, NULL = NULL;

-- FUNGSI
SELECT pow(3,2),
round(3.14), round(3.54), round(3.155, 1), round(3.155, 2), floor(4.28), floor(4.78), ceiling(4.39), ceiling(4.55);

SELECT now(), year(now()),
datediff(now(), '2003-09-13'), day('2003-09-13');

-- Latihan Mandiri 3
SELECT datediff('2022-07-23', now()),
year('2022-07-23'),
month('2022-07-23'),
day('2022-07-23'),
year(now());
-- selisih hari antara tgl penjualan terakhir dengan hari ini didalam tr_penjualan
SELECT datediff(now(), tgl_transaksi) FROM tr_penjualan_dqlab;

-- Filtering with WHERE
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE qty > 3;

