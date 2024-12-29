-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2024 pada 15.39
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurir_1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(5) NOT NULL,
  `id_pengirim` int(5) NOT NULL,
  `id_penerima` int(5) NOT NULL,
  `id_layanan` int(5) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `nama_brg` varchar(20) DEFAULT NULL,
  `berat` int(10) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_pengirim`, `id_penerima`, `id_layanan`, `tgl_masuk`, `nama_brg`, `berat`, `biaya`) VALUES
(1, 1, 1, 3, '2024-01-29', '1-1', 3, 3000),
(2, 1, 2, 1, '2024-01-29', 'paket 1-2', 3, 1000),
(3, 2, 3, 2, '2024-01-29', 'paket 2-3', 2, 2000),
(4, 3, 5, 1, '2024-01-29', 'paket 3 5', 5, 1000),
(12, 4, 6, 3, '2024-01-29', 'barang 4-6', 5, 3000),
(13, 2, 6, 2, '2024-01-29', 'brg 2 6', 8, 2000),
(14, 2, 5, 1, '2024-01-29', 'brg 2 5', 7, 1000),
(15, 4, 6, 2, '2024-01-29', 'brg 4 6', 4, 2000),
(16, 3, 4, 3, '2024-01-29', 'kaca mentah 3 4', 5, 3000),
(17, 4, 2, 3, '2024-01-29', 'brg 4-2', 6, 3000),
(18, 4, 5, 2, '2024-01-29', 'sayur 4 5', 1, 2000),
(19, 1, 3, 3, '2024-01-29', 'asdfasdf', 5, 3000),
(20, 1, 2, 1, '2024-01-30', 'smokel 1 2', 2, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` int(5) NOT NULL,
  `nama_kurir` varchar(30) NOT NULL,
  `jenkel` enum('Laki-laki','Perempuan') NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama_kurir`, `jenkel`, `notelp`, `alamat`) VALUES
(1, 'kurir 1', 'Laki-laki', '08465321', 'alamar kurir 1'),
(2, 'kurir 2', 'Laki-laki', '08135465', 'alamat kurir 2'),
(3, 'kurir 3', 'Laki-laki', '081321', 'alamat kurir 3'),
(4, 'Kurir 4', 'Laki-laki', '05640321', 'Alamat kurir 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `ongkir` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama`, `ongkir`) VALUES
(1, 'biasa', 1000),
(2, 'cepat', 2000),
(3, 'kilat', 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(5) NOT NULL,
  `penerima` varchar(25) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerima`
--

INSERT INTO `penerima` (`id_penerima`, `penerima`, `alamat`, `no_telp`) VALUES
(1, 'penerima 1', 'alamat p 1', '086546546'),
(2, 'penerima 2', 'alamat p2', '085065465'),
(3, 'penerima 3', 'alamat p3', '054321'),
(4, 'pemerima 4', 'alamat p4', '0131654'),
(5, 'penerima 5', 'alamat penerima 5', '032165'),
(6, 'penerima 6', 'alamat p6', '0816543');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengirim`
--

CREATE TABLE `pengirim` (
  `id_pengirim` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengirim`
--

INSERT INTO `pengirim` (`id_pengirim`, `nama`, `no_telp`, `alamat`) VALUES
(1, 'pengirim 1', '05640', 'alamat peng 1'),
(2, 'pengirim 2', '05802', 'alamat peng 2'),
(3, 'pengirim 3', '0531231', 'alamat peng 3'),
(4, 'peng 4', '0856512', 'alamat peng 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(5) NOT NULL,
  `id_barang` int(5) NOT NULL,
  `id_kurir` int(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `id_barang`, `id_kurir`, `status`, `tgl_kirim`, `tgl_terima`, `keterangan`) VALUES
(3, 1, 1, 'Mengirim', '2024-01-29', '0000-00-00', NULL),
(4, 2, 2, 'Terkirim', '2024-01-29', '2024-11-30', 'barang sudah diterima palanggan'),
(5, 3, 3, 'Mengirim', '2024-01-30', '0000-00-00', NULL),
(6, 14, 2, 'Mengirim', '2024-01-29', '0000-00-00', NULL),
(7, 13, 1, 'Terkirim', '2024-01-27', '2024-11-30', 'Barang sudah diterima pelanggan'),
(8, 16, 2, 'Terkirim', '2024-01-27', '2024-11-30', 'barang sudah sampai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `level` enum('admin','staff','kurir') NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(20) DEFAULT NULL,
  `password_reset_key` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-04-30 00:00:00',
  `account_status` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `pass`, `email`, `level`, `login_session_key`, `email_status`, `password_reset_key`, `password_expire_date`, `account_status`) VALUES
(1, 'Reymon IF029', 'admin', '$2y$10$Nwo7lIFIB6HIVjaWam2Mm.fd31tmbQx7PQw.dNpchwAnJYq7T.xDy', 'admin@jakur.com', 'admin', NULL, NULL, NULL, '2024-04-30 00:00:00', 'Active'),
(3, 'Staff 1', 'staff', '$2y$10$LCXXsO3VTIVz57WzCz2bHeS8n7RoYfzeFrfBd9VwFagdPHkb7FfES', 'staff@jakur.com', 'staff', NULL, NULL, NULL, '2024-04-30 00:00:00', 'Active'),
(4, 'Kurir 1', 'kurir1', '$2y$10$qhmxmZrk8SrDWPYsZU3GdeoLp/AmnzGAe7IfveS6BLYd674q75GLy', 'kurir_1@jakur.com', 'kurir', NULL, NULL, NULL, '2024-04-30 00:00:00', 'Active'),
(5, 'Kurir 2', 'kurir2', '$2y$10$L0gr16usoHCKoKT0pq4EIO1uL', 'kurir_2@jakur.com', 'kurir', NULL, NULL, NULL, '2024-04-30 00:00:00', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_barang_penerima` (`id_penerima`),
  ADD KEY `fk_barang_pengirim` (`id_pengirim`),
  ADD KEY `fk_barang_layanan` (`id_layanan`) USING BTREE;

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indeks untuk tabel `pengirim`
--
ALTER TABLE `pengirim`
  ADD PRIMARY KEY (`id_pengirim`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `fk_pengiriman_barang` (`id_barang`),
  ADD KEY `fk_pengiriman_kurir` (`id_kurir`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengirim`
--
ALTER TABLE `pengirim`
  MODIFY `id_pengirim` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_barang_penerima` FOREIGN KEY (`id_penerima`) REFERENCES `penerima` (`id_penerima`),
  ADD CONSTRAINT `fk_barang_pengirim` FOREIGN KEY (`id_pengirim`) REFERENCES `pengirim` (`id_pengirim`);

--
-- Ketidakleluasaan untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `fk_pengiriman_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_pengiriman_kurir` FOREIGN KEY (`id_kurir`) REFERENCES `kurir` (`id_kurir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
