-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2026 at 12:47 PM
-- Server version: 8.4.3
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locations` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `text`, `nama_perusahaan`, `phone`, `emails`, `locations`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Software House Pilihanmu', 'Teknologi Prima Nusantara', '085216906779', 'Help@tekprim.com', 'Jl Prof. Lafran Pane No. 14 Depok, Jawa Barat 16451', 'Apakah bisnis Anda sering kali terasa melelahkan hanya karena urusan pencatatan yang berantakan, antrean yang menumpuk, atau stok barang yang sering selisih? Kami memahami bahwa waktu Anda sebagai pemilik bisnis sangat berharga dan tidak seharusnya habis untuk mengurus hal-hal teknis yang rumit secara manual. Inilah saatnya meninggalkan cara lama yang membuang waktu dan beralih ke solusi digital yang dirancang khusus untuk mempermudah hidup Anda. Dengan sistem yang praktis, cepat, dan akurat, Anda bisa memantau seluruh aktivitas usaha secara real-time langsung dari genggaman, sehingga Anda memiliki lebih banyak waktu untuk fokus mengembangkan bisnis ke level berikutnya', '20211222161322.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `author`, `title`, `content`, `created_at`, `updated_at`) VALUES
(4, '20260526124534.png', 'Achmad Zaki', 'Apa itu laravel', '<p><strong>Laravel</strong> adalah sebuah <i>framework</i> (kerangka kerja) pengembangan aplikasi web berbasis bahasa pemrograman PHP.</p><p>Sederhananya, Laravel dibuat untuk membantu para <i>programmer</i> membangun website dengan lebih cepat, rapi, dan aman. Daripada menulis kode dari nol untuk fitur-fitur umum, Laravel sudah menyediakan fungsi-fungsi siap pakai.</p><p>Berikut adalah beberapa hal penting yang mendefinisikan Laravel:</p><p><strong>Menggunakan Konsep MVC (Model-View-Controller):</strong> Laravel memisahkan logika bisnis (Model), tampilan halaman (View), dan pengatur aliran data (Controller). Ini membuat kode menjadi lebih rapi dan mudah dikelola.</p><p><strong>Fitur Bawaan yang Lengkap:</strong> Laravel sudah menyediakan sistem bawaan untuk menangani autentikasi (login/register), manajemen database (Eloquent ORM), pengaturan rute url (routing), hingga sistem keamanan dari serangan siber (seperti CSRF dan SQL Injection).</p><p><strong>Sistem Template Blade:</strong> Laravel memiliki mesin <i>template</i> sendiri bernama Blade yang memudahkan <i>programmer</i> untuk membuat tampilan website yang dinamis dengan kode yang lebih bersih.</p><p><strong>Ekosistem dan Komunitas Besar:</strong> Karena sangat populer, Laravel punya komunitas yang masif. Jika menemui kendala, solusi atau tutorialnya sangat mudah ditemukan di internet.</p><p>Singkatnya, Laravel adalah alat bantu yang membuat proses pembuatan website menggunakan PHP menjadi lebih efisien, terstruktur, dan modern</p>', '2026-05-26 05:45:34', '2026-05-26 05:45:34'),
(5, '20260526124629.jpg', 'Achmad Zaki', 'Apa itu PHP', '<p><strong>PHP</strong> (singkatan dari <i>Hypertext Preprocessor</i>) adalah bahasa pemrograman <i>open-source</i> yang dirancang khusus untuk pengembangan website.</p><p>Berbeda dengan HTML atau CSS yang mengatur tampilan, PHP bekerja di sisi server (<i>server-side</i>). Artinya, kode PHP dieksekusi di komputer server, lalu hasilnya dikirim ke browser pengguna dalam bentuk HTML biasa.</p><p>Berikut adalah beberapa poin penting untuk memahami PHP:</p><p><strong>Membuat Website Dinamis:</strong> Jika HTML menghasilkan halaman yang statis (isinya begitu-begitu saja), PHP membuat website bisa berinteraksi dengan pengguna. Contohnya menampilkan nama pengguna setelah login, memproses formulir, atau menampilkan produk berdasarkan pencarian.</p><p><strong>Terhubung dengan Database:</strong> PHP sangat mahir berkomunikasi dengan database (seperti MySQL). Ini memungkinkan website untuk menyimpan, mengambil, dan mengubah data, seperti data akun pengguna atau artikel blog.</p><p><strong>Bahasa di Balik Website Populer:</strong> Banyak platform besar yang dibangun menggunakan PHP. Contoh paling populer adalah <strong>WordPress</strong> (yang menggerakkan sebagian besar website di internet), Wikipedia, hingga Facebook pada awal pengembangannya.</p><p><strong>Mudah Dipelajari tapi Kuat:</strong> PHP memiliki dokumentasi yang sangat lengkap dan ramah untuk pemula, namun tetap bertenaga untuk menopang sistem web berskala besar.</p><p>Jika diibaratkan sebuah rumah, HTML adalah dinding dan strukturnya, CSS adalah cat dan dekorasinya, sedangkan <strong>PHP adalah sistem kelistrikan dan pipanya</strong>—yang membuat rumah tersebut benar-benar berfungsi dan hidup.</p>', '2026-05-26 05:46:29', '2026-05-26 05:46:29'),
(6, '20260526124720.jpg', 'Achmad Zaki', 'Laragon vs Xmpp', '<p>Meskipun maksud Anda adalah <strong>XAMPP</strong>, perbandingan antara <strong>Laragon</strong> dan <strong>XAMPP</strong> sangat menarik karena keduanya adalah aplikasi populer untuk membuat <i>local server</i> di komputer (khususnya Windows) agar bisa menjalankan PHP, Apache/Nginx, dan MySQL.</p><p>Meskipun fungsinya sama, cara kerja dan kenyamanan yang ditawarkan keduanya cukup berbeda jauh. Berikut adalah perbandingannya:</p><h3>1. Kecepatan dan Performa</h3><p><strong>Laragon:</strong> Terkenal sangat ringan, cepat, dan menggunakan memori (RAM) yang jauh lebih sedikit. Proses <i>booting</i> servisnya hampir instan.</p><p><strong>XAMPP:</strong> Cenderung lebih berat saat dijalankan dan terkadang terasa agak lambat ketika memproses <i>request</i> database yang besar di lokal.</p><h3>2. Manajemen Versi PHP (Paling Krusial)</h3><p><strong>Laragon:</strong> Sangat mudah untuk mengganti versi PHP (misal dari PHP 7.4 ke PHP 8.1 atau PHP 8.2). Anda hanya perlu mengunduh modul PHP, mengekstraknya, dan menggantinya lewat klik kanan di menu.</p><p><strong>XAMPP:</strong> Sangat merepotkan jika ingin mengganti versi PHP. Biasanya Anda harus mengunduh master installer XAMPP yang berbeda secara keseluruhan untuk mendapatkan versi PHP yang berbeda.</p><h3>3. Fitur Otomatisasi dan Modernitas</h3><p><strong>Laragon:</strong> Memiliki fitur <strong>Pretty URLs</strong> otomatis. Anda tidak perlu mengakses website lokal dengan localhost/nama-folder, karena Laragon otomatis mengubahnya menjadi nama-folder.test. Laragon juga menyediakan fitur <i>Auto-virtual hosts</i>, instalasi WordPress/Laravel sekali klik, dan integrasi <i>tool</i> modern seperti Ngrok/Cloudflare Tunnel untuk <i>online-kan</i> web lokal dengan mudah.</p><p><strong>XAMPP:</strong> Masih menggunakan cara konvensional. Anda harus mengaksesnya lewat localhost/nama-folder. Jika ingin membuat <i>virtual host</i> (domain palsu .local/.test), Anda harus mengedit file konfigurasi Apache dan <i>hosts</i> Windows secara manual.</p><h3>4. Isolasi Sistem (Port Terpakai)</h3><p><strong>XAMPP:</strong> Sering kali mengalami bentrok <i>port</i> (terutama port 80 atau 443) dengan aplikasi lain seperti Skype, VMware, atau IIS bawaan Windows, yang membuat Apache gagal berjalan dan memunculkan error teks merah.</p><p><strong>Laragon:</strong> Lebih pintar dalam mengisolasi diri dan jarang sekali mengalami bentrok <i>port</i>. Jika ada port yang terpakai, Laragon biasanya otomatis mencari port alternatif atau memberi tahu dengan jelas tanpa merusak servis lainnya.</p><h3>Kesimpulan: Pilih yang Mana?</h3><p><strong>Pilih Laragon jika:</strong> Anda adalah developer modern, sering bekerja dengan <i>framework</i> seperti Laravel atau CMS WordPress, butuh fleksibilitas ganti versi PHP dengan cepat, dan menyukai efisiensi kerja.</p><p><strong>Pilih XAMPP jika:</strong> Anda sedang mengikuti tutorial lama (karena mayoritas sekolah/kampus dan buku rilisan lama masih menggunakan XAMPP sebagai standar), atau Anda hanya butuh server PHP statis standar tanpa perlu fitur tambahan yang kompleks.</p><p>Secara garis besar, Laragon bisa dibilang sebagai versi modern dan jauh lebih canggih yang berhasil memperbaiki kekurangan-kekurangan yang ada di XAMPP.</p>', '2026-05-26 05:47:20', '2026-05-26 05:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `header` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `header`, `text`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'Sinergi', 'Kami percaya bahwa inovasi besar tidak lahir dari ruang hampa, melainkan dari kolaborasi yang kuat. Melalui Sinergi, kami memadukan visi bisnis Anda dengan keahlian teknis tim kami, menciptakan ruang diskusi yang dinamis untuk menyalakan setiap ide potensial dan merumuskannya menjadi cetak biru digital yang siap dikembangkan bersama.', '20211222162149.svg', NULL, NULL),
(2, '2', 'Presisi', 'Dalam dunia pengembangan perangkat lunak, detail adalah segalanya. Presisi adalah standar kerja kami dalam menerjemahkan ide menjadi kode, di mana setiap arsitektur sistem, baris program, dan antarmuka pengguna dirancang dengan ketepatan tinggi demi menghasilkan aplikasi yang stabil, aman, dan efisien sesuai kebutuhan nyata Anda.', '20220103082526.svg', NULL, NULL),
(3, '3', 'Realisasi', 'Gagasan terbaik akan kehilangan nilainya tanpa eksekusi yang tuntas. Realisasi adalah muara dari seluruh proses kami, di mana komitmen kami bukan sekadar menyelesaikan proyek, melainkan benar-benar mewujudkan inovasi tersebut menjadi produk digital yang fungsional, siap pakai, dan mampu membawa dampak positif bagi perkembangan bisnis Anda.', '20220103082637.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `image`, `name`, `created_at`, `updated_at`) VALUES
(1, '20211223013633.png', 'name2', NULL, NULL),
(2, '20220103081721.png', 'name3', NULL, NULL),
(3, '20220103081735.png', 'name4', NULL, NULL),
(4, '20220103081748.png', 'name5', NULL, NULL),
(5, '20220103081836.png', 'name6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `name`, `title`, `created_at`, `updated_at`) VALUES
(1, '20211220023544.jpg', 'Saya Sendiri', 'Foto ketika acara pembagian hasil nilai', NULL, NULL),
(2, '20220105065511.jpg', 'Animation Design', 'Character Animation Design', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `title`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi Prima Nusantara', 'Software House Pilihanmu', '20211219021012.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_15_115150_create_sessions_table', 1),
(7, '2021_12_15_135521_create_homes_table', 1),
(8, '2021_12_15_144155_create_blogs_table', 1),
(9, '2021_12_16_031146_create_galleries_table', 1),
(10, '2021_12_18_004437_create_portfolios_table', 1),
(11, '2021_12_18_085954_create_misis_table', 1),
(12, '2021_12_20_062605_create_customers_table', 1),
(13, '2021_12_20_073351_create_abouts_table', 1),
(14, '2021_12_22_161739_create_cards_table', 1),
(15, '2022_01_15_003325_create_videos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `misis`
--

CREATE TABLE `misis` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `misis`
--

INSERT INTO `misis` (`id`, `image`, `text`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(1, '20260526124338.png', 'TEKPRIM adalah software house andalan yang berdedikasi membangun infrastruktur digital terbaik untuk pelaku usaha di Indonesia.', 'Menjadi pilar utama transformasi digital bagi ekosistem bisnis di Nusantara melalui teknologi yang andal, inklusif, dan mudah diakses semua kalangan', 'Inovasi Tanpa Henti, Demokratisasi Teknologi, Dukungan Mitra Terpercaya', NULL, '2026-05-26 05:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `image`, `name`, `title`, `created_at`, `updated_at`) VALUES
(8, '20260526122901.png', 'SI PALING GANTENG', 'THE CHOSEN ONE', '2026-05-26 05:29:01', '2026-05-26 05:35:26'),
(11, '20260526123130.jpeg', 'Ainur Ravi', 'Direktur Pemasaran', '2026-05-26 05:31:30', '2026-05-26 05:31:30'),
(12, '20260526123150.jpeg', 'Rocky Juansyah', 'Direktur Keuangan', '2026-05-26 05:31:50', '2026-05-26 05:31:50'),
(13, '20260526123222.png', 'Raihan Fathi', 'Direktur Operasional', '2026-05-26 05:32:22', '2026-05-26 05:32:22'),
(14, '20260526123244.png', 'Oktavian Ramadani', 'Direktur Sdm', '2026-05-26 05:32:44', '2026-05-26 05:32:44'),
(15, '20260526123341.png', 'Nama', 'Manajer Pemasaran', '2026-05-26 05:33:41', '2026-05-26 05:33:41'),
(16, '20260526123402.png', 'Nama', 'Manajer Keuangan', '2026-05-26 05:34:02', '2026-05-26 05:34:02'),
(17, '20260526123427.png', 'Dimas Ali', 'Manajer Operasional', '2026-05-26 05:34:27', '2026-05-26 05:34:27'),
(18, '20260526123441.png', 'Nama', 'Manajer Sdm', '2026-05-26 05:34:41', '2026-05-26 05:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7SnizMr9qgMN9xue7kaBd1EcFJmtesF2YuKlaIZV', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZWdWVnU0cFdJdU05MkJMVnJmbkdkVHM5WjFTU3NVMDM5QUg2U1dUViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRJNnBvVlRWeTdqalRYVGliQ3VLWUYudzJkZlk2NXR3UUI1aXB1WjMvMlNHYlY1SWtHMS9SVyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSTZwb1ZUVnk3ampUWFRpYkN1S1lGLncyZGZZNjV0d1FCNWlwdVozLzJTR2JWNUlrRzEvUlciO30=', 1779799665),
('wJHVAztVH4dEDeCWwS9h2Zvio9kGIzY59UCGhlwP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.121.0 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRURGSUFGVzNRa0JqRkR6ZVZJckt6aGtSMHdTM3dib0ZCRWhRQmYxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1779798465);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin@gmail.com', NULL, '$2y$10$I6poVTVy7jjTXTibCuKYF.w2dfY65twQB5ipuZ3/2SGbV5IkG1/RW', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video`, `name`, `title`, `created_at`, `updated_at`) VALUES
(1, '20220115024841.mp4', 'Raditya Dika', 'Ujung Selotip', NULL, NULL),
(2, '20220115025029.mp4', 'Raditya Dika', 'Makan', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misis`
--
ALTER TABLE `misis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `misis`
--
ALTER TABLE `misis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
