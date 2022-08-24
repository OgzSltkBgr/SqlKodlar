create table bizimGrup1(
isimler varchar(20),
soyisim varchar(20),
yas int,
memleket varchar (15),
adres varchar(50)
);
select * from bizimGrup1;
insert into bizimGrup1 values('Cihad','Atinc',34,'Izmir','Urla');
insert into bizimGrup1 values('Oguz','Toklucu',31,'Izmir','Karsiyaka');
insert into bizimGrup1 values('Cuneyt','Soylu',30,'Adana','Merkez');

delete from bizimgrup1 where yas=31;

create table iller
as
select isimler,yas from bizimGrup1;

select * from iller;

begin;
insert into bizimGrup1 values('Cuneyt','Soylu',30,'Adana','Merkez');
savepoint x;
insert into bizimGrup1 values('Oguz','Toklucu',31,'Izmir','Karsiyaka');
rollback to x;
select * from bizimGrup1;
commit;
