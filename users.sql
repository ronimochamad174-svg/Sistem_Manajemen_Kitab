-- phpMyAdmin SQL Dump
-- version 5.2.3-dev+20250629.3b4ceafb59
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Nov 2026 pada 08.19
-- Versi server: 11.4.3-MariaDB-log
-- Versi PHP: 8.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `manajemen_peminjaman_kitab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nis_nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','santri') NOT NULL DEFAULT 'santri',
  `kamar_asrama` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nis_nip`, `nama_lengkap`, `username`, `password`, `role`, `kamar_asrama`, `no_hp`, `created_at`) VALUES
(1, 'absensi', 'Yunus Alfaruk', 'admin', '$2a$12$2w77gdTfoTknKcmpnd36aeuquTZ76fcrxXl0kryphKvejHfLxBsNG', 'admin', 'Umar1', '12345678', '2026-11-22 08:11:45'),
(2, 'siswa1', 'Muhroni', 'siswa1', '$2a$12$Yu4ndmG0IxMbwCsctAYSl.aU1GVHs36lh85QywLsLEu8hf8Xo2BT.', 'santri', 'Umar2', '13579', '2026-11-22 08:16:40');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `uk_nis_nip` (`nis_nip`),
  ADD UNIQUE KEY `uk_username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
