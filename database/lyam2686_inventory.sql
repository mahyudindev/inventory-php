/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: lyam2686_inventory
-- ------------------------------------------------------
-- Server version	10.6.22-MariaDB-cll-lve-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backset`
--

-- DROP TABLE IF EXISTS `backset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `backset` (
  `url` varchar(100) NOT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `namabisnis1` tinytext NOT NULL,
  `mode` varchar(1) NOT NULL,
  `prefikbarcode` varchar(10) NOT NULL,
  PRIMARY KEY (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backset`
--

LOCK TABLES `backset` WRITE;
/*!40000 ALTER TABLE `backset` DISABLE KEYS */;
INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `namabisnis1`, `mode`, `prefikbarcode`) VALUES ('https://marsdroid.lyarooms.com/','100','','1','0','MARS DROID','0','ID');
/*!40000 ALTER TABLE `backset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `barang` (
  `kode` varchar(20) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `hargabeli` int(11) DEFAULT NULL,
  `hargajual` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `satuan` varchar(20) NOT NULL,
  `terjual` int(10) DEFAULT NULL,
  `terbeli` int(11) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `stokmin` int(10) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `brand` text NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `expired` date NOT NULL,
  `warna` varchar(20) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `avatar` varchar(300) NOT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`),
  KEY `jenis` (`kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`kode`, `sku`, `nama`, `hargabeli`, `hargajual`, `keterangan`, `kategori`, `satuan`, `terjual`, `terbeli`, `sisa`, `stokmin`, `barcode`, `brand`, `lokasi`, `expired`, `warna`, `ukuran`, `avatar`, `no`) VALUES ('000031','IOGT350','ICHI ICHA GREEN TEA',0,0,'','Minuman','CAR',70,1569,1799,100,'1500','Ichi Ocha','','0000-00-00','','','dist/upload/',38),('000039','TKT','TEKITA GREENTEA',0,0,'','Minuman','CAR',700,1800,1400,50,'500','Ichi Ocha','','0000-00-00','','','dist/upload/',40),('142983','CLUB GALON','CLUB GALON',0,0,'','Minuman','GAL',550,25,600,3504,'14016','Club','','0000-00-00','','','dist/upload/',23),('143015','CLUB 1500 ','Club Botol 1500 ml',0,0,'','Minuman','CAR',0,0,115,91,'146','Club','','0000-00-00','','','dist/upload/',24),('143018','CLUB 0330 ','Club Botol 330 ml',0,0,'','Minuman','CAR',0,0,483,528,'844','Club','','0000-00-00','','','dist/upload/',25),('143019','CLUB 0600','Club Botol 600 ml',0,0,'','Minuman','CAR',0,0,625,418,'667','Club','','0000-00-00','','','dist/upload/',26),('158826','CLUB220ML ','Club Botol 220 ml',0,0,'','Minuman','CAR',0,0,296,472,'754','Club','','0000-00-00','','','dist/upload/',27),('406815','FCBKM150 ','Cocobit Gelas Kelapa',0,0,'','Minuman','CAR',0,0,1,13,'21','Cocobit','','0000-00-00','','','dist/upload/',21),('417741 ','CLUB250ML','Club Botol 220 ml',0,0,'','Minuman','CAR',0,0,83,22,'35','Club','','0000-00-00','','','dist/upload/',28),('428382 ','OTM35024 ','Ichi Ocha Melati',0,0,'','Minuman','CAR',0,0,47,9,'14','Ichi Ocha','','0000-00-00','','','dist/upload/',22),('435376 ','VIAND200ML','Viand Gelas 200 ml',0,0,'','Minuman','CAR',0,0,97,39,'62','Viand','','0000-00-00','','','dist/upload/',29),('436580 ','CLUBBTL220ML ','Club Botol 220ml',0,0,'','Minuman','CAR',0,0,358,88,'140','Club','','0000-00-00','','','dist/upload/',30);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no4` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`kode`, `nama`, `no`) VALUES ('0001','Ichi Ocha',4),('0002','Club',5),('0003','Viand',6),('0004','Cocobit',7);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chmenu`
--

DROP TABLE IF EXISTS `chmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `chmenu` (
  `userjabatan` varchar(20) NOT NULL,
  `menu1` varchar(1) DEFAULT '0',
  `menu2` varchar(1) DEFAULT '0',
  `menu3` varchar(1) DEFAULT '0',
  `menu4` varchar(1) DEFAULT '0',
  `menu5` varchar(1) DEFAULT '0',
  `menu6` varchar(1) DEFAULT '0',
  `menu7` varchar(1) DEFAULT '0',
  `menu8` varchar(1) DEFAULT '0',
  `menu9` varchar(1) DEFAULT '0',
  `menu10` varchar(1) DEFAULT '0',
  `menu11` varchar(1) DEFAULT '0',
  PRIMARY KEY (`userjabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chmenu`
--

LOCK TABLES `chmenu` WRITE;
/*!40000 ALTER TABLE `chmenu` DISABLE KEYS */;
INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES ('admin','5','5','5','5','5','5','5','5','5','5','5'),('operator','0','3','2','2','2','5','5','1','5','0',''),('Supervisor','5','5','1','1','5','','','1','1','5','');
/*!40000 ALTER TABLE `chmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`) VALUES ('MARS DROID','','','08123456789','MARS DROID','dist/upload/unnamed-removebg-preview.png',0);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES ('admin','dist/upload/index.jpg','2023-04-02','<h3>Halo Selamat datang</h3>',1),('admin','dist/upload/index.jpg','2023-04-02','<h3>Halo Selamat datang</h3>',1),('admin','dist/upload/index.jpg','2023-04-02','<h3>Halo Selamat datang</h3>',1),('admin','dist/upload/index.jpg','2023-04-02','<h3>Halo Selamat datang</h3>',1);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES ('0001','admin',35),('0002','operator',33),('0003','Supervisor',36);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no4` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`kode`, `nama`, `no`) VALUES ('0001','Makanan',4),('0002','Minuman',5);
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mutasi`
--

DROP TABLE IF EXISTS `mutasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mutasi` (
  `namauser` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `sisa` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutasi`
--

LOCK TABLES `mutasi` WRITE;
/*!40000 ALTER TABLE `mutasi` DISABLE KEYS */;
INSERT INTO `mutasi` (`namauser`, `tgl`, `kodebarang`, `sisa`, `jumlah`, `kegiatan`, `keterangan`, `no`, `status`) VALUES ('admin','2024-11-19','000001',30,-970,'Penyesuaian STOK','0001',1,'berhasil'),('admin','2024-11-19','000001',25,5,'stok keluar','0001',2,'berhasil'),('admin','2024-11-19','000002',1001,1000,'stok masuk','0001',3,'berhasil'),('admin','2024-11-22','000001',99,1,'stok keluar','0002',4,'berhasil'),('admin','2024-12-11','141954',816,100,'stok keluar','0003',5,'berhasil'),('admin','2024-12-11','142983',2145,1020,'stok masuk','0001',6,'berhasil'),('admin','2024-12-11','142983',3165,2040,'stok masuk','0001',7,'berhasil'),('admin','2024-12-11','142983',5205,4080,'stok masuk','0001',8,'berhasil'),('Ary Eka Saputra','2025-05-09','141954',200,-716,'Penyesuaian STOK','0002',9,'berhasil'),('Ary Eka Saputra','2025-06-26','',0,0,'stok keluar','0004',10,'berhasil'),('Ary Eka Saputra','2025-06-26','000031',369,69,'stok masuk','0006',11,'berhasil'),('Ary Eka Saputra','2025-06-26','000031',319,50,'stok keluar','0004',12,'berhasil'),('Ary Eka Saputra','2025-06-26','142983',1075,50,'stok keluar','0005',13,'berhasil'),('Ary Eka Saputra','2025-06-26','142983',1100,25,'stok masuk','0006',14,'berhasil'),('Ary Eka Saputra','2025-06-26','000039',600,300,'stok masuk','0007',15,'berhasil'),('Ary Eka Saputra','2025-06-26','000039',100,500,'stok keluar','0006',16,'berhasil'),('Ary Eka Saputra','2025-06-26','000039',100,500,'stok keluar','0006',17,'berhasil'),('Ary Eka Saputra','2025-06-26','000039',40,60,'stok keluar','0008',18,'berhasil'),('Ary Eka Saputra','2025-06-26','000039',30,10,'stok keluar','0009',19,'berhasil'),('Ary Eka Saputra','2025-06-26','000039',0,30,'stok keluar','0010',20,'berhasil'),('Ary Eka Saputra','2025-06-26','142983',600,500,'stok keluar','0011',21,'berhasil'),('Ary Eka Saputra','2025-06-29','000031',1819,1500,'stok masuk','0008',22,'berhasil'),('Ary Eka Saputra','2025-06-29','000039',1500,1500,'stok masuk','0009',23,'berhasil'),('Ary Eka Saputra','2025-06-29','000031',1799,20,'stok keluar','0012',24,'berhasil'),('Ary Eka Saputra','2025-06-29','000039',1400,100,'stok keluar','0012',25,'berhasil');
/*!40000 ALTER TABLE `mutasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` (`kode`, `nama`, `notelp`, `alamat`, `no`) VALUES ('0001','KFC PARAMONT PETALS','081292649448','PARAMONT PETALS JL BOULEVARD SAKURA',1),('0002','KFC TANGERANG CITY','28068431','TANGERANG CITY LANTAI I JALAN JENDERAL',2),('0003','KFC DUTA GARDEN','08117157081','GARDENJL HUSEIN SASTRANEGARA',3),('0004','KFC BUMI INDAH','081293284182','INDAHJL BUMI INDAH GUDANG',4),('0005','KFC BOX RAMAYANA CIKUPA','08177157027','NURMANPERUM GRIYA CITRA',5),('0006','KFC BSD SQUARE','5371836','JL BUMI SERPONG DAMAI',6),('0007','KFC BOX Q BIG BSD CITY','08117156981','BIG BSD CITY JL BSD RAYA UTAMA LENGKONG',7),('0008','KFC CIPUTAT GAPLEK','7443511','GAPLEK JL CABE RAYA RT 03 RW',8),('0009','KFC BOX SPBU VIKTOR BSD','08117156949','VIKTOR BSD JALAN BUARAN NO 118',9),('0010','KFC PAMULANG SQUARE','08117156945','SQUARE JALAN SILIWANGI NO 12 PAMULANG',10),('0011','KFC PUSPITEK SERPONG PARADISE','08117157398','SERPONG PARADISE JL RAYA PUSPITEK NO 1W SAMPING',11),('0012','KFC ITC BSD FOODCOURT','08117156975','FOODCOURT JALAN PAHLAWAN SERIBU',12),('0013','KFC KISAMAUN','3517244','KISAMAUN TANGERANG JL DAAN MOGOT KISAMAUN SUKARASA',13),('0014','KFC CIPONDOH','087780127957','JALAN KH. HASYIM ASHARI',14),('0015','KFC REST AREA KM 13.5','081290734675','AREA KM 13.5 TGR JALAN TOL JAKARTA MERAK',15),('0016','KFC DADAP','08117157082','JALAN PERGUDANGAN SENTRA',16),('0017','KFC CBD CILEDUG','734460005','CILEDUGJL. HOS COKROAMINOTO',17),('0018','KFC REST AREA KM 14 TGR','08117157026','KM 14 TGR JALAN TOL JAKARTA',18),('0019','KFC BOX RAMAYANA CILEDUG','08117157006','RAMAYANA CILEDUG JL HOS COKROAMINOTO',19),('0020','KFC BANDARA SOETA TERMINAL','082114637995','SOETA TERMINAL 3 LANDSI',20),('0021','KFC BOX BANDARA',' 089516003158','BANDARA SOETA TERMINAL 1A',21),('0022','KFC BANDARA SOETA','5562380','SOETA TERMINAL 3 ULTIMA',22),('0023','KFC AIRPORT HUB','08117157078','HUBJL. HUSEIN SASTRANEGARA',23),('0024','KFC TERMINAL 3 AIRSIDE','081510744368','3 AIRSIDE TERMINAL 3 AIRSIDE SOETTA',24),('0025','KFC ALAM SUTERA','08117156978','SUTERAJL BOULEVARD ALAM SUTERA',25),('0026','KFC BOX TRANSMART','08177157027','TRANSMART GRAHA BINTARO',26),('0027','KFC BINTARO PLAZA','08117156996','PLAZA BINTARO PLAZA SEKTOR',27),('0028','KFC PARAMOUNT SERPONG','089516003158','PARAMOUNT SERPONG JL KELAPA DUA RAYA CURUG',28),('0029','KFC CIRENDEU','7418802','JALAN CIRENDEU RAYA NO.20',29),('0030','KFC SPBU COCO PERTAMINA','7495322','COCO PERTAMINA CIPUTAT SPBU PERTAMINA 31 JL. IR.H.',30),('0031','KFC FUNTASTICO EMERALD','08118147509','FUNTASTICO EMERALD BINTARO JL BOULEVARD BINTARO',31),('0032','KFC AEON MALL','08117156979','MALLLANTAI 3 UNIT 3 SAMPAI',32),('0033','KFC BINTARO SEKTOR 9','08117157004','SEKTOR 9 JALAN JENDERAL SUDIRMAN',33),('0034','KFC LIPPO SUPERMALL','5462377','SUPERMALL KARAWACI JL BOULEVARD PALEM RAYA',34),('0035','KFC BOX LIVING WORLD','SUTERA08117156983','LIVING WORLD ALAM SUTERA JL BOULEVARD ALAM SUTERA',35),('0036','PT. INDOFOOD CBP SUKSES','215960728 / 5960727','CBP SUKSES MAKMUR Tbk. JL RAYA SERANG KM.11 BITUNG',36),('0037','PT. INDOMARCO ADI PRIMA JATAKE','021-59306910','INDOMARCO ADI PRIMA - Jatake JL. MERDEKA PABUARAN KARAWACI',37),('0038','Indofood Fortuna Makmur - Cikokol','02155757283','Makmur - Cikokol Jl Wisma Damatex Rt.001 Rw.001',38),('0039','Indofood Fortuna Makmur - Cikupa','02129320371','Makmur - Cikupa Jl Bhumimas II No.5 RT .01 RW.03',39),('0040','IAP - CABANG TANGERANG','5531134','TANGERANG Jl. Merdeka No. 207 Tangerang',40),('0041','RS. MAYAPADA TGR','081380787169','TGR JL HONORIS RAYA NO.6',41),('0042','RS. EKA HOSPITAL','082125235482','HOSPITALCENTRAL BUSINESS DISTRICT',42),('0043','PT. ANDALAN ARTHALESTARI','082299495082','ARTHALESTARI JL.LETJEN S.PARMAN KAV.79',43),('0044','PT. BAJA PUTIH','7510008','Kwsn Ind Manis Bitung Tangerang',44),('0045','PT. PANARUB INDUSTRY','081519815424','INDUSTRY MOCH.TOHA KM.1 DH JL.RAYA',45),('0046','Galvindo Inti Selaras PT','0215961258','Selaras PT JL.P.JAYAKARTA 131 A32 ',46),('0047','PT KAMADJAJA LOGISTICS','081218946007','LOGISTICS BENUA KOMPLEK BENUA MAS',47),('0048','PT. UNIVERSAL RESPATI','083877821282','RESPATI TURBINE ENGIN',48),('0049','PT. FKS MULTI AGRO TBK','081355517702','AGRO TBK GUDANG FKS MULTI AGRO',49),('0050','PT. FLEXO SOLUSI INDONESIA','087776487112','SOLUSI INDONESIA JL. PEMBANGUNAN NO.9',50),('0051','PT. GLOBAL JET ECOMMERCE','085774906143','JET ECOMMERCE JL.PALEM MANIS RAYA RT.01',51),('0052','PT. SATYAMITRA KEMAS LESTARI','021-5950988','SATYAMITRA KEMAS LESTARI TBK',52),('0053','PT. MENARRA INTI DISTRIBUSI','081212888977','INTI DISTRIBUSI JL BHUMIMAS VII NO.3 CIKUPA',53),('0054','INDOGROSIR CIKUPA','082218997711','CIKUPA JL RAYA SERANG KM 19.2 RT',54),('0055','PT. INTIKEMAS PUTRA','081384960690','PUTRA MAKMUR JL RAYA SERANG KM.17 2',55),('0056','PT. SINAR QUALITY INTERNUSA','087887212320','QUALITY INTERNUSA JLN. MODERN INDUSTRY XVII',56),('0057','PT. LOSCAM INDONESIA','081289406844','INDONESIA JL RAYA RANGKAS BITUNG',57),('0058','PT. BERKAT JAYA TIGA','081287874396','JAYA TIGA Ruko Villa Dago Blok AD No.',58),('0059','PT. CROWN WORLDWIDE INDONESIA','','WORLDWIDE INDONESIA VILLA MUTIARA SERPONG',59),('0060','PT.TRAKINDO UTAMA','08119725827','UTAMA Gd.TMT 1 Lt.11-17 Suite 1101-1701',60),('0061','PT. UNIFLEX KEMASINDAH','081310760055','KEMASINDAH TAMAN TEKNO BSD JL.TEKNO',61),('0062','Mitra Pinasthika Mustika Rent','081284210474','Mustika Rent PT Sunburst CBD LOT II No.10',62),('0063','BLUE BIRD BSD','0817844526','BSD JL. CILENGGANG II NO.3',63),('0064','MARILYN HOTEL SERPONG','','HOTEL SERPONG JL. RAYA SERPONG NO.1 PAKULONAN',64),('0065','PT. YUSEN LOGISTICS','087787247576','LOGISTICS JPT PERKANTORAN GEDUNG',65),('0066','PT. KUKUH MANDIRI LESTARI','081349348497','MANDIRI LESTARI JL INPEKSI PIK 2 NO.1 TERUSAN',66),('0067','PT.Indomobil Trada Nasional-BINTARO','02192808261','Nasional-BINTARO Wisma Indomobil Jl. MT Haryono',67),('0068','YAYASAN PRASETIYA MULYA','02130450500','PRASETIYA MULYA EDU TOWN KAVLING EDU',68),('0069','CITITRANS BINTARO','089608244062','BINTARO RUKO VICTORIA JL BINTARO',69),('0070','PT. PERSITA TANGERANG RAYA','081299701995','TANGERANG RAYA PERSITA OFFICE FORESTA',70),('0071','LG Electronics PT BSD Tangerang','02129446189','BSD Tangerang Ruko Celesta Bintaro Jaya Blok',71),('0072','YAYASAN KASIH ABADI','021-54212999','KASIH ABADI JL. ARTHA KENCANA KAV',72),('0073','ST CAROLUS HOSPITAL','085727323216','HOSPITAL JL.GADING GOLF BOULEVARD',73),('0074','PT. SUPERMAL KARAWACI','5466666','KARAWACI JL. BOULEVARD DIPONEGORO',74),('0075','Yasmin Resort & Conference Hotel','0215982201','Conference Hotel Jl. Raya Binong No. 08 Karawaci',75),('0076','Central Sole Agency PT','55650101','Agency PT Jl. Gatot Subroto Km.18 Manis',76),('0077','Hilon Indonesia PT','0215909626','PT Jl. Putera Utama No.9 Kawasan',77),('0078','PT. Supratama Aneka Industri','021-6337305','Aneka Industri Jl. Industri Raya III Ujung',78),('0079','PT INOCYCLE TECHNOLOGY','GROUP Tbk08129896101','TECHNOLOGY GROUP Tbk KAWASAN INDUSTRY PS',79),('0080','PT. MENARA INTI KREASI INDONESIA','','INTI KREASI INDONESIA MILLENIUM INDUSTRIAL',80);
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` (`kode`, `nama`, `nohp`, `no`) VALUES ('0001','Budi Santoso','081234567890',1),('0002','Agus Setiawan','081345678901',2),('0003','Joko Susilo','081456789012',3);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan`
--

DROP TABLE IF EXISTS `satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `satuan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan`
--

LOCK TABLES `satuan` WRITE;
/*!40000 ALTER TABLE `satuan` DISABLE KEYS */;
INSERT INTO `satuan` (`kode`, `nama`, `no`) VALUES ('0001','CAR',8),('0002','GAL',9);
/*!40000 ALTER TABLE `satuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_keluar`
--

DROP TABLE IF EXISTS `stok_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_keluar` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `modal` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_keluar`
--

LOCK TABLES `stok_keluar` WRITE;
/*!40000 ALTER TABLE `stok_keluar` DISABLE KEYS */;
INSERT INTO `stok_keluar` (`nota`, `cabang`, `tgl`, `pelanggan`, `userid`, `keterangan`, `modal`, `total`, `no`) VALUES ('0003','01','2024-12-11','KFC CITRA RAYA','42','',0,0,3),('0004','01','2025-06-26','KFC KISAMAUN','42','',0,0,4),('0005','01','2025-06-26','PT. INTIKEMAS PUTRA','42','TRIPUTRA ELECTRIK',0,0,5),('0006','01','2025-06-26','customer','42','TEKITA',0,0,7),('0008','01','2025-06-26','customer','42','TEKITA',0,0,8),('0009','01','2025-06-26','customer','42','TEKITA',0,0,9),('0010','01','2025-06-26','KFC BOX RAMAYANA CIKUPA','42','',0,0,10),('0011','01','2025-06-26','PT INOCYCLE TECHNOLOGY','42','',0,0,11),('0012','01','2025-06-29','customer','42','',0,0,12);
/*!40000 ALTER TABLE `stok_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_keluar_daftar`
--

DROP TABLE IF EXISTS `stok_keluar_daftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_keluar_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subbeli` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_keluar_daftar`
--

LOCK TABLES `stok_keluar_daftar` WRITE;
/*!40000 ALTER TABLE `stok_keluar_daftar` DISABLE KEYS */;
INSERT INTO `stok_keluar_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `subbeli`, `subtotal`, `no`) VALUES ('0003','141954','Ichi Ocha Greentea',100,0,0,3),('0004','000031','ICHI ICHA GREEN TEA',50,0,0,5),('0005','142983','CLUB GALON',50,0,0,6),('0006','000039','TEKITA GREENTEA',500,0,0,8),('0008','000039','TEKITA GREENTEA',60,0,0,9),('0009','000039','TEKITA GREENTEA',10,0,0,10),('0010','000039','TEKITA GREENTEA',30,0,0,11),('0011','142983','CLUB GALON',500,0,0,12),('0012','000031','ICHI ICHA GREEN TEA',20,0,0,13),('0012','000039','TEKITA GREENTEA',100,0,0,14);
/*!40000 ALTER TABLE `stok_keluar_daftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_masuk`
--

DROP TABLE IF EXISTS `stok_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_masuk` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_masuk`
--

LOCK TABLES `stok_masuk` WRITE;
/*!40000 ALTER TABLE `stok_masuk` DISABLE KEYS */;
INSERT INTO `stok_masuk` (`nota`, `cabang`, `tgl`, `supplier`, `userid`, `no`) VALUES ('0001','','2024-12-11','PT. ANUGERAH INDOFOOD BAR','42',3),('0004','','2025-05-09','PT. ANUGERAH INDOFOOD BAR','42',4),('0005','','2025-05-22','PT. ANUGERAH INDOFOOD BAR','42',5),('0006','','2025-06-26','PT Tirta Sukses Perkasa ','42',6),('0007','','2025-06-26','PT. ANUGERAH INDOFOOD BAR','42',7),('0008','','2025-06-29','PT. ANUGERAH INDOFOOD BAR','42',8),('0009','','2025-06-29','PT. ANUGERAH INDOFOOD BAR','42',9);
/*!40000 ALTER TABLE `stok_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_masuk_daftar`
--

DROP TABLE IF EXISTS `stok_masuk_daftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_masuk_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_masuk_daftar`
--

LOCK TABLES `stok_masuk_daftar` WRITE;
/*!40000 ALTER TABLE `stok_masuk_daftar` DISABLE KEYS */;
INSERT INTO `stok_masuk_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `no`) VALUES ('0001','142983','CLUB GALON',4080,3),('0006','000031','ICHI ICHA GREEN TEA',69,4),('0006','142983','CLUB GALON',25,5),('0007','000039','TEKITA GREENTEA',300,6),('0008','000031','ICHI ICHA GREEN TEA',1500,7),('0009','000039','TEKITA GREENTEA',1500,8);
/*!40000 ALTER TABLE `stok_masuk_daftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_sesuai`
--

DROP TABLE IF EXISTS `stok_sesuai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_sesuai` (
  `nota` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_sesuai`
--

LOCK TABLES `stok_sesuai` WRITE;
/*!40000 ALTER TABLE `stok_sesuai` DISABLE KEYS */;
INSERT INTO `stok_sesuai` (`nota`, `tgl`, `oleh`, `keterangan`, `no`) VALUES ('0001','2024-11-19','admin',' Aprove',1),('0002','2025-05-22','Ary Eka Saputra',' ',2);
/*!40000 ALTER TABLE `stok_sesuai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_sesuai_daftar`
--

DROP TABLE IF EXISTS `stok_sesuai_daftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_sesuai_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_brg` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `sebelum` int(10) NOT NULL,
  `sesudah` int(10) NOT NULL,
  `selisih` int(10) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_sesuai_daftar`
--

LOCK TABLES `stok_sesuai_daftar` WRITE;
/*!40000 ALTER TABLE `stok_sesuai_daftar` DISABLE KEYS */;
INSERT INTO `stok_sesuai_daftar` (`nota`, `kode_brg`, `nama`, `sebelum`, `sesudah`, `selisih`, `catatan`, `no`) VALUES ('0001','000001','Indomie',1000,30,-970,'Ajustment November',1),('0002','141954','Ichi Ocha Greentea',916,200,-716,'',2);
/*!40000 ALTER TABLE `stok_sesuai_daftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no3` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `no`) VALUES ('0001','2009-02-10','PT. ANUGERAH INDOFOOD BAR','Jakarta Selatan','08231321323',3),('0002','2024-12-01','PT Tirta Sukses Perkasa ','Jl. Raya Bogor KM. 26,5 Cimanggis, Depok, Jawa Barat 16951 Indonesia','08213321113',4);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat`
--

DROP TABLE IF EXISTS `surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surat` (
  `nota` varchar(10) NOT NULL,
  `nosurat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pelanggan` varchar(10) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `driver` varchar(20) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat`
--

LOCK TABLES `surat` WRITE;
/*!40000 ALTER TABLE `surat` DISABLE KEYS */;
INSERT INTO `surat` (`nota`, `nosurat`, `tanggal`, `kode_pelanggan`, `tujuan`, `notelp`, `alamat`, `driver`, `nohp`, `nopol`, `oleh`, `no`) VALUES ('0003','SR0003','2024-12-11','Pilih Pela','KFC CITRA RAYA','087774146088','CITRA RAYA BIZLINK ','AHMAD ROSADI','087874871733','B 1933 CRO','admin',3),('0004','SR0004','2025-06-26','Pilih Pela','KFC KISAMAUN','','','','','','Ary Eka Saputra',4),('0005','SR0005','2025-06-26','0055','PT. INTIKEMAS PUTRA','081384960690','PUTRA MAKMUR JL RAYA SERANG KM.17 2','IMAM','087774145677','B 1233 COG','Ary Eka Saputra',5),('0010','SR0010','2025-06-26','0005','KFC BOX RAMAYANA CIKUPA','08177157027','NURMANPERUM GRIYA CITRA','DONI','087776545677','B 5678 COG','Ary Eka Saputra',6),('0011','SR0011','2025-06-26','0079','PT INOCYCLE TECHNOLOGY','GROUP Tbk08129896101','TECHNOLOGY GROUP Tbk KAWASAN INDUSTRY PS','ASEP','088T758758','B 1233 COG','Ary Eka Saputra',7);
/*!40000 ALTER TABLE `surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userna_me` varchar(20) NOT NULL,
  `pa_ssword` varchar(70) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglaktif` date DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userna_me`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES ('admin','adcd7048512e64b48da55b027577886ee5a36350','Ary Eka Saputra',' Bukit Taman Baru','087742758849','1997-03-09','2020-03-26','admin','dist/upload/avatar-1.png',42);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lyam2686_inventory'
--

--
-- Dumping routines for database 'lyam2686_inventory'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-07 19:18:42
