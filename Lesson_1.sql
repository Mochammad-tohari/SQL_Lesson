-- Membuat Database

CREATE Database db_latihan_Perpus

-- End Membuat Database



-- Menggunakan  Database

USE Database db_latihan_Perpus

-- End Menggunakan  Database




-- Membuat TABLE

CREATE TABLE Penerbit (
    Id_Penerbit INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nm_Penerbit VARCHAR(255),
    Alamat TEXT,
    No_Telp VARCHAR(255),
    Email VARCHAR(255)
);

-- End Membuat TABLE


INSERT INTO mahasiswa (Nama_Mahasiswa, Kontak, Alamat, Tanggal_Lahir, KRS)
VALUES
("Mochammad Tohari","0812345","Uber","2000-12-01",1);



-- Mengurutkan nilai dari Field/kolom Nm_Penerbit

SELECT * FROM tb_penerbit ORDER BY Nm_Penerbit Asc;
SELECT * FROM tb_penerbit ORDER BY Nm_Penerbit DESC;

-- End Mengurutkan nilai dari Field/kolom Nm_Penerbit



-- Mencari nilai dari field/kolom tertentu

SELECT COUNT(*) FROM tb_penerbit GROUP BY Alamat_Penerbit;

-- END Mencari nilai dari field/kolom tertentu



-- Menghitung nilai dari field/kolom tertentu

SELECT Alamat_Penerbit, COUNT(*) AS "Jumlah_Penerbit" FROM tb_penerbit GROUP BY Alamat_Penerbit;

-- End Menghitung nilai dari field/kolom tertentu


-- Left Join

SELECT buku.Id_Buku, penerbit.Nm_Penerbit, genre.Nama_Genre, penulis.Nama_Penulis, buku.Tanggal_Sewa
FROM tb_buku as buku
LEFT JOIN tb_penerbit as penerbit ON buku.Penerbit = penerbit.Id_Penerbit
LEFT JOIN tb_genre as genre ON buku.Genre = genre.Id_Genre
LEFT JOIN tb_penulis as penulis ON buku.Penulis = penulis.Id_Penulis

SELECT mahasiswa.Nama_Mahasiswa, matkul.Nama_Matkul
FROM mahasiswa
LEFT JOIN matkul ON mahasiswa.Id_Mahasiswa = matkul.Id_Matkul
ORDER BY mahasiswa.Nama_Mahasiswa;

-- Dengan Inisiasi AS "penerbit.Nm_Penerbit AS nama_penerbit"
SELECT buku.Id_Buku, penerbit.Nm_Penerbit AS nama_penerbit, genre.Nama_Genre AS nama_genre, penulis.Nama_Penulis AS nama_penulis, buku.Tanggal_Sewa
FROM tb_buku as buku
LEFT JOIN tb_penerbit as penerbit ON buku.Penerbit = penerbit.Id_Penerbit
LEFT JOIN tb_genre as genre ON buku.Genre = genre.Id_Genre
LEFT JOIN tb_penulis as penulis ON buku.Penulis = penulis.Id_Penulis;

-- End Left Join

-- Mengubah Nama Table

ALTER TABLE tb_genre 
RENAME TO 
tb_genre_buku;

-- End Mengubah Nama Table


-- Mengubah Nama Kolom

ALTER TABLE tb_genre_buku
CHANGE 
Nama_Genre Nama_Category varchar(255);

-- End Mengubah Nama Kolom


-- Menambah Kolom Table

ALTER TABLE tb_genre_buku
ADD
sub_category varchar(255);

-- End Menambah Kolom Table


-- Menghapus Kolom Table

ALTER TABLE tb_genre_buku
DROP COLUMN sub_category;

-- End Menghapus Kolom Table

-- Mengubah Nilai suatu baris data dari Romance -> Romansa

UPDATE tb_genre_buku 
SET Nama_Category = "Romansa"
WHERE ID_Genre = 3;

-- End Mengubah Nilai suatu baris data dari Romance -> Romansa