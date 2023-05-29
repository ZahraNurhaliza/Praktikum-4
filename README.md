# Praktikum-4

## Tugas Praktikum
Buat Table pegawai dan isi datanya seperti berikut:
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai.png)

```python
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
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai1.png)

1. Tampilkan pegawai yang gajinya bukan 2.000.000 dan 1.250.000 !
```python
select * from Pegawai where gaji not in (2000000, 1250000);
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai2.png)

2. Tampilkan pegawai yang tunjangannya NULL!
```python
select * from Pegawai where tunjangan is null;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai3.png)

3. Tampilkan pegawai yang tunjangannya tidak NULL!
```python
select * from Pegawai where tunjangan is not null;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai4.png)

4. Tampilkan/hitung jumlah baris/record tabel pegawai!
```python
select COUNT(*) as jumlah_pegawai from Pegawai;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai5.png)

5. Tampilkan/hitung jumlah total gaji di tabel pegawai!
```python
select SUM(gaji) as total_gaji from Pegawai;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai6.png)

6. Tampilkan/hitung rata-rata gaji pegawai!
```python
select avg(gaji) as rata_rata_gaji from Pegawai;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai7.png)

7. Tampilkan gaji terkecil!
```python
select MIN(gaji) as gaji_terkecil from Pegawai;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai8.png)

8. Tampilkan gaji terbesar!
```python
select MAX(gaji) as gaji_terbesar from Pegawai;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Pegawai9.png)


## Tugas Praktikum
Buat table hewan dan isi datanya seperti berikut:
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals.png)

```python
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
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals1.png)

1. Tampilkan jumlah hewan yang dimiliki setiap owner.
```python
select owner, COUNT(*) as  jumlah_hewan from Animals group by owner;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals2.png)

2. Tampilkan jumlah hewan berdasarkan spesies
```python
select species, COUNT(*) as jumlah_hewan from Animals group by species;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals3.png)

3. Tampilkan jumlah hewan berdasarkan jenis kelamin
```python
select sex, COUNT(*) as jumlah_hewan from Animals group by sex;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals4.png)

4. Tampilkan jumlah hewan berdasarkan spesies dan jenis kelamin
```python
select species, sex, COUNT(*) as jumlah_hewan from Animals group by species, sex;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals5.png)

5. Tampilkan jumlah hewan berdasarkan spesis (cat dan dog saja) dan jenis kelamin
```python
select species, sex, COUNT(*) as jumlah_hewan from Animals where species in ('Cat', 'Dog') group by species, sex;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals6.png)

6. Tampilkan jumlah hewan berdasarkan jenis kelamin yang diketahui saja
```python
select sex, COUNT(*) as jumlah_hewan from Animals where sex is not null group by sex;
```
![image](https://github.com/ZahraNurhaliza/Praktikum-4/blob/main/screenshot/Animals7.png)


## Kesimpulan
Terdapat beberapa Query Filter yang ditemukan pada tugas praktikum 4 :

• Operator IN digunakan untuk memfilter data yang terdapat pada list IN
• Operator NOT IN digunakan untuk memfilter data yang tidak terdapat pada list IN
• Operator IS NULL digunakan untuk menampilkan data dengan nilai data NULL
• Operator IS NOT NULL digunakan untuk menampilkan data dengan nilai data tidak NULL
• COUNT adalah perintah yang digunakan untuk menghitung jumlah baris suatu kolom pada tabel.
• SUM adalah perintah yang digunakan untuk menghitung jumlah nilai suatu kolom pada tabel.
• AVG adalah perintah yang digunakan untuk menghitung rata-rata dari nilai suatu kolom pada tabel.
• MIN adalah perintah yang digunakan untuk menampilkan nilai terkecil dari suatu kolom pada tabel.
• MAX adalah perintah yang digunakan untuk menampilkan nilai terbesar dari suatu kolom pada tabel.
• Klausa GROUP BY berfungsi untuk mengelompokkan data berdasarkan field tertentu.
