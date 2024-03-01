-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2024 pada 09.14
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifoto7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `KomentarID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Irawan', 'irawan', 'adminirawan', '085774137284', 'irawan@gmail.com', 'Jl. Raya Kadu Seungit'),
(2, 'Hazwan', 'hazwan', '123', '085787778811', 'hazwan@gmail.com', 'Cikeusik Pandeglang'),
(5, 'Arya Prasetia', 'arya', '123', '082115115946', 'arya12@gmail.com', 'Jalantir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(14, 'Ikan Nemo'),
(16, 'Ikan Tuna'),
(17, 'Ikan Hiu'),
(23, 'Ikan Dholpin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(2, 23, 'IKAN', 5, 'Arya Prasetia', 'Ikan Dholpin', 'Lumba-lumba adalah mamalia laut yang sangat cerdas, selain itu sistem alamiah yang melengkapi tubuhnya sangat kompleks. Sehingga banyak teknologi yang terinspirasi dari lumba-lumba.\r\n', '7346_cara-lumba-lumba-tidur-yang-unik.jpg', 1, '2024-02-20 08:45:23'),
(12, 14, 'IKAN', 5, 'Arya Prasetia', 'Ikan Nemo', 'Ikan giru atau lebih dikenal dengan sebutan ikan badut adalah ikan dari anak suku Amphiprioninae dalam suku Pomacentridae. Ada dua puluh delapan spesies yang biasa dikenali, salah satunya adalah genus Premnas, sementara sisanya termasuk dalam genus Amphiprion.', 'c7a3a_tips-merawat-ikan-nemo-di-rumah.jpg', 1, '2024-02-20 08:45:35'),
(13, 17, 'IKAN', 5, 'Arya Prasetia', 'Hiu Putih', 'Hiu atau cucut adalah sekelompok ikan dengan kerangka tulang rawan yang lengkap, dan tubuh yang kokoh. Mereka bernapas dengan menggunakan lima hingga tujuh liang insang. Letak insang tersebut ada di samping, atau dimulai sedikit di belakang, kepalanya. Wikipedia\r\nKecepatan: 19 km/jam (Maksimum, Di dalam air, Menyerang)\r\nNama ilmiah: Selachimorpha', '63ac60f7dafc8.jpg', 1, '2024-02-20 08:45:44'),
(23, 17, 'IKAN', 5, 'Arya Prasetia', 'Hiu Megalodon', 'Megalodon, yang berarti \"gigi besar\", adalah spesies hiu yang sudah punah. Hiu ini diperkirakan hidup sekitar 23 hingga 2,6 juta tahun yang lalu pada kala Miosen Awal hingga Pliosen Akhir. Sebelumnya hiu ini tergolong ke dalam famili Lamnidae, yang menyiratkan bahwa hiu ini berkerabat dekat dengan hiu putih.', 'megalodon-sizejpg-3a801907df1dfbb546287b11b0fca7ce.jpg', 1, '2024-02-20 08:45:58'),
(26, 16, 'IKAN', 5, 'Arya Prasetia', 'Ikan Tuna Sirip Kuning', 'Ikan Madidihang atau tuna sirip kuning (Thunnus albacares) adalah sejenis ikan pelagis besar yang mengembara di lautan tropika dan ugahari di seluruh dunia.', 'c56baf48b53d16db2ba451dc8ddf6958a0092469.jpg', 1, '2024-02-20 08:46:26'),
(27, 23, 'IKAN', 5, 'Arya Prasetia', 'Ikan Dholpin', 'lumba-lumba berdarah panas tidak seperti ikan yang berdarah dingin. Kemudian, berbeda dengan ikan yang bernapas melalui insang, lumba-lumba menghirup udara menggunakan paru-paru.\r\n\r\n', '5e8e80cd72816.jpg', 1, '2024-02-20 08:46:40'),
(28, 14, 'IKAN', 5, 'Arya Prasetia', 'Ikan Nemo Hitam Putih', 'Ikan nemo, ikan badut atau clownfish merupakan salah satu spesies ikan air laut yang memiliki nama ilmiah Amphiprioninae, dan biasanya ditemukan di perairan pantai dangkal daerah tropis hingga subtropis seperti Australia, Jepang, dan Asia Tenggara.', 'Banded-Clownfish-Amphiprion-clarkii.jpg', 1, '2024-02-20 08:46:51'),
(36, 16, 'IKAN', 5, 'Arya Prasetia', 'Ikan tuna Sirip Kuning', 'Tuna adalah ikan laut pelagik yang termasuk tribus Thunnini, terdiri dari beberapa spesies dari famili skombride, terutama genus Thunnus. Ikan ini adalah perenang andal. Tidak seperti kebanyakan ikan yang memiliki daging berwarna putih, daging tuna berwarna merah muda sampai merah tua.', 'Ikan-Tuna-Sirip-Kuning.jpg', 1, '2024-02-20 08:47:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `KomentarID` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_likefoto`
--

CREATE TABLE `tb_likefoto` (
  `LikeID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TanggalLike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`KomentarID`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`KomentarID`);

--
-- Indeks untuk tabel `tb_likefoto`
--
ALTER TABLE `tb_likefoto`
  ADD PRIMARY KEY (`LikeID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `KomentarID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `KomentarID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_likefoto`
--
ALTER TABLE `tb_likefoto`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
