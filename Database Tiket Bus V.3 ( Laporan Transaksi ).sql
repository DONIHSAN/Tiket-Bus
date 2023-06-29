use TiketBus;

-- Menggabungkan tabel JadwalBerangkat, Armada, dan Penumpang berdasarkan Transaksi

-- JOIN

select transaksi.idTransaksi as "ID Transaksi", jadwal_berangkat.Tgl_Keberangkatan as "Tanggal Keberangkatan", jadwal_berangkat.Jam_Keberangkatan as "Jam Berangkat",
		armada.NamaArmada as "Nama Armada", penumpang.NamaPenumpang as "Nama Penumpang", penumpang.Posisi_Tempat_Duduk as "Tempat Duduk", transaksi.Harga as "Harga"

from transaksi join jadwal_berangkat on transaksi.idJadwal=jadwal_berangkat.idJadwal
			   join armada on transaksi.idArmada=armada.idArmada
               join penumpang on transaksi.idPenumpang=penumpang.idPenumpang;
               
-- LEFT JOIN

SELECT transaksi.idTransaksi as " ID Transaksi", armada.NamaArmada as " Nama Armada", transaksi.Harga as " Harga", 
penumpang.NamaPenumpang as " Nama Penumpang", transaksi.TanggalBeli as " Tanggal Beli"

from transaksi LEFT JOIN armada on transaksi.idArmada=armada.idArmada
			   LEFT JOIN penumpang on transaksi.idPenumpang=penumpang.idPenumpang;
               
-- RIGHT JOIN

SELECT transaksi.idTransaksi as " ID Transaksi", transaksi.Harga as " Harga", armada.NamaArmada as " Nama Armada ", jadwal_berangkat.Tgl_Keberangkatan as " Tanggal Keberangkatan"

from transaksi RIGHT JOIN armada on transaksi.idArmada=armada.idArmada
			   RIGHT JOIN jadwal_berangkat on transaksi.idJadwal=jadwal_berangkat.idJadwal;

