DROP DATABASE IF EXISTS issoumann;

CREATE DATABASE IF NOT EXISTS issoumann;

use issoumann;

create table Utilisateur(
	id int,
	nom varchar(25),
	prenom varchar(30),
	email varchar(50),
	mdp varchar(15),
	primary key(id)
);

create table Instrument(
	idInstru int,
	nomInstru varchar(10),
	primary key(idInstru)
);

create table Marque(
	idMarque int,
	nomMarque varchar(25),
	primary key(idMarque)
);

create table Acoustique(
	refProduit int,
	modele varchar(50),
	libelle varchar(50),
	pu float(5,2),
	qte int,
	boisManche varchar(15),
	boisCaisse varchar(15),
	idMarque int,
	idInstru int,
	primary key(refProduit),
	foreign key(idMarque) references Marque(idMarque),
	foreign key(idInstru) references Instrument(idInstru)
);

create table Electrique(
	refProduit int,
	modele varchar(50),
	libelle varchar(50),
	pu float(5,2),
	qte int,
	boisManche varchar(15),
	micro varchar(15),
	idMarque int,
	idInstru int,
	primary key(refProduit),
	foreign key(idMarque) references Marque(idMarque),
	foreign key(idInstru) references Instrument(idInstru)
);

insert into Utilisateur values(1, 'GEOFFRON', 'Thomas', 'thomas.geoffron.sio@gmail.com', 'azerty');
insert into Utilisateur values(2, 'SCALLON', 'Rob', 'rob@laurachernikoff.com', 'azerty');

insert into Marque values(1, 'Gibson');
insert into Marque values(2, 'Fender');
insert into Marque values(3, 'Yamaha');
insert into Marque values(4, 'Ibanez');
insert into Marque values(5, 'Harley Benton');
insert into Marque values(6, 'Epiphone');
insert into Marque values(7, 'Chapman Guitars');


insert into Instrument values(1, 'Guitare');
insert into Instrument values(2, 'Basse');


insert into Acoustique values(10, 'Folk', 'Parlor Rosewood AG', 2255, 40, 'Acajou', 'Épicéa et palissandre', 1, 1);
insert into Acoustique values(18, 'Folk', 'L-00 Studio WB', 1545, 16, 'Acajou', 'Épicéa et noyer', 1, 1);
insert into Acoustique values(20, 'Folk', 'CC-60SCE Nat', 235, 81, 'Acajou', 'Épicéa et acajou', 2, 1);
insert into Acoustique values(22, 'Folk', 'PM-TE', 469, 45, 'Acajou', 'Acajou', 2, 1);
insert into Acoustique values(25, 'Folk', 'CT-60s', 175, 98, 'Acajou', 'Épicéa et acajou', 2, 1);
insert into Acoustique values(50, 'Folk', 'CG-45 NS', 63, 56, 'Acajou', 'Acajou', 5, 1);
insert into Acoustique values(56, 'Folk', 'CLA-28VE WN', 298, 68, 'Acajou', 'Épicéea et noyer', 5, 1);
insert into Acoustique values(54, 'Folk', 'CLP-15ME', 218, 88, 'Acajou', 'Acajou', 5, 1);
insert into Acoustique values(49, 'Folk', 'AE315K-NT', 888, 59, 'Nyatoh mat', 'Sitka et koa hawaïen', 4, 1);
insert into Acoustique values(45, 'Folk', 'AE315FMH-OPS', 599, 43, 'Nyatoh', 'Okoumé', 4, 1);
insert into Acoustique values(41, 'Folk', 'AVN9-OPN', 348, 93, 'Acajou', 'Acajou', 4, 1);
insert into Acoustique values(37, 'Folk', 'LS 16 A.R.E NT', 829, 72, 'Acajou et palissandre', 'Épicéa et palissandre', 3, 1);
insert into Acoustique values(125, '4/4', 'CN-60s', 175, 64, 'Acajou', 'Épicéa et acajou', 2, 1);
insert into Acoustique values(134, '4/4', 'NTX1200R NAT', 1399, 12, 'Acajou', 'Épicéa et palissandre', 3, 1);
insert into Acoustique values(130, '4/4', 'NCX700', 666, 154, 'Nato', 'Épicéa et nato', 3, 1);
insert into Acoustique values(148, '4/4', 'AEWC300N-NNB', 515, 242, 'Nyatoh mat', 'Épicéa et érable', 4, 1);
insert into Acoustique values(220, '4 cordes', 'Kingsman Bass V2 JTB', 529, 678, 'Acajou', 'Épicéa et acajou', 2, 2);
insert into Acoustique values(222, '4 cordes', 'CB-60SCE A-Bass', 258, 66, 'Acajou', 'Épicéa et acajou', 2, 2);
insert into Acoustique values(249, '4 cordes', 'AVCB9CE-NT', 481, 145, 'Acajou', 'Épicéa et acajou', 4, 2);
insert into Acoustique values(243, '4 cordes', 'AVNB1FE-BV', 499, 563, 'Nato mat', 'Épicéa et okoumé', 4, 2);
insert into Acoustique values(248, '4 cordes', 'PCBE12-OPN', 215, 417, 'Érable', 'Épicéa et acajou', 4, 2);
insert into Acoustique values(251, '4 cordes', 'CLB-10SCE', 198, 349, 'Acajou', 'Épicéa et acajou', 5, 2);
insert into Acoustique values(257, '4 cordes', 'B-30NT', 148, 93, 'Acajou', 'Épicéa et acajou', 5, 2);
insert into Acoustique values(355, '5 cordes', 'B-35NT', 168, 15, 'Acajou', 'Épicéa et acajou', 5, 2);
insert into Acoustique values(352, '5 cordes', 'B-35BK', 177, 64, 'Sapele', 'Épicéa et sapele', 5, 2);
insert into Acoustique values(353, '5 cordes', 'AEB105E-NT', 354, 241, 'Acajou', 'Érable et acajou', 4, 2);


insert into Electrique values(532, 'Heavy 4 cordes', 'BT-70VS', 168, 164, 'Acajou', 'DB Roswell GB4', 5, 2);
insert into Electrique values(564, 'Heavy 4 cordes', 'Thunderbird Vintage Pro Ebony', 577, 183, 'Acajou et noyer', 'DB Epiphone Probucker 760', 6, 2);
insert into Electrique values(561, 'Heavy 4 cordes', 'Thunderbird IV VSB', 318, 83, 'Érable', 'DB', 6, 2);
insert into Electrique values(523, 'Jazz 4 cordes', '75 NOS NAT', 4999, 16, 'Érable', 'DB Custom Shop 75s', 2, 2);
insert into Electrique values(526, 'Jazz 4 cordes', '1961 J-Bass Heavy Relic 3TS', 4222, 34, 'Érable', 'JJ', 2, 2);
insert into Electrique values(527, 'Jazz 4 cordes', 'AM Elite Jazz Bass ASH MN NAT', 1999, 44, 'Érable', 'JJ', 2, 2);
insert into Electrique values(529, 'Jazz 4 cordes', 'Adam Clayton Jazz Bass', 1999, 15, 'Érable', 'JJ', 2, 2);
insert into Electrique values(554, 'Jazz 4 cordes', 'Enhanced MJ-4MN Natural', 298, 48, 'Érable', 'JH', 5, 2);
insert into Electrique values(553, 'Jazz 4 cordes', 'HBZ-2004 Deluxe Series', 248, 61, 'Érable et nato', 'JJ', 5, 2);
insert into Electrique values(518, 'Electrique 5 cordes', 'EB Bass 5 String 2019 WRS', 1125, 73, 'Erable', 'HH', 1, 2);
insert into Electrique values(517, 'Electrique 4 cordes', 'Thunderbird Bass 2019 HCS', 2145, 16, 'Acajou', 'HH', 1, 2);
insert into Electrique values(572, 'Electrique 5 cordes', 'MLB1-5 Pro Walnut', 1099, 94, 'Noyer', 'HH', 7, 2);
insert into Electrique values(579, 'Electrique 5 cordes', 'MLB1FF-Dave Hollingworth QSD', 1599, 12, 'Wenge', 'JJ', 7, 2);
insert into Electrique values(536, 'Electrique 4 cordes', 'TRB1006J NT', 1189, 75, 'Érable', 'HH', 3, 2);
insert into Electrique values(531, 'Electrique 5 cordes', 'TRBX 305 WH', 349, 35, 'Érable et acajou', 'HH', 3, 2);
insert into Electrique values(535, 'Electrique 4 cordes', 'TRBX 174EW NAT', 249, 116, 'Érable', 'PJ', 3, 2);
insert into Electrique values(673, 'ST', 'ML1 RS Rob Scallon EB', 899, 7, 'Acajou', 'HH', 7, 1);
insert into Electrique values(679, 'ST', 'ML1 Norseman MS', 979, 23, 'Acajou', 'HH', 7, 1);
insert into Electrique values(674, 'ST', 'ML1 Modern Lunar V2', 519, 13, 'Érable', 'HH', 7, 1);
insert into Electrique values(626, 'ST', 'Eric Johnson Strat 2TS', 2044, 46, 'Érable', 'SSS', 2, 1);
insert into Electrique values(624, 'ST', 'AM Elite Strat MN Satin IBM', 1999, 47, 'Érable', 'SS', 2, 1);
insert into Electrique values(622, 'ST', 'AM Pro Strat RW OWT', 1555, 563, 'Érable', 'SSS', 2, 1);
insert into Electrique values(623, 'ST', 'AM Pro Strat HSS MN OWT', 1444, 124, 'Érable', 'HSS', 2, 1);
insert into Electrique values(648, 'ST', 'KIKO200-GMT', 3698, 43, 'Érable et wenge', 'HSH', 4, 1);
insert into Electrique values(643, 'ST', 'R5121B14E115AJ.Custom', 6499, 7, 'Érable et amarante', 'HSH', 4, 1);
insert into Electrique values(634, 'ST', 'Pacifica 612V II FM TBL', 699, 42, 'Érable', 'HSS', 3, 1);
insert into Electrique values(710, 'Single cut', 'True Historic LP 57 GT Aged', 7444, 2, 'Acajou', 'HH', 1, 1);
insert into Electrique values(711, 'Single cut', 'Historic Select LP58 SFIT Aged', 6444, 5, 'Acajou', 'HH', 1, 1);
insert into Electrique values(716, 'Single cut', 'Les Paul 59 FB 60th Anniv.', 5990, 10, 'Acajou', 'HH', 1, 1);
insert into Electrique values(766, 'Single cut', 'Peter Frampton LP Custom PRO', 845, 43, 'Acajou', 'HHH', 6, 1);
insert into Electrique values(761, 'Single cut', 'Les Paul Standard Plus Pro HB', 515, 36, 'Acajou', 'HH', 6, 1);
insert into Electrique values(764, 'Single cut', 'Les Paul ES Pro TB', 511, 76, 'Acajou', 'HH', 6, 1);
insert into Electrique values(772, 'Single cut', 'ML2 Pro Modern Dusk', 949, 53, 'Érable', 'HH', 7, 1);
insert into Electrique values(868, 'Double cut', 'Tommy Iommi Signature SG Custom', 733, 16, 'Acajou', 'HH', 6, 1);
insert into Electrique values(862, 'Double cut', 'Les Paul DC Pro WI', 577, 136, 'Acajou', 'HH', 6, 1);
insert into Electrique values(861, 'Double cut', 'SG G-400 PRO AW', 355, 248, 'Acajou', 'HH', 6, 1);
insert into Electrique values(816, 'Double cut', "SG '63 Custom 3 PU Maestro CW", 6222, 5, 'Acajou', 'HH', 1, 1);
insert into Electrique values(812, 'Double cut', 'SG Standard Reissue FC', 3888, 15, 'Acajou', 'HH', 1, 1);
insert into Electrique values(817, 'Double cut', 'LP Special DC Figured Top BB', 4190, 10, 'Acajou', 'HH', 1, 1);
insert into Electrique values(845, 'Double cut', 'AR2619-AV', 2149, 13, 'Érable', 'HH', 4, 1);
insert into Electrique values(843, 'Double cut', 'AR325QA-DBS', 549, 43, 'Érable', 'HH', 4, 1);
