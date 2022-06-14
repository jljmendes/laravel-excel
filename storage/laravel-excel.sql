-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jun-2022 às 04:38
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel-excel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
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
-- Estrutura da tabela `users`
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
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rosetta Ward III', 'rowan64@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZBD6wSHuck', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(2, 'Nova Ernser DVM', 'will.sipes@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n7l0J2zlJp', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(3, 'Dr. Randy Jerde V', 'myost@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1xDpbIAZMi', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(4, 'Mr. Clair Schinner DDS', 'marjolaine.huel@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7r5sKMaNFP', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(5, 'Adriel Lueilwitz', 'schuster.melody@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nXYmDnbutZ', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(6, 'Candido Glover', 'oweber@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4NdVKa8n8H', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(7, 'Jordyn Boyer', 'florida.wuckert@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0UUgTFIsWF', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(8, 'Dr. Floyd McKenzie DDS', 'art.gibson@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IqDaD3GNDb', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(9, 'Mrs. Lea McGlynn III', 'mike85@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vnR8HCeF6a', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(10, 'Prof. Marge Kertzmann V', 'zieme.olga@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tKlUmaTFFi', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(11, 'Vidal Torphy', 'orin.purdy@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fz3MJUWGhs', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(12, 'Dr. Valentina Beatty III', 'vergie77@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jFP2zkpjHV', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(13, 'Ms. Ardella Robel', 'berniece.kutch@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iROKzt7wVQ', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(14, 'Ana Turner PhD', 'kathlyn.watsica@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tAC6arO8O1', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(15, 'Benedict Kertzmann', 'alabadie@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6to6iq2wsK', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(16, 'Prof. Tony Hills MD', 'iortiz@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8wtUVAaAlk', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(17, 'Carmel Terry I', 'zreichert@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F6ZXKmrD2y', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(18, 'Dr. Nannie Monahan IV', 'dibbert.sonny@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ALhkxeNIYj', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(19, 'Carol Gaylord PhD', 'whauck@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KQZQRJaw4A', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(20, 'Gladys Crooks Jr.', 'alexandria98@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QWahZwTRmN', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(21, 'Coty Walker MD', 'bernardo.cassin@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S9JEIugSd0', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(22, 'Madonna Brakus', 'johnpaul.cummings@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OQtYhWLIVe', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(23, 'Troy Hoppe Sr.', 'jamey.lemke@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y5iLNpILaA', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(24, 'Tatyana Lang DVM', 'lola.lind@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UPFBo1xd6N', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(25, 'Jacky Thiel V', 'rempel.brandyn@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k67UFLN2vh', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(26, 'Dr. Jace Medhurst', 'pollich.tyra@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7jAOOWK2PJ', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(27, 'Bette Huel', 'hluettgen@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'viKBLMXQ3e', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(28, 'Gerardo Schaden', 'omurazik@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o95k1BJiB3', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(29, 'Braden Tillman', 'lia.zieme@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qFrU4XeBzP', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(30, 'Luella Hoeger', 'vconroy@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l9QmXrHTYG', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(31, 'Edwardo Runolfsson', 'bcrist@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5gcuN7qily', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(32, 'Nora Grant', 'reinger.mckayla@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qRFdA6cngQ', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(33, 'Marshall Baumbach', 'stoltenberg.enrico@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WlkewkhefT', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(34, 'Amely Jakubowski', 'ray68@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '53JoEFBaid', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(35, 'Lonie Heathcote', 'emely.schultz@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hY2yuGxZ96', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(36, 'Mrs. Velva Casper', 'ekoelpin@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2mkzmGYuA0', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(37, 'Arden McClure', 'liliane.pfannerstill@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lSLmakiJPR', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(38, 'Dr. Rigoberto Donnelly', 'pblanda@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RuPe3qCK7q', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(39, 'Jadyn Goldner', 'mosciski.friedrich@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X9y4uaxYr3', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(40, 'Prof. Emma Bartoletti', 'lzboncak@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sUXnUgyuA8', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(41, 'Marielle Hodkiewicz', 'kertzmann.king@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5zGTW2JZa7', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(42, 'Miss Krystal Wintheiser', 'damon.walter@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YR5x78uS8A', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(43, 'Miss Naomi Johnson I', 'rhuels@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'exrfrd3Pxc', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(44, 'Kiana Predovic', 'aylin.hodkiewicz@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tt4La1HTjx', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(45, 'Hassie Murray', 'langworth.janessa@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NpCFygIoe8', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(46, 'Jazmyn Casper', 'ahmad28@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'atb4KX9kaw', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(47, 'Prof. Lillie O\'Hara IV', 'ttrantow@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9GLLzyTSKD', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(48, 'Beverly Vandervort', 'roob.duane@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jy3iCdTgBi', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(49, 'Kaylee Runte', 'swaniawski.ewald@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'llL6m0Dp6I', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(50, 'Lysanne Oberbrunner Sr.', 'rau.brady@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ur3hUAkQBi', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(51, 'Elenor Mills', 'wbalistreri@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vYcgQw5bEM', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(52, 'Delaney Pouros', 'ibotsford@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qXaG4U9Iev', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(53, 'Pascale Leannon', 'pfannerstill.randi@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OqiPxIyTe1', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(54, 'Bradly Stokes', 'nels.schowalter@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'la8IDiFWao', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(55, 'Aron Prosacco', 'qabernathy@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DUKzKShh5k', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(56, 'Landen Mayer', 'tquigley@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MORqtjgfRx', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(57, 'Ms. June Ledner DVM', 'cassin.elmer@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K42SqgYyUO', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(58, 'Jacinthe Streich Sr.', 'marvin55@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sc6C6fH4hs', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(59, 'Prof. Rodrigo Cremin', 'mfadel@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gl7czCJZsr', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(60, 'Ms. Romaine Oberbrunner I', 'bauch.judy@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y96ljWEa8D', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(61, 'Morton Mann', 'ovon@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QwiE2b63EN', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(62, 'Dangelo Koch', 'gulgowski.alexa@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'neCpwXnZv0', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(63, 'Prof. Jeff Hand MD', 'herman.hugh@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IKQDB4IiKp', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(64, 'Lucy Kozey I', 'yryan@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tnYh0oJPMs', '2022-06-13 20:06:42', '2022-06-13 20:06:42'),
(65, 'Rosalia Ledner', 'preilly@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c0wVssg7Wa', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(66, 'Eldora Konopelski', 'cara.denesik@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SX8lom2CVj', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(67, 'Reggie Kemmer', 'alysson37@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HaLwoZjnNs', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(68, 'Doug Rippin', 'sam.bashirian@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VkCbNVSJkO', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(69, 'Mario Ritchie', 'vveum@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5m9TBom9ig', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(70, 'Albert Bradtke', 'jenkins.samir@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DJJ0AewGj8', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(71, 'Delilah Reynolds', 'calista.lebsack@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3EPasMTbP', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(72, 'Dr. Lia Wolf', 'rjohnson@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qjp3VM9VH6', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(73, 'Efren Schmeler', 'emmie.olson@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YNngP94tEK', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(74, 'Nicholaus Watsica', 'carolyne.kris@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CKytlwt6nQ', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(75, 'Athena Moen', 'morissette.marquis@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TLbNdLE9w9', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(76, 'Tyrese Batz', 'whowell@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2QAF3vV5lX', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(77, 'Destinee Schmeler Jr.', 'danielle.moen@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nc6S5Ecaf8', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(78, 'Mallie Collins', 'tremblay.gregg@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eWZ3VSmvI0', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(79, 'Amir Gerlach', 'dooley.joanny@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BrVxe7qEoh', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(80, 'Prof. Elaina Lubowitz', 'claudie03@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'raxA46litr', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(81, 'Mr. Keyon Feeney', 'fdoyle@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fi0bWKSwFY', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(82, 'Mr. Selmer Bernhard', 'vdouglas@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jN8En4J6TD', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(83, 'Shyanne Kertzmann', 'gerlach.darby@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JVdRiQ2bj6', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(84, 'Dr. Jacinto Goodwin', 'wellington.okuneva@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '337ElnmHpz', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(85, 'Alaina Schuster DVM', 'olga91@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hdwplksfBl', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(86, 'Jackson Boehm', 'boris.schaefer@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZQJx8KJOnd', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(87, 'Scottie Shields', 'skuhic@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'edZnivPM8K', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(88, 'Sylvan Bechtelar', 'dedric74@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ViCe13o6ur', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(89, 'Elvis Abshire', 'walker.verdie@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uT7iktgvrv', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(90, 'Dr. Arvid Marquardt', 'jerry.swift@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CRiSiFt3tU', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(91, 'Rey Bins III', 'ada60@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rfrtgm2CV4', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(92, 'Maritza Gulgowski', 'qtorp@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uy8Wclb2NS', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(93, 'Dr. Everette Bahringer', 'breanne.schuster@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VH68nwOcB6', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(94, 'Darrin Hansen', 'kelvin.powlowski@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cujB2NuC3q', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(95, 'Jess Smitham', 'burnice97@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yFewzwi8OB', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(96, 'Miss Annalise Fisher DDS', 'ritchie.forrest@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YbwJ5471TG', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(97, 'Dr. Salvatore Rutherford', 'darrick.mayer@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Volk0r7GFM', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(98, 'Taylor Rogahn', 'orland57@example.net', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sg6UzyGnjs', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(99, 'Emmanuelle Eichmann', 'dhudson@example.com', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bwvKjcebYP', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(100, 'Makenzie Wolff III', 'hsimonis@example.org', '2022-06-13 20:06:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OpYxUQBepx', '2022-06-13 20:06:43', '2022-06-13 20:06:43'),
(101, 'Jorge Mendes', 'jorge@gmail.com', NULL, '$2y$10$F54feVd7RHrac.2sucVH2u24mocReBOLMefzBNU9NmARe3rAmg.Ri', NULL, '2022-06-13 21:05:23', '2022-06-13 21:05:23'),
(102, 'Andre Luis', 'andre@hotmail.com', NULL, '$2y$10$JH2n/uOWX6h10UKE/ZgBpOI.pxj1Sy0niFUZoHEQnWGvsfD2rWa.a', NULL, '2022-06-13 21:05:23', '2022-06-13 21:05:23'),
(103, 'Walter', 'walter@yahoo.com', NULL, '$2y$10$ejKyxtEbIInKBTgJuTRF3OO5YinBvB7FRpOBZqfvwYkYvr6GvPDue', NULL, '2022-06-13 21:05:23', '2022-06-13 21:05:23'),
(104, 'Uendel', 'uendel@bol.com.br', NULL, '$2y$10$T2FuPku6LTRWdrp5hz8ZpeRTWiKmNGQ5.6VbKm6RvQP7oFWplLM6O', NULL, '2022-06-13 21:05:23', '2022-06-13 21:05:23'),
(111, 'tstasat', 'djhsdh@gsg.com', NULL, '$2y$10$Tki8s2iXNqFikE0BAjc/0eTPZD16kULk7fOVKjKIZL4qiVQYNDwpC', NULL, '2022-06-14 04:34:26', '2022-06-14 04:34:26'),
(112, 'dsdsd', 'dsgdhj@bol.com', NULL, '$2y$10$lr9SjhgVdo/OfM0IISLxw.N6fpEy6Vd2rcOwHR/ybRy43LuzAubAi', NULL, '2022-06-14 04:34:26', '2022-06-14 04:34:26'),
(113, 'cdshfgajsd', 'adga@hotmail.com', NULL, '$2y$10$fcjdba5nGKSHZRTSEspLeegCFcHnVoajuvva5JEZYthJDZr8aa7JW', NULL, '2022-06-14 04:34:26', '2022-06-14 04:34:26'),
(114, 'sdsds', 'dfgdhcnfnj@gsg.com', NULL, '$2y$10$V019Ea.uzaUsmXWARar29OZeVDPNcps5JCk179sRNy1rHtWqcJMfC', NULL, '2022-06-14 04:53:46', '2022-06-14 04:53:46'),
(115, 'gdgfg', 'nfgjjnmbn@bol.com', NULL, '$2y$10$KcrUoCDLAH/YkRtgAxk5OO3ZRqIFBRVXZ1L6LXJWGdlu6c/qRmwNe', NULL, '2022-06-14 04:53:46', '2022-06-14 04:53:46'),
(116, 'bxcvbvb', 'ghmghmgh@hotmail.com', NULL, '$2y$10$C2Lh4GjE9lcv113GGBccUer8R5sihagy/BqyrsP.N7jJ6Ku7mFK4e', NULL, '2022-06-14 04:53:46', '2022-06-14 04:53:46');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
