-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2025 at 09:04 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_toko_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Akuntansi Pengantar 1', 'Supardi', '82928.00', 101, 'Akuntansi Pengantar 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Aplikasi Klinis Induk Ovulasi & Stimulasi Ovariu', 'Samsulhadi', '99470.00', 0, 'Aplikasi Klinis Induk Ovulasi & Stimulasi Ovariu', '0000-00-00 00:00:00', '2025-06-17 15:12:16'),
(3, 'Aplikasi Praktis Asuhan Keperawatan Keluarga', 'Komang Ayu Heni', '88840.00', 4, 'Aplikasi Praktis Asuhan Keperawatan Keluarga', '0000-00-00 00:00:00', '2025-06-12 08:58:19'),
(4, 'A-Z Psikologi : Berbagai kumpulan topik Psikologi', 'Zainul Anwar', '119591.00', 1, 'A-Z Psikologi : Berbagai kumpulan topik Psikologi', '0000-00-00 00:00:00', '2025-06-12 07:19:26'),
(5, 'Bangsa gagal ; Mencari identitas kebangsaan', 'Nasruddin Anshoriy', '113968.00', 7, 'Bangsa gagal ; Mencari identitas kebangsaan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Biografi Gus Dur ; The Authorized Biography of KH. Abdurrahman Wahid (Soft Cover)', 'Greg Barton', '64676.00', 14, 'Biografi Gus Dur ; The Authorized Biography of KH. Abdurrahman Wahid (Soft Cover)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Buku Ajar Tumbuh Kembang Remaja & Permasalahanya', 'Soetjiningsih', '80291.00', 9, 'Buku Ajar Tumbuh Kembang Remaja & Permasalahanya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Cedera Kepala', 'M. Z. Arifin', '70900.00', 7, 'Cedera Kepala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Dasar Dasar Uroginekologi', 'Pribakti B', '68515.00', 13, 'Dasar Dasar Uroginekologi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Etnografi Pengobatan; Praktik Budaya peramuan & sugesti komunitas adat Tau Taa Vana', 'Alie Humaedi', '117999.00', 12, 'Etnografi Pengobatan; Praktik Budaya peramuan & sugesti komunitas adat Tau Taa Vana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', 'Takashi Shiraishi', '70612.00', 7, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Islam Agama ramah perempuan; Pembelaan kiai pesantren', 'Husein Muhammad', '75494.00', 9, 'Islam Agama ramah perempuan; Pembelaan kiai pesantren', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Islam Jawa; Kesalehan Normatif Versus Kebatinan', 'Mark R. Woodward', '65679.00', 4, 'Islam Jawa; Kesalehan Normatif Versus Kebatinan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Islam Pasar Keadilan; Artikulasi Lokal', 'Mark R. Woodward', '65679.00', 4, 'Islam Pasar Keadilan; Artikulasi Lokal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Islam Sasak ; Wetu telu versus waktu lima', 'Erni Budiwanti', '103064.00', 15, 'Islam Sasak ; Wetu telu versus waktu lima', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Keanekaragaman klinik peny. Trofoblas gestasional', 'Djamhoer M', '121580.00', 2, 'Keanekaragaman klinik peny. Trofoblas gestasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 1)', 'Slamet Muljana', '56007.00', 10, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 1)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 2)', 'Slamet Muljana', '127447.00', 7, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 2)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Kesehjateraan Sosial', 'Isbandi Rukminto Adi', '127058.00', 11, 'Kesehjateraan Sosial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Kolaborasi PHP 5 dan Mysql untuk pengembangan website + cd', 'Eko Priyo Utomo', '76730.00', 13, 'Kolaborasi PHP 5 dan Mysql untuk pengembangan website + cd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Kontroversi Hakim Perempuan Pada Peradilan Islam di Negara Negara Muslim', 'Djamizah Muqoddas', '106434.00', 2, 'Kontroversi Hakim Perempuan Pada Peradilan Islam di Negara Negara Muslim', '0000-00-00 00:00:00', '2025-06-17 00:49:05'),
(22, 'Kuasa Wanita Jawa', 'Christina S Handayani', '100827.00', 8, 'Kuasa Wanita Jawa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Kumpulan Undang undang Sistem peradilan Pidana', 'Lincon Arsyad', '74293.00', 3, 'Kumpulan Undang undang Sistem peradilan Pidana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Langsung Praktik Komputerisasi Akuntansi Dengan MYOB', 'Wahana Komputer', '62252.00', 0, 'Langsung Praktik Komputerisasi Akuntansi Dengan MYOB', '0000-00-00 00:00:00', '2025-06-17 00:49:05'),
(25, 'Lembaga keuangan Islam', 'Nurul Huda', '124743.00', 8, 'Lembaga keuangan Islam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Makna Budaya Dalam Komunikasi Antar Budaya', 'Alo Liliweri', '58043.00', 13, 'Makna Budaya Dalam Komunikasi Antar Budaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Manajemen Penerbitan Jurnal Ilmiah', 'Lukman S', '81973.00', 15, 'Manajemen Penerbitan Jurnal Ilmiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Menuju Puncak Kemegahan; Sejarah kerajaan Majapahit', 'Slamet Muljana', '60671.00', 2, 'Menuju Puncak Kemegahan; Sejarah kerajaan Majapahit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Metode Riset Bisnis Edisi II', 'Suliyanto', '114051.00', 8, 'Metode Riset Bisnis Edisi II', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Metodologi Penelitian Bidang Kesehatan ED. 2', 'Moch. Imron TA', '86700.00', 6, 'Metodologi Penelitian Bidang Kesehatan ED. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', 'Nasruddin Anshoriy', '105008.00', 5, 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'NU vis a vis Negara; Pencarian isi', 'Mark R. Woodward', '65679.00', 4, 'NU vis a vis Negara; Pencarian isi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Otoritarianisme Hukum Islam ; Kritik atas hirearki teks al-kutub as-sittah', 'Muhammad Habibi Siregar', '120687.00', 14, 'Otoritarianisme Hukum Islam ; Kritik atas hirearki teks al-kutub as-sittah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Panduan Penatalaksanaan Kanker Solid Peraboi 2010', 'Tjakra Wibawa', '71020.00', 11, 'Panduan Penatalaksanaan Kanker Solid Peraboi 2010', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Patologi I (umum)', 'Sudarto Pringgoutomo', '131287.00', 1, 'Patologi I (umum)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Patologi Sosial I', 'Kartini Kartono', '97410.00', 6, 'Patologi Sosial I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Pengantar Cultural Studies : Sejarah', 'Mark R. Woodward', '65679.00', 4, 'Pengantar Cultural Studies : Sejarah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Pengantar Studi Al-Quran : Teori dan Pendekatan', 'Munzir Hitami', '63670.00', 8, 'Pengantar Studi Al-Quran : Teori dan Pendekatan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Politik Media dan Pertarungan Wacana', 'Agus Sudibyo', '110896.00', 10, 'Politik Media dan Pertarungan Wacana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Quick Reference Windows 8', 'Wahana Komputer', '112166.00', 3, 'Quick Reference Windows 8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Rekam Jejak; Dokter pejuang & Pelopor kebangkitan Nasional', 'Nasruddin Anshoriy', '97392.00', 3, 'Rekam Jejak; Dokter pejuang & Pelopor kebangkitan Nasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Runtuhnya Kerajaan Hindu Jawa', 'Slamet Muljana', '123515.00', 1, 'Runtuhnya Kerajaan Hindu Jawa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Serangan Umum 1 Maret 1949 dalam keleidoskop Sejarah Perjuangan Mempertahankan Kemerdekaan Indonesia', 'Batara R. Hutagalung', '55566.00', 7, 'Serangan Umum 1 Maret 1949 dalam keleidoskop Sejarah Perjuangan Mempertahankan Kemerdekaan Indonesia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Statistik Sosial; Teori dan aplikasi Program SPSS', 'Nanang Martono', '126648.00', 15, 'Statistik Sosial; Teori dan aplikasi Program SPSS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Step by Step Penanganan Kelainan Endokrinologi', 'Tono Djuwantono', '107963.00', 15, 'Step by Step Penanganan Kelainan Endokrinologi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Strategi Bahasa Assembler + CD', 'Jason P', '52295.00', 10, 'Strategi Bahasa Assembler + CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Strategic Management', 'Sofjan Assauri', '83369.00', 12, 'Strategic Management', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Studi Filsafat 1 : Pembacaan atas tradisi islam kontemporer', 'Hassan Hanafi', '101410.00', 6, 'Studi Filsafat 1 : Pembacaan atas tradisi islam kontemporer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Tan Malaka: Merajut Masyarakat dan pendidikan Indonesia yang Sosialistis', 'Syaifudin', '75302.00', 7, 'Tan Malaka: Merajut Masyarakat dan pendidikan Indonesia yang Sosialistis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Tarekat Petani : Fenomena Tarekat Syattariyah Lokal', 'Nur Syam', '87812.00', 1, 'Tarekat Petani : Fenomena Tarekat Syattariyah Lokal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Tata Boga Industri : Materi Kompetensi Untuk SMK', 'Mark R. Woodward', '65679.00', 4, 'Tata Boga Industri : Materi Kompetensi Untuk SMK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Teks Otoritas Kebenaran', 'Nasr Hamid Abu Zaid', '121609.00', 8, 'Teks Otoritas Kebenaran', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Teologi Seksual', 'Geoffrey Parrinder', '105127.00', 4, 'Teologi Seksual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Belajar mikrokontroler AT89C51/52/55', 'Agfianto EP', '124781.00', 8, 'Belajar mikrokontroler AT89C51/52/55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Shortcourse RPG Maker VX ACE', 'Wahana Komputer', '118944.00', 3, 'Shortcourse RPG Maker VX ACE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Transnasionalisasi Masyarakat Sipil', 'Andi Widjajanto', '87960.00', 4, 'Transnasionalisasi Masyarakat Sipil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Tuntunan Praktis : Pengembangan Aplikasi Sistem Informasi Geografis berbasis Dekstop dan Web + CD', 'Riyanto', '80192.00', 4, 'Tuntunan Praktis : Pengembangan Aplikasi Sistem Informasi Geografis berbasis Dekstop dan Web + CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Web Programing Membangun Aplikasi Web Handal dengan J2EE dan MVC', 'Widodo Budiharto', '116192.00', 13, 'Web Programing Membangun Aplikasi Web Handal dengan J2EE dan MVC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Ajeg Bali : Gerakan', 'Mark R. Woodward', '65679.00', 4, 'Ajeg Bali : Gerakan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Aplikasi Program Akutansi dengan Visual FoxPro 9.0 Aplikasi Penjualan', 'Mark R. Woodward', '65679.00', 2, 'Aplikasi Program Akutansi dengan Visual FoxPro 9.0 Aplikasi Penjualan', '0000-00-00 00:00:00', '2025-06-17 15:12:17'),
(61, 'Aura dan Rinupa', 'Mark R. Woodward', '65679.00', 4, 'Aura dan Rinupa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Buku Pintar Pengelolaan BPR dan Lembaga Keuangan Pembiayaan Mikro', 'Ali SuyantoHerli', '113008.00', 1, 'Buku Pintar Pengelolaan BPR dan Lembaga Keuangan Pembiayaan Mikro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Busines And Personal Development', 'Josua Taringan dan Swenjiadi Yenawan', '85424.00', 12, 'Busines And Personal Development', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Cara pemeriksaan', 'Mark R. Woodward', '65679.00', 4, 'Cara pemeriksaan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'DAFTAR TAJUK SUBYEK DALAM BAHASA INDONESIA', 'SULISTYO-BASUKI', '50693.00', 8, 'DAFTAR TAJUK SUBYEK DALAM BAHASA INDONESIA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'DESAIN PEMBELAJARAN BERBASIS PENDIDIKAN KARAKTER', 'Asmaun Sahlan & Angga Teguh Prastyo', '109691.00', 15, 'DESAIN PEMBELAJARAN BERBASIS PENDIDIKAN KARAKTER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Dunia Lebih Indah Tanpa Sekolah', 'Nanang Martono', '67902.00', 3, 'Dunia Lebih Indah Tanpa Sekolah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Fiqh Ekonomi Syariah (Fiqh Muamalah)', 'DR. Mardani', '129873.00', 1, 'Fiqh Ekonomi Syariah (Fiqh Muamalah)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Himpunan Undang-Undang Hak Kekayaan Intelektual', 'Massudilawe & Partner', '102723.00', 15, 'Himpunan Undang-Undang Hak Kekayaan Intelektual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Hukum Agraria Kajian Komprehensif', 'Mark R. Woodward', '65679.00', 4, 'Hukum Agraria Kajian Komprehensif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ilmu Dakwah', 'Mark R. Woodward', '65679.00', 4, 'Ilmu Dakwah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IMS (IP Multimedia Subsystem)', 'Mark R. Woodward', '65679.00', 4, 'IMS (IP Multimedia Subsystem)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Islam dan Permasalahan Sosial', 'Dr. A. Qodri A Azizy', '97864.00', 10, 'Islam dan Permasalahan Sosial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Islam Pesisir', 'Dr. Nur Syam', '105496.00', 4, 'Islam Pesisir', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Kupas Tuntas : Microsoft Windows 8.1', 'Madcoms', '60745.00', 0, 'Kupas Tuntas : Microsoft Windows 8.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Langkah Mudah Belajar Kalkulus For IT(Khusus P. Jawa)', 'Mark R. Woodward', '65679.00', 4, 'Langkah Mudah Belajar Kalkulus For IT(Khusus P. Jawa)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Manajemen Penanganan Barang-Barang Berbahaya Pada Angkatan Udara', 'Wynd Riyaldi & M Rifni', '134364.00', 8, 'Manajemen Penanganan Barang-Barang Berbahaya Pada Angkatan Udara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'MATA AIR PERADABAN ; Dua Milenium Wonosobo', 'H.A. Kholiq Arif', '101268.00', 9, 'MATA AIR PERADABAN ; Dua Milenium Wonosobo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Membuat Aplikasi Sistem Aplikasi Menggunakan VB.NET', 'Yulius Ekaq Agung Saputro', '91491.00', 8, 'Membuat Aplikasi Sistem Aplikasi Menggunakan VB.NET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Memuja Mantra ; Sabuk Mangir dan Jaran Goyang Masyarakat Suku Using Banyuwangi', 'Heru S.P. Saputra', '75541.00', 2, 'Memuja Mantra ; Sabuk Mangir dan Jaran Goyang Masyarakat Suku Using Banyuwangi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Mendesain Model Pembelajaran Inovatif Progresif dan Kontekstual', 'Mark R. Woodward', '65679.00', 4, 'Mendesain Model Pembelajaran Inovatif Progresif dan Kontekstual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Menulis Itu Mudah ; Panduan Praktis Menjadi Penulis Handal', 'Sukino', '55555.00', 6, 'Menulis Itu Mudah ; Panduan Praktis Menjadi Penulis Handal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Penelitian Kualitatif', 'Burhan Bungin', '97468.00', 14, 'Penelitian Kualitatif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Mistisisme Hindu Muslim', 'R.C Zaehner', '116491.00', 8, 'Mistisisme Hindu Muslim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Nietzsche', 'St. Sunardi', '134734.00', 12, 'Nietzsche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Panduan Aplikasi dan Solusi: Pemodelan Obyek Dengan 3ds Max 2014', 'Wahana Komputer', '130568.00', 1, 'Panduan Aplikasi dan Solusi: Pemodelan Obyek Dengan 3ds Max 2014', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Panduan Praktis Sistem Kendali Digital', 'Azwardi Dan Cekmas Cekdin', '68525.00', 10, 'Panduan Praktis Sistem Kendali Digital', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Pantun Melayu : Titik Temu Islam dan Budaya Lokal Nusantara', 'Abd. Rachman Abror', '71533.00', 1, 'Pantun Melayu : Titik Temu Islam dan Budaya Lokal Nusantara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Pemrograman Web Membuat Sistem Informasi Akademik Sekolah Dengan PHP-MYSQL & Dreamweaver', 'Bunafit Nugroho', '100116.00', 12, 'Pemrograman Web Membuat Sistem Informasi Akademik Sekolah Dengan PHP-MYSQL & Dreamweaver', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'PENDIDIKAN PASCAKONFLIK ; Pendidikan Multikultural Berbasis Konseling Budaya Masyarakat Maluku Utara', 'Dr. M. Tahir Sapsuha', '84310.00', 3, 'PENDIDIKAN PASCAKONFLIK ; Pendidikan Multikultural Berbasis Konseling Budaya Masyarakat Maluku Utara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Pengantar Membuat Robot', 'M. Ibnu Malik', '63511.00', 7, 'Pengantar Membuat Robot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Pengantar Teknologi Informasi', 'Tata Sutabri', '96009.00', 3, 'Pengantar Teknologi Informasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Pengenalan Dasar-Dasar PLC (Progamable Logic Controler) Disertai Contoh Aplikasinya', 'M. Budiyanto', '78148.00', 5, 'Pengenalan Dasar-Dasar PLC (Progamable Logic Controler) Disertai Contoh Aplikasinya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Pengolahan Citra Digital : Konsep dan Teori', 'Fajar Astuti Hermawati', '62537.00', 14, 'Pengolahan Citra Digital : Konsep dan Teori', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2025_06_11_115135_add_invoice_number_to_sales_table', 1),
(23, '0001_01_01_000000_create_users_table', 2),
(24, '0001_01_01_000001_create_cache_table', 2),
(25, '0001_01_01_000002_create_jobs_table', 2),
(26, '2025_05_07_075907_create_books_table', 2),
(27, '2025_05_07_075952_create_sales_table', 2),
(28, '2025_05_07_080026_add_role_to_users_table', 2),
(29, '2025_06_11_120557_create_sale_items_table', 2),
(30, '2025_06_11_141620_add_book_id_to_sale_items_table', 3),
(31, '2025_06_12_120651_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_at` datetime DEFAULT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`invoice_number`, `sold_at`, `total`, `created_at`, `updated_at`) VALUES
('INV250611CTBCZ', '2025-06-11 15:09:35', '750.00', '2025-06-11 08:09:21', '2025-06-11 08:09:35'),
('INV250611HSXV5', '2025-06-11 15:13:18', '1550.00', '2025-06-11 08:13:02', '2025-06-11 08:13:18'),
('INV250611KSTPM', '2025-06-11 15:10:57', '2500.00', '2025-06-11 08:10:20', '2025-06-11 08:10:57'),
('INV250611P7IQZ', NULL, '0.00', '2025-06-11 08:07:13', '2025-06-11 08:07:13'),
('INV250611PHBQE', NULL, '0.00', '2025-06-11 08:39:44', '2025-06-11 08:39:44'),
('INV250612AC8IY', '2025-06-12 14:19:25', '244095.00', '2025-06-12 07:18:56', '2025-06-12 07:19:25'),
('INV250612BCFXE', '2025-06-12 11:08:03', '700.00', '2025-06-12 04:06:25', '2025-06-12 04:08:03'),
('INV250612KMB46', '2025-06-12 15:58:19', '177680.00', '2025-06-12 08:57:34', '2025-06-12 08:58:19'),
('INV2506172KYCG', NULL, '0.00', '2025-06-17 15:29:01', '2025-06-17 15:29:01'),
('INV250617NC9R3', '2025-06-17 22:12:16', '230828.00', '2025-06-17 15:02:02', '2025-06-17 15:12:16'),
('INV250617SM5CB', '2025-06-17 07:49:05', '168686.00', '2025-06-17 00:48:30', '2025-06-17 00:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `invoice_number`, `book_id`, `quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'INV250611CTBCZ', 1, 3, '750.00', '2025-06-11 08:09:35', '2025-06-11 08:09:35'),
(2, 'INV250611KSTPM', 1, 3, '750.00', '2025-06-11 08:10:57', '2025-06-11 08:10:57'),
(3, 'INV250611KSTPM', 2, 5, '1750.00', '2025-06-11 08:10:57', '2025-06-11 08:10:57'),
(4, 'INV250611HSXV5', 1, 2, '500.00', '2025-06-11 08:13:18', '2025-06-11 08:13:18'),
(5, 'INV250611HSXV5', 2, 3, '1050.00', '2025-06-11 08:13:18', '2025-06-11 08:13:18'),
(6, 'INV250612BCFXE', 2, 2, '700.00', '2025-06-12 04:08:03', '2025-06-12 04:08:03'),
(7, 'INV250612AC8IY', 24, 2, '124504.00', '2025-06-12 07:19:26', '2025-06-12 07:19:26'),
(8, 'INV250612AC8IY', 4, 1, '119591.00', '2025-06-12 07:19:26', '2025-06-12 07:19:26'),
(9, 'INV250612KMB46', 3, 2, '177680.00', '2025-06-12 08:58:19', '2025-06-12 08:58:19'),
(10, 'INV250617SM5CB', 24, 1, '62252.00', '2025-06-17 00:49:05', '2025-06-17 00:49:05'),
(11, 'INV250617SM5CB', 21, 1, '106434.00', '2025-06-17 00:49:05', '2025-06-17 00:49:05'),
(12, 'INV250617NC9R3', 2, 1, '99470.00', '2025-06-17 15:12:17', '2025-06-17 15:12:17'),
(13, 'INV250617NC9R3', 60, 2, '131358.00', '2025-06-17 15:12:17', '2025-06-17 15:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6TpUAbP4olCnHvdcT6iNjilTflRdDp5UTfeyvqty', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYThlMEZGSUJGTm5NYU1KZHNVYzRWN0E4SE9BZzRzbkc0bTNRRTBTYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJjYXJ0IjthOjA6e319', 1749709075),
('96G40cnzXwPaKMX0z3nBiNXCWzwEGipcQEUlNwTb', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRWtnVjVBcXk3Zld3QU1QajJoS2VvajJxdXJFVk5LQ2w0b0ZBakFEMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749709984),
('aj2PjcHhsIrHE2sYb3GSiy6sIaSvLvigI8CZNwrw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnNBMmxGUDl1RTJoODJ3V0V0QVlvdXhPcmJZVFBsMkNtdFVJMjVuMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1750174400),
('AXQcUE243nJY4bHRnApaEKQzW7h84DM3PAslwO4x', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibmZwaERSSGxoRWhZZmFxem05WHZET1BRbG1mRGFGWmUzSFBnUkpuViI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1750161685),
('CZW6bVwLU0Q5rEufp7vMvk5Vph7o80Q2t4J2zBdb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaVE5YlpSQkRHRU8zTEg3MFlUM2Q4YkprUWdvb3dWdktLaUc1N3B1RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJjYXJ0IjthOjA6e319', 1749709112),
('e2zDyEqoc4iqKSuKtQXnJceXwn5Kz2J9ReHW3JJF', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM1c4MlFjdTBWYldsRXNaSXI4SkkycTZ6MzJraHByUW8xcWV2cFVtbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749710099),
('gVSoJ4wmdaHtLf1a6xbW7dbdwYuatwYA1QeFcrZF', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1JpQXU5TTZjZGs2cFpOaUx5MTQ4UTF4alNMU1dMQW1JRmxOancwNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749709972),
('j0V1s9oQRcPLTDrWiVQaM4BvZxxKvkHsdFNvvvCt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVTRybTFGVUNKY1RvSzBKZUFrdEFaV3lsVndRdmJZN1pOMTYyUGRFdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zYWxlcy9wb3MiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiY2FydCI7YTowOnt9fQ==', 1749718760),
('KHz2sjK8V4w8dyZnJ23OuSPcksxwgX2FIfQ7duSL', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQUVTZjAxU1hIb211UGxUM2NzV0kzck1NUXUwQ3QzeFRDaHVQUW10MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749710127),
('Kz51yI5rr8nNIjh2pQdeh0xbYKwzRYFjOtzJnJ3X', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEZTNWVDMGxROFRVcjZjRkNCdDVkUWllSHJ3YjZGZ3lpM0lubG9RaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749710105),
('MyEwlSxiUhrvBrWqNhsPsFnySZsMJTkMLHvuNweA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUEJFS3VDZEw3OW5KdWFUeGUzbDlkQW9acngzb3NqQzl0bXRZdTlFYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJjYXJ0IjthOjA6e319', 1749709151),
('nozOREnbTU0CiBXOV8oXd7HmGnQCREff8jP0PIIZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYXRZeTY3aUJJR1p4OU1za0hWbFlPaVFBNjJ2aXNMRjRPT1lEcVhRVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJjYXJ0IjthOjA6e319', 1749709118),
('pNviHXGA9WfyG71pjCEJcqF84mGez3m7gxIkS39s', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid21nNm9KeUwwdXRBaWplVlY1bmxyeWViTzFOYzlBbFJLS2JnQlNGbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749709853),
('qpftPkrxb5Mww1WN8F3TFufhFtV6ryAGnJWLJSjN', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidnBhbWZobW9xS0g0d2lCNWU4NU9hdTBQRkpCUUNHQjNFaU5Ec1ZrbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749709988),
('RgHcqcnHeb8P4G5FTe0keqVeJ3kBtp89bZleX38F', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN0luUFFtRXNvV1ZvM2U1bFlnaDdzNE1HRWhFWjVXVkY5eFhTd3NWTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749709986),
('TJ8QQeEFaV85wzhOkZVk0gWMQEVwCu0WEMtzeYK6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRkM3UGFoTloxeWhDdGZMU0NXdG1wTjlaRUtJM1NzamRvZFVkaUZBQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJjYXJ0IjthOjA6e319', 1749709066),
('toUtGjn7tlnxLDQ2pS1OqEPy0QOlYpXTQMqvPHn9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkVVZFZ6YkdmcFFTTW5PazN2TmhNckFEUklzYnA3aFBMN1dFNXRMNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9raW9zayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750209885),
('XCpwN6zVH9L5qX0wOn8P7rNQwcSbMKeN0X3R46dU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNThOMEZxN1RiNTVJR09JUmNVZWs2Mm5qdlVqR3VVTEd6WmltT1VjNCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750209487),
('Y7Ppndi1JQ288K6JaXz3LooUMlsv6zGBSMQoiNEr', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicjIwcE1LbFBROFhaeGh6Wlg2QVJ3UDJtRHdiVHZHU0ZvNGV1cjd3biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749709849),
('zCvsKGqbw9eDvj4PH6cJVUlqh2dF6k1XvAh0zIRw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2RZMkdNeHBTWWNySUt3RG5ac1lUVXo1ejZvQk9LTEU1c2JqZHI0VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1750121741);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$ccFgrVuFilCpTYKKK5vGL.wCGNhlb81lPtmax4tR6gp95q6ABeNGu', 'admin', NULL, '2025-06-11 07:08:54', '2025-06-11 07:08:54'),
(2, 'Kasir', 'kasir@example.com', NULL, '$2y$12$PDLV1OlURmKMR7vPqyUS1eFMiAikpFng4SuJ6t27qQ45isWMixH3i', 'kasir', NULL, '2025-06-11 07:08:55', '2025-06-11 07:08:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`invoice_number`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
