-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 24 juin 2023 à 21:55
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laraportfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_27_163909_create_skills_table', 2),
(6, '2023_02_27_163948_create_projects_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `project_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `skill_id`, `name`, `image`, `project_url`, `created_at`, `updated_at`) VALUES
(2, 3, 'XO game', 'projects/lW4YA0nGSimzRFFF9F1gRnpCgR2q6wAVY0tinhoa.png', 'https://modos.github.io/XO-game-js/index.html', '2023-03-01 18:17:39', '2023-04-11 22:09:25'),
(3, 7, 'calculator app', 'projects/rzMrKioo1esZZtilOR5ExrwfosHUiqDOC87EwGIv.png', 'https://alitahir4024.github.io/calculator-app-in-react/', '2023-03-26 05:02:13', '2023-03-26 05:34:24'),
(4, 21, 'flask calculator', 'projects/B3GYAhM1MAG09WXntKOf9fYZjuOglYajN1RCrlre.png', 'https://flask-calculator.ultirequiem.repl.co/', '2023-03-26 05:06:47', '2023-03-26 05:08:51'),
(5, 5, 'blender-animation-scripts', 'projects/3Zmqy7GCg8CdpOpcuzqGafOnOwKp3fDjZMPPyPTO.png', 'https://github.com/steilgedacht/blender-animation-scripts', '2023-03-26 05:08:22', '2023-03-26 05:08:22'),
(14, 4, 'Hosting Service Concept', 'projects/ADSBch178F3IcoAt7nBk2h9ADOOAbVtUnsCEDTod.png', 'https://xdfile.com/hosting-service-concept-adobe-xd-website-template/', '2023-03-26 05:38:49', '2023-03-26 06:22:10'),
(16, 7, 'e comerce website', 'projects/1VInsi8NeLctWL5aQzqzPIrDA48y5dmY0WueA14I.png', 'https://www.mytek.tn/', '2023-04-12 04:03:50', '2023-04-12 04:03:50');

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(3, 'CSS 3', 'skills/dpyJY2vRkflxHMmSXtsU1OiSMKHz6FY4Ad9wZh7P.png', '2023-03-01 02:10:05', '2023-03-01 02:10:05'),
(4, 'Adobe Xd', 'skills/hGVtzex56sJ5IjyYkKm1YfBv7SpkLkg4C6QlLwPu.png', '2023-03-01 02:10:58', '2023-03-01 02:10:58'),
(5, 'Blender 3D', 'skills/qyV0tphKrAulmGUQWYCXLJajwk0mYHaWdWYMeAV5.png', '2023-03-01 02:11:37', '2023-03-01 02:11:37'),
(6, 'Adobe Photoshop', 'skills/n57dHjW0fJeKYncmnLT7EgBcGG5qfsW1XL1a8iUV.png', '2023-03-01 02:14:58', '2023-03-01 02:14:58'),
(7, 'React Js', 'skills/TzF8TFAjqxiaghotpE19GyaHfALimKpo2KR0TQuO.png', '2023-03-01 02:15:50', '2023-03-01 02:15:50'),
(8, 'Java Script', 'skills/y4Y7jwSJfD9GFOvKDgwmOUqkBcARWjbgd9yQIFFe.png', '2023-03-01 22:20:12', '2023-03-01 22:20:12'),
(9, 'Adobe Premiere Pro', 'skills/ZkvfmRXeL2D5WaJnO6pNN6XRVWaqGxneTr6LOM1F.png', '2023-03-24 22:50:22', '2023-03-24 22:50:22'),
(10, 'PHP', 'skills/D7tu0fYsRizSCXWCpsnBy4aivOvcgwnb5HHiC2OB.png', '2023-03-24 22:51:09', '2023-03-26 06:26:23'),
(21, 'Python', 'skills/8O3g6FXOyNQXwnzF49LOqhEHodZfRU7lClNfqIF7.png', '2023-03-24 22:52:12', '2023-03-24 22:52:41'),
(22, 'HTML 5', 'skills/lMuAEDbfQimrSf8NqYHfTXKLOu93FseHGRWdEo7H.png', '2023-04-12 04:02:32', '2023-04-12 04:02:32');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'aziz', 'aziz@root.com', NULL, '$2y$10$SOlcrnaFaZ0OFH7aD1QbE.13oz3WkRhlc/rHPT3D2PTz6NtWm9bju', NULL, '2023-04-11 22:02:01', '2023-04-11 22:02:01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_skill_id_foreign` (`skill_id`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
