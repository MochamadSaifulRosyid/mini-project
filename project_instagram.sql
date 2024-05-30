-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 05:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_instagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commentable_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(255) DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `parent_id`, `commentable_id`, `commentable_type`, `body`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 1, 'App\\Models\\Post', 'Ut alias nostrum magni dolorem beatae. Dolores ut incidunt cum occaecati fuga. Sit ea natus quam laborum aspernatur ea. Iste consequuntur animi optio aliquid qui.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(2, 4, NULL, 2, 'App\\Models\\Post', 'Blanditiis pariatur non sunt corrupti. Quibusdam excepturi at doloribus non rerum quaerat. Optio enim facilis corporis nam totam dolores.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(3, 5, 2, 2, 'App\\Models\\Post', 'Molestiae quam explicabo omnis dignissimos porro eum quis accusantium. Voluptates non et nemo magni soluta ut dolores in. Rem cum dolorem vitae delectus.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(4, 6, 3, 2, 'App\\Models\\Post', 'Rerum iusto nihil est incidunt. Iure expedita similique dolores sed atque velit quae. Consequuntur pariatur accusantium non itaque ipsa eos.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(5, 7, 4, 2, 'App\\Models\\Post', 'Voluptatem ad iusto aut incidunt repellendus. Itaque ipsam temporibus nulla. Corrupti cumque et sequi suscipit. Optio quidem sapiente eum quod ducimus.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(6, 8, 5, 2, 'App\\Models\\Post', 'Veritatis enim praesentium recusandae numquam aut. Harum voluptas ea voluptatem deserunt suscipit vero quis nobis. Iure voluptatum repudiandae aperiam velit qui. Est qui asperiores neque quam ad. Consequatur voluptatibus dolor autem minus velit aut animi.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(7, 9, 6, 2, 'App\\Models\\Post', 'In ducimus quasi ut laborum. Accusantium nam sit recusandae iste. Voluptatibus minus consequatur explicabo sed sed.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(8, 10, 7, 2, 'App\\Models\\Post', 'Quae ipsa sed maiores. Id tempora dolores ut dolorum harum earum ratione. Atque minus reprehenderit et quidem ut in.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(9, 11, 8, 2, 'App\\Models\\Post', 'Fuga amet natus eligendi cupiditate ut architecto sunt. Maxime quis aliquid ullam quaerat est. Praesentium odit et distinctio quidem mollitia ab quo. Et aspernatur eius neque ex.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(10, 12, 9, 2, 'App\\Models\\Post', 'Ut corrupti eaque quia libero est deserunt. Magnam officiis earum nulla quibusdam ad incidunt qui sapiente. Similique nemo minus cupiditate necessitatibus architecto ducimus. Ea id eius maxime repudiandae. Et eum laboriosam possimus et.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(11, 13, 10, 2, 'App\\Models\\Post', 'Rerum omnis ut pariatur ut quas corrupti quas aspernatur. Animi temporibus id non possimus laborum dicta ad. Nisi molestiae sint illum sequi ratione delectus aut.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(12, 14, 11, 2, 'App\\Models\\Post', 'Inventore dolorem fugiat sapiente et unde qui magnam. Modi modi nisi unde et nam voluptas eaque. At voluptas velit error dignissimos aut odio. Quia quia sint exercitationem iure tenetur odit.', NULL, '2024-05-30 07:54:47', '2024-05-30 07:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 15, 1, NULL, '2024-05-30 08:13:53', '2024-05-30 08:13:53'),
(2, 16, 3, NULL, '2024-05-30 08:22:35', '2024-05-30 08:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'user_id',
  `favoriteable_type` varchar(255) NOT NULL,
  `favoriteable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followables`
--

CREATE TABLE `followables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'user_id',
  `followable_type` varchar(255) NOT NULL,
  `followable_id` bigint(20) UNSIGNED NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followables`
--

INSERT INTO `followables` (`id`, `user_id`, `followable_type`, `followable_id`, `accepted_at`, `created_at`, `updated_at`) VALUES
(2, 15, 'App\\Models\\User', 1, '2024-05-30 08:13:24', '2024-05-30 08:13:24', '2024-05-30 08:13:24'),
(3, 15, 'App\\Models\\User', 2, '2024-05-30 08:16:26', '2024-05-30 08:16:26', '2024-05-30 08:16:26'),
(4, 15, 'App\\Models\\User', 4, '2024-05-30 08:16:28', '2024-05-30 08:16:28', '2024-05-30 08:16:28'),
(5, 16, 'App\\Models\\User', 1, '2024-05-30 08:21:49', '2024-05-30 08:21:49', '2024-05-30 08:21:49'),
(6, 16, 'App\\Models\\User', 3, '2024-05-30 08:22:01', '2024-05-30 08:22:01', '2024-05-30 08:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'user_id',
  `likeable_type` varchar(255) NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) NOT NULL,
  `mediable_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `mime` enum('image','video') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `mediable_type`, `mediable_id`, `url`, `mime`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Post', 1, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', 'video', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(2, 'App\\Models\\Post', 2, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', 'video', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(3, 'App\\Models\\Post', 3, 'http://localhost:8000/storage/media/1fdROKDcl71LI0RZr4hoKFa7UyXX8xADdErvwDOp.jpg', 'image', '2024-05-30 08:14:49', '2024-05-30 08:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `receiver_id`, `read_at`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 16, 3, NULL, 'woy anjeng', '2024-05-30 08:22:40', '2024-05-30 08:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2018_12_14_000000_create_favorites_table', 1),
(4, '2018_12_14_000000_create_likes_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_05_02_000000_create_followables_table', 1),
(8, '2023_09_19_085956_create_posts_table', 1),
(9, '2023_09_23_104856_create_media_table', 1),
(10, '2023_10_08_071252_create_comments_table', 1),
(11, '2023_11_09_043852_create_notifications_table', 1),
(12, '2023_11_29_042726_create_conversations_table', 1),
(13, '2023_11_29_042735_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('b46fe7fa-0e73-4c10-8f6e-2e93500122c5', 'App\\Notifications\\PostLikedNotification', 'App\\Models\\User', 1, '{\"user_id\":15,\"post_id\":1}', NULL, '2024-05-30 08:11:44', '2024-05-30 08:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('1717080887bonnie.mante@example.com', '$2y$10$TrdUE1kZ.S3cVPGpPHh6SuYZVOGJzbTJO73iEBoYl54wqlpTiehXS', '2024-05-30 08:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `hide_like_view` tinyint(1) NOT NULL DEFAULT 0,
  `allow_commenting` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('post','reel') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `description`, `location`, `hide_like_view`, `allow_commenting`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nemo sapiente sint sunt voluptatem tempora occaecati atque.', 'Dickensfort', 1, 0, 'post', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(2, 3, 'Blanditiis praesentium expedita asperiores laborum et ipsum.', 'Kshlerinmouth', 0, 0, 'post', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(3, 15, 'apaseih\n', NULL, 0, 0, 'post', '2024-05-30 08:14:49', '2024-05-30 08:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lenore Hirthe', '1717080887bonnie.mante@example.com', '1717080887agustin.harvey', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jlwONavjQB', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(2, 'Maiya Hackett', '1717080887anderson.nettie@example.org', '1717080887wyman51', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XFvGWCKUmM', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(3, 'Jesse Abshire', '1717080887okey33@example.org', '1717080887lmraz', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OGtlEic1fS', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(4, 'Mrs. Cleora Bosco V', '1717080887ekreiger@example.org', '1717080887gwolf', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3NDmrdlWTC', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(5, 'Miss Joanny Jacobs V', '1717080887katrina.kemmer@example.com', '1717080887uzemlak', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BZfqghpalz', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(6, 'Donny Metz', '1717080887adela75@example.org', '1717080887iheathcote', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FavVCEFyxp', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(7, 'Alta Kub', '1717080887mills.fern@example.net', '1717080887sam52', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FGGOzlBLH1', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(8, 'Mrs. Eloise Rosenbaum', '1717080887haley.runolfsson@example.net', '1717080887runte.erick', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bHXSSbpH4h', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(9, 'Wyatt Waters', '1717080887angelo.muller@example.org', '1717080887tlegros', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'als4HzvSKT', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(10, 'Mr. Cristina Schmeler', '1717080887nadia70@example.com', '1717080887dkoepp', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gficM7oGDZ', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(11, 'Garret Abshire I', '1717080887xromaguera@example.org', '1717080887sonny.kihn', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xahrCgvrSS', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(12, 'Miss Laury Oberbrunner PhD', '1717080887raul93@example.com', '1717080887dklein', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Any4ijTg5b', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(13, 'Clement Schaefer I', '1717080887hosea52@example.org', '1717080887hector.nicolas', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HrdQE3kUhq', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(14, 'Hilario Greenfelder', '1717080887dedric.green@example.org', '1717080887vdoyle', '2024-05-30 07:54:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YFBtPfnh8P', '2024-05-30 07:54:47', '2024-05-30 07:54:47'),
(15, 'Germaine Wynn', 'wijityv@mailinator.com', 'xonuxufu', NULL, '$2y$10$eGgVpt30WaaxmO/MbIH.f.t4jYfpiH39YrAgok5odSmmBH7/ahzPu', NULL, '2024-05-30 08:11:36', '2024-05-30 08:11:36'),
(16, 'Serina Wilkinson', 'zyzowebo@mailinator.com', 'wypalaqy', NULL, '$2y$10$ziGOeCWojONvgOCVglFYAuqaN9bxExI1Qdc9ryoBU3E7J63i4JKYG', NULL, '2024-05-30 08:20:55', '2024-05-30 08:20:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_sender_id_foreign` (`sender_id`),
  ADD KEY `conversations_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_favoriteable_type_favoriteable_id_index` (`favoriteable_type`,`favoriteable_id`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- Indexes for table `followables`
--
ALTER TABLE `followables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followables_followable_type_followable_id_index` (`followable_type`,`followable_id`),
  ADD KEY `followables_followable_type_accepted_at_index` (`followable_type`,`accepted_at`),
  ADD KEY `followables_user_id_index` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`),
  ADD KEY `likes_user_id_index` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_mediable_type_mediable_id_index` (`mediable_type`,`mediable_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `followables`
--
ALTER TABLE `followables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
