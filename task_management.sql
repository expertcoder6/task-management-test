-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2022 at 07:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management`
--

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
(6, '2022_10_03_093121_add_status_column', 1),
(12, '2014_10_12_000000_create_users_table', 2),
(13, '2014_10_12_100000_create_password_resets_table', 2),
(14, '2019_08_19_000000_create_failed_jobs_table', 2),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(16, '2022_10_03_092339_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','inprogress','onreview','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'login registeration', NULL, 'new', '2022-10-03 07:41:25', '2022-10-03 22:35:12'),
(2, 17, 'Terrell Hand', 'Qui tempora et beatae error et. Praesentium error explicabo sed ea rerum accusantium. Esse ad voluptatum tempora nulla enim. Nisi inventore qui ab non magni. Tenetur quod quis asperiores odio repellat et.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(3, 62, 'Margarett Corkery', 'Ut qui sit repellendus at. Fugiat dolor et sed similique explicabo voluptas consequuntur. Omnis voluptatum fugiat provident vel quis voluptatum rerum. Asperiores cumque sapiente eveniet ut maiores adipisci.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(5, 1, 'Prof. Bertrand Hegmann V', 'Et neque iure in facere omnis ut expedita. Et aut voluptate facere. Suscipit dolor sit aliquam aut sint.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(6, 7, 'Kory Lind DDS', 'Fuga assumenda voluptas aliquam error alias sunt. Ad modi harum quos. Provident laudantium sint mollitia culpa sed laboriosam ad ut.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(7, 27, 'Cicero Mante', 'Nam doloremque molestiae ut quis. Quasi dolor possimus eum repudiandae.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(8, 50, 'Prof. Weldon Schmeler DDS', 'Similique rerum quia nisi eveniet ut officia. Repudiandae sed sapiente a et. Deleniti et recusandae quas est tempora optio. Quia aut provident doloremque rerum nemo consequatur fuga eveniet. Iure ut deleniti quibusdam aliquam et veniam molestias.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(9, 41, 'Sally Schmeler', 'Veniam enim sit ex est at quaerat. A provident cum adipisci explicabo perspiciatis aliquid odio quia. Quis ipsa in distinctio et sapiente.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(10, 18, 'Lois Hoeger', 'In enim dolorum culpa ut iure facilis. Fuga nisi nam voluptatibus sunt in sequi et. Animi placeat repudiandae voluptatem optio est commodi autem.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(11, 57, 'Franco Lind', 'Magni quisquam enim quae ipsum et et optio quos. Eos ipsa optio facilis veniam rem et in sequi. Porro ut id quo delectus ad ut. Minima non est ex voluptate dolorem quibusdam dicta.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(12, 49, 'Stevie Schuster', 'Quaerat rerum animi numquam porro neque voluptas. Qui qui pariatur quis eaque vel. Maiores dolor laborum dolorum id.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(13, 36, 'Mr. Elwin Ullrich', 'Explicabo quam maxime amet reprehenderit ad nulla. Eligendi deleniti qui sunt et rerum ea eum. Voluptates et aspernatur voluptas unde.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(14, 13, 'Prof. Johnathan Stiedemann II', 'Dolores nam et cumque. Molestiae dolore impedit veniam delectus atque qui sit. Dolores et et qui culpa sed culpa. Quia quidem tenetur sunt.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(15, 12, 'Keenan Schimmel', 'Et qui est dolore et quibusdam expedita consequatur. Minima sunt nemo non rem consectetur. Qui voluptates quis occaecati. Repellendus deserunt praesentium id voluptatem.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(16, 26, 'Estefania Davis', 'Sit est ab velit quia. Enim officiis officiis quo. Dolorum sequi dolores modi animi adipisci corrupti esse.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(17, 3, 'Icie Heaney DDS', 'Nam quia aliquam magni et soluta dolor. Animi vel quo dolorem cumque et. Quo maiores accusantium hic perspiciatis dolorum rem optio. Voluptas neque aperiam ducimus ut et dolor.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(18, 60, 'Hilton Kris', 'Aut reiciendis incidunt enim repellat perferendis. Tenetur laboriosam esse sint optio omnis nihil. Alias facere occaecati et qui sunt. Omnis magni rem impedit et modi amet.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(19, 30, 'Jaylan Pollich', 'Ipsa sint atque asperiores aspernatur. Placeat culpa quasi ad sunt iure explicabo expedita. Earum aut et est consectetur excepturi voluptatem. Molestiae laborum id et et.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(20, 47, 'Dr. Ella Bauch', 'Et deleniti eveniet est incidunt nobis. Consequatur veniam sint distinctio non qui dignissimos asperiores amet. Quo dignissimos velit odio qui ea quia.', 'new', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(21, 1, 'bdgrfdgb', 'dsfref ghxtghb dfvtg', 'inprogress', '2022-10-03 07:54:21', '2022-10-03 07:54:21');

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
  `role` enum('admin','user','moderator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pooja', 'pooja@gmail.com', '2022-10-03 04:53:35', '$2y$10$mhLfX7oWccRA45w0yvXm1O3Q7vPqkPInPxhlhJtd7hi9LWaiEWzE.', 'admin', '6Ye7ouDnwW', '2022-10-03 04:53:35', '2022-10-03 23:06:30'),
(3, 'Monty Bartell', 'jazlyn.langosh@example.com', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'HKEhVcIbG2', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(4, 'Maya Greenfelder', 'leo.leuschke@example.com', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'Wl9m4v1luF', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(5, 'Zelda Jaskolski', 'zmills@example.org', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'KZ14Ak9oHa', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(6, 'Jayne Strosin', 'enolan@example.org', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'tJ0OZo6bwJ', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(7, 'Isabella Ritchie', 'ztorp@example.net', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'BSYeeALNWh', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(8, 'Candice Marquardt V', 'ngleason@example.org', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'cbUmw0aWli', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(9, 'Karl Lockman III', 'vfay@example.com', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'EMK3hMgT02', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(10, 'Jermey Wilkinson', 'oschneider@example.com', '2022-10-03 04:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'JyM5ete9n7', '2022-10-03 04:53:35', '2022-10-03 04:53:35'),
(11, 'pooja', 'pooja34@gmail.com', NULL, '$2y$10$fn2AudiUiGg3VcRnxfNvNOv/tz8OQsfctypMqlwC7G3cF4d8nRwZy', 'user', NULL, '2022-10-03 07:18:41', '2022-10-03 07:18:41'),
(12, 'Rusty Blanda', 'sschamberger@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'El1fsuIUhP', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(13, 'Dr. Isac Beier', 'otis.block@example.org', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'yvPMSZY8Ck', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(14, 'Mr. Delmer Bechtelar', 'huels.gust@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'No1JVe5DQl', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(15, 'Hillary Okuneva', 'qthompson@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '1pC9YKuAHE', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(16, 'Oleta Grady', 'norma09@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'ATR2LM4YAh', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(17, 'Napoleon Price', 'jadyn.rodriguez@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'vMWxzNtnRF', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(18, 'Yvette Kemmer PhD', 'pfeffer.cathy@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'OSvVKQCUYd', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(19, 'Hunter Hartmann Sr.', 'eoreilly@example.com', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '3SEe4j2dRJ', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(20, 'Domenic Vandervort', 'pmarvin@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'OhkbxQkBbR', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(21, 'Elliot Waters', 'anne.witting@example.net', '2022-10-03 07:34:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'LkluUrH69h', '2022-10-03 07:34:40', '2022-10-03 07:34:40'),
(22, 'Emery Gleason', 'alycia59@example.net', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'q1kha6ycbd', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(23, 'Joan Barton', 'jayda47@example.com', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'EhMtPuvxW9', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(24, 'Prof. Sadie Turcotte I', 'fausto.lueilwitz@example.org', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'jYyaRzZuo1', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(25, 'Mr. Sheldon Howe MD', 'helene.morar@example.org', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'GtfwTBeKVj', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(26, 'Mr. Vidal Koelpin', 'hattie.renner@example.com', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'kzu9VlsuTT', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(27, 'Teresa Macejkovic DDS', 'shania23@example.com', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'pDYEiWIZJI', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(28, 'Ms. Cierra Rempel', 'vanessa47@example.net', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'hroeAPTkNR', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(29, 'Gonzalo Fay', 'lucie.krajcik@example.net', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'cmaUGBMcOM', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(30, 'Miss Talia DuBuque', 'qgibson@example.org', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'psgO9prUvL', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(31, 'Rick Friesen', 'showe@example.com', '2022-10-03 07:34:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'kciWmhxfnn', '2022-10-03 07:34:58', '2022-10-03 07:34:58'),
(32, 'Garett Nolan', 'richmond60@example.net', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'aCYTwg2vdU', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(33, 'Donald Satterfield', 'lkoss@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'g0jrGk9WtV', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(34, 'Samantha Corwin', 'rippin.camilla@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'XkkBA3JSl8', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(35, 'Terrance Moen', 'wintheiser.tressie@example.net', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'UKVMbCMxAq', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(36, 'Filiberto Reilly', 'vernon.reynolds@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'yi1CwGTxTy', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(37, 'Misty Bosco', 'hhettinger@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'I2rsYxkPLN', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(38, 'Dolly Grant', 'renner.holly@example.com', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'b6AVZmuFqS', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(39, 'Amina Satterfield', 'hauck.conner@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'CdwLFKBt20', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(40, 'Wanda Von', 'ritchie.marisa@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'DxNynq0bRW', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(41, 'Turner Von', 'ole88@example.org', '2022-10-03 07:36:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'vgiDq2eBt4', '2022-10-03 07:36:22', '2022-10-03 07:36:22'),
(42, 'Serenity Huel', 'jones.pearl@example.com', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'rpzYzdLo9F', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(43, 'Jailyn Bechtelar', 'armstrong.marques@example.net', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '5Wuff7K5xZ', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(44, 'Amy Grimes III', 'vmccullough@example.com', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'XgZ6X1Ww3u', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(45, 'Ricardo McGlynn', 'reichel.watson@example.net', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'p5yGhgPS5o', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(46, 'Arnaldo Gibson', 'theodora.carroll@example.org', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'MItL7VfIgy', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(47, 'Susana Greenfelder', 'waters.deja@example.com', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '6mUQt82vTa', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(48, 'Tiara Gaylord', 'helga.swaniawski@example.com', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'qFlnBs3aur', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(49, 'Dr. Kaia Bednar', 'xoberbrunner@example.com', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'yqPd6jOSoH', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(50, 'Norbert Reinger', 'anastacio07@example.net', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'kEUNSliVBC', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(51, 'Shana Konopelski', 'lesley.schultz@example.com', '2022-10-03 07:37:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '6ExkA5CeLH', '2022-10-03 07:37:01', '2022-10-03 07:37:01'),
(52, 'Callie Schultz', 'caden.ohara@example.net', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'Nb6YHEmJK5', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(53, 'Edythe Fay', 'zita42@example.com', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'TvIncL5I3P', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(54, 'Brown Cartwright', 'hauck.maybelle@example.net', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'hbOGBGoOKT', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(55, 'Zion Mann', 'cornelius22@example.net', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'gEAj0zrgR6', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(56, 'Fleta Toy I', 'bethel84@example.org', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'apwahu8lsi', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(57, 'Alda Heathcote', 'ugorczany@example.net', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'qp4JTw3iFz', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(58, 'Mrs. Nya Monahan', 'joyce.jaskolski@example.com', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '1R4X3o5oqr', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(59, 'Mr. Wallace Rohan III', 'zstokes@example.org', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'sc79G3HgjY', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(60, 'Maiya Johnston V', 'eheidenreich@example.org', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '9yIFYnB2GV', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(61, 'Miss Lenore Stracke', 'jaylen.oconner@example.com', '2022-10-03 07:40:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'uw6TaCyJu0', '2022-10-03 07:40:52', '2022-10-03 07:40:52'),
(62, 'Twila Torphy', 'lorine91@example.com', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'UTtHtxRq1T', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(63, 'Roselyn Swift', 'cheyenne82@example.org', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'p28EGvPWio', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(64, 'Ms. Bianka Yundt', 'jane.okon@example.net', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'UohoAJyBJp', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(65, 'Mr. Marques Fadel', 'ycormier@example.com', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'YCFsmtJ1yO', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(66, 'Alexandro Swaniawski', 'parker.vivien@example.org', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'JElfkrtQwp', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(67, 'Rowland Fay', 'schmitt.frederik@example.org', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'DuGGFtSZCU', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(68, 'Baron Rempel', 'berenice.hoppe@example.org', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'smoxfQxT0d', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(69, 'Dr. Carole Armstrong', 'dicki.boyd@example.org', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'Mpmz4HGW6u', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(70, 'Uriah Klein', 'lstamm@example.net', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'xKDjS8LI4R', '2022-10-03 07:41:25', '2022-10-03 07:41:25'),
(71, 'Miss Rowena Lind IV', 'ahoeger@example.com', '2022-10-03 07:41:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'n0PcMh5Dod', '2022-10-03 07:41:25', '2022-10-03 07:41:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
