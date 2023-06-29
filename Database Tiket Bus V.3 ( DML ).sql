use TiketBus;

insert into penumpang values
(4001, "Ikhsan", "Broadway Street No.1", "0813202301", "A1"),
(4002, "Fiqri", "Fifth Avenue Street No.1", "0813202302", "A2"),
(4003, "Verdy", "Rodeo Drive Street No.1", "0813202303", "A3"),
(4004, "Veronika", "Las Vegas Street No.1", "0813202304", "B1"),
(4005, "Fergiawan",  "Boulevard Street No.1", "0813202305", "B2"),
(4006, "C.Ronaldo", "Times Square Street No.1", "0813202306", "B3"),
(4007, "L.Messi", "Route 66 Street No.1", "0813202307", "C1"),
(4008, "R.Lewandowski", "Michigan Avenue Street No.1", "0813202308", "C2"),
(4009, "K.Mbappe", "Sunset Boulevard Street No.1", "0813202309", "C3"),
(40010, "K.Benzema", "Pennsylvania Street No.1", "0813202310", "D1");

select * from penumpang;

update tiketbus.penumpang
	set penumpang.NamaPenumpang="E.Haaland"
    where idPenumpang=40010;
    
delete from tiketbus.penumpang where idPenumpang=40010;

insert into penumpang values
(40010, "K.Benzema", "Pennsylvania Street No.1", "0813202310", "D1");

insert into armada values
(2001, "Coach USA", "50 seat"),
(2002, "Megabus", "25 seat"),
(2003, "Peter Pan Bus Lines", "50 seat"),
(2004, "Academy Bus", "25 seat"),
(2005, "Martz Trailways", "50 seat"),
(2006, "Indian Trails", "25 seat"),
(2007, "BoltBus", "50 seat"),
(2008, "RedCoach", "25 seat"),
(2009, "Valley Transit Company", "50 seat"),
(20010, "Adirondack Trailways", "25 seat");

select * from armada;

update tiketbus.armada
	set armada.NamaArmada="Greyhound Bus"
    where idArmada=2005;
    
delete from tiketbus.armada where idArmada=20010;

insert into armada values
(20010, "Adirondack Trailways", "25 seat");

insert into jadwal_berangkat values
(3001, 2001, "2023-03-03", "08:00:00"),
(3002, 2002, "2023-03-04", "08:10:00"),
(3003, 2003, "2023-03-05", "08:20:00"),
(3004, 2004, "2023-03-06", "08:30:00"),
(3005, 2005, "2023-03-07", "08:40:00"),
(3006, 2006, "2023-03-08", "08:50:00"),
(3007, 2007, "2023-03-09", "09:00:00"),
(3008, 2008, "2023-03-10", "09:10:00"),
(3009, 2009, "2023-03-11", "09:20:00"),
(30010, 20010, "2023-03-12", "09:30:00");

select * from jadwal_berangkat;

update tiketbus.jadwal_berangkat
	set jadwal_berangkat.Tgl_Keberangkatan="2024-04-04"
    where idJadwal=30010;
    
delete from tiketbus.jadwal_berangkat where idJadwal=30010;

insert into transaksi values
(5001, 2001, 3001, 4001, 500000, "2023-03-03"),
(5002, 2002, 3002, 4002, 1000000, "2023-03-04"),
(5003, 2003, 3003, 4003, 500000, "2023-03-05"),
(5004, 2004, 3004, 4004, 1000000, "2023-03-06"),
(5005, 2005, 3005, 4005, 500000, "2023-03-07"),
(5006, 2006, 3006, 4006, 1000000, "2023-03-08"),
(5007, 2007, 3007, 4007, 500000, "2023-03-09"),
(5008, 2008, 3008, 4008, 1000000, "2023-03-10"),
(5009, 2009, 3009, 4009, 500000, "2023-03-11");

select * from transaksi;

update tiketbus.transaksi
	set transaksi.TanggalBeli="2024-04-04"
    where idTransaksi=5009;
    
delete from tiketbus.transaksi where idTransaksi=5009;