--updatable--
CREATE VIEW up_supplier AS
SELECT * FROM supplier;

UPDATE up_supplier
SET No_Telp_Supplier = '087788990011'
WHERE Id_Supplier = 1;

CREATE VIEW up_dokter AS
SELECT * FROM supplier;

INSERT INTO up_dokter (Id_Dokter, Nama_Dokter, Spesialisasi, No_Telp_Dokter, Rumah_Sakit) 
VALUES (21, 'Dr. Dina Kusuma', 'Anestesiologi', '081234567891', 'RS Amanah');


--readonly--
CREATE VIEW detailresep AS 
SELECT Id_Resep, Nama_Pelanggan ,Nama_Dokter, o.Nama_Obat, Tgl_Resep
FROM resep p
JOIN dokter d ON p.Id_Dokter = d.Id_Dokter
JOIN pelanggan pl ON p.Id_Pelanggan = pl.Id_Pelanggan
JOIN obat o ON p.Id_Obat = o.Id_Obat;

SELECT * FROM detailresep;


CREATE VIEW detailpenjualan AS
SELECT pj.Id_Penjualan, pj.Tgl_Penjualan, pl.Nama_Pelanggan, ob.Nama_Obat, ob.Harga_Obat, pj.Total_Harga, pj.Nominal_Pembayaran, pj.Kembalian
FROM Penjualan pj
JOIN Pelanggan pl ON pj.Id_Pelanggan = pl.Id_Pelanggan
JOIN Laporan_Penjualan lp ON pj.Id_Penjualan = lp.Id_Penjualan
JOIN Obat ob ON lp.Id_Obat = ob.Id_Obat;

SELECT * FROM detailpenjualan;