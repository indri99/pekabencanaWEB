-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 07:01 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pekabencana`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `nama`, `username`, `email`, `password`) VALUES
(5, 'Indri', 'indri99', 'indri@gmail.com', 'indri');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kabupatenkota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` blob NOT NULL,
  `video` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id`, `judul`, `kabupatenkota`, `provinsi`, `isi`, `gambar`, `video`) VALUES
(1, 'Angin Puting Beliung Terjadi di Yogya Selama 22 Menit', 'Bantul', 'Daerah Istimewa Yogyakarta', 'Yogyakarta - Angin puting beliung melanda sebagian wilayah Daerah Istimewa Yogyakarta (DIY). Peristiwa yang terjadi pukul 14.05 WIB tadi berlangsung selama 22 menit.\r\n\r\n\"Puting beliung awal terbentuk pukul 14.05 sampai dengan 14.27 WIB,\" kata Supervisor Kelompok II Pusdalops BPBD DIY, Indrayanto, dalam keterangan tertulis yang diterima detikcom, Selasa (24/4/2018).\r\n\r\nBerdasarkan laporan sementara dari Pusdalops BPBD DIY, tercatat hingga pukul 15.15 WIB dilaporkan sebanyak 34 rumah rusak di Sorowajan, Banguntapan, Bantul. \r\n\r\nDari puluhan rumah itu, 23 rumah berada di RT 3 RW 8 dan 11 rumah di RT 2 RW 8. Selain itu juga dilaporkan pohon tumbang dan kedai kopi rusak.\r\n\r\n\"Titik kedua dilaporkan terjadi pohon tumbang di wilayah kampus STPMD APMD Baciro Gondokusuman. Seorang dosen dilaporkan terluka dibawa ke RS Bethesda,\" jelas Indrayanto.\r\n\r\nSebagian warga di sekitar Kecamatan Gondokusuman, Kota Yogyakarta dan Banguntapan Bantul yang letaknya berbatasan melihat angin kencang tersebut mirip tornado. Angin tersebut bergerak dari arah barat menuju timur dan kemudian ke arah tenggara.\r\n\r\nTidak lama setelah ada angin kencang atau puting beliung itu kemudian turun hujan deras di wilayah Yogyakarta.\r\n\r\n\"Kejadiannya tanpa dikira-kira. Dari arah barat muncul angin kayak tornado,\" ungkap seorang warga, Kabul kepada wartawan di Jalan Ipda Tut Harsono, Timoho Yogyakarta.\r\n\r\nRumah tempat tinggal Kabul sekaligus galeri seni yang ada di Jl Ipda Tut Harsono, Timoho No. 313 Yogyakarta itu ikut rusak. Atap seng dan genteng ikut beterbangan. Atap dan sebagian bangunan rusak roboh. Demikian pula beberapa gerobak dan bangunan di sekitar itu juga rusak. Beberapa pohon di kawasan Kampung Gendeng hingga Sorowajan juga tumbang.', '', ''),
(10, 'Sering Dilanda Longsor, Dua Kampung di Sawahlunto Jadi Desa Tangguh Bencana', '', '', 'Badan Penanggulan Bencana Daerah (BPBD) Kota Sawahlunto membentuk Desa Tangguh Bencana (Destana), Kamis 22 November 2018.\r\nDua desa tersebut, yakni Desa Lumindai di Kecamatan Barangin dan Desa Silungkang Oso di Kecamatan Silungkang.\r\nKepala Pelaksana BPBD Kota Sawahlunto, Adriusman mengatakan, dua desa yang ditetapkan tersebut merupakan desa yang paling banyak terjadi peristiwa bencana sejak tahun 2014.\r\nDua desa tersebut diketahui merupakan kawasan yang terletak di area perbukitan Kota Arang itu. Disana, kerap terjadi bencana longsor, jalan terban akibat gerakan tanah dan pohon tumbang.\r\nSalah satu bencana yang terjadi belakangan adalah tanah bergerak imbas dari lokasi yang terparah di kawasan Lembah Santur, Kecamatan Barangin. Bencana itu merusak belasan rumah warga.\r\nMeski begitu, Adriusman menjelaskan bukan berarti desa lain yang tidak ditetapkan sebagai Destana, tidak siap dalam menghadapi bencana serupa karena di tiap Desa dan Kelurahan sudah ada kelompok siaga bencana (KSB) dan dibantu Linmas dari perangkat Desa.\r\n\"Penunjukan Destana, sudah melalui kajian kami. Destana bertujuan bagaimana Desa-desa mandiri dalam menghadapi dan mempersiapkan sebelum atau sesudah bencana,\" katanya di Sawahlunto, Kamis 22 November 2018.\r\nMenurut dia, dasar pembentukan Destana ialah Undang-undang nomor 19 tahun 2017 Pasal 5 D tentang dasar aturan bencana.\r\n\"Dengan dibentuknya Destana, Desa itu dibolehkan menganggarkannya dari Anggaran Pembiayaan Desa (APBDes), dalam dana yang tak terduga, yang bisa digunakan untuk penanggulangan bencana sesuai dengan surat keputusan (SK) Walikota,\" pungkasnya kemudian.\r\nDari data BPBD Kota Sawahlunto, dari 11 November hingga 7 November 2018 lalu, banyak terjadi bencana longsor akibat intensitas hujan yang tinggi. Terdapat 106 titik jalan longsor, 19 rumah rusak berat, 17 rumah rusak sedang, dan 58 rumah rusak ringan.', '', ''),
(11, 'Sering Dilanda Longsor, Dua Kampung di Sawahlunto Jadi Desa Tangguh Bencana', '', '', 'Badan Penanggulan Bencana Daerah (BPBD) Kota Sawahlunto membentuk Desa Tangguh Bencana (Destana), Kamis 22 November 2018.\r\nDua desa tersebut, yakni Desa Lumindai di Kecamatan Barangin dan Desa Silungkang Oso di Kecamatan Silungkang.\r\nKepala Pelaksana BPBD Kota Sawahlunto, Adriusman mengatakan, dua desa yang ditetapkan tersebut merupakan desa yang paling banyak terjadi peristiwa bencana sejak tahun 2014.\r\nDua desa tersebut diketahui merupakan kawasan yang terletak di area perbukitan Kota Arang itu. Disana, kerap terjadi bencana longsor, jalan terban akibat gerakan tanah dan pohon tumbang.\r\nSalah satu bencana yang terjadi belakangan adalah tanah bergerak imbas dari lokasi yang terparah di kawasan Lembah Santur, Kecamatan Barangin. Bencana itu merusak belasan rumah warga.\r\nMeski begitu, Adriusman menjelaskan bukan berarti desa lain yang tidak ditetapkan sebagai Destana, tidak siap dalam menghadapi bencana serupa karena di tiap Desa dan Kelurahan sudah ada kelompok siaga bencana (KSB) dan dibantu Linmas dari perangkat Desa.\r\n\"Penunjukan Destana, sudah melalui kajian kami. Destana bertujuan bagaimana Desa-desa mandiri dalam menghadapi dan mempersiapkan sebelum atau sesudah bencana,\" katanya di Sawahlunto, Kamis 22 November 2018.\r\nMenurut dia, dasar pembentukan Destana ialah Undang-undang nomor 19 tahun 2017 Pasal 5 D tentang dasar aturan bencana.\r\n\"Dengan dibentuknya Destana, Desa itu dibolehkan menganggarkannya dari Anggaran Pembiayaan Desa (APBDes), dalam dana yang tak terduga, yang bisa digunakan untuk penanggulangan bencana sesuai dengan surat keputusan (SK) Walikota,\" pungkasnya kemudian.\r\nDari data BPBD Kota Sawahlunto, dari 11 November hingga 7 November 2018 lalu, banyak terjadi bencana longsor akibat intensitas hujan yang tinggi. Terdapat 106 titik jalan longsor, 19 rumah rusak berat, 17 rumah rusak sedang, dan 58 rumah rusak ringan.', '', ''),
(12, 'Angin Puting Beliung Terjadi di Yogya Selama 22 Menit', 'Bantul', 'Daerah Istimewa Yogyakarta', 'Yogyakarta - Angin puting beliung melanda sebagian wilayah Daerah Istimewa Yogyakarta (DIY). Peristiwa yang terjadi pukul 14.05 WIB tadi berlangsung selama 22 menit.\r\n\r\n\"Puting beliung awal terbentuk pukul 14.05 sampai dengan 14.27 WIB,\" kata Supervisor Kelompok II Pusdalops BPBD DIY, Indrayanto, dalam keterangan tertulis yang diterima detikcom, Selasa (24/4/2018).\r\n\r\nBerdasarkan laporan sementara dari Pusdalops BPBD DIY, tercatat hingga pukul 15.15 WIB dilaporkan sebanyak 34 rumah rusak di Sorowajan, Banguntapan, Bantul. \r\n\r\nDari puluhan rumah itu, 23 rumah berada di RT 3 RW 8 dan 11 rumah di RT 2 RW 8. Selain itu juga dilaporkan pohon tumbang dan kedai kopi rusak.\r\n\r\n\"Titik kedua dilaporkan terjadi pohon tumbang di wilayah kampus STPMD APMD Baciro Gondokusuman. Seorang dosen dilaporkan terluka dibawa ke RS Bethesda,\" jelas Indrayanto.\r\n\r\nSebagian warga di sekitar Kecamatan Gondokusuman, Kota Yogyakarta dan Banguntapan Bantul yang letaknya berbatasan melihat angin kencang tersebut mirip tornado. Angin tersebut bergerak dari arah barat menuju timur dan kemudian ke arah tenggara.\r\n\r\nTidak lama setelah ada angin kencang atau puting beliung itu kemudian turun hujan deras di wilayah Yogyakarta.\r\n\r\n\"Kejadiannya tanpa dikira-kira. Dari arah barat muncul angin kayak tornado,\" ungkap seorang warga, Kabul kepada wartawan di Jalan Ipda Tut Harsono, Timoho Yogyakarta.\r\n\r\nRumah tempat tinggal Kabul sekaligus galeri seni yang ada di Jl Ipda Tut Harsono, Timoho No. 313 Yogyakarta itu ikut rusak. Atap seng dan genteng ikut beterbangan. Atap dan sebagian bangunan rusak roboh. Demikian pula beberapa gerobak dan bangunan di sekitar itu juga rusak. Beberapa pohon di kawasan Kampung Gendeng hingga Sorowajan juga tumbang.', '', ''),
(13, 'Waspada, Ahli: Sejumlah Daerah di Sumbar Potensi Likuifaksi', 'Palu', 'Sumatera Barat', 'Ahli Geologi yang juga Ketua Ikatan Ahli Geologi Indonesia Sumatera Barat, Ade Edward menyebut, sejumlah daerah di bagian tengah Sumatera Barat punya potensi terjadi Likuifaksi jika terpapar gempa dengan kekuatan besar.\r\nIa menyebut, hal ini bisa terjadi karena banyak daerah di kawasan tersebut berada di cekungan patahan gempa.\r\n\"Belajar dari kejadian di Palu, potensi likuifaksi perlu diwaspadai. Tak hanya bagi daerah pesisir, tapi juga di wilayah patahan sumatera,\"ungkapnya, Sabtu 3 November 2018.\r\nWilayah yang dimaksud Ade adalah Rao, Lubuk Sikaping, Kamang Agam, Sumani-Kota Solok, Muara Labuh.\r\n\"Karakteristik tanah di sini cenderung lunak karena berada di cekungan danau purba atau rawa di Patahan Sumatera. Potensinya bahkan lebih besar dibanding daerah Pesisir,\"ujarnya.\r\nUpaya mitigasi kata Ade, lebih baik diarahkan ke daerah patahan sumatera sebab potensinya akan lebih dahsyat dibandingkan daerah pesisir pantai Sumbar sebab terdapat banyak sekali pemukiman penduduk.\r\n\"Pesisir pantai barat Sumatera Barat lebih rendah potensi Likuifaksinya karena tidak dilalui oleh patahan yg relatif besar,\"pungkasnya.\r\nLikuifaksi merupakan sebuah fenomena yang terjadi ketika tanah yang jenuh atau agak jenuh kehilangan kekuatan dan kekakuan akibat adanya tegangan, misalnya getaran gempa bumi atau perubahan ketegangan lain secara mendadak, sehingga tanah yang padat berubah wujud menjadi cairan atau air berat.\r\nFenomena ini paling sering diamati pada tanah berpasir yang jenuh dan longgar (kepadatan rendah atau tidak padat)\r\nFenomena ini, sebenarnya relatif tidak dikenal masyarakat. Namun, pasca terjadinya gempa Palu dan menimbulkan likuifaksi, hal ini kemudian mulai banyak diperbincangkan.\r\n', '', ''),
(14, 'Waspada, Ahli: Sejumlah Daerah di Sumbar Potensi Likuifaksi', 'Palu', 'Sumatera Barat', 'Ahli Geologi yang juga Ketua Ikatan Ahli Geologi Indonesia Sumatera Barat, Ade Edward menyebut, sejumlah daerah di bagian tengah Sumatera Barat punya potensi terjadi Likuifaksi jika terpapar gempa dengan kekuatan besar.\r\nIa menyebut, hal ini bisa terjadi karena banyak daerah di kawasan tersebut berada di cekungan patahan gempa.\r\n\"Belajar dari kejadian di Palu, potensi likuifaksi perlu diwaspadai. Tak hanya bagi daerah pesisir, tapi juga di wilayah patahan sumatera,\"ungkapnya, Sabtu 3 November 2018.\r\nWilayah yang dimaksud Ade adalah Rao, Lubuk Sikaping, Kamang Agam, Sumani-Kota Solok, Muara Labuh.\r\n\"Karakteristik tanah di sini cenderung lunak karena berada di cekungan danau purba atau rawa di Patahan Sumatera. Potensinya bahkan lebih besar dibanding daerah Pesisir,\"ujarnya.\r\nUpaya mitigasi kata Ade, lebih baik diarahkan ke daerah patahan sumatera sebab potensinya akan lebih dahsyat dibandingkan daerah pesisir pantai Sumbar sebab terdapat banyak sekali pemukiman penduduk.\r\n\"Pesisir pantai barat Sumatera Barat lebih rendah potensi Likuifaksinya karena tidak dilalui oleh patahan yg relatif besar,\"pungkasnya.\r\nLikuifaksi merupakan sebuah fenomena yang terjadi ketika tanah yang jenuh atau agak jenuh kehilangan kekuatan dan kekakuan akibat adanya tegangan, misalnya getaran gempa bumi atau perubahan ketegangan lain secara mendadak, sehingga tanah yang padat berubah wujud menjadi cairan atau air berat.\r\nFenomena ini paling sering diamati pada tanah berpasir yang jenuh dan longgar (kepadatan rendah atau tidak padat)\r\nFenomena ini, sebenarnya relatif tidak dikenal masyarakat. Namun, pasca terjadinya gempa Palu dan menimbulkan likuifaksi, hal ini kemudian mulai banyak diperbincangkan.\r\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kontributor`
--

CREATE TABLE `kontributor` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontributor`
--

INSERT INTO `kontributor` (`id`, `nama`, `username`, `email`, `password`) VALUES
(8, 'admin', 'admin123', 'admin@gmail.com', 'admin123'),
(9, 'Indri', 'indri99', 'indri@gmail.com', 'indri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontributor`
--
ALTER TABLE `kontributor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kontributor`
--
ALTER TABLE `kontributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
