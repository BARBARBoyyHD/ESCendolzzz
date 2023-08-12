/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - db_restoran
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_restoran` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_restoran`;

/*Table structure for table `tb_dapur` */

DROP TABLE IF EXISTS `tb_dapur`;

CREATE TABLE `tb_dapur` (
  `id_order` int(11) NOT NULL,
  `status_masakan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_dapur` */

insert  into `tb_dapur`(`id_order`,`status_masakan`) values 
(126,'sudah dimasak'),
(127,'sudah dimasak'),
(128,''),
(129,''),
(130,'sudah dimasak'),
(131,'sudah dimasak'),
(132,'sudah dimasak'),
(133,'belum dimasak'),
(134,'belum dimasak'),
(135,'belum dimasak'),
(136,'belum dimasak'),
(137,'belum dimasak'),
(138,'belum dimasak'),
(139,'belum dimasak'),
(140,'belum dimasak'),
(141,'belum dimasak'),
(142,'belum dimasak'),
(143,'belum dimasak'),
(144,'belum dimasak'),
(150,'belum dimasak'),
(151,'sudah dimasak'),
(157,'belum dimasak'),
(158,'sudah dimasak'),
(166,'belum dimasak'),
(167,'sudah dimasak');

/*Table structure for table `tb_level` */

DROP TABLE IF EXISTS `tb_level`;

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(150) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_level` */

insert  into `tb_level`(`id_level`,`nama_level`) values 
(1,'Administrator'),
(2,'Pelayan'),
(3,'Kasir'),
(4,'Koki'),
(5,'Pelanggan');

/*Table structure for table `tb_masakan` */

DROP TABLE IF EXISTS `tb_masakan`;

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_masakan` varchar(150) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `status_masakan` varchar(150) NOT NULL,
  `gambar_masakan` varchar(150) NOT NULL,
  PRIMARY KEY (`id_masakan`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `tb_masakan` */

insert  into `tb_masakan`(`id_masakan`,`nama_masakan`,`harga`,`stok`,`status_masakan`,`gambar_masakan`) values 
(1,'Teh Manis','8000',22,'tersedia','Teh Manis.jpg'),
(2,'Cincau','10000',42,'tersedia','Cincau.jpg'),
(3,'Es Campur','15000',29,'tersedia','Es Campur.jpg'),
(4,'Es Cendol','15000',44,'tersedia','Es Cendol.jpg'),
(5,'Es Doger','15000',35,'tersedia','Es Doger.jpg'),
(6,'Es Teler','15000',45,'tersedia','Es Teler.jpg'),
(7,'Es Pisang Hijau','15000',42,'tersedia','Es Pisang ijo.jpg'),
(8,'Es Degan','15000',34,'tersedia','Es Degan.jpg'),
(9,'Teh Tarik','15000',37,'tersedia','Teh Tarik.jpg'),
(10,'Nasi Pecel','7000',36,'tersedia','Nasi Pecel.jpg'),
(11,'Sate Ayam','11000',32,'tersedia','Sate Ayam.jpg'),
(12,'Ayam Geprek','11000',36,'tersedia','Ayam Geprek.jpg'),
(13,'Ati Ampela','15000',28,'tersedia','Ati Ampela.jpg'),
(14,'Pempek','15000',32,'tersedia','Pempek.jpg\r\n'),
(15,'Nasi Goreng','15000',39,'tersedia','Nasi Goreng.jpg'),
(16,'Mie Aceh','17000',-19968,'tersedia','Mie Aceh.jpg'),
(17,'Sambal Roa','20000',41,'tersedia','Sambal Roa.jpg'),
(18,'Gudeg','20000',25,'tersedia','Gudeg.jpg'),
(19,'Serudeng','25000',31,'tersedia','Serudeng.jpg'),
(20,'Pepes','25000',-24975,'tersedia','Pepes.jpg'),
(21,'Soto','25000',10,'tersedia','Soto.jpg'),
(22,'Rendang','30000',33,'tersedia','Rendang.jpg'),
(23,'Ayam Betutu','30000',28,'tersedia','Ayam Betutu.jpg');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_admin` int(11) DEFAULT NULL,
  `id_pengunjung` int(11) NOT NULL,
  `waktu_pesan` datetime NOT NULL,
  `total_harga` varchar(150) NOT NULL,
  `uang_bayar` varchar(150) DEFAULT NULL,
  `uang_kembali` varchar(150) DEFAULT NULL,
  `status_order` varchar(150) NOT NULL,
  `status_masakan` varchar(150) NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_admin` (`id_admin`),
  KEY `id_pengunjung` (`id_pengunjung`),
  KEY `id_admin_2` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

/*Data for the table `tb_order` */

insert  into `tb_order`(`id_order`,`id_admin`,`id_pengunjung`,`waktu_pesan`,`total_harga`,`uang_bayar`,`uang_kembali`,`status_order`,`status_masakan`) values 
(140,3,16,'2023-08-11 03:37:04','25000','25000','0','sudah bayar','belum dimasak'),
(141,3,16,'2023-08-11 09:18:43','25000','25000','0','sudah bayar','belum dimasak'),
(142,3,16,'2023-08-11 09:26:46','25000','25000','0','sudah bayar','belum dimasak'),
(143,3,16,'2023-08-11 09:32:14','25000','30000','5000','sudah bayar','belum dimasak'),
(144,3,16,'2023-08-11 09:33:56','25000','25000','0','sudah bayar','belum dimasak'),
(145,3,16,'2023-08-11 09:40:46','17000','20000','3000','sudah bayar','belum dimasak'),
(146,3,16,'2023-08-11 09:42:24','30000','30000','0','sudah bayar','belum dimasak'),
(148,3,16,'2023-08-11 09:43:40','25000','30000','5000','sudah bayar','belum dimasak'),
(149,3,16,'2023-08-11 09:45:05','25000','25000','0','sudah bayar','belum dimasak'),
(150,3,16,'2023-08-11 09:46:56','30000','30000','0','sudah bayar','belum dimasak'),
(151,3,16,'2023-08-11 09:49:47','25000','25000','0','sudah bayar','belum dimasak'),
(153,3,16,'2023-08-11 09:53:08','25000','25000','0','sudah bayar','belum dimasak'),
(154,3,16,'2023-08-11 09:54:21','25000','25000','0','sudah bayar','belum dimasak'),
(155,3,16,'2023-08-11 10:09:09','25000','25000','0','sudah bayar','belum dimasak'),
(156,3,16,'2023-08-11 10:14:13','25000','25500','500','sudah bayar','belum dimasak'),
(157,3,16,'2023-08-11 10:24:49','25000','25000','0','sudah bayar','belum dimasak'),
(158,3,16,'2023-08-11 10:32:10','25000','25000','0','sudah bayar','belum dimasak'),
(166,3,17,'2023-08-11 20:25:16','25000','30000','5000','sudah bayar','belum dimasak'),
(167,3,17,'2023-08-11 20:51:18','30000','30000','0','sudah bayar','belum dimasak'),
(168,0,17,'2023-08-11 21:01:34','30000','','','belum bayar','belum jadi');

/*Table structure for table `tb_pesan` */

DROP TABLE IF EXISTS `tb_pesan`;

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_masakan` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_pesan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pesan` */

insert  into `tb_pesan`(`id_pesan`,`id_user`,`id_order`,`id_masakan`,`jumlah`,`status_pesan`) values 
(134,7,87,18,2,'sudah'),
(135,7,87,19,2,'sudah'),
(136,7,88,14,2,'sudah'),
(137,7,88,18,2,'sudah'),
(138,7,90,18,1,'sudah'),
(139,7,90,14,1,'sudah'),
(140,7,91,14,1,'sudah'),
(141,7,91,18,1,'sudah'),
(143,7,95,18,2,'sudah'),
(144,7,95,14,2,'sudah'),
(147,7,98,14,1,'sudah'),
(152,16,102,18,2,'sudah'),
(153,16,102,19,2,'sudah'),
(154,18,103,18,1,'sudah'),
(155,18,103,20,1,'sudah'),
(174,16,111,22,2,'sudah'),
(176,17,113,21,1,'sudah'),
(177,17,115,22,1,'sudah'),
(178,16,120,20,1,'sudah'),
(179,16,120,21,1,'sudah'),
(181,18,0,22,0,''),
(182,16,121,20,1,'sudah'),
(184,16,122,20,2,'sudah'),
(185,16,122,21,2,'sudah'),
(186,16,123,20,1,'sudah'),
(187,16,123,21,1,'sudah'),
(188,16,124,22,1,'sudah'),
(189,16,125,23,1,'sudah'),
(190,16,126,20,1,'sudah'),
(191,16,127,21,1,'sudah'),
(192,16,128,20,1,'sudah'),
(193,16,129,22,1,'sudah'),
(194,16,130,20,1,'sudah'),
(195,16,131,16,1,'sudah'),
(196,16,132,18,1,'sudah'),
(197,16,133,21,1,'sudah'),
(198,16,134,20,1,'sudah'),
(199,16,135,18,1,'sudah'),
(200,16,136,19,1,'sudah'),
(201,16,137,16,1,'sudah'),
(202,16,138,16,1,'sudah'),
(203,16,139,10,1,'sudah'),
(204,16,140,20,1,'sudah'),
(205,16,141,20,1,'sudah'),
(206,16,142,20,1,'sudah'),
(207,16,143,20,1,'sudah'),
(208,16,144,21,1,'sudah'),
(210,16,145,16,1,'sudah'),
(211,16,146,23,1,'sudah'),
(213,16,148,19,1,'sudah'),
(214,16,149,19,1,'sudah'),
(215,16,150,22,1,'sudah'),
(216,16,151,19,1,'sudah'),
(218,16,153,21,1,'sudah'),
(219,16,154,19,1,'sudah'),
(220,16,155,19,1,'sudah'),
(221,16,156,19,1,'sudah'),
(222,16,157,19,1,'sudah'),
(223,16,158,19,1,'sudah'),
(231,17,166,21,1,'sudah'),
(234,17,167,22,1,'sudah'),
(235,17,168,22,1,'');

/*Table structure for table `tb_stok` */

DROP TABLE IF EXISTS `tb_stok`;

CREATE TABLE `tb_stok` (
  `id_stok` int(11) NOT NULL AUTO_INCREMENT,
  `id_pesan` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `status_cetak` varchar(150) NOT NULL,
  PRIMARY KEY (`id_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;

/*Data for the table `tb_stok` */

insert  into `tb_stok`(`id_stok`,`id_pesan`,`jumlah_terjual`,`status_cetak`) values 
(89,134,2,'belum cetak'),
(90,135,2,'belum cetak'),
(91,136,2,'belum cetak'),
(92,137,2,'belum cetak'),
(93,138,1,'belum cetak'),
(94,139,1,'belum cetak'),
(95,140,1,'belum cetak'),
(96,141,1,'belum cetak'),
(97,142,1,'belum cetak'),
(98,143,2,'belum cetak'),
(99,144,2,'belum cetak'),
(100,145,1,'belum cetak'),
(101,146,1,'belum cetak'),
(102,147,1,'belum cetak'),
(103,148,2,'belum cetak'),
(104,149,2,'belum cetak'),
(105,150,2,'belum cetak'),
(106,151,2,'belum cetak'),
(107,152,2,'belum cetak'),
(108,153,2,'belum cetak'),
(109,154,1,'belum cetak'),
(110,155,1,'belum cetak'),
(111,156,0,'belum cetak'),
(112,157,0,'belum cetak'),
(113,158,0,'belum cetak'),
(114,159,0,'belum cetak'),
(115,160,0,'belum cetak'),
(116,161,0,'belum cetak'),
(117,162,0,'belum cetak'),
(118,163,0,'belum cetak'),
(119,164,2,'belum cetak'),
(120,165,2,'belum cetak'),
(121,166,0,'belum cetak'),
(122,167,1,'belum cetak'),
(123,168,2,'belum cetak'),
(124,169,2,'belum cetak'),
(125,170,1,'belum cetak'),
(126,171,1,'belum cetak'),
(127,172,2,'belum cetak'),
(128,173,2,'belum cetak'),
(129,174,2,'belum cetak'),
(130,175,1,'belum cetak'),
(131,176,1,'belum cetak'),
(132,177,1,'belum cetak'),
(133,178,1,'belum cetak'),
(134,179,1,'belum cetak'),
(135,180,0,'belum cetak'),
(136,181,0,'belum cetak'),
(137,182,1,'belum cetak'),
(138,183,0,'belum cetak'),
(139,184,2,'belum cetak'),
(140,185,2,'belum cetak'),
(141,186,1,'belum cetak'),
(142,187,1,'belum cetak'),
(143,188,1,'belum cetak'),
(144,189,1,'belum cetak'),
(145,190,1,'belum cetak'),
(146,191,1,'belum cetak'),
(147,192,1,'belum cetak'),
(148,193,1,'belum cetak'),
(149,194,1,'belum cetak'),
(150,195,1,'belum cetak'),
(151,196,1,'belum cetak'),
(152,197,1,'belum cetak'),
(153,198,1,'belum cetak'),
(154,199,1,'belum cetak'),
(155,200,1,'belum cetak'),
(156,201,1,'belum cetak'),
(157,202,1,'belum cetak'),
(158,203,1,'belum cetak'),
(159,204,1,'belum cetak'),
(160,205,1,'belum cetak'),
(161,206,1,'belum cetak'),
(162,207,1,'belum cetak'),
(163,208,1,'belum cetak'),
(164,209,0,'belum cetak'),
(165,210,1,'belum cetak'),
(166,211,1,'belum cetak'),
(167,212,25000,'belum cetak'),
(168,213,1,'belum cetak'),
(169,214,1,'belum cetak'),
(170,215,1,'belum cetak'),
(171,216,1,'belum cetak'),
(172,217,20000,'belum cetak'),
(173,218,1,'belum cetak'),
(174,219,1,'belum cetak'),
(175,220,1,'belum cetak'),
(176,221,1,'belum cetak'),
(177,222,1,'belum cetak'),
(178,223,1,'belum cetak'),
(179,224,1,'belum cetak'),
(180,225,1,'belum cetak'),
(181,226,1,'belum cetak'),
(182,227,1,'belum cetak'),
(183,228,1,'belum cetak'),
(184,229,1,'belum cetak'),
(185,230,1,'belum cetak'),
(186,231,1,'belum cetak'),
(187,232,0,'belum cetak'),
(188,233,0,'belum cetak'),
(189,234,1,'belum cetak'),
(190,235,1,'belum cetak');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `id_level` int(11) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  KEY `id_level` (`id_level`),
  CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`username`,`password`,`nama_user`,`id_level`,`status`) values 
(1,'hasan','123','Muhammad Hasan',2,'aktif'),
(2,'febi','123','Febi Amelia',2,'aktif'),
(3,'ferdi','123','Ferdiansah Sukarya',3,'aktif'),
(4,'andre','123','Muhammad Andre Aria Saputra',4,'aktif'),
(5,'nahrul','123','Muhammad Nahrul Hayat',4,'aktif'),
(16,'1','1','1',5,'aktif'),
(17,'2','2','2',5,'aktif'),
(18,'3','3','3',5,'aktif'),
(19,'4','4','4',5,'aktif'),
(20,'5','5','5',5,'aktif');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
