create database praktikum4;
use praktikum4;
create table Pegawai (
  id_pegawai varchar(5) primary key,
  nama_depan varchar(50),
  nama_belakang varchar(50),
  email varchar(100),
  telepon varchar(20),
  tgl_kontrak DATE,
  id_job varchar(5),
  gaji int,
  tunjangan int
);

insert into Pegawai (id_pegawai, nama_depan, nama_belakang, email, telepon, tgl_kontrak, id_job, gaji, tunjangan)
values	('E001', 'Ferry', 'Gustiawan', 'ferry@yahoo.com', '07117059004', '2005-09-01', 'L0001', 2000000, 500000),
		('E002', 'Aris', 'Ganiardi', 'aris@yahoo.com', '081312345678', '2006-09-01', 'L0002', 2000000, 200000),
		('E003', 'Faiz', 'Ahnad', 'faiz@gmail.com', '081367384322', '2006-10-01', 'L0003', 1500000, null),
		('E004', 'Emna', 'Bunton', 'emna@gmail.com', '081363484342', '2006-10-01', 'L0004', 1500000, 9),
		('E005', 'Mike', 'Scoff', 'mike@plasa.com', '08163454555', '2007-09-01', 'L0005', 1250000, 9),
		('E006', 'Lincoln', 'Burrows', 'linc@yahoo.com', '08527388432', '2008-09-01', 'L0006', 1750000, null);
select * from Pegawai;

select * from Pegawai where gaji not in (2000000, 1250000);

select * from Pegawai where tunjangan is null;

select * from Pegawai where tunjangan is not null;

select COUNT(*) as jumlah_pegawai from Pegawai;

select SUM(gaji) as total_gaji from Pegawai;

select avg(gaji) as rata_rata_gaji from Pegawai;

select MIN(gaji) as gaji_terkecil from Pegawai;

select MAX(gaji) as gaji_terbesar from Pegawai;

create table Animals (
  id varchar(2),
  name varchar(20),
  owner varchar(20),
  species varchar(20),
  sex char(1)
);

insert into Animals (id, name, owner, species, sex)
values ('p1', 'Puffball', 'Diane', 'Hamster', 'F'),
       ('p2', 'Claws', 'Gwen', 'Cat', 'M'),
       ('p3', 'Fluffy', 'Haro 1d', 'Cat', 'F'),
       ('p4', 'Buffy', 'Haro 1d', 'Dog', 'F'),
       ('p5', 'Fang', 'Benny', 'Dog', 'M'),
       ('p6', 'Bowser', 'Diane', 'Dog', 'M'),
       ('p7', 'Chirpy', 'Gwen', 'Bird', 'F'),
       ('p8', 'Whistler', 'Gwen', 'Bird', null),
       ('p9', 'Slim', 'Benny', 'Snake', 'M');
select * from Animals;

select owner, COUNT(*) as  jumlah_hewan from Animals group by owner;

select species, COUNT(*) as jumlah_hewan from Animals group by species;

select sex, COUNT(*) as jumlah_hewan from Animals group by sex;

select species, sex, COUNT(*) as jumlah_hewan from Animals group by species, sex;

select species, sex, COUNT(*) as jumlah_hewan from Animals where species in ('Cat', 'Dog') group by species, sex;

select sex, COUNT(*) as jumlah_hewan from Animals where sex is not null group by sex;
