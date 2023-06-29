create database TiketBus;
use TiketBus;

create table Armada (
idArmada int not null primary key,
NamaArmada varchar(25),
Kapasitas varchar(10)
);

desc Armada;

create table Jadwal_Berangkat (
idJadwal int not null primary key,
idArmada int not null,
Tgl_Keberangkatan date,
Jam_Keberangkatan time,
constraint FK_id_Armada foreign key (idArmada) references Armada(idArmada)
);

desc Jadwal_Berangkat;

create table Penumpang (
idPenumpang int not null primary key,
NamaPenumpang varchar(15),
Alamat varchar(35),
NoTelepon varchar(15),
Posisi_Tempat_Duduk varchar(5)
);

desc Penumpang;

create table Transaksi (
idTransaksi int not null primary key,
idArmada int not null,
idJadwal int not null,
idPenumpang int not null,
Harga bigint,
TanggalBeli date,
constraint FK_idArmada foreign key (idArmada) references Armada(idArmada),
constraint FK_id_Jadwal foreign key (idJadwal) references Jadwal_Berangkat(idJadwal),
constraint FK_id_Penumpang foreign key (idPenumpang) references Penumpang(idPenumpang)
);

desc Transaksi;