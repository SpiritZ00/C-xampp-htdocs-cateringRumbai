-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 03 Jul 2026 pada 18.26
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama_paket`, `deskripsi`, `harga`, `satuan`, `gambar`, `created_at`) VALUES
(1, 'Paket Prasmanan', 'Nasi putih, lauk utama (ayam/daging), lauk pendamping, sayur, kerupuk, buah segar, dan minuman.', 50000, 'Porsi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8Lcab8z5pU7zts3uKg1chCAQrQfv13yqSz6CDd09NFw&s=10', '2026-06-27 15:57:11'),
(2, 'Paket Nasi Kotak', 'Sangat praktis untuk berbagai acara. Berisi nasi, ayam bakar, sambal, lalapan, tempe, dan buah.', 35000, 'Kotak', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnmTg27eSnD8-cAId2U4igPt0yvsK9mvju2noHQw2K2Q&s=10', '2026-06-27 15:57:11'),
(3, 'Paket Snack Box', 'Terdiri dari kue manis, kue asin, dan air mineral. Sangat cocok untuk acara rapat atau seminar.', 15000, 'Box', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7oYmed5G7kSoA5CQH52QLQ6gYgD2-muQifcuYht47mQ&s=10', '2026-06-27 15:57:11'),
(4, 'Minuman', 'menyegarkan dikala haus dan membuat badan segar cocok digabung dengan paket prasmanan', 10000, 'Porsi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEc9O4cmz87-T7FCRKGQyzDdF-JIOpp2T_mjwJzOHUww&s=10', '2026-06-28 07:23:13'),
(5, 'Los Polos Hermanos', 'ayam goreng dengan kentang yang sangat menggugah selera anda cocok untuk pesta perayaan.dilengkapi dengan bumbu rahasia garam biru', 25000, 'Box', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7QR4fWeXOHpo8118jnyK2qrBQlZAF5VQ7IQ&s', '2026-06-28 07:26:46'),
(6, 'MBG', 'mas bahlil ganteng', 19000, 'porsi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq0XBwZSTx286ioyX2fXrqw0BIkVHg_OknjidrNBhneA&s=10', '2026-06-30 07:58:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal_pesan` date DEFAULT NULL,
  `jumlah_porsi` int(255) NOT NULL,
  `jenis_konsumsi` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `nomor_telepon` int(15) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `total_harga` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama`, `tanggal_pesan`, `jumlah_porsi`, `jenis_konsumsi`, `tempat`, `nomor_telepon`, `catatan`, `total_harga`) VALUES
(1, 'salman', '2026-06-19', 50, 'Paket Prasmanan', 'politeknik caltex riau', 812345678, 'tidak ada\r\n', 2500000),
(3, 'Salwa Alifia Fauzan', '2026-06-20', 500, 'Paket Prasmanan', 'politeknik caltex riau', 987765432, 'jangan pakai sambel', 25000000),
(5, 'Salwa Alifia Fauzan', '2026-06-20', 31, 'Paket Prasmanan', 'pcr', 123456789, '', 1550000),
(6, 'mas kevin', '2026-05-31', 20, 'Paket Nasi Kotak', 'unja', 123456789, '', 700000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `jabatan`, `email`, `password`) VALUES
(1, 'SalmanAdmin', 'admin', 'admin@gmail.com', 'admin123'),
(3, 'SALMAN FARIS', 'admin', 'salman25ti@mahasiswa.pcr.ac.id', '1234'),
(4, 'Bang prengki', 'user', 'preng25ti@mahasiswa.pcr.ac.id', '1234');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
