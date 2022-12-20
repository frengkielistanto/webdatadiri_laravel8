-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 04:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_8_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `sampul`, `judul`, `konten`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1667225547-zero-fullstack.jpg', 'web developer', '<p>Pengembang web adalah seorang programmer yang mengkhususkan diri dalam, atau secara khusus terlibat dalam, pengembangan aplikasi World Wide Web menggunakan client–server model</p>', 'web-developer', '2022-10-31 05:33:19', '2022-10-31 07:16:56'),
(2, '1667271981-download (1).png', 'Android developer', '<p>Android Developer bisa dikatakan sebagai <strong>software developer yang memiliki spesialisasi merancang aplikasi untuk marketplace Android</strong>. Secara sederhana, mayoritas pekerjaan mereka adalah membuat aplikasi yang dapat digunakan di dalam smartphone ataupun tablet, baik itu berupa game maupun bentuk aplikasi lainnya.</p>', 'android-developer', '2022-10-31 05:33:19', '2022-10-31 20:06:21'),
(3, '1667270757-q.png', 'Data analyst', '<p>Analisis data adalah proses inspeksi, pembersihan dan pemodelan data dengan tujuan menemukan informasi yang berguna, menginformasikan kesimpulan dan mendukung pengambilan keputusan.</p>', 'data-analyst', '2022-10-31 07:16:11', '2022-10-31 19:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `konten`, `created_at`, `updated_at`) VALUES
(1, 'Frengki  2022', '2022-10-31 05:33:19', '2022-11-01 15:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Android Developer', 'android-developer', '2022-10-31 05:33:19', '2022-10-31 05:42:08'),
(2, 'Web Developer', 'web-developer', '2022-10-31 05:33:19', '2022-10-31 05:42:30'),
(3, 'Data Analyst', 'data-analyst', '2022-10-31 05:33:19', '2022-10-31 05:42:53'),
(4, 'Licenses & Certifications', 'licenses-certifications', '2022-10-31 05:47:30', '2022-10-31 05:47:30'),
(5, 'Honors & Awards', 'honors-awards', '2022-10-31 05:47:50', '2022-10-31 05:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '89 (2).png', '2022-10-31 05:33:19', '2022-12-19 19:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_22_063108_create_kategori_table', 1),
(5, '2021_01_27_094756_create_post_table', 1),
(6, '2021_01_27_185544_add_id_kategori_to_post_table', 1),
(7, '2021_01_28_085907_create_tag_table', 1),
(8, '2021_01_28_125128_create_post_tag_table', 1),
(9, '2021_01_31_163416_create_banner_table', 1),
(10, '2021_02_01_124740_create_logo_table', 1),
(11, '2021_02_01_171437_create_footer_table', 1),
(12, '2021_02_02_094328_create_tentang_table', 1),
(13, '2021_02_13_052058_add_id_user_to_post_table', 1),
(14, '2021_02_28_153130_create_permission_tables', 1),
(15, '2021_03_01_162633_create_like_table', 1),
(16, '2021_05_06_130247_create_rekomendasi_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('frengki123elistantobi1@gmail.com', '$2y$10$c46pxUP1TcQIyDExxLD26O2qXC2Pr8wbKyhEVMTi3sEqmdNe.4kdu', '2022-12-06 20:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `id_kategori`, `id_user`, `sampul`, `judul`, `konten`, `slug`, `created_at`, `updated_at`) VALUES
(5, 4, 1, '1667220839-DA_Frengki_page-0001 (1).jpg', 'Google: Data analytics by Cousera', '<ul>\r\n	<li>Melakukan praktik dan proses analis data setiap hari</li>\r\n	<li>Melakukan analisis seperti (pembersihan data, analisis, &amp; visualisasi) dengan alat yang digunakan (microsoft excel, spreadsheet, SQL, pemrograman R, Tableau)</li>\r\n	<li>Membersihkan dan mengatur data untuk analisis, dan menyelesaikan analisis dan perhitungan menggunakan spreadsheet, pemrograman SQL dan R</li>\r\n	<li>Memvisualisasikan dan menyajikan temuan data di dasbor, presentasi, dan platform visualisasi yang umum digunakan</li>\r\n	<li>Membuat strategi untuk mengelola harapan pemangku kepentingan sambil membangun komunikasi yang jelas dengan tim analisis data untuk mencapai berbagai tujuan bisnis</li>\r\n	<li>Melakukan visualisasi menggunakan pemrograman R</li>\r\n	<li>Mempelajari tentang R Markdown untuk mendokumentasikan hasil analisis</li>\r\n</ul>', 'google-data-analytics-by-cousera', '2022-10-31 05:53:59', '2022-10-31 05:53:59'),
(6, 4, 1, '1667221153-2.jpg', 'Android Developer', '<p>Mempelajari bagaimana membuat aplikasi berbasis android dimulai dari front end hingga backend serta mempelajari XML dan Java atau Kotlin dalam membangun aplikasi Android yang sesuai dengan standard Internasional.</p>', 'android-developer', '2022-10-31 05:59:13', '2022-12-19 19:59:52'),
(7, 4, 1, '1667221479-1.jpg', 'Web Developer by BNSP', '<p>Uji kompetensi terkait pengembang website:</p>\r\n\r\n<p>1. membuat dan mengelola database</p>\r\n\r\n<p>2. membuat tampilan aplikasi (Frontend)</p>\r\n\r\n<p>3. membuat backend dimana didalamnya membuat create, read, update , delete yang disertain MVC (Model, View, Controller)</p>', 'web-developer-by-bnsp', '2022-10-31 06:04:39', '2022-10-31 06:06:03'),
(8, 4, 1, '1667221934-microsoft.jpg', 'Microsoft Office', '<p>Uji kompetensi terkait kemahiran menggunakan:</p>\r\n\r\n<p>1. microsoft office excel</p>\r\n\r\n<p>2. microsoft office word</p>\r\n\r\n<p>3. microsoft office power point</p>', 'microsoft-office', '2022-10-31 06:12:14', '2022-10-31 06:12:14'),
(9, 1, 1, '1667222184-sihagung.JPG', 'Sihagung', '<p>Membuat sistem pakar deteksi hama dan penyakit pada tanaman jagung berbasis android. Kata kunci pencarian di playstore&rdquo;Sihagung&rdquo;.&nbsp;</p>\r\n\r\n<p>User admin berbasis website dengan link&nbsp;https://sihagung.mrats.tech/</p>\r\n\r\n<p>- Fitur Hama Penyakit</p>\r\n\r\n<p>Dimana didalam kita bisa menambahkan, mengedit, menghapus data hama dan penyakit</p>\r\n\r\n<p>-&nbsp;Fitur Gejala</p>\r\n\r\n<p>Dimana didalam kita bisa menambahkan, mengedit, menghapus data gejala</p>\r\n\r\n<p>-&nbsp;Fitur Gabungan</p>\r\n\r\n<p>Dimana didalam kita bisa menambahkan, mengedit, menghapus data gabungan&nbsp;</p>\r\n\r\n<p>- Fitur Ganti Password</p>\r\n\r\n<p>User pengguna berbasis Android.&nbsp;</p>\r\n\r\n<p>Aplikasi ini dibuat untuk membantu petani terutama dikabupaten lumajang untuk mendeteksi hama dan penyakit pada tanaman jagung</p>', 'sihagung', '2022-10-31 06:16:24', '2022-12-19 20:26:50'),
(10, 2, 1, '1667223056-bosto.JPG', 'Manajemen Karyawan', '<p>Membuat sistem manajemen &nbsp;karyawan PT BROMO STEEL INDONESIA menggunakan codeigniter 4 dimana didalamnya terdapat</p>\r\n\r\n<p>- fitur kelola karyawan</p>\r\n\r\n<p>- fitur kelola absensi</p>\r\n\r\n<p>- fitur kelola cuti</p>', 'manajemen-karyawan', '2022-10-31 06:30:56', '2022-12-19 20:03:20'),
(11, 2, 1, '1667223442-Rajanya sepatu.JPG', 'Company Profile', '<p>Membuat website company profile sederhana dari toko rajanya sepatu menggunakan wordpress</p>', 'company-profile', '2022-10-31 06:37:22', '2022-12-19 20:00:19'),
(12, 3, 1, '1667224560-tableau.JPG', 'Penyebab Kematian', '<p>Pemilihan Data Set Data set diambil dari kaggle: https://www.kaggle.com/datasets/hendratno/cause-of-death-in-indonesia?resource=download<br />\r\n<br />\r\nData set tersebut berisi penyebab kematian di seluruh Indonesia. Dari data tersebut penulis berfokus pada 3 hal utama yaitu jumlah kematian, penyebab kematian dan kematian teratas.<br />\r\n<br />\r\nTujuan dari visualisasi data ini adalah menjawab pertanyaan-pertanyaan berikut:<br />\r\n<br />\r\nMengetahui jumlah kematian manusia disetiap tahunnya?<br />\r\nMengetahui jumlah penyebab kematian pertahunnya?<br />\r\nMengetahu jumlah penyebat kematian teratas?<br />\r\nBagaimana presentase tipe bencana yang ada di indonesia?<br />\r\nDari visualisasi yang sudah dilakukan, didapatkan jawaban dari pertanyaan-pertanyaan di atas yang dijabarkan sebagai berikut.<br />\r\n<br />\r\ndisajikan visualisasi data yang dibagi atas 3 tipe bencana alam, bencana non alam dan penyakit, bencana sosial yang disajikan dalam bentuk diagram baris<br />\r\ndisajikan visualisasi data jumlah penyebab kematian disetiap tahunnya contoh pada tahun 2021 sebanyak 19 bencana non alam dan penyakit, 11 bencana alam, 2 bencana sosial. Pada tahun 2000 - 2022 penyebab kematian penduduk indonesia paling banyak disebabkan oleh non bencana dan penyakit<br />\r\ndisajikan visualisasi data dengan 10 penyebab kematian teratas antara tahun 2000-2022. yaitu Covid sebagai penyebab kematian tertinggi dengan jumlah 156.970 kematian<br />\r\nSelama tahun 2000-2022 terdapat 181 penyebab kematian yang terbagi atas 3 tipe yaitu bencana non alam dan penyakit sebesar 75.29%, bencana alam sebesar 21.76%, bencana sosial sebesar 2.94%</p>', 'penyebab-kematian', '2022-10-31 06:56:00', '2022-10-31 06:56:00'),
(13, 3, 1, '1667225409-indonesia.JPG', 'Indonesia country', '<p>Dataset: https://gadm.org/download_country.html then select the country of Indonesia and download the shipefile<br />\r\n<br />\r\nThe data set contains regions in Indonesia. From these data the author focuses on 2 main things, namely the number of provinces visualized on the map, the number of districts and cities<br />\r\n<br />\r\nThe purpose of this data visualization is to answer the following questions:<br />\r\n<br />\r\nDo you know the provinces in Indonesia?<br />\r\nHow many provinces in Indonesia?<br />\r\nHow many districts and cities throughout Indonesia?<br />\r\nThe names of the districts and cities of each province?<br />\r\nFrom the visualization that has been done, the answers to the questions above are described as follows.<br />\r\n<br />\r\nVisualization of the provinces in Indonesia is presented<br />\r\nThe number of provinces in Indonesia is 34<br />\r\nThere are 501 districts and cities in Indonesia<br />\r\npresented a visualization in the form of text table describing districts and cities in each province<br />\r\nFooter</p>', 'indonesia-country', '2022-10-31 07:10:09', '2022-10-31 07:10:09'),
(18, 5, 2, '1667352308-0001.jpg', 'Juara 1 terbaik', '<p>Juara 1 aplikasi terbaik dalam rangka 3rd IT Exhibition JTI Politeknik Negeri Jember</p>', 'juara-1-terbaik', '2022-11-01 18:25:08', '2022-11-01 18:25:08'),
(19, 2, 1, '1671507855-123JPG.JPG', 'Klasifikasi Kanker Serviks', '<p>Sistem klasifikasi kanker serviks ini berbasis website yang digunakan untuk mempermudah dokter untuk mendiagnosa kankers serviksi berdasarkan pengelompokan gejala(klasifikasi)</p>', 'klasifikasi-kanker-serviks', '2022-12-19 20:33:05', '2022-12-19 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `id_post`, `id_tag`, `created_at`, `updated_at`) VALUES
(7, 5, 5, NULL, NULL),
(8, 5, 6, NULL, NULL),
(9, 5, 7, NULL, NULL),
(10, 5, 8, NULL, NULL),
(11, 5, 9, NULL, NULL),
(12, 6, 9, NULL, NULL),
(13, 7, 1, NULL, NULL),
(14, 7, 9, NULL, NULL),
(15, 6, 4, NULL, NULL),
(16, 8, 6, NULL, NULL),
(17, 9, 1, NULL, NULL),
(18, 9, 4, NULL, NULL),
(19, 9, 9, NULL, NULL),
(20, 9, 10, NULL, NULL),
(21, 9, 11, NULL, NULL),
(22, 9, 12, NULL, NULL),
(23, 9, 13, NULL, NULL),
(24, 10, 9, NULL, NULL),
(25, 10, 10, NULL, NULL),
(26, 10, 11, NULL, NULL),
(27, 10, 12, NULL, NULL),
(28, 10, 14, NULL, NULL),
(29, 11, 10, NULL, NULL),
(30, 11, 11, NULL, NULL),
(31, 12, 5, NULL, NULL),
(32, 12, 6, NULL, NULL),
(33, 12, 7, NULL, NULL),
(34, 12, 8, NULL, NULL),
(35, 12, 9, NULL, NULL),
(36, 13, 5, NULL, NULL),
(37, 13, 6, NULL, NULL),
(38, 13, 7, NULL, NULL),
(39, 13, 8, NULL, NULL),
(40, 13, 9, NULL, NULL),
(48, 18, 2, NULL, NULL),
(49, 6, 16, NULL, NULL),
(50, 6, 17, NULL, NULL),
(51, 19, 1, NULL, NULL),
(52, 19, 2, NULL, NULL),
(53, 19, 11, NULL, NULL),
(54, 19, 12, NULL, NULL),
(55, 19, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekomendasi`
--

INSERT INTO `rekomendasi` (`id`, `id_post`, `created_at`, `updated_at`) VALUES
(8, 12, '2022-10-31 21:49:59', '2022-10-31 21:49:59'),
(9, 9, '2022-10-31 21:50:58', '2022-10-31 21:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-10-31 05:33:19', '2022-10-31 05:33:19'),
(2, 'penulis', 'web', '2022-10-31 05:33:19', '2022-10-31 05:33:19'),
(3, 'pembaca', 'web', '2022-10-31 05:33:19', '2022-10-31 05:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Codeigniter 3', 'codeigniter-3', '2022-10-31 05:33:19', '2022-10-31 05:43:30'),
(2, 'php', 'php', '2022-10-31 05:33:19', '2022-10-31 05:43:38'),
(3, 'laravel 8', 'laravel-8', '2022-10-31 05:33:19', '2022-10-31 05:43:51'),
(4, 'java', 'java', '2022-10-31 05:43:58', '2022-10-31 05:43:58'),
(5, 'tableau', 'tableau', '2022-10-31 05:44:11', '2022-10-31 05:44:11'),
(6, 'spreadsheet', 'spreadsheet', '2022-10-31 05:44:19', '2022-10-31 05:44:19'),
(7, 'R programming', 'r-programming', '2022-10-31 05:44:29', '2022-10-31 05:44:29'),
(8, 'R studio', 'r-studio', '2022-10-31 05:44:44', '2022-10-31 05:44:44'),
(9, 'SQL', 'sql', '2022-10-31 05:44:54', '2022-10-31 05:44:54'),
(10, 'java script', 'java-script', '2022-10-31 05:45:20', '2022-10-31 05:45:20'),
(11, 'html', 'html', '2022-10-31 05:45:27', '2022-10-31 05:45:27'),
(12, 'css', 'css', '2022-10-31 05:45:34', '2022-10-31 05:45:34'),
(13, 'REST API', 'rest-api', '2022-10-31 05:46:19', '2022-10-31 05:46:19'),
(14, 'Codeigniter 4', 'codeigniter-4', '2022-10-31 06:18:42', '2022-10-31 06:18:42'),
(15, 'Microsoft Excel', 'microsoft-excel', '2022-11-01 15:46:18', '2022-11-01 15:46:18'),
(16, 'kotlin', 'kotlin', '2022-12-19 19:58:24', '2022-12-19 19:58:24'),
(17, 'xml', 'xml', '2022-12-19 19:59:22', '2022-12-19 19:59:22'),
(18, 'javascript', 'javascript', '2022-12-19 20:29:16', '2022-12-19 20:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`id`, `konten`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '<p>Saya programmer IT dengan pengalaman 4 tahun. Familiar dengan bahasa pemrograman seperti PHP, codeigniter3, laravel 8, codeigniter 4, html, java, dll. Keterampilan database SQL atau database relasional. Mengerti Microsoft Office (word, excel, power point). Saya berpengetahuan luas yang memiliki minat dibidang Data Analyst Entry level data analytics profesional, Saya memiliki sertifikat profesional google analytics. Pemahaman yang sangat baik dan mahir terhadap platform untuk analisis data yang efektif, termasuk SQL,Spreadsheet, Excel, Tableau, dan R. Saya salah satu mahasiswa di Indonesia yang terpilih dalam program Digital Talent Scholarship (Beasiswa dari Kominfo dan Google) terkait Data Analyst.</p>', 'https://www.facebook.com/13frengki', 'https://www.instagram.com/13frengki/', 'https://twitter.com/13frengki', '2022-10-31 05:33:19', '2022-11-01 16:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'frengki123elistantobi1@gmail.com', '2022-10-31 05:33:19', '$2y$10$eMwgXG/P4xLMUM8i9/4ACe80kVNz/e873/T8ltQFM8fnIJ/Id3zFC', 'SYwmJrI2Q4vT2fapIVxVELJEUEuaHDAc4LHo7tpfBsRXqHIWZSI4XO32eI6H', '2022-10-31 05:33:19', '2022-10-31 19:47:03'),
(2, 'penulis', 'penulis@gmail.com', '2022-10-31 05:33:19', '$2y$10$faadISujVEM3cMbt/BzWw.cR2TEi7RlaxpJ/iIL1EKNGqRGio7x9u', NULL, '2022-10-31 05:33:19', '2022-10-31 05:33:19'),
(3, 'pembaca', 'pembaca@gmail.com', '2022-10-31 05:33:19', '$2y$10$Iid1I7CcwXKd7BXX1ISZcuCMhRbj35vzPmDPdLXBu4r5uG6gzqt5C', NULL, '2022-10-31 05:33:19', '2022-10-31 05:33:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_id_post_foreign` (`id_post`),
  ADD KEY `like_id_user_foreign` (`id_user`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_id_post_foreign` (`id_post`),
  ADD KEY `post_tag_id_tag_foreign` (`id_tag`);

--
-- Indexes for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `like_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_id_tag_foreign` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
