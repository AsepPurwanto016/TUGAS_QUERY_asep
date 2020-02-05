-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 05. Februari 2020 jam 22:16
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_jamtangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_jam_tangan` int(11) NOT NULL,
  `nama_jam_tangan` varchar(255) NOT NULL,
  `id_kategory_jam_tangan` varchar(255) NOT NULL,
  `harga_jam_tangan` int(11) NOT NULL,
  PRIMARY KEY (`id_jam_tangan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_jam_tangan`, `nama_jam_tangan`, `id_kategory_jam_tangan`, `harga_jam_tangan`) VALUES
(1, 'jam tangan anak', 'anak', 30000),
(2, 'jam merah', 'anak', 70000),
(3, 'jam biru', 'anak', 40000),
(4, 'jam standart', 'anak', 90000),
(5, 'jam kuning', 'anak', 85000),
(6, 'jam kecil', 'anak', 65000),
(7, 'jam besar', 'anak', 70000),
(8, 'jam orange', 'anak', 75000),
(9, 'jam coklat', 'anak', 200000),
(10, 'jam gshock', 'anak', 100000),
(11, 'jam sporty', 'anak', 200000),
(12, 'jam tidur', 'anak', 200000),
(13, 'jam ungu', 'anak', 20000),
(14, 'jam sepuluh malam', 'anak', 200000),
(15, 'jam olah raga', 'anak', 100000),
(16, 'jam olah raga', 'dewasa', 80000),
(17, 'jam standart', 'dewasa', 70000),
(18, 'jam kuning', 'dewasa', 80000),
(19, 'jam biru', 'dewasa', 60000),
(20, 'jam orange', 'dewasa', 25000),
(21, 'jam 10 siang', 'dewasa', 25000),
(22, 'jam biru', 'dewasa', 20000),
(23, 'jam coklat', 'dewasa', 300000),
(24, 'jam kuning', 'dewasa', 20000),
(25, 'jam tangan', 'dewasa', 100000),
(26, 'jam merah', 'dewasa', 200000),
(27, 'jam sporty', 'dewasa', 120000),
(28, 'jam casual', 'dewasa', 100000),
(29, 'jam garmin', 'dewasa', 30000),
(30, 'jam gshock', 'dewasa', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategory`
--

CREATE TABLE IF NOT EXISTS `kategory` (
  `id_kategory_jam_tangan` int(20) NOT NULL,
  `nama_kategoty_jam_tangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategory_jam_tangan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategory`
--

INSERT INTO `kategory` (`id_kategory_jam_tangan`, `nama_kategoty_jam_tangan`) VALUES
(7601, 'anak'),
(7602, 'anak'),
(7603, 'anak'),
(7604, 'anak'),
(7605, 'anak'),
(7606, 'anak'),
(7607, 'anak'),
(7608, 'anak'),
(7609, 'anak'),
(7610, 'anak'),
(7611, 'anak'),
(7612, 'anak'),
(7613, 'anak'),
(7614, 'anak'),
(7615, 'anak'),
(7616, 'dewasa'),
(7617, 'dewasa'),
(7618, 'dewasa'),
(7619, 'dewasa'),
(7620, 'dewasa'),
(7621, 'dewasa'),
(7622, 'dewasa'),
(7623, '0'),
(7624, 'dewasa'),
(7625, 'dewasa'),
(7626, 'dewasa'),
(7627, 'dewasa'),
(7628, 'dewasa'),
(7629, 'dewasa'),
(7630, 'dewasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi_jam_tangan` int(10) NOT NULL AUTO_INCREMENT,
  `id_jam_tangan` varchar(10) NOT NULL,
  `id_user_jam_tangan` varchar(20) NOT NULL,
  `harga_jam_tangan` varchar(20) NOT NULL,
  `no_transaksi_jam_tangan` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `quantity` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  PRIMARY KEY (`id_transaksi_jam_tangan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi_jam_tangan`, `id_jam_tangan`, `id_user_jam_tangan`, `harga_jam_tangan`, `no_transaksi_jam_tangan`, `tanggal`, `quantity`, `total`) VALUES
(1, '', '', '', 'jm01', '2020-01-16', 10, 0),
(2, '', '', '', 'jm02', '2020-01-16', 20, 0),
(3, '', '', '', 'jm03', '2020-01-16', 60, 0),
(4, '', '', '', 'jm04', '2020-01-16', 50, 0),
(5, '', '', '', 'jm05', '2020-01-16', 40, 0),
(6, '', '', '', 'jm06', '2020-01-16', 23, 0),
(7, '', '', '', 'jm07', '2020-01-16', 65, 0),
(8, '', '', '', 'jm08', '2020-01-16', 67, 0),
(9, '', '', '', 'jm09', '2020-01-16', 45, 0),
(10, '', '', '', 'jm10', '2020-01-16', 76, 0),
(11, '', '', '', 'jm11', '2020-01-16', 78, 0),
(12, '', '', '', 'jm12', '2020-01-16', 68, 0),
(13, '', '', '', 'jm13', '2020-01-16', 90, 0),
(14, '', '', '', 'jm14', '2020-01-16', 42, 0),
(15, '', '', '', 'jm15', '2020-01-16', 98, 0),
(16, '', '', '', 'jm16', '2020-01-16', 57, 0),
(17, '', '', '', 'jm17', '2020-01-16', 87, 0),
(18, '', '', '', 'jm18', '2020-01-16', 98, 0),
(19, '', '', '', 'jm19', '2020-01-16', 90, 0),
(20, '', '', '', 'jm20', '2020-01-16', 45, 0),
(21, '', '', '', 'jm21', '2020-01-16', 63, 0),
(22, '', '', '', 'jm22', '2020-01-16', 86, 0),
(23, '', '', '', 'jm23', '2020-01-16', 96, 0),
(24, '', '', '', 'jm24', '2020-01-16', 0, 0),
(25, '', '', '', 'jm25', '2020-01-16', 41, 0),
(26, '', '', '', 'jm26', '2020-01-16', 84, 0),
(27, '', '', '', 'jm27', '2020-01-16', 85, 0),
(28, '', '', '', 'jm28', '2020-01-16', 83, 0),
(29, '', '', '', 'jm29', '2020-01-16', 41, 0),
(30, '', '', '', 'jm30', '2020-01-16', 95, 0),
(31, '', '', '', 'jm01', '2020-01-16', 10, 0),
(32, '', '', '', 'jm02', '2020-01-16', 20, 0),
(33, '', '', '', 'jm03', '2020-01-16', 60, 0),
(34, '', '', '', 'jm04', '2020-01-16', 50, 0),
(35, '', '', '', 'jm05', '2020-01-16', 40, 0),
(36, '', '', '', 'jm06', '2020-01-16', 23, 0),
(37, '', '', '', 'jm07', '2020-01-16', 65, 0),
(38, '', '', '', 'jm08', '2020-01-16', 67, 0),
(39, '', '', '', 'jm09', '2020-01-16', 45, 0),
(40, '', '', '', 'jm10', '2020-01-16', 76, 0),
(41, '', '', '', 'jm11', '2020-01-16', 78, 0),
(42, '', '', '', 'jm12', '2020-01-16', 68, 0),
(43, '', '', '', 'jm13', '2020-01-16', 90, 0),
(44, '', '', '', 'jm14', '2020-01-16', 42, 0),
(45, '', '', '', 'jm15', '2020-01-16', 98, 0),
(46, '', '', '', 'jm16', '2020-01-16', 57, 0),
(47, '', '', '', 'jm17', '2020-01-16', 87, 0),
(48, '', '', '', 'jm18', '2020-01-16', 98, 0),
(49, '', '', '', 'jm19', '2020-01-16', 90, 0),
(50, '', '', '', 'jm20', '2020-01-16', 45, 0),
(51, '', '', '', 'jm21', '2020-01-16', 63, 0),
(52, '', '', '', 'jm22', '2020-01-16', 86, 0),
(53, '', '', '', 'jm23', '2020-01-16', 96, 0),
(54, '', '', '', 'jm24', '2020-01-16', 0, 0),
(55, '', '', '', 'jm25', '2020-01-16', 41, 0),
(56, '', '', '', 'jm26', '2020-01-16', 84, 0),
(57, '', '', '', 'jm27', '2020-01-16', 85, 0),
(58, '', '', '', 'jm28', '2020-01-16', 83, 0),
(59, '', '', '', 'jm29', '2020-01-16', 41, 0),
(60, '', '', '', 'jm30', '2020-01-16', 95, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user-jam_tangan` int(20) NOT NULL,
  `nama_user_jam_tangan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user-jam_tangan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user-jam_tangan`, `nama_user_jam_tangan`) VALUES
(1, 'ando'),
(2, 'andi'),
(3, 'arno'),
(4, 'ardi'),
(5, 'bandi'),
(6, 'bana'),
(7, 'bani'),
(8, 'budi'),
(9, 'bagus'),
(10, 'cayla'),
(11, 'cindy'),
(12, 'cahya'),
(13, 'cinta'),
(14, 'cucu'),
(15, 'cici'),
(16, 'candra'),
(17, 'dandi'),
(18, 'dodo'),
(19, 'didi'),
(20, 'doni'),
(21, 'donal'),
(22, 'eri'),
(23, 'eru'),
(24, 'endah'),
(25, 'fani'),
(26, 'funk'),
(27, 'gali'),
(28, 'galuh'),
(29, 'ganjar'),
(30, 'gusti');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
