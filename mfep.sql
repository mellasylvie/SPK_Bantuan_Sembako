-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2021 pada 06.35
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfep`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot`
--

CREATE TABLE `tbl_bobot` (
  `b1` float NOT NULL,
  `b2` float NOT NULL,
  `b3` float NOT NULL,
  `b4` float NOT NULL,
  `b5` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bobot`
--

INSERT INTO `tbl_bobot` (`b1`, `b2`, `b3`, `b4`, `b5`) VALUES
(0.25, 0.3, 0.2, 0.1, 0.15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `NIK` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `C1` int(11) NOT NULL,
  `C2` int(11) NOT NULL,
  `C3` int(11) NOT NULL,
  `C4` int(11) NOT NULL,
  `C5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`NIK`, `Nama`, `Alamat`, `C1`, `C2`, `C3`, `C4`, `C5`) VALUES
('3515120101560077', 'Sriadi', 'Desa Wonokupang RT.3 RW.5, Balongbendo - Sidoarjo', 3, 2, 3, 4, 4),
('3515120303910005', 'Sukirno', 'Desa Wonokupang RT.2 RW.1 , Balongbendo - Sidoarjo', 4, 3, 3, 2, 4),
('3515122811850002', 'Fajar Untoro', 'Desa Wonokupang RT.3 RW.4, Balongbendo - Sidoarjo', 2, 4, 4, 3, 1),
('3515123706570001', 'Suncoko', 'Desa Wonokupang RT.5 RW.7, Balongbendo - Sidoarjo', 4, 1, 2, 1, 2),
('3515124101620129', 'Ana Sulina', 'Desa Wonokupang RT.1 RW.1, Balongbendo - Sidoarjo', 3, 4, 4, 1, 1),
('3515124504670001', 'Suciningsih', 'Desa Wonokupang RT.2 RW.1, Balongbendo - Sidoarjo', 4, 3, 3, 4, 4),
('3515124507690004', 'Sri Juminah', 'Desa Wonokupang RT.3 RW.2, Balongbendo - Sidoarjo', 4, 4, 4, 1, 4),
('3515126808830001', 'Anik Yuni', 'Desa Wonokupang RT.3 RW.2, Balongbendo - Sidoarjo', 4, 3, 3, 1, 2),
('3515127001680001', 'Istriyah', 'Desa Wonokupang RT.4 RW.3, Balongbendo - Sidoarjo', 4, 4, 4, 3, 2),
('3515134407690004', 'Mariyanto', 'Desa Wonokupang RT.1 RW.2, Balongbendo - Sidoarjo', 3, 2, 2, 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peringkat`
--

CREATE TABLE `tbl_peringkat` (
  `NIK` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_peringkat`
--

INSERT INTO `tbl_peringkat` (`NIK`, `Nama`, `Nilai`) VALUES
('3515120101560077', 'Sriadi', 2.95),
('3515120303910005', 'Sukirno', 3.3),
('3515122811850002', 'Fajar Untoro', 2.95),
('3515123706570001', 'Suncoko', 2.1),
('3515124101620129', 'Ana Sulina', 3),
('3515124504670001', 'Suciningsih', 3.5),
('3515124507690004', 'Sri Juminah', 3.7),
('3515126808830001', 'Anik Yuni', 2.9),
('3515127001680001', 'Istriyah', 3.6),
('3515134407690004', 'Mariyanto', 2.55);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`Username`, `Password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bobot`
--
ALTER TABLE `tbl_bobot`
  ADD PRIMARY KEY (`b1`);

--
-- Indeks untuk tabel `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tbl_peringkat`
--
ALTER TABLE `tbl_peringkat`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
