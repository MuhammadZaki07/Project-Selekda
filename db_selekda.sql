-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Agu 2024 pada 23.04
-- Versi server: 8.0.30
-- Versi PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_selekda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` blob NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quas iusto non pariatur eum.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030333339393f746578743d627573696e6573732b46616b65722b6574, 'Vitae cupiditate accusamus qui corporis et. Consequatur nihil sed quae. Rerum accusantium laborum itaque iste est.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(2, 'Vitae ipsum ex accusamus.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030313137373f746578743d627573696e6573732b46616b65722b71756961, 'Doloribus laudantium earum corporis velit. Ab ut veritatis atque unde labore sit iste. Porro voluptatibus nihil placeat beatae. Nihil sunt corrupti voluptatibus sed facilis autem.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(3, 'Veritatis enim repellat voluptas tempora sit magni.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030616135353f746578743d627573696e6573732b46616b65722b6574, 'Impedit sed dolor ut repellendus corrupti velit libero aut. Exercitationem ut vel voluptas omnis qui sed maxime. Nostrum ea distinctio tempore. Nostrum animi rem laudantium occaecati aut.', 'active', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(4, 'Aspernatur accusantium deserunt est dolore vero ut ullam velit.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030323230303f746578743d627573696e6573732b46616b65722b6561, 'Repellendus vel rem vitae. Nulla ipsum ut mollitia dolor vel incidunt possimus. Repellat laboriosam ad commodi eligendi. Cum culpa reiciendis consequatur velit unde.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(5, 'Molestiae voluptatibus unde et delectus expedita.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030393961613f746578743d627573696e6573732b46616b65722b7574, 'Omnis et amet deserunt. Sit eos aspernatur consequatur sed labore omnis sint sunt. Possimus accusantium magnam adipisci unde dolorem sit beatae. Quia dignissimos autem iure officiis.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(6, 'Corrupti vel et qui itaque recusandae.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030646438383f746578743d627573696e6573732b46616b65722b706f7373696d7573, 'Iure quaerat suscipit voluptatem sit voluptatem qui. Quae alias tempora voluptatum nostrum. Molestiae vel cumque quia est. Minus enim impedit consequuntur sint voluptatem quidem.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(7, 'Deleniti nisi ipsam omnis culpa rerum dignissimos.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030393930303f746578743d627573696e6573732b46616b65722b73756e74, 'Magnam in dicta est et. Autem adipisci ad magnam id ad officiis. Nobis excepturi voluptatum molestias sit quis.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(8, 'Magnam assumenda fuga aliquam sit.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030626230303f746578743d627573696e6573732b46616b65722b6574, 'Sed ut cum possimus sunt perferendis dolores. Suscipit a repellat reprehenderit sapiente tempora rerum. Placeat aut et dolorem et eum voluptatem quae. Ab magni et non et maxime.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(9, 'Dolor consequatur corporis voluptas molestiae est earum.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030636361613f746578743d627573696e6573732b46616b65722b706f72726f, 'Repellat enim perspiciatis odio impedit. Vero laboriosam incidunt eveniet rem sed tempora fugit. Autem nihil veniam dolorem rerum ut dicta. Qui harum dolores nam quo tempora.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(10, 'Voluptatem sequi sit maiores.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030353536363f746578743d627573696e6573732b46616b65722b7574, 'Rerum est ut consequatur quia beatae. Doloremque modi expedita incidunt dolorem nesciunt dolore optio tempore. Fugit voluptatem et nemo dolores.', 'inactive', '2024-08-30 07:06:28', '2024-08-30 07:06:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` blob NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `comment_id`, `title`, `description`, `image`, `tags`, `author`, `created_at`, `updated_at`) VALUES
(1, 6, 'Veritatis repudiandae nemo quam voluptas veniam debitis.', 'Ratione perferendis quam dolorum officia ducimus distinctio. Laudantium magni consequatur facilis culpa sit est laboriosam officia. Qui quia facere est dolorem.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030646461613f746578743d6e61747572652b46616b65722b696e76656e746f7265, 'dolor, molestiae, quos', 'Farhunnisa Winarsih', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(2, 1, 'Rerum architecto exercitationem dolorum quaerat temporibus harum ipsam.', 'Quia culpa sint cum illo et voluptatibus. Ipsam velit rerum architecto. Rerum rerum et et ea.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030353536363f746578743d6e61747572652b46616b65722b6675676974, 'eos, numquam, recusandae', 'Raden Hutasoit', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(3, 4, 'Eius distinctio esse id consequatur rem blanditiis sunt.', 'Hic dolore rerum ab itaque nostrum molestiae commodi non. Non voluptatum molestiae possimus quis suscipit voluptatem.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030656562623f746578743d6e61747572652b46616b65722b65697573, 'sit, rem, hic', 'Maryanto Rajasa M.Farm', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(4, 9, 'Impedit sit voluptates rerum est.', 'Nihil vero est amet ut. Quasi est harum quia exercitationem quibusdam perferendis. Ad ex provident ut iste dolores odit perspiciatis.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030383832323f746578743d6e61747572652b46616b65722b65756d, 'omnis, dolores, ea', 'Farhunnisa Wastuti', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(5, 7, 'Ducimus ipsam dolor ut porro illum fugit.', 'Aut sit quaerat deserunt quia quae. Optio nemo expedita in recusandae. Iure facere reiciendis rerum ut. Cum tenetur mollitia accusantium aut est est. Molestias porro in asperiores sed et debitis.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030333335353f746578743d6e61747572652b46616b65722b6c617564616e7469756d, 'iure, nihil, ea', 'Maimunah Pratiwi', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(6, 8, 'Blanditiis qui facilis corrupti ut omnis suscipit.', 'Mollitia corporis libero voluptas fuga quia. Sequi a iusto soluta doloribus et iste. Qui aut alias facilis neque necessitatibus in voluptatibus nostrum.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030656534343f746578743d6e61747572652b46616b65722b6f7074696f, 'est, enim, molestias', 'Melinda Najwa Wijayanti', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(7, 9, 'Repellendus sequi nesciunt molestiae aut.', 'Repellat perspiciatis qui officia est voluptatem. Non corrupti ut aut laudantium omnis voluptatem. Qui iste dolores repellendus molestiae sed voluptas.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030636366663f746578743d6e61747572652b46616b65722b74656d706f7261, 'quia, architecto, ea', 'Karsana Pradipta', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(8, 8, 'Rerum voluptatem aliquid vel quibusdam occaecati a asperiores dicta.', 'Voluptates quia sit minima ratione fugit repudiandae distinctio et. Sint mollitia ipsam quae repellat. Dolore quia sapiente facere neque.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030626232323f746578743d6e61747572652b46616b65722b6561, 'debitis, vel, et', 'Harimurti Dongoran', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(9, 5, 'Iure accusamus et non nemo aut ipsa.', 'Fugit sequi magni in est non. Earum ea nulla sint. Enim provident alias omnis omnis perspiciatis perspiciatis.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030656533333f746578743d6e61747572652b46616b65722b71756f, 'ratione, nostrum, sunt', 'Asman Hardiansyah', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(10, 5, 'Molestiae eos aut blanditiis quaerat quod.', 'Quos optio et labore veritatis et aut quas unde. Nisi repudiandae et numquam numquam ea ipsa quas suscipit. Qui minima et explicabo modi et.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030313165653f746578743d6e61747572652b46616b65722b726570656c6c6174, 'sequi, dolorum, itaque', 'Warji Prasetya', '2024-08-30 07:06:28', '2024-08-30 07:06:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `captcha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `name`, `email`, `subject`, `website`, `comment`, `captcha`, `created_at`, `updated_at`) VALUES
(1, 2, 'Restu Padmasari', 'yhariyah@example.org', 'Qui labore facilis itaque incidunt hic voluptas.', 'https://tarihoran.net/quae-nihil-optio-sint.html', 'Non autem aspernatur et eligendi earum enim. Nihil et nesciunt et labore enim eos. Et dolorum libero amet commodi porro. Alias dolore ut earum.', 'officia', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(2, 4, 'Dariati Warsita Budiyanto M.Kom.', 'rahimah.wawan@example.com', 'Expedita voluptatem veritatis magni voluptate autem itaque.', 'http://simbolon.web.id/', 'Unde itaque non ex quibusdam veniam. Cum ex veritatis quis quis voluptatem. Animi sed eaque id excepturi ex consequatur. Ut quis laudantium quaerat commodi quae.', 'ex', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(3, 6, 'Carla Lailasari S.Sos', 'wlaksita@example.net', 'Sed vel suscipit voluptas asperiores nisi laudantium qui provident.', 'http://www.agustina.co.id/possimus-quo-maiores-velit', 'Ea ad dolore aperiam. Quia assumenda numquam soluta officia impedit id. Placeat maxime quibusdam aut cum nobis placeat eum. Tempore nam accusamus magnam velit.', 'est', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(4, 8, 'Titin Puspasari', 'kania.purwanti@example.net', 'Sed rerum voluptate optio maxime cupiditate.', 'http://wijaya.web.id/sed-qui-corporis-excepturi-et-libero', 'Consequuntur veniam molestiae qui reprehenderit. Numquam sed aliquid et harum et dolorum qui. Ratione vero dolorem officiis molestias est. Eum impedit animi voluptatem.', 'delectus', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(5, 2, 'Aurora Talia Aryani S.Psi', 'mutia80@example.com', 'Consequatur dolorem dolore et et debitis ea odit tenetur.', 'https://prasasta.name/est-accusamus-saepe-fugiat-sint-quod-autem-et.html', 'In vel enim quia nisi voluptate quas exercitationem. Praesentium consequatur fuga deserunt. Est beatae sed in sed facere.', 'repellat', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(6, 3, 'Yessi Mandasari', 'usyi.wacana@example.net', 'At cupiditate sint ducimus quasi dolor numquam.', 'https://www.laksita.info/corrupti-sed-et-sapiente-maiores-et-unde-sint', 'Similique ducimus sed maxime natus sed. Exercitationem molestiae dicta ut minus. Dignissimos quaerat facilis porro doloribus aut.', 'qui', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(7, 1, 'Pranawa Bahuwirya Saragih M.Farm', 'salimah68@example.org', 'Est voluptas doloribus ullam impedit.', 'http://marbun.go.id/est-illo-ut-in-et-dolor', 'Qui qui debitis ipsam velit reiciendis id iste. Provident quia molestiae nihil impedit.', 'inventore', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(8, 5, 'Banara Wardaya Hardiansyah', 'siti18@example.org', 'Velit sunt quis temporibus laborum.', 'http://mandala.tv/est-et-qui-voluptas-dolores-veritatis-id-ut-nisi.html', 'Odit et vero exercitationem saepe. Voluptatum reiciendis non ab praesentium doloremque in et id. Nostrum reiciendis delectus et. Provident quia velit quae sunt voluptates totam et.', 'quia', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(9, 8, 'Galih Caket Situmorang S.Pd', 'wani.sitorus@example.com', 'Sunt soluta consequatur dolorum culpa voluptates vitae.', 'http://www.prasetyo.my.id/', 'Consequatur iusto aliquid ut voluptatem nihil vel a. In non odit eveniet quisquam quaerat facilis ab. Perspiciatis voluptas dolores quis tempora eius in. Sit totam aperiam fuga voluptas.', 'accusamus', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(10, 1, 'Jamalia Eka Haryanti M.TI.', 'septi95@example.net', 'Consequatur quis qui neque non laudantium porro rem.', 'http://www.mahendra.in/deserunt-sunt-in-adipisci-aut-ipsam.html', 'Veniam laboriosam et assumenda omnis aut reiciendis similique et. Facere et velit rerum nemo quaerat est. Est omnis molestiae minus id dolor fuga.', 'illo', '2024-08-30 07:06:28', '2024-08-30 07:06:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `game_scores`
--

CREATE TABLE `game_scores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `score` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_29_012840_create_personal_access_tokens_table', 1),
(5, '2024_08_29_013155_create_blogs_table', 1),
(6, '2024_08_29_013203_create_portfolios_table', 1),
(7, '2024_08_29_013210_create_banners_table', 1),
(8, '2024_08_29_013217_create_game_scores_table', 1),
(9, '2024_08_29_020759_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'sancum_token', 'e59b685c125ef02ab082db288a086b6c15d47e00a01cfc01b0b26aa2677112bf', '[\"*\"]', '2024-08-30 16:03:59', NULL, '2024-08-30 07:41:52', '2024-08-30 16:03:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` blob NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `description`, `image`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Quod ex porro error impedit.', 'Omnis et quo laboriosam dicta vero voluptatum in. Est numquam perspiciatis assumenda asperiores quidem omnis aut. Et debitis quam nesciunt atque. Rerum voluptatem commodi sequi nostrum.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030393934343f746578743d627573696e6573732b46616b65722b616c6971756964, 'Lala Nadine Melani S.Pt', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(2, 'Provident voluptas soluta vitae saepe.', 'Doloribus deserunt distinctio vel deserunt ut. Qui ut culpa rem doloremque. Nulla ipsa qui facilis ipsam quae atque incidunt. Dolorem in iste sapiente. Consequatur doloribus perspiciatis et aut.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030393933333f746578743d627573696e6573732b46616b65722b646f6c6f726573, 'Darman Narpati', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(3, 'Ut architecto officiis aspernatur est expedita.', 'Amet voluptatem ullam enim sunt atque repellendus qui. Et ut quas iste enim dolorem et. Est enim corporis qui. Amet assumenda qui est quas inventore.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030333337373f746578743d627573696e6573732b46616b65722b697073756d, 'Rusman Mandala', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(4, 'Corporis cupiditate nulla distinctio est consequatur.', 'Qui quas laborum quis. Et nobis similique ut minima natus. Possimus sed odio et.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030313131313f746578743d627573696e6573732b46616b65722b61737065726e61747572, 'Hairyanto Suryono S.I.Kom', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(5, 'Deserunt voluptatem nostrum enim exercitationem provident aut vero.', 'Officia ut sint est omnis quam ex voluptas. Cum recusandae iusto officiis.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030646435353f746578743d627573696e6573732b46616b65722b6f646974, 'Tira Farhunnisa Oktaviani', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(6, 'Ipsa omnis nostrum minus quaerat qui voluptatem.', 'Illum similique officiis hic facere iste magnam tempora et. Magnam autem beatae ipsam qui. Cumque perferendis molestias sunt molestiae.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030343462623f746578743d627573696e6573732b46616b65722b646f6c6f7269627573, 'Rina Fujiati', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(7, 'Possimus ipsa assumenda aut.', 'Alias fuga illo ea quam officiis. Quibusdam minima non natus laboriosam fuga earum et. Molestiae quam et velit et deleniti molestias.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030373739393f746578743d627573696e6573732b46616b65722b6578706564697461, 'Jessica Wastuti', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(8, 'Omnis consequatur aut sed tenetur aut deserunt quas.', 'Vitae et quisquam praesentium enim earum et. Eius quo ut nostrum. Vel mollitia accusamus quo consequatur molestiae quis autem.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030373761613f746578743d627573696e6573732b46616b65722b6d6f6c657374696165, 'Padmi Oktaviani S.Psi', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(9, 'Inventore explicabo assumenda est autem qui.', 'Qui modi sed aut cumque quis eveniet dolorem sit. Sunt harum quia quia minima quis. Sed nisi qui facere sed modi sint quae nesciunt. Aliquid quos reprehenderit illum sint ut.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030616163633f746578743d627573696e6573732b46616b65722b6d6f6c657374696165, 'Septi Anggraini', '2024-08-30 07:06:29', '2024-08-30 07:06:29'),
(10, 'Beatae enim aliquam laudantium voluptatem.', 'Veniam minus qui distinctio. Dolor nobis rerum placeat voluptate architecto. Voluptas et nesciunt at.', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030666635353f746578743d627573696e6573732b46616b65722b656f73, 'Anom Hidayanto', '2024-08-30 07:06:29', '2024-08-30 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Qqslc8s3Q31wRqanqJueCKEEgq2DeJew9piQgeqm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0N5Ulh5SVBucjFzRGZJUVNuajBleXlEUDhRMDlvcVNGcWtSNGY3TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725026944);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `profile_picture` blob,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `profile_picture`, `phone_number`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Janet', 'Winarsih', 'jaeman24@gmail.com', '1975-10-16', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030383834343f746578743d70656f706c652b46616b65722b6f646974, '(+62) 702 5237 743', '$2y$12$aVxhD2r71Ykm8tLXyBA6DetgzpD9YQN1Ax5wsSVbErXtVkjVPqh02', 'user', '2024-08-30 07:06:26', '2024-08-30 07:06:26'),
(2, 'Cakrabirawa', 'Wasita', 'hutagalung.omar@gmail.com', '2018-12-26', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030393937373f746578743d70656f706c652b46616b65722b71756165726174, '0605 9128 1053', '$2y$12$PIBydwlT.3an.nemHXt0nuFVJBI8y.EZrmUmgO.S7zMcpoyJ8Rkvq', 'user', '2024-08-30 07:06:27', '2024-08-30 07:06:27'),
(3, 'Gading', 'Hidayanto', 'apermata@gmail.com', '1972-08-20', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030646462623f746578743d70656f706c652b46616b65722b696e, '(+62) 899 8495 502', '$2y$12$RCFPhBh8ok9bl6uQyTd3aehSicIKWRMdeRyf/lBH5yNQNs.p1M2Ay', 'user', '2024-08-30 07:06:27', '2024-08-30 07:06:27'),
(4, 'Tari', 'Pertiwi', 'ctarihoran@gmail.com', '1989-05-10', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030323232323f746578743d70656f706c652b46616b65722b657374, '0873 9842 697', '$2y$12$jD6TFHJ2Fb71.CmARVheGe/VvRK23uvQnMItEdRSZOzn950ScgXU2', 'admin', '2024-08-30 07:06:27', '2024-08-30 07:06:27'),
(5, 'Eka', 'Pranowo', 'ulya96@gmail.com', '1984-02-07', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030343436363f746578743d70656f706c652b46616b65722b71756f, '0902 9866 7046', '$2y$12$XfsU3qXJY/eUa4Pdq1zkQeH5qH/mKenciGxGCzVE0f3h1HGlcL/yW', 'user', '2024-08-30 07:06:27', '2024-08-30 07:06:27'),
(6, 'Kasiyah', 'Halim', 'paulin91@gmail.com', '1992-02-01', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030383863633f746578743d70656f706c652b46616b65722b65756d, '(+62) 365 6432 0020', '$2y$12$JnKElL/KiO4rKQSxGASPuuXfpziaxCpdCCaQJBXaaZt4hV9AOLPSu', 'admin', '2024-08-30 07:06:27', '2024-08-30 07:06:27'),
(7, 'Nasab', 'Oktaviani', 'bsafitri@gmail.com', '1984-10-10', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030383864643f746578743d70656f706c652b46616b65722b766f6c7570746174756d, '0392 0232 770', '$2y$12$15BBF8QymD2haD/sDJrk2OL1S5WztQ6w8frHa2Sra7X.btILDhUw.', 'user', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(8, 'Najwa', 'Pratiwi', 'shania.puspita@gmail.com', '2013-08-11', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030666638383f746578743d70656f706c652b46616b65722b697461717565, '0917 9822 2660', '$2y$12$OOXnqIcNcT84lvC4JcvPlec4ZRYKaROnhect1WCF4K8bjz/IbxoGu', 'admin', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(9, 'Ilsa', 'Sihotang', 'lmelani@gmail.com', '2011-01-20', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030383839393f746578743d70656f706c652b46616b65722b656e696d, '0674 0348 392', '$2y$12$nIr1jqSiKWgKQrEu3OknV.Y/2LQJChKtPWhmmvMHqvdBlGQu.U3b2', 'user', '2024-08-30 07:06:28', '2024-08-30 07:06:28'),
(10, 'Faizah', 'Winarsih', 'mardhiyah.karsana@gmail.com', '1991-06-21', 0x68747470733a2f2f7669612e706c616365686f6c6465722e636f6d2f363430783438302e706e672f3030393964643f746578743d70656f706c652b46616b65722b76656c, '0722 0477 3952', '$2y$12$hVvRZ36wTs7/w8X2xsWPK.rZL/Lcd3s1UaS2C19J2zmIxSUl2SSJ.', 'admin', '2024-08-30 07:06:28', '2024-08-30 07:06:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `game_scores`
--
ALTER TABLE `game_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_scores_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `game_scores`
--
ALTER TABLE `game_scores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `game_scores`
--
ALTER TABLE `game_scores`
  ADD CONSTRAINT `game_scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
