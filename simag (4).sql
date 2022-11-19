-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2022 pada 14.14
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simag`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `datang` time NOT NULL,
  `pulang` time NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id`, `user_id`, `date`, `datang`, `pulang`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(109, 61, '2022-06-02', '11:04:39', '16:29:11', -7.84937, 112.703, '2022-06-02 11:04:39', '2022-06-07 08:09:22'),
(113, 61, '2022-06-07', '08:12:11', '12:38:58', -7.84936, 112.703, '2022-06-07 12:38:58', '2022-06-07 23:32:58'),
(119, 61, '2022-06-08', '12:19:12', '12:19:39', -7.84958, 112.703, '2022-06-08 12:19:12', '2022-06-08 22:26:16'),
(120, 61, '2022-06-09', '10:25:57', '14:04:16', -7.84927, 112.703, '2022-06-09 10:25:57', '2022-06-09 20:25:07'),
(122, 61, '2022-06-10', '09:16:19', '00:00:00', -7.82481, 112.719, '2022-06-10 09:16:19', '2022-06-10 18:30:26'),
(123, 61, '2022-06-19', '11:39:01', '00:00:00', -7.84936, 112.703, '2022-06-19 11:39:01', '2022-06-19 11:39:01'),
(124, 66, '2022-06-20', '10:41:06', '00:00:00', -8.00161, 112.621, '2022-06-20 10:41:06', '2022-06-20 10:41:35'),
(125, 63, '2022-06-20', '10:44:46', '00:00:00', 0, 0, '2022-06-20 10:44:46', '2022-06-20 10:44:46'),
(126, 61, '2022-06-22', '00:00:00', '14:17:56', -6.20876, 106.846, '2022-06-22 14:17:56', '2022-06-22 14:17:57'),
(127, 93, '2022-11-10', '10:23:53', '00:00:00', -7.30071, 112.728, '2022-11-10 10:23:53', '2022-11-10 10:24:14'),
(129, 93, '2022-11-19', '09:29:02', '00:00:00', -7.99202, 112.631, '2022-11-19 09:29:02', '2022-11-19 09:29:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` date NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `Nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `userId`, `date`, `mulai`, `selesai`, `keterangan`, `status`, `created_at`, `updated_at`, `Nilai`) VALUES
(34, 61, '2022-06-06', '08:16:00', '10:15:00', 'Kegiatan 1', 1, '2022-06-07 09:16:32', '2022-10-27 09:26:22', ''),
(36, 61, '2022-06-23', '10:00:00', '11:00:00', 'qwerty', 0, '2022-06-22 02:18:52', '2022-06-22 02:18:52', ''),
(38, 93, '2022-11-10', '10:28:00', '11:28:00', 'tidur', 2, '2022-11-09 21:33:08', '2022-11-09 21:33:32', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_peserta`
--

CREATE TABLE `info_peserta` (
  `id` int(11) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '/assets/img/peserta.png',
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `pengantar` varchar(256) NOT NULL,
  `proposal` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `info_peserta`
--

INSERT INTO `info_peserta` (`id`, `instansi`, `foto`, `startDate`, `endDate`, `pengantar`, `proposal`, `created_at`, `updated_at`, `userId`) VALUES
(32, 'Universitas A', '/assets/img/peserta.png', '2022-06-23', '2022-07-22', '/assets/dokumen pengantar/61/Dokumen.pdf', '/assets/dokumen proposal/61/Dokumen (1).pdf', '2022-06-01 21:16:17', '2022-06-01 21:16:17', 61),
(33, 'Universitas A', '/assets/img/peserta.png', '2022-06-22', '2022-07-21', '/assets/dokumen pengantar/63/Dokumen (1).pdf', '/assets/dokumen proposal/63/Dokumen (2).pdf', '2022-06-19 08:46:44', '2022-06-19 08:46:44', 63),
(34, 'Sekolah Tinggi Ilmu Statistik', '/assets/img/peserta.png', '2022-06-01', '2022-06-30', '/assets/dokumen pengantar/66/Permintaan Data DLH 18 mei 2022.pdf', '/assets/dokumen proposal/66/MATRIKS KEGIATAN TIM HUMAS - aPRIL 2022.pdf', '2022-06-19 22:37:40', '2022-06-19 22:37:40', 66),
(59, 'idu', '/assets/fotoprofil/93/1668050751_1b35f8598418756cae65.jpeg', '2022-11-06', '2022-11-21', '/assets/dokumen pengantar/93/LINK PRODUK & DESKRIPSI.pdf', '/assets/dokumen proposal/93/LINK PRODUK & DESKRIPSI.pdf', '2022-11-06 09:12:11', '2022-11-09 21:25:51', 93),
(65, 'POLIJE', '/assets/img/peserta.png', '2022-11-17', '2022-12-10', '/assets/dokumen pengantar/93/22-11-16-21-47-11_hgsg_93.pdf', '/assets/dokumen proposal/93/22-11-16-21-47-11_hgsg_93.pdf', '2022-11-18 23:05:32', '2022-11-18 23:05:32', 93),
(74, 'okhdgdbsns', '/assets/img/peserta.png', '2022-11-19', '2022-11-30', '/assets/dokumen pengantar/98/LINK PRODUK & DESKRIPSI.pdf', '/assets/dokumen proposal/98/LINK PRODUK & DESKRIPSI.pdf', '2022-11-19 06:34:39', '2022-11-19 06:34:39', 98);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `idduser` int(10) NOT NULL,
  `pengetahuan` int(10) NOT NULL,
  `keterampilan` int(10) NOT NULL,
  `kemampuan` int(10) NOT NULL,
  `disiplin` int(10) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `idduser`, `pengetahuan`, `keterampilan`, `kemampuan`, `disiplin`, `total`) VALUES
(3, 59, 7, 7, 7, 8, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seksi`
--

CREATE TABLE `seksi` (
  `id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `userid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jenisKelamin` int(1) NOT NULL,
  `tglLahir` date NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `jenisKelamin`, `tglLahir`, `role`, `created_at`, `updated_at`, `status`) VALUES
(33, 'Admin Viona', 'vionafebriana@gmail.com', 2, '1999-02-20', 1, '2022-02-24 09:09:23', '2022-02-24 09:09:23', 1),
(61, 'Viona Febriana', '221810647@stis.ac.id', 2, '2003-01-02', 3, '2022-06-01 21:16:17', '2022-06-01 21:17:50', 1),
(63, 'Peserta 1 ', 'peserta1stis@gmail.com', 2, '2002-01-11', 3, '2022-06-19 08:46:44', '2022-06-19 08:48:57', 1),
(64, 'Pembimbing 1', 'pembimbing1stis@gmail.com', 1, '1999-06-10', 2, '2022-06-19 08:55:07', '2022-06-19 08:55:07', 1),
(65, 'Admin 2', 'jayajayastis@gmail.com', 1, '1989-06-22', 1, '2022-06-19 09:01:50', '2022-06-19 09:01:50', 1),
(66, 'Bima Sakti Krisdianto', 'bimasakti.kr@gmail.com', 1, '1995-11-06', 3, '2022-06-19 22:37:40', '2022-06-19 22:40:08', 1),
(93, 'hgsg', 'firdaunsilah1206@gmail.com', 1, '2022-11-06', 3, '2022-11-06 09:12:11', '2022-11-06 09:12:11', 1),
(96, 'Rizal', 'khoirurrizal07@gmail.com', 1, '2022-11-19', 3, '2022-11-18 23:48:05', '2022-11-19 05:48:17', 0),
(97, 'icak', 'vrizchaulia182@gmail.com', 1, '2022-11-19', 3, '2022-11-19 05:22:38', '2022-11-19 05:22:38', 0),
(98, 'nnssa', 'e31201536@student.polije.ac.id', 1, '2022-11-19', 3, '2022-11-19 05:58:04', '2022-11-19 05:58:04', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `info_peserta`
--
ALTER TABLE `info_peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user(id)` (`idduser`);

--
-- Indeks untuk tabel `seksi`
--
ALTER TABLE `seksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `info_peserta`
--
ALTER TABLE `info_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `seksi`
--
ALTER TABLE `seksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD CONSTRAINT `aktivitas_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `info_peserta`
--
ALTER TABLE `info_peserta`
  ADD CONSTRAINT `info_peserta_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `seksi`
--
ALTER TABLE `seksi`
  ADD CONSTRAINT `seksi_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
