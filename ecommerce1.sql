-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 03:42 PM
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
-- Database: `ecommerce1`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baju', NULL, NULL),
(2, 'Celana', NULL, NULL),
(3, 'Sepatu', NULL, NULL),
(4, 'Hoodie', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_09_002219_create_categories_table', 1),
(5, '2022_09_29_183913_create_products_table', 1),
(6, '2022_11_01_064151_create_carts_table', 1),
(7, '2022_11_10_005838_create_transactions_table', 1),
(8, '2022_11_10_011836_create_transaction_details_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Willis', '223131', 'Aliquam est similique enim quod. Non quos possimus eos et totam. Ut qui sapiente nihil qui cupiditate.', '/storage/images/product.jpg', '2022-11-23 17:51:55', '2022-11-23 17:51:55'),
(2, 3, 'Halle', '225637', 'Illum saepe sint atque quo distinctio quia perferendis. Eligendi et et nihil quibusdam atque esse repellat. Ipsum enim eveniet atque iure dolores.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(3, 4, 'Collin', '958891', 'Et numquam velit delectus et ad deserunt laboriosam. Provident omnis nam ullam accusantium et.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(4, 1, 'Jeramie', '308039', 'Magnam amet rem rerum eveniet qui. Odit qui error odio velit sunt.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(5, 1, 'Ellis', '876558', 'Adipisci cum ut voluptate placeat nulla beatae voluptatem. In deserunt impedit et aspernatur consectetur labore.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(6, 1, 'Darien', '316098', 'Laborum quo quas voluptates numquam. Illum ullam reiciendis in ullam dolorum ea.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(7, 2, 'Guido', '920098', 'Voluptatem quas hic qui rerum. Ea atque et cupiditate eveniet quia quis et dolores. Deserunt atque vitae numquam.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(8, 4, 'Titus', '660088', 'Quia saepe incidunt quos velit dolorem. Ut incidunt voluptas quibusdam.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(9, 2, 'Ali', '661689', 'Est sapiente et quod esse molestias est. In quod inventore eos ut. Qui omnis ut accusamus esse nisi.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(10, 1, 'Howell', '734114', 'Dicta sed tempore ut aut quam similique. Blanditiis adipisci numquam enim et nesciunt itaque et. Qui non recusandae perferendis laboriosam sit earum.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(11, 4, 'Martin', '100566', 'Enim blanditiis nihil quia laudantium. Porro impedit nostrum labore at asperiores. Pariatur ad quos voluptatem quo.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(12, 4, 'Kiley', '696449', 'Soluta dolorem dolores expedita dolorem exercitationem autem. Rerum excepturi ipsam est molestiae numquam deleniti optio.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(13, 2, 'Jerrold', '780371', 'Doloribus quae ut dolor aut repellat enim in. Architecto rerum eos doloremque deserunt architecto. Tempora est sunt veniam.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(14, 1, 'Manuel', '267199', 'Totam animi maiores placeat qui illo aspernatur. Esse sit suscipit porro nostrum. Ex odit aliquam quia aliquam.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(15, 4, 'Afton', '303581', 'Eligendi et est temporibus quos. Aut sit asperiores in quia fuga vel quo. Corrupti facilis aut ipsum dignissimos veritatis molestiae dolorem.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(16, 3, 'Eric', '954914', 'Unde tenetur optio dicta maxime. Quia magni quod aut occaecati. Eos ut ad et error voluptatem.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(17, 1, 'Kelley', '428512', 'Et pariatur enim et consequuntur quia omnis. Quaerat nihil sequi qui.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(18, 3, 'Curtis', '181375', 'Qui dignissimos excepturi eius reprehenderit. Et ad alias similique voluptas facere. Pariatur hic ut repellendus et at.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(19, 3, 'Leonardo', '382380', 'Ratione esse eius pariatur velit nisi id. Optio dignissimos mollitia modi quia sed ducimus doloribus.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(20, 3, 'Lorenzo', '240629', 'Ut repellendus est sapiente consectetur. Enim et culpa qui est similique dolores doloribus. Ea et non incidunt temporibus ad dignissimos.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(21, 2, 'Donato', '820525', 'Et architecto repudiandae ut natus ut. Dolor aut error voluptas odio.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(22, 3, 'Junior', '470373', 'Deserunt saepe id omnis laborum modi exercitationem. Beatae quia beatae itaque inventore. Non harum qui et.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(23, 4, 'Hershel', '235045', 'Itaque rem in temporibus sed dignissimos. Necessitatibus facere excepturi sed magnam.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(24, 2, 'Keeley', '187993', 'Enim qui repudiandae accusamus natus at laborum. Aut voluptatibus quas debitis ullam ullam delectus.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56'),
(25, 3, 'Frederic', '746553', 'Aut consequuntur qui cum consequuntur autem nisi. Et eaque iusto quod est maxime doloremque enim eaque.', '/storage/images/product.jpg', '2022-11-23 17:51:56', '2022-11-23 17:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-23 17:52:54', '2022-11-23 17:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-11-23 17:52:54', '2022-11-23 17:52:54');

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'argia', 'fauzanargia@gmail.com', NULL, '$2y$10$H0uipiU8X8pcL3.K1IrbMeC2kKhaRfI0RHiPlvO2zceeTfhwPuPFS', '1111111', '111111111', NULL, '2022-11-23 17:52:42', '2022-11-23 17:52:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
