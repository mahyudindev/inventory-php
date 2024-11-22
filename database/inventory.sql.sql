

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO backset VALUES("http://localhost/inventory/","100","","1","0","MARS DROID","0","ID");



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO barang VALUES("000001","SKU001","Indomie","0","0","","Makanan","DUS","6","0","99","30","SKU001","Indofood","","0000-00-00","","","dist/upload/","1");
INSERT INTO barang VALUES("000002","SKU000002","Kopi Kapal Api ","0","0","","Minuman","DUS","0","1000","200","2000","BRG000002","Kapal Api","","0000-00-00","","","dist/upload/","2");
INSERT INTO barang VALUES("000003","SKU000003","Sambal Extra Pedas","0","0","","Makanan","DUS","0","0","50","101","BRG000003","Indofood","","0000-00-00","","","dist/upload/","3");
INSERT INTO barang VALUES("000004","SKU000004","Sembako","0","0","","Bahan Pokok","DUS","0","0","1","1000","","Indofood","","0000-00-00","","","dist/upload/","4");



CREATE TABLE `brand` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no4` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO brand VALUES("0001","Indomilk","1");
INSERT INTO brand VALUES("0002","Indofood","2");
INSERT INTO brand VALUES("0003","Kapal Api","3");



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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO chmenu VALUES("admin","5","5","5","5","5","5","5","5","5","5","5");
INSERT INTO chmenu VALUES("operator","0","3","2","2","2","5","5","1","5","0","");



CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO data VALUES("MARS DROID","","","08123456789","MARS DROID","dist/upload/unnamed-removebg-preview.png","0");



CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO info VALUES("admin","dist/upload/index.jpg","2023-04-02","<h3>Halo Selamat datang</h3>","1");
INSERT INTO info VALUES("admin","dist/upload/index.jpg","2023-04-02","<h3>Halo Selamat datang</h3>","1");
INSERT INTO info VALUES("admin","dist/upload/index.jpg","2023-04-02","<h3>Halo Selamat datang</h3>","1");
INSERT INTO info VALUES("admin","dist/upload/index.jpg","2023-04-02","<h3>Halo Selamat datang</h3>","1");



CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO jabatan VALUES("0001","admin","35");
INSERT INTO jabatan VALUES("0002","operator","33");



CREATE TABLE `kategori` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no4` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO kategori VALUES("0001","Makanan","1");
INSERT INTO kategori VALUES("0002","Minuman","2");
INSERT INTO kategori VALUES("0003","Bahan Pokok","3");



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO mutasi VALUES("admin","2024-11-19","000001","30","-970","Penyesuaian STOK","0001","1","berhasil");
INSERT INTO mutasi VALUES("admin","2024-11-19","000001","25","5","stok keluar","0001","2","berhasil");
INSERT INTO mutasi VALUES("admin","2024-11-19","000002","1001","1000","stok masuk","0001","3","berhasil");
INSERT INTO mutasi VALUES("admin","2024-11-22","000001","99","1","stok keluar","0002","4","berhasil");



CREATE TABLE `pelanggan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO pelanggan VALUES("0001","Indomarco Cabang Cilegon","234324324","cilegon","1");



CREATE TABLE `satuan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO satuan VALUES("0001","PCS","5");
INSERT INTO satuan VALUES("0002","DUS","6");
INSERT INTO satuan VALUES("0003","LUSIN","7");



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO stok_keluar VALUES("0001","01","2024-11-19","Indomarco Cabang Cilegon","42","Pengiriman Ke Cabang Serang","0","0","1");
INSERT INTO stok_keluar VALUES("0002","01","2024-11-22","","42","Pengiriman Ke Cabang Serang","0","0","2");



CREATE TABLE `stok_keluar_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subbeli` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO stok_keluar_daftar VALUES("0001","000001","Indomie","5","0","0","1");
INSERT INTO stok_keluar_daftar VALUES("0002","000001","Indomie","1","0","0","2");



CREATE TABLE `stok_masuk` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO stok_masuk VALUES("0001","","2024-11-19","PT. Santos Jaya Abadi ","42","1");



CREATE TABLE `stok_masuk_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO stok_masuk_daftar VALUES("0001","000002","Kopi Kapal Api ","1000","1");



CREATE TABLE `stok_sesuai` (
  `nota` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `no` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO stok_sesuai VALUES("0001","2024-11-19","admin"," Aprove","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO stok_sesuai_daftar VALUES("0001","000001","Indomie","1000","30","-970","Ajustment November","1");



CREATE TABLE `supplier` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no3` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO supplier VALUES("0001","2024-11-04","PT Indofood Sukses Makmur","jalan jalan","564654654654654","1");
INSERT INTO supplier VALUES("0002","2024-11-01","PT. Santos Jaya Abadi ","asdsadsadsad","564654654654654","2");



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO surat VALUES("0001","SR0001","2024-11-18","0001","Indomarco Cabang Cilegon","234324324","cilegon","Ahmad","234334324","","admin","1");
INSERT INTO surat VALUES("0002","SR0002","2024-11-22","Pilih Pela","","","","","","","admin","2");



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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("admin","adcd7048512e64b48da55b027577886ee5a36350","admin","  admin","11111","2023-04-02","2020-03-26","admin","dist/upload/avatar-1.png","42");

