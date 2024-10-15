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



-- Mengurutkan nilai dari Field/kolom Nm_Penerbit

SELECT * FROM tb_penerbit ORDER BY Nm_Penerbit Asc;
SELECT * FROM tb_penerbit ORDER BY Nm_Penerbit DESC;

-- End Mengurutkan nilai dari Field/kolom Nm_Penerbit



-- Mencari nilai dari field/kolom tertentu

SELECT COUNT(*) FROM tb_penerbit GROUP BY Alamat_Penerbit;

-- END Mencari nilai dari field/kolom tertentu



-- Menghitung nilai dari field/kolom tertentu

SELECT Alamat_Penerbit, COUNT(*) AS "Jumlah_Penerbit" FROM tb_penerbit GROUP BY Alamat_Penerbit;

-- Menghitung nilai dari field/kolom tertentu
