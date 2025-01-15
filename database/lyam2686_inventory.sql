-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Jan 2025 pada 16.45
-- Versi server: 10.6.20-MariaDB-cll-lve
-- Versi PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyam2686_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `backset`
--

CREATE TABLE `backset` (
  `url` varchar(100) NOT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `namabisnis1` tinytext NOT NULL,
  `mode` varchar(1) NOT NULL,
  `prefikbarcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `backset`
--

INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `namabisnis1`, `mode`, `prefikbarcode`) VALUES
('https://marsdroid.lyarooms.com/', '100', '', '1', '0', 'MARS DROID', '0', 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

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
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode`, `sku`, `nama`, `hargabeli`, `hargajual`, `keterangan`, `kategori`, `satuan`, `terjual`, `terbeli`, `sisa`, `stokmin`, `barcode`, `brand`, `lokasi`, `expired`, `warna`, `ukuran`, `avatar`, `no`) VALUES
('141954', 'IOGT350', 'Ichi Ocha Greentea', 0, 0, '', 'Minuman', 'CAR', 0, 0, 916, 780, '1248', 'Ichi Ocha', '', '0000-00-00', '', '', 'dist/upload/', 20),
('142983', 'CLUB GALON', 'CLUB GALON', 0, 0, '', 'Minuman', 'GAL', 0, 0, 1125, 3504, '14016', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 23),
('143015', 'CLUB 1500 ', 'Club Botol 1500 ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 115, 91, '146', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 24),
('143018', 'CLUB 0330 ', 'Club Botol 330 ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 483, 528, '844', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 25),
('143019', 'CLUB 0600', 'Club Botol 600 ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 625, 418, '667', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 26),
('158826', 'CLUB220ML ', 'Club Botol 220 ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 296, 472, '754', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 27),
('406815', 'FCBKM150 ', 'Cocobit Gelas Kelapa', 0, 0, '', 'Minuman', 'CAR', 0, 0, 1, 13, '21', 'Cocobit', '', '0000-00-00', '', '', 'dist/upload/', 21),
('417741 ', 'CLUB250ML', 'Club Botol 220 ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 83, 22, '35', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 28),
('428382 ', 'OTM35024 ', 'Ichi Ocha Melati', 0, 0, '', 'Minuman', 'CAR', 0, 0, 47, 9, '14', 'Ichi Ocha', '', '0000-00-00', '', '', 'dist/upload/', 22),
('435376 ', 'VIAND200ML', 'Viand Gelas 200 ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 97, 39, '62', 'Viand', '', '0000-00-00', '', '', 'dist/upload/', 29),
('436580 ', 'CLUBBTL220ML ', 'Club Botol 220ml', 0, 0, '', 'Minuman', 'CAR', 0, 0, 358, 88, '140', 'Club', '', '0000-00-00', '', '', 'dist/upload/', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand`
--

CREATE TABLE `brand` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `brand`
--

INSERT INTO `brand` (`kode`, `nama`, `no`) VALUES
('0001', 'Ichi Ocha', 4),
('0002', 'Club', 5),
('0003', 'Viand', 6),
('0004', 'Cocobit', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chmenu`
--

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
  `menu11` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chmenu`
--

INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES
('admin', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('operator', '0', '3', '2', '2', '2', '5', '5', '1', '5', '0', ''),
('Supervisor', '5', '5', '1', '1', '5', '', '', '1', '1', '5', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`) VALUES
('MARS DROID', '', '', '08123456789', 'MARS DROID', 'dist/upload/unnamed-removebg-preview.png', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info`
--

CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `info`
--

INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES
('0001', 'admin', 35),
('0002', 'operator', 33),
('0003', 'Supervisor', 36);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kode`, `nama`, `no`) VALUES
('0001', 'Makanan', 4),
('0002', 'Minuman', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `namauser` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `sisa` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `no` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mutasi`
--

INSERT INTO `mutasi` (`namauser`, `tgl`, `kodebarang`, `sisa`, `jumlah`, `kegiatan`, `keterangan`, `no`, `status`) VALUES
('admin', '2024-11-19', '000001', 30, -970, 'Penyesuaian STOK', '0001', 1, 'berhasil'),
('admin', '2024-11-19', '000001', 25, 5, 'stok keluar', '0001', 2, 'berhasil'),
('admin', '2024-11-19', '000002', 1001, 1000, 'stok masuk', '0001', 3, 'berhasil'),
('admin', '2024-11-22', '000001', 99, 1, 'stok keluar', '0002', 4, 'berhasil'),
('admin', '2024-12-11', '141954', 816, 100, 'stok keluar', '0003', 5, 'berhasil'),
('admin', '2024-12-11', '142983', 2145, 1020, 'stok masuk', '0001', 6, 'berhasil'),
('admin', '2024-12-11', '142983', 3165, 2040, 'stok masuk', '0001', 7, 'berhasil'),
('admin', '2024-12-11', '142983', 5205, 4080, 'stok masuk', '0001', 8, 'berhasil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`kode`, `nama`, `notelp`, `alamat`, `no`) VALUES
('0001', 'KFC PARAMONT PETALS', '081292649448', 'PARAMONT PETALS JL BOULEVARD SAKURA', 1),
('0002', 'KFC TANGERANG CITY', '28068431', 'TANGERANG CITY LANTAI I JALAN JENDERAL', 2),
('0003', 'KFC DUTA GARDEN', '08117157081', 'GARDENJL HUSEIN SASTRANEGARA', 3),
('0004', 'KFC BUMI INDAH', '081293284182', 'INDAHJL BUMI INDAH GUDANG', 4),
('0005', 'KFC BOX RAMAYANA CIKUPA', '08177157027', 'NURMANPERUM GRIYA CITRA', 5),
('0006', 'KFC BSD SQUARE', '5371836', 'JL BUMI SERPONG DAMAI', 6),
('0007', 'KFC BOX Q BIG BSD CITY', '08117156981', 'BIG BSD CITY JL BSD RAYA UTAMA LENGKONG', 7),
('0008', 'KFC CIPUTAT GAPLEK', '7443511', 'GAPLEK JL CABE RAYA RT 03 RW', 8),
('0009', 'KFC BOX SPBU VIKTOR BSD', '08117156949', 'VIKTOR BSD JALAN BUARAN NO 118', 9),
('0010', 'KFC PAMULANG SQUARE', '08117156945', 'SQUARE JALAN SILIWANGI NO 12 PAMULANG', 10),
('0011', 'KFC PUSPITEK SERPONG PARADISE', '08117157398', 'SERPONG PARADISE JL RAYA PUSPITEK NO 1W SAMPING', 11),
('0012', 'KFC ITC BSD FOODCOURT', '08117156975', 'FOODCOURT JALAN PAHLAWAN SERIBU', 12),
('0013', 'KFC KISAMAUN', '3517244', 'KISAMAUN TANGERANG JL DAAN MOGOT KISAMAUN SUKARASA', 13),
('0014', 'KFC CIPONDOH', '087780127957', 'JALAN KH. HASYIM ASHARI', 14),
('0015', 'KFC REST AREA KM 13.5', '081290734675', 'AREA KM 13.5 TGR JALAN TOL JAKARTA MERAK', 15),
('0016', 'KFC DADAP', '08117157082', 'JALAN PERGUDANGAN SENTRA', 16),
('0017', 'KFC CBD CILEDUG', '734460005', 'CILEDUGJL. HOS COKROAMINOTO', 17),
('0018', 'KFC REST AREA KM 14 TGR', '08117157026', 'KM 14 TGR JALAN TOL JAKARTA', 18),
('0019', 'KFC BOX RAMAYANA CILEDUG', '08117157006', 'RAMAYANA CILEDUG JL HOS COKROAMINOTO', 19),
('0020', 'KFC BANDARA SOETA TERMINAL', '082114637995', 'SOETA TERMINAL 3 LANDSI', 20),
('0021', 'KFC BOX BANDARA', ' 089516003158', 'BANDARA SOETA TERMINAL 1A', 21),
('0022', 'KFC BANDARA SOETA', '5562380', 'SOETA TERMINAL 3 ULTIMA', 22),
('0023', 'KFC AIRPORT HUB', '08117157078', 'HUBJL. HUSEIN SASTRANEGARA', 23),
('0024', 'KFC TERMINAL 3 AIRSIDE', '081510744368', '3 AIRSIDE TERMINAL 3 AIRSIDE SOETTA', 24),
('0025', 'KFC ALAM SUTERA', '08117156978', 'SUTERAJL BOULEVARD ALAM SUTERA', 25),
('0026', 'KFC BOX TRANSMART', '08177157027', 'TRANSMART GRAHA BINTARO', 26),
('0027', 'KFC BINTARO PLAZA', '08117156996', 'PLAZA BINTARO PLAZA SEKTOR', 27),
('0028', 'KFC PARAMOUNT SERPONG', '089516003158', 'PARAMOUNT SERPONG JL KELAPA DUA RAYA CURUG', 28),
('0029', 'KFC CIRENDEU', '7418802', 'JALAN CIRENDEU RAYA NO.20', 29),
('0030', 'KFC SPBU COCO PERTAMINA', '7495322', 'COCO PERTAMINA CIPUTAT SPBU PERTAMINA 31 JL. IR.H.', 30),
('0031', 'KFC FUNTASTICO EMERALD', '08118147509', 'FUNTASTICO EMERALD BINTARO JL BOULEVARD BINTARO', 31),
('0032', 'KFC AEON MALL', '08117156979', 'MALLLANTAI 3 UNIT 3 SAMPAI', 32),
('0033', 'KFC BINTARO SEKTOR 9', '08117157004', 'SEKTOR 9 JALAN JENDERAL SUDIRMAN', 33),
('0034', 'KFC LIPPO SUPERMALL', '5462377', 'SUPERMALL KARAWACI JL BOULEVARD PALEM RAYA', 34),
('0035', 'KFC BOX LIVING WORLD', 'SUTERA08117156983', 'LIVING WORLD ALAM SUTERA JL BOULEVARD ALAM SUTERA', 35),
('0036', 'PT. INDOFOOD CBP SUKSES', '215960728 / 5960727', 'CBP SUKSES MAKMUR Tbk. JL RAYA SERANG KM.11 BITUNG', 36),
('0037', 'PT. INDOMARCO ADI PRIMA JATAKE', '021-59306910', 'INDOMARCO ADI PRIMA - Jatake JL. MERDEKA PABUARAN KARAWACI', 37),
('0038', 'Indofood Fortuna Makmur - Cikokol', '02155757283', 'Makmur - Cikokol Jl Wisma Damatex Rt.001 Rw.001', 38),
('0039', 'Indofood Fortuna Makmur - Cikupa', '02129320371', 'Makmur - Cikupa Jl Bhumimas II No.5 RT .01 RW.03', 39),
('0040', 'IAP - CABANG TANGERANG', '5531134', 'TANGERANG Jl. Merdeka No. 207 Tangerang', 40),
('0041', 'RS. MAYAPADA TGR', '081380787169', 'TGR JL HONORIS RAYA NO.6', 41),
('0042', 'RS. EKA HOSPITAL', '082125235482', 'HOSPITALCENTRAL BUSINESS DISTRICT', 42),
('0043', 'PT. ANDALAN ARTHALESTARI', '082299495082', 'ARTHALESTARI JL.LETJEN S.PARMAN KAV.79', 43),
('0044', 'PT. BAJA PUTIH', '7510008', 'Kwsn Ind Manis Bitung Tangerang', 44),
('0045', 'PT. PANARUB INDUSTRY', '081519815424', 'INDUSTRY MOCH.TOHA KM.1 DH JL.RAYA', 45),
('0046', 'Galvindo Inti Selaras PT', '0215961258', 'Selaras PT JL.P.JAYAKARTA 131 A32 ', 46),
('0047', 'PT KAMADJAJA LOGISTICS', '081218946007', 'LOGISTICS BENUA KOMPLEK BENUA MAS', 47),
('0048', 'PT. UNIVERSAL RESPATI', '083877821282', 'RESPATI TURBINE ENGIN', 48),
('0049', 'PT. FKS MULTI AGRO TBK', '081355517702', 'AGRO TBK GUDANG FKS MULTI AGRO', 49),
('0050', 'PT. FLEXO SOLUSI INDONESIA', '087776487112', 'SOLUSI INDONESIA JL. PEMBANGUNAN NO.9', 50),
('0051', 'PT. GLOBAL JET ECOMMERCE', '085774906143', 'JET ECOMMERCE JL.PALEM MANIS RAYA RT.01', 51),
('0052', 'PT. SATYAMITRA KEMAS LESTARI', '021-5950988', 'SATYAMITRA KEMAS LESTARI TBK', 52),
('0053', 'PT. MENARRA INTI DISTRIBUSI', '081212888977', 'INTI DISTRIBUSI JL BHUMIMAS VII NO.3 CIKUPA', 53),
('0054', 'INDOGROSIR CIKUPA', '082218997711', 'CIKUPA JL RAYA SERANG KM 19.2 RT', 54),
('0055', 'PT. INTIKEMAS PUTRA', '081384960690', 'PUTRA MAKMUR JL RAYA SERANG KM.17 2', 55),
('0056', 'PT. SINAR QUALITY INTERNUSA', '087887212320', 'QUALITY INTERNUSA JLN. MODERN INDUSTRY XVII', 56),
('0057', 'PT. LOSCAM INDONESIA', '081289406844', 'INDONESIA JL RAYA RANGKAS BITUNG', 57),
('0058', 'PT. BERKAT JAYA TIGA', '081287874396', 'JAYA TIGA Ruko Villa Dago Blok AD No.', 58),
('0059', 'PT. CROWN WORLDWIDE INDONESIA', '', 'WORLDWIDE INDONESIA VILLA MUTIARA SERPONG', 59),
('0060', 'PT.TRAKINDO UTAMA', '08119725827', 'UTAMA Gd.TMT 1 Lt.11-17 Suite 1101-1701', 60),
('0061', 'PT. UNIFLEX KEMASINDAH', '081310760055', 'KEMASINDAH TAMAN TEKNO BSD JL.TEKNO', 61),
('0062', 'Mitra Pinasthika Mustika Rent', '081284210474', 'Mustika Rent PT Sunburst CBD LOT II No.10', 62),
('0063', 'BLUE BIRD BSD', '0817844526', 'BSD JL. CILENGGANG II NO.3', 63),
('0064', 'MARILYN HOTEL SERPONG', '', 'HOTEL SERPONG JL. RAYA SERPONG NO.1 PAKULONAN', 64),
('0065', 'PT. YUSEN LOGISTICS', '087787247576', 'LOGISTICS JPT PERKANTORAN GEDUNG', 65),
('0066', 'PT. KUKUH MANDIRI LESTARI', '081349348497', 'MANDIRI LESTARI JL INPEKSI PIK 2 NO.1 TERUSAN', 66),
('0067', 'PT.Indomobil Trada Nasional-BINTARO', '02192808261', 'Nasional-BINTARO Wisma Indomobil Jl. MT Haryono', 67),
('0068', 'YAYASAN PRASETIYA MULYA', '02130450500', 'PRASETIYA MULYA EDU TOWN KAVLING EDU', 68),
('0069', 'CITITRANS BINTARO', '089608244062', 'BINTARO RUKO VICTORIA JL BINTARO', 69),
('0070', 'PT. PERSITA TANGERANG RAYA', '081299701995', 'TANGERANG RAYA PERSITA OFFICE FORESTA', 70),
('0071', 'LG Electronics PT BSD Tangerang', '02129446189', 'BSD Tangerang Ruko Celesta Bintaro Jaya Blok', 71),
('0072', 'YAYASAN KASIH ABADI', '021-54212999', 'KASIH ABADI JL. ARTHA KENCANA KAV', 72),
('0073', 'ST CAROLUS HOSPITAL', '085727323216', 'HOSPITAL JL.GADING GOLF BOULEVARD', 73),
('0074', 'PT. SUPERMAL KARAWACI', '5466666', 'KARAWACI JL. BOULEVARD DIPONEGORO', 74),
('0075', 'Yasmin Resort & Conference Hotel', '0215982201', 'Conference Hotel Jl. Raya Binong No. 08 Karawaci', 75),
('0076', 'Central Sole Agency PT', '55650101', 'Agency PT Jl. Gatot Subroto Km.18 Manis', 76),
('0077', 'Hilon Indonesia PT', '0215909626', 'PT Jl. Putera Utama No.9 Kawasan', 77),
('0078', 'PT. Supratama Aneka Industri', '021-6337305', 'Aneka Industri Jl. Industri Raya III Ujung', 78),
('0079', 'PT INOCYCLE TECHNOLOGY', 'GROUP Tbk08129896101', 'TECHNOLOGY GROUP Tbk KAWASAN INDUSTRY PS', 79),
('0080', 'PT. MENARA INTI KREASI INDONESIA', '', 'INTI KREASI INDONESIA MILLENIUM INDUSTRIAL', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`kode`, `nama`, `no`) VALUES
('0001', 'CAR', 8),
('0002', 'GAL', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_keluar`
--

CREATE TABLE `stok_keluar` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `modal` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_keluar`
--

INSERT INTO `stok_keluar` (`nota`, `cabang`, `tgl`, `pelanggan`, `userid`, `keterangan`, `modal`, `total`, `no`) VALUES
('0003', '01', '2024-12-11', 'KFC CITRA RAYA', '42', '', 0, 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_keluar_daftar`
--

CREATE TABLE `stok_keluar_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subbeli` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_keluar_daftar`
--

INSERT INTO `stok_keluar_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `subbeli`, `subtotal`, `no`) VALUES
('0003', '141954', 'Ichi Ocha Greentea', 100, 0, 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_masuk`
--

CREATE TABLE `stok_masuk` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_masuk`
--

INSERT INTO `stok_masuk` (`nota`, `cabang`, `tgl`, `supplier`, `userid`, `no`) VALUES
('0001', '', '2024-12-11', 'PT. ANUGERAH INDOFOOD BAR', '42', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_masuk_daftar`
--

CREATE TABLE `stok_masuk_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_masuk_daftar`
--

INSERT INTO `stok_masuk_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `no`) VALUES
('0001', '142983', 'CLUB GALON', 4080, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_sesuai`
--

CREATE TABLE `stok_sesuai` (
  `nota` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_sesuai`
--

INSERT INTO `stok_sesuai` (`nota`, `tgl`, `oleh`, `keterangan`, `no`) VALUES
('0001', '2024-11-19', 'admin', ' Aprove', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_sesuai_daftar`
--

CREATE TABLE `stok_sesuai_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_brg` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `sebelum` int(10) NOT NULL,
  `sesudah` int(10) NOT NULL,
  `selisih` int(10) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_sesuai_daftar`
--

INSERT INTO `stok_sesuai_daftar` (`nota`, `kode_brg`, `nama`, `sebelum`, `sesudah`, `selisih`, `catatan`, `no`) VALUES
('0001', '000001', 'Indomie', 1000, 30, -970, 'Ajustment November', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `no`) VALUES
('0001', '2009-02-10', 'PT. ANUGERAH INDOFOOD BAR', 'Jakarta Selatan', '08231321323', 3),
('0002', '2024-12-01', 'PT Tirta Sukses Perkasa ', 'Jl. Raya Bogor KM. 26,5 Cimanggis, Depok, Jawa Barat 16951 Indonesia', '08213321113', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

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
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`nota`, `nosurat`, `tanggal`, `kode_pelanggan`, `tujuan`, `notelp`, `alamat`, `driver`, `nohp`, `nopol`, `oleh`, `no`) VALUES
('0003', 'SR0003', '2024-12-11', 'Pilih Pela', 'KFC CITRA RAYA', '087774146088', 'CITRA RAYA BIZLINK ', 'AHMAD ROSADI', '087874871733', 'B 1933 CRO', 'admin', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

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
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES
('admin', 'adcd7048512e64b48da55b027577886ee5a36350', 'Ary Eka Saputra', ' Bukit Taman Baru', '087742758849', '1997-03-09', '2020-03-26', 'admin', 'dist/upload/avatar-1.png', 42);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `backset`
--
ALTER TABLE `backset`
  ADD PRIMARY KEY (`url`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`),
  ADD KEY `jenis` (`kategori`);

--
-- Indeks untuk tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no4` (`no`);

--
-- Indeks untuk tabel `chmenu`
--
ALTER TABLE `chmenu`
  ADD PRIMARY KEY (`userjabatan`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `info`
--
ALTER TABLE `info`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no4` (`no`);

--
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_keluar`
--
ALTER TABLE `stok_keluar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_keluar_daftar`
--
ALTER TABLE `stok_keluar_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_masuk`
--
ALTER TABLE `stok_masuk`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_masuk_daftar`
--
ALTER TABLE `stok_masuk_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_sesuai`
--
ALTER TABLE `stok_sesuai`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_sesuai_daftar`
--
ALTER TABLE `stok_sesuai_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no3` (`no`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userna_me`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `stok_keluar`
--
ALTER TABLE `stok_keluar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `stok_keluar_daftar`
--
ALTER TABLE `stok_keluar_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `stok_masuk`
--
ALTER TABLE `stok_masuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `stok_masuk_daftar`
--
ALTER TABLE `stok_masuk_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `stok_sesuai`
--
ALTER TABLE `stok_sesuai`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `stok_sesuai_daftar`
--
ALTER TABLE `stok_sesuai_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
