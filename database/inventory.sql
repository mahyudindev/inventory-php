-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 03:21 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

--
-- Dumping data for table `backset`
--

INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `namabisnis1`, `mode`, `prefikbarcode`) VALUES
('http://marsdroid.lyarooms.com/', '100', '', '1', '0', 'MARS DROID', '0', 'ID');

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `sku`, `nama`, `hargabeli`, `hargajual`, `keterangan`, `kategori`, `satuan`, `terjual`, `terbeli`, `sisa`, `stokmin`, `barcode`, `brand`, `lokasi`, `expired`, `warna`, `ukuran`, `avatar`, `no`) VALUES
('000001', 'SKU001', 'Indomie', 0, 0, '', 'Makanan', 'DUS', 6, 0, 99, 30, 'SKU001', 'Indofood', '', '0000-00-00', '', '', 'dist/upload/', 1),
('000002', 'SKU000002', 'Kopi Kapal Api ', 0, 0, '', 'Minuman', 'DUS', 0, 1000, 200, 2000, 'BRG000002', 'Kapal Api', '', '0000-00-00', '', '', 'dist/upload/', 2),
('000003', 'SKU000003', 'Sambal Extra Pedas', 0, 0, '', 'Makanan', 'DUS', 0, 0, 50, 101, 'BRG000003', 'Indofood', '', '0000-00-00', '', '', 'dist/upload/', 3),
('000004', 'SKU000004', 'Sembako', 0, 0, '', 'Bahan Pokok', 'DUS', 0, 0, 1, 1000, '', 'Indofood', '', '0000-00-00', '', '', 'dist/upload/', 4),
('000005', 'SKU000005', 'Testing', 0, 0, '', 'Makanan', 'PCS', 0, 0, 1000, 1, '', 'Indomilk', '', '0000-00-00', '', '', 'dist/upload/', 5),
('000006', 'SKU000006', 'wqewqewqe', 0, 0, '', 'Makanan', 'PCS', 0, 0, 111, 1, '', 'Indomilk', '', '0000-00-00', '', '', 'dist/upload/', 6),
('000007', 'SKU000007', 'ayam', 0, 0, '', 'Makanan', 'PCS', 0, 0, 1000, 1, '1', 'Indomilk', '', '0000-00-00', '', '', 'dist/upload/', 7),
('000008', 'SKU000008', 'asdsadsad', 0, 0, '', 'Makanan', 'PCS', 0, 0, 100, 100, '100', 'Indomilk', '', '0000-00-00', '', '', 'dist/upload/', 8);

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`kode`, `nama`, `no`) VALUES
('0001', 'Indomilk', 1),
('0002', 'Indofood', 2),
('0003', 'Kapal Api', 3);

--
-- Dumping data for table `chmenu`
--

INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES
('admin', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('operator', '0', '3', '2', '2', '2', '5', '5', '1', '5', '0', '');

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`) VALUES
('MARS DROID', '', '', '08123456789', 'MARS DROID', 'dist/upload/unnamed-removebg-preview.png', 0);

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1);

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES
('0001', 'admin', 35),
('0002', 'operator', 33);

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode`, `nama`, `no`) VALUES
('0001', 'Makanan', 1),
('0002', 'Minuman', 2),
('0003', 'Bahan Pokok', 3);

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`namauser`, `tgl`, `kodebarang`, `sisa`, `jumlah`, `kegiatan`, `keterangan`, `no`, `status`) VALUES
('admin', '2024-11-19', '000001', 30, -970, 'Penyesuaian STOK', '0001', 1, 'berhasil'),
('admin', '2024-11-19', '000001', 25, 5, 'stok keluar', '0001', 2, 'berhasil'),
('admin', '2024-11-19', '000002', 1001, 1000, 'stok masuk', '0001', 3, 'berhasil'),
('admin', '2024-11-22', '000001', 99, 1, 'stok keluar', '0002', 4, 'berhasil');

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode`, `nama`, `notelp`, `alamat`, `no`) VALUES
('0001', 'Indomarco Cabang Cilegon', '234324324', 'cilegon', 1);

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`kode`, `nama`, `no`) VALUES
('0001', 'PCS', 5),
('0002', 'DUS', 6),
('0003', 'LUSIN', 7);

--
-- Dumping data for table `stok_keluar`
--

INSERT INTO `stok_keluar` (`nota`, `cabang`, `tgl`, `pelanggan`, `userid`, `keterangan`, `modal`, `total`, `no`) VALUES
('0001', '01', '2024-11-19', 'Indomarco Cabang Cilegon', '42', 'Pengiriman Ke Cabang Serang', 0, 0, 1),
('0002', '01', '2024-11-22', '', '42', 'Pengiriman Ke Cabang Serang', 0, 0, 2);

--
-- Dumping data for table `stok_keluar_daftar`
--

INSERT INTO `stok_keluar_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `subbeli`, `subtotal`, `no`) VALUES
('0001', '000001', 'Indomie', 5, 0, 0, 1),
('0002', '000001', 'Indomie', 1, 0, 0, 2);

--
-- Dumping data for table `stok_masuk`
--

INSERT INTO `stok_masuk` (`nota`, `cabang`, `tgl`, `supplier`, `userid`, `no`) VALUES
('0001', '', '2024-11-19', 'PT. Santos Jaya Abadi ', '42', 1);

--
-- Dumping data for table `stok_masuk_daftar`
--

INSERT INTO `stok_masuk_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `no`) VALUES
('0001', '000002', 'Kopi Kapal Api ', 1000, 1);

--
-- Dumping data for table `stok_sesuai`
--

INSERT INTO `stok_sesuai` (`nota`, `tgl`, `oleh`, `keterangan`, `no`) VALUES
('0001', '2024-11-19', 'admin', ' Aprove', 1);

--
-- Dumping data for table `stok_sesuai_daftar`
--

INSERT INTO `stok_sesuai_daftar` (`nota`, `kode_brg`, `nama`, `sebelum`, `sesudah`, `selisih`, `catatan`, `no`) VALUES
('0001', '000001', 'Indomie', 1000, 30, -970, 'Ajustment November', 1);

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `no`) VALUES
('0001', '2024-11-04', 'PT Indofood Sukses Makmur', 'jalan jalan', '564654654654654', 1),
('0002', '2024-11-01', 'PT. Santos Jaya Abadi ', 'asdsadsadsad', '564654654654654', 2);

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`nota`, `nosurat`, `tanggal`, `kode_pelanggan`, `tujuan`, `notelp`, `alamat`, `driver`, `nohp`, `nopol`, `oleh`, `no`) VALUES
('0001', 'SR0001', '2024-11-18', '0001', 'Indomarco Cabang Cilegon', '234324324', 'cilegon', 'Ahmad', '234334324', '', 'admin', 1),
('0002', 'SR0002', '2024-11-22', 'Pilih Pela', '', '', '', '', '', '', 'admin', 2);

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES
('admin', 'adcd7048512e64b48da55b027577886ee5a36350', 'admin', '  admin', '11111', '2023-04-02', '2020-03-26', 'admin', 'dist/upload/avatar-1.png', 42);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
