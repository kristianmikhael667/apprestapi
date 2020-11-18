-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2020 pada 03.50
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrestapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJBbmRpa2EgUHJhdGFtYSIsImVtYWlsIjoiYW5kaWthQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6MjAyMH1dLCJpYXQiOjE2MDUxNjc0NTAsImV4cCI6MTYwNTE2ODg5MH0.yQnMqnxA7UNBfpgIL1zVSXjp4hX1L3q7642I_dANjBA', '192.168.42.163'),
(2, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJEYW5hbmciLCJlbWFpbCI6ImRhbmFuZ0BnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOjIwMjB9XSwiaWF0IjoxNjA1MTY4ODg0LCJleHAiOjE2MDUxNzAzMjR9.23urNraUhxQRwK_40W5_J8zbPPKdR25alcTrDDQVeGw', '192.168.42.163'),
(3, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NSwidXNlcm5hbWUiOiJHaXRhIiwiZW1haWwiOiJnaXRhQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6MjAyMH1dLCJpYXQiOjE2MDUxNzIxNDgsImV4cCI6MTYwNTE3MzU4OH0.PTKBnTj33AnivmW5kCyFHjnK-dXCMkY9uZ5MPRm0grA', '192.168.42.163'),
(4, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJEaXRlcmltYSIsImVtYWlsIjoiYW1pbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOjIwMjB9XSwiaWF0IjoxNjA1MTcyNzExLCJleHAiOjE2MDUxNzQxNTF9.BIPqQa6WvBF2qbyp4oH9vJxbuJU_DpiU2UMgY0apboE', '192.168.42.163');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `id_matakuliah`, `id_mahasiswa`) VALUES
(1, '2020-11-11', 1, 4),
(2, '2020-11-11', 4, 9),
(3, '2020-11-11', 3, 10),
(4, '2020-11-11', 6, 5),
(5, '2020-11-11', 5, 5),
(6, '2020-11-11', 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(4, 1731127001, 'Mikhael Kristian', 'Informatika'),
(5, 1731127002, 'Gita Almayanti', 'Manajemen'),
(9, 1731127003, 'Jordan Yeezy', 'Manajemen'),
(10, 1731127004, 'Nike Air', 'Ahli Sepatu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Algoritma Dasar', 2),
(2, 'Pengantar Informatika', 2),
(3, 'Cuci Sepatu ', 6),
(4, 'Cuci Sendal', 7),
(5, 'Menghitung Uang', 2),
(6, 'Hitung Gaji Suami', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'Andika Pratama', 'andika@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 2020),
(2, 'Mikhael', 'kristianmikhael667@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 2020),
(3, 'Danang', 'danang@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 2020),
(4, 'Danang', 'post@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 2020),
(5, 'Gita', 'gita@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 2020),
(6, 'Diterima', 'amin@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 2020);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  ADD CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
