-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2024 at 06:50 AM
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
-- Database: `api_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'Easy1707351285719', 'Áo thun phông nam', 'SCASE1213', 'Size: XL', 'Color: Navy', '3', '5', '15', 'kien@gmail.com', 'Kien', 'Cash On Delivery', 'Ho Chi Minh city', 'Dhaka', '00', '08-02-2024', '06:14:45am', 'Pending', NULL, NULL),
(2, 'Easy1707370805780', 'Áo thun phông nam', 'SCASE1213', 'Size: XL', 'Color: Brown', '02', '5', '10', 'kien@gmail.com', 'Kien', 'Cash On Delivery', 'Ho Chi Minh city', 'Dhaka', '00', '08-02-2024', '11:40:05am', 'Pending', NULL, NULL),
(3, 'Easy1707382327986', 'Áo thun phông nam', 'SCASE1213', 'Size: 2XL', 'Color: Navy', '02', '5', '10', 'kien@gmail.com', 'Kien', 'Cash On Delivery', 'District 12', 'Dhaka', '00', '08-02-2024', '02:52:08pm', 'Pending', NULL, NULL),
(4, 'Easy1707385301213', 'Áo thun phông nam', 'SCASE1213', 'Size: XL', 'Color: Brown', '08', '5', '40', 'kien@gmail.com', 'Kien', 'Cash On Delivery', 'District 12', 'Dhaka', '00', '08-02-2024', '03:41:41pm', 'Pending', NULL, NULL),
(5, 'Easy1707385508391', 'Áo thun phông nam', 'SCASE1213', 'Size: L', 'Color: Black', '03', '5', '15', 'linh@gmail.com', 'Kien', 'Cash On Delivery', 'district 12', 'Dhaka', '00', '08-02-2024', '03:45:08pm', 'Processing', NULL, '2024-02-10 17:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(3, 'Quần', 'http://127.0.0.1:8000/upload/category/1791477055379151.jpeg', NULL, '2024-02-20 20:20:56'),
(4, 'Áo', 'http://127.0.0.1:8000/upload/category/1791413708803749.png', NULL, '2024-02-20 18:50:36'),
(5, 'Đầm', 'http://127.0.0.1:8000/upload/category/1791503725397512.png', NULL, '2024-02-21 03:24:50'),
(6, 'Áo khoác', 'http://127.0.0.1:8000/upload/category/1791504097738009.png', NULL, '2024-02-21 03:30:45'),
(7, 'Giày', 'http://127.0.0.1:8000/upload/category/1791505141629551.png', NULL, '2024-02-21 03:50:21'),
(13, 'Mắt kính', 'http://127.0.0.1:8000/upload/category/1791508971051540.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Mai Thuy', 'maithuy@gmail.com', 'Hello world!', '02-02-2024', '05:20:42pm', NULL, NULL),
(2, 'test', 'test@gmail.com', 'This is just for a test', '02-02-2024', '10:34:34pm', NULL, NULL),
(3, 'kien', 'kien@gmail.com', 'kien test', '02-02-2024', '10:53:06pm', NULL, NULL),
(4, 'phuc', 'phuc@gmail.com', 'phuc - test', '02-02-2024', '10:53:50pm', NULL, NULL),
(6, 'Hai My', 'haimy@gmail.com', 'this is for test', '02-02-2024', '11:25:32pm', NULL, NULL),
(7, 'Truc', 'truc@gmail.com', 'This is for test', '02-02-2024', '11:26:20pm', NULL, NULL),
(8, 'Linh', 'linh@gmail.com', 'This is for test', '02-02-2024', '11:26:55pm', NULL, NULL),
(9, 'Khanh', 'khanh@gmail.com', 'this is for test', '02-02-2024', '11:30:16pm', NULL, NULL),
(10, 'trang', 'trang@gmail.com', 'this is for test', '02-02-2024', '11:30:51pm', NULL, NULL),
(11, 'Truc Linh', 'truclinh@gmail.com', 'This is for test', '02-02-2024', '11:37:28pm', NULL, NULL),
(12, 'Long', 'long@gmail.com', 'This is message', '02-02-2024', '11:38:43pm', NULL, NULL),
(13, 'Mai Thuy', 'maithuy@gmail.com', 'Hello world!', '03-02-2024', '04:08:44am', NULL, NULL);

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(32, 'Áo thun phông nam', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li73lop716tu2c', 'SCASE1213', 'linh@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/storage/slider1.png', NULL, NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_02_072230_create_sessions_table', 1),
(7, '2024_02_02_074245_create_visitors_table', 2),
(8, '2024_02_02_100236_create_contacts_table', 3),
(9, '2024_02_02_164838_create_site_infos_table', 4),
(10, '2024_02_02_203505_create_categories_table', 5),
(11, '2024_02_02_204110_create_sub_categories_table', 6),
(12, '2024_02_03_024759_create_product_lists_table', 7),
(13, '2024_02_04_001505_home_slider', 8),
(14, '2024_02_04_085839_create_product_details_table', 9),
(15, '2024_02_05_005816_create_notifications_table', 10),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
(19, '2016_06_01_000004_create_oauth_clients_table', 11),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(21, '2024_02_07_001809_product_review', 12),
(22, '2024_02_07_022844_create_product_reviews_table', 13),
(23, '2024_02_07_041701_create_product_carts_table', 14),
(24, '2024_02_07_083454_create_favourites_table', 15),
(25, '2024_02_07_162315_create_cart_orders_table', 16),
(26, '2024_02_20_121712_create_brands_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Test notification', 'Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '05/02/2023', NULL, NULL),
(2, 'Test notification', 'Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '04/02/2023', NULL, NULL),
(3, 'Test notification', 'Each course has been hand-tailored to teach a specific skill. I hope you agree! Whether you’re trying to learn a new skill from scratch or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.', '03/02/2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('038dc1dabf298a3a3222da0f9ec9b5e88ad0b82b893a04e503cd3b0f51674913c41428371decaf47', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:09', '2024-02-05 21:57:09', '2025-02-06 04:57:09'),
('072569949697c57d9c6f082fbc799efd1d35c79c3c4de7fbad8f1fff8d34a51c0412678be8aece6c', 2, 1, 'app', '[]', 0, '2024-02-19 05:09:11', '2024-02-19 05:09:11', '2025-02-19 12:09:11'),
('0895b55dd88606eb45c14e968b1f6e05618df82f4f4fa92e5b6d1315af58726f47b892215f392284', 2, 1, 'app', '[]', 0, '2024-02-05 21:50:59', '2024-02-05 21:50:59', '2025-02-06 04:50:59'),
('0de317c467f354270bafec5a478736d2f5118f1e4dfd562ae01799bd73b7881d85c06789005fb0b1', 18, 1, 'app', '[]', 0, '2024-02-06 02:36:32', '2024-02-06 02:36:32', '2025-02-06 09:36:32'),
('10e64d7ed8bf79d04c9441ad0ac4138eabca603a5497349083ae0142c1cadcfd39df01ccfa348c0e', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:07', '2024-02-05 21:57:07', '2025-02-06 04:57:07'),
('14d722447d1d193f1f00f371ccef6b0d691e006c39c2e4ca82b8699e78a947f1dfe4024d4de3a493', 2, 1, 'app', '[]', 0, '2024-02-06 03:12:28', '2024-02-06 03:12:28', '2025-02-06 10:12:28'),
('175b25e0f3659038ec4bc9c18157f69d1524803899e11365c4c483c972634e9a51cf7c5d52f3ec4e', 14, 1, 'app', '[]', 0, '2024-02-06 02:38:54', '2024-02-06 02:38:54', '2025-02-06 09:38:54'),
('187a576c4f748fd55102e272a9cc38d5d38b144e45c9184041c004d88de2edd502db3b39830d8c50', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:10', '2024-02-05 21:57:10', '2025-02-06 04:57:10'),
('1970e55b9b5f2debad26169f016161f7d6abe7dfab6f79f02dd9770e79377703b7d262b48e85b478', 1, 1, 'app', '[]', 0, '2024-02-07 01:29:50', '2024-02-07 01:29:50', '2025-02-07 08:29:50'),
('25a4856df272e7d0356c1bc19633ed51a0051a6182f80b5a02c853bae79373d61fbece7ef2201f10', 2, 1, 'app', '[]', 0, '2024-02-07 01:50:26', '2024-02-07 01:50:26', '2025-02-07 08:50:26'),
('2ced2eb929fff336cd5097bc923a56f4b4d10ee2bd93a21b52e2a42fa32d9bed0a3acbf422cf5922', 17, 1, 'app', '[]', 0, '2024-02-06 02:36:07', '2024-02-06 02:36:07', '2025-02-06 09:36:07'),
('38c5cd260cee62935e3ed8c52de1f76d32b54dbba67f3c7660e096179e49c0c36a0ddd1119536f3d', 1, 1, 'app', '[]', 0, '2024-02-06 03:12:08', '2024-02-06 03:12:08', '2025-02-06 10:12:08'),
('3aeb30f92e10fc43f8af7a3b205c70915c4a040ac5eec99de9b3ff088288f52cde8aba992bc4b06b', 10, 1, 'app', '[]', 0, '2024-02-06 02:10:05', '2024-02-06 02:10:05', '2025-02-06 09:10:05'),
('3b7a3e0d3b388f36b4e0f12a5bbf58dc5c1f53ddabf93a13eac5f6065d0a4478d41b60789cff5bde', 1, 1, 'app', '[]', 0, '2024-02-06 03:11:07', '2024-02-06 03:11:07', '2025-02-06 10:11:07'),
('3d66f8ce6b290887e4904917954c77669a728bed2641702d8803e0a2a2c8487afb6e552babdfe0ac', 9, 1, 'app', '[]', 0, '2024-02-06 02:04:09', '2024-02-06 02:04:09', '2025-02-06 09:04:09'),
('402801bf1a2564e0f5f440cd7a68f246604d1f6147c3ff343cc98f4cbd073482f710ae0e3cf2bb98', 2, 1, 'app', '[]', 0, '2024-02-07 01:28:27', '2024-02-07 01:28:27', '2025-02-07 08:28:27'),
('4aa877c2fc0ba18d7add755585aaf9c7d5d914cc28952a5bc9e806d5e9335df8e152b4733fddfa06', 2, 1, 'app', '[]', 0, '2024-02-07 07:08:21', '2024-02-07 07:08:21', '2025-02-07 14:08:21'),
('4bbf5f09b9da92e69eefbc0594ba3db97fe1675d4fdfd397ea4b839313ee066ddce9252a5f122e74', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:16', '2024-02-05 21:57:16', '2025-02-06 04:57:16'),
('4e898a9c6dff5c34005b734a8fec81116066252b3ba119a35d856c288a80433b7faf9d46df154a06', 13, 1, 'app', '[]', 0, '2024-02-06 02:19:34', '2024-02-06 02:19:34', '2025-02-06 09:19:34'),
('52cb4762fa38edd9b1c969c51c934eba453155e5df124b5af2ed83c6c0c15535b27a6ca4d285cd3f', 2, 1, 'app', '[]', 0, '2024-02-06 02:08:04', '2024-02-06 02:08:04', '2025-02-06 09:08:04'),
('540f732b3ada436d5779ae05e566ee5e69913710f9c9f5e7c757ac2be3d3617a7e1c0c59bca07414', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:08', '2024-02-05 21:57:08', '2025-02-06 04:57:08'),
('54e34e8b2e2a6adf6c35c4d8d7cfe8402442458818a33c38a2f31f076973db956bb5c88d92250eab', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:16', '2024-02-05 21:57:16', '2025-02-06 04:57:16'),
('5b32848dbc7971595a34eec7a8f4dc861b8595b4b2064fcdea06eb2d081ae7d2df79d51297cbfab7', 2, 1, 'app', '[]', 0, '2024-02-05 21:51:00', '2024-02-05 21:51:00', '2025-02-06 04:51:00'),
('5b58e74e1d450fa1e71d9dcba517cec1f1c654486a7e672befdc81f77b2c03e8c9bbab89cfa35ba0', 2, 1, 'app', '[]', 0, '2024-02-05 20:37:52', '2024-02-05 20:37:52', '2025-02-06 03:37:52'),
('6025f367f0065df2ec6908c4864d4f332ab65dd339c5b0fa2ea2fa46c372c8a4efeb480943bb50db', 20, 1, 'app', '[]', 0, '2024-02-07 02:23:25', '2024-02-07 02:23:25', '2025-02-07 09:23:25'),
('6e5bb87b7799bff7390a72d2b38074c83ae8dccc5fd54fc6d15a4c96783e581d28c8094eda8481fb', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:05', '2024-02-05 21:57:05', '2025-02-06 04:57:05'),
('6f77a61757656c0941c0130d3e14fd094369cde30de5e32ec54a3f38687256b394443139d895840d', 14, 1, 'app', '[]', 0, '2024-02-06 02:32:50', '2024-02-06 02:32:50', '2025-02-06 09:32:50'),
('6ffc33fc7cc40abed4977906045a7395754ebe46bec0396c77d3167bc9cc1b615caa7db0ea7afd75', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:06', '2024-02-05 21:57:06', '2025-02-06 04:57:06'),
('70e704cdbc7d32da69d48c7c5411cc4ae5405c707b3c5f500effac081a2f0b97386efa8694cbcbaf', 2, 1, 'app', '[]', 0, '2024-02-06 02:06:02', '2024-02-06 02:06:02', '2025-02-06 09:06:02'),
('7338b9e8ca71b4a540bf5ad4e6c00deb0e7c77a6ec1a45037c60a5a72203cec8a38e2eb9af3380ed', 2, 1, 'app', '[]', 0, '2024-02-05 21:58:59', '2024-02-05 21:58:59', '2025-02-06 04:58:59'),
('73cd1dda72e95f3fbe8933ede359aacf3f857b041e25d22b8c01be5daa5cb6626c3df618b31c8598', 7, 1, 'app', '[]', 0, '2024-02-06 01:59:19', '2024-02-06 01:59:19', '2025-02-06 08:59:19'),
('7a190c7d696ea2f5d0e00d70d6a2f9525c0a4c7b99458741226478fbe67cf5d292c9a17a5a409627', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:09', '2024-02-05 21:57:09', '2025-02-06 04:57:09'),
('7a89bc7f468f64452e4f5c14a8f1d01d16f17e9b337266c240211466556aef2e7a4e14f81405fa7f', 2, 1, 'app', '[]', 0, '2024-02-19 05:08:53', '2024-02-19 05:08:53', '2025-02-19 12:08:53'),
('7aef2dec346bd14b6516084f8a2ddcd26517ed24f66d0a83536ff812b3f0d2014aa8dec237c43546', 1, 1, 'app', '[]', 0, '2024-02-06 02:34:58', '2024-02-06 02:34:58', '2025-02-06 09:34:58'),
('91711cd87006e03a4dc5bd3804290b418ad9b755b7dfb26c3d38c2c97086cba7502dcc6b35f94b5b', 21, 1, 'app', '[]', 0, '2024-02-06 02:56:51', '2024-02-06 02:56:51', '2025-02-06 09:56:51'),
('91bfbf319d68dcb20e90ee5671cd7c077a11d61d8bf058572d227f1a998cee5b208b77bff4d7cdad', 19, 1, 'app', '[]', 0, '2024-02-06 02:54:54', '2024-02-06 02:54:54', '2025-02-06 09:54:54'),
('9280bba9f583643cfa90ee83ace9aa9abfacc4ac4c65c9035f8cecfc474648e1cf79d4a44dafd373', 2, 1, 'app', '[]', 0, '2024-02-07 07:04:01', '2024-02-07 07:04:01', '2025-02-07 14:04:01'),
('928297867f83e76101a8edf1b7857776503630a025fa27347b324d0a63d1908a6968106b01212660', 8, 1, 'app', '[]', 0, '2024-02-06 02:00:14', '2024-02-06 02:00:14', '2025-02-06 09:00:14'),
('92c05efa51f69c7dc7022ab5a82bab07f0e4a3bc03be273d18fbc7a8adfd8f781c845313f5177a2b', 1, 1, 'app', '[]', 0, '2024-02-06 02:28:10', '2024-02-06 02:28:10', '2025-02-06 09:28:10'),
('9394ac476a50cc61e64f43568bb95edc0f7a67a13fdc404cb9948d09c949d2a3fea972b422c7fa72', 14, 1, 'app', '[]', 0, '2024-02-06 02:27:03', '2024-02-06 02:27:03', '2025-02-06 09:27:03'),
('93e0c95411144e71c558a207bc512fcf78db8c5a0a265524bafece1088443ab415c7b546248a71c5', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:17', '2024-02-05 21:57:17', '2025-02-06 04:57:17'),
('9501b5ca02bca552b985dd8284baeee7e2d709d152140a75cdc9afd325651064f6454f5adfa7d2e9', 2, 1, 'app', '[]', 0, '2024-02-05 21:46:54', '2024-02-05 21:46:54', '2025-02-06 04:46:54'),
('95b54a2d025bc9d9a0605338cfc242171e1f8cd409a3e7902e7d1088bb51de113a2bff86ba01cb37', 15, 1, 'app', '[]', 0, '2024-02-06 02:22:01', '2024-02-06 02:22:01', '2025-02-06 09:22:01'),
('98376eb0d761733a4ce9662cfa38455c6245198bc0f7d0d5cf057c0fa3f79dd749bf5e783722809e', 2, 1, 'app', '[]', 0, '2024-02-21 05:44:55', '2024-02-21 05:44:55', '2025-02-21 12:44:55'),
('9a0e3a5d255de1117f5b20de9556db9cc116fac45584f0dc25b13c0ffcc7ae70e79e0c5c1b9b998d', 10, 1, 'app', '[]', 0, '2024-02-06 02:11:14', '2024-02-06 02:11:14', '2025-02-06 09:11:14'),
('9ba78ecd3de133918f0034c49f6ee414cf934760360a48f8f0a72560d16a0950722c76fb1e536d42', 1, 1, 'app', '[]', 0, '2024-02-06 02:35:30', '2024-02-06 02:35:30', '2025-02-06 09:35:30'),
('9cfb1b61b36907508287f11afee8cec458082bef7546284443a85f13fcaab9da5ae5cb7ecfc36622', 1, 1, 'app', '[]', 0, '2024-02-06 02:33:39', '2024-02-06 02:33:39', '2025-02-06 09:33:39'),
('a350deec286c146905bf8d81d2b89625ecfd99340314e7547d32d7a128b9d9fdb5e0f6a06512ef94', 1, 1, 'app', '[]', 0, '2024-02-06 02:32:10', '2024-02-06 02:32:10', '2025-02-06 09:32:10'),
('a3cba4f24c49354effaa7a3a62348e56d6f83b77c55880b4b396540e9ec4915dc205c9098ed71e3b', 5, 1, 'app', '[]', 0, '2024-02-06 01:43:00', '2024-02-06 01:43:00', '2025-02-06 08:43:00'),
('a61f72c9304c5913e1733c40dd5ad9171f7b7b9ba6c47e04499e2137153591013b4bad70cc8ad6ad', 10, 1, 'app', '[]', 0, '2024-02-06 02:07:01', '2024-02-06 02:07:01', '2025-02-06 09:07:01'),
('a7cd689101c85de28eff0093bb2551df1db9ba8a86c71af78dc15a72ed632343e8f4dde906eba36e', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:10', '2024-02-05 21:57:10', '2025-02-06 04:57:10'),
('ad6a5c11c5f7b158ac55c756708f37203abbf1b7a6d65d4163fefb87e7e69cf20ea3c154ee4aad4a', 16, 1, 'app', '[]', 0, '2024-02-06 02:24:30', '2024-02-06 02:24:30', '2025-02-06 09:24:30'),
('ada4aecff41bf776d63cfc4f6f884257ff9da0a502066d061e2d87393932ae425dcf1436a6ba4e4a', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:08', '2024-02-05 21:57:08', '2025-02-06 04:57:08'),
('ae5cc909242ca48d6e37a4e58e3749b2bb1ec68ca5e1e001f46a8a23e16772c270a4590334d29475', 14, 1, 'app', '[]', 0, '2024-02-06 02:20:25', '2024-02-06 02:20:25', '2025-02-06 09:20:25'),
('b30b99860dac358096fbd1101405767396e77663353609ef29aedcc3fc81568a5ca4a1137e9e2277', 3, 1, 'app', '[]', 0, '2024-02-06 01:37:28', '2024-02-06 01:37:28', '2025-02-06 08:37:28'),
('b4b10e789f1fe691d2549acfd43330488b90e0358c348f7c1ff71da5ff0ae626ce787bec6e499617', 15, 1, 'app', '[]', 0, '2024-02-06 02:25:30', '2024-02-06 02:25:30', '2025-02-06 09:25:30'),
('b5ac8dae709bacefad360bc5753f5747b575d941543ed82bcfa4eecab1e61c386b7c287ac67145a3', 2, 1, 'app', '[]', 0, '2024-02-05 21:33:10', '2024-02-05 21:33:10', '2025-02-06 04:33:10'),
('b7e4aecc70b7a298e2cabe03eab75429ac38f695ce06db0fe1df76cfd816f3c16e724df7e935ed31', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:07', '2024-02-05 21:57:07', '2025-02-06 04:57:07'),
('b8955278ea6fe24895272f91c9cb68c2b78f5a33d8ff46ce739f6c343f79ebe79e985fa29da17fbb', 14, 1, 'app', '[]', 0, '2024-02-06 02:32:27', '2024-02-06 02:32:27', '2025-02-06 09:32:27'),
('b8e7abece61312749358ebb914c2da1569e1f8a2f5c21a3039ce187f1a1effaa440c6a9220e01434', 2, 1, 'app', '[]', 0, '2024-02-06 02:06:02', '2024-02-06 02:06:02', '2025-02-06 09:06:02'),
('ba54cbbccab8588e9299bba02d4b7cd846a52100b17afd829fd849f7546cc2da854aec4951918bb2', 2, 1, 'app', '[]', 0, '2024-02-07 01:53:50', '2024-02-07 01:53:50', '2025-02-07 08:53:50'),
('bb100027e0a4320da890bd6b0c5894cb62168329b1f845f08f18516e2577b59e7b1bab671200e5b9', 1, 1, 'app', '[]', 0, '2024-02-06 03:11:44', '2024-02-06 03:11:44', '2025-02-06 10:11:44'),
('c2468e1dcaba525f9e5cff15b9a860048a33120ea9301acd0e868748c3006155c4559a87bc8833dd', 11, 1, 'app', '[]', 0, '2024-02-06 02:14:03', '2024-02-06 02:14:03', '2025-02-06 09:14:03'),
('c3df2b180e3c0966c2b07778d263dd0e10019393856cfe7c477a9327c7f52c816be780b731487915', 2, 1, 'app', '[]', 0, '2024-02-07 05:05:32', '2024-02-07 05:05:32', '2025-02-07 12:05:32'),
('d5c7cac53d8a734f9f6ae8ce573f10823eacd14fef7030ebb8c0514395c70145267b785fab8bb884', 10, 1, 'app', '[]', 0, '2024-02-06 02:13:29', '2024-02-06 02:13:29', '2025-02-06 09:13:29'),
('d5e8fd39d64cb62dcb61bacf42729b41897fce5b7ddce867fc0a41596233cae06253c9225833ee37', 2, 1, 'app', '[]', 0, '2024-02-07 02:21:33', '2024-02-07 02:21:33', '2025-02-07 09:21:33'),
('d721165bfb8f7853dd9c9469956270d6cdb836ffff1073d17bf02bd0055159edd52dc6060b4d90bd', 14, 1, 'app', '[]', 0, '2024-02-06 02:38:54', '2024-02-06 02:38:54', '2025-02-06 09:38:54'),
('d8d5644b86b6dca4d344d8a416f590007b08990c2de3b9ceb46eaeb27290d841e3f5b9802b8a5f84', 12, 1, 'app', '[]', 0, '2024-02-06 02:16:18', '2024-02-06 02:16:18', '2025-02-06 09:16:18'),
('d946a93b183d7907d91ac633f8bb3b4e838c5b15e39548630a4288f57c8b73c717d7fc8ce16a8d60', 1, 1, 'app', '[]', 0, '2024-02-06 02:29:19', '2024-02-06 02:29:19', '2025-02-06 09:29:19'),
('dbd2f06e24199ce914153cbb0fada00d2de54fa69f20fc6972619077abb580c802c23674934e3bd0', 20, 1, 'app', '[]', 0, '2024-02-08 02:44:13', '2024-02-08 02:44:13', '2025-02-08 09:44:13'),
('dce47cc4a7005f4105a14c353fd33cdb04fe5e0ba292cb46120f3a67e6b861a94b5ffd94f6849c54', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:07', '2024-02-05 21:57:07', '2025-02-06 04:57:07'),
('dec6176875f49914fa990cfa5cc0cba7ede0304996662db3679330ded6d09abf164602165fb65a40', 6, 1, 'app', '[]', 0, '2024-02-06 01:57:50', '2024-02-06 01:57:50', '2025-02-06 08:57:50'),
('e4476e7bf598019dddea3f6b835416d81b5d0f86463aa38e0b3a336a6456aed01af7418aeb5f4fca', 2, 1, 'app', '[]', 0, '2024-02-07 07:04:18', '2024-02-07 07:04:18', '2025-02-07 14:04:18'),
('e8b48481a1d150a0846df4ddd928ebfefd6d2c4aae87f08c56eebb08790e0f882ba8d0028e10947c', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:07', '2024-02-05 21:57:07', '2025-02-06 04:57:07'),
('ed34a4523216f4d8b2bc68a280ef39e0105cd741026cf2541fd9632b7d25dd251843ec9afdd928d2', 4, 1, 'app', '[]', 0, '2024-02-06 01:38:33', '2024-02-06 01:38:33', '2025-02-06 08:38:33'),
('edaf125492f140988f803152cb1146bd09b63232bd7ead24d630b00e45f4e968df924d8d9c2a5d21', 10, 1, 'app', '[]', 0, '2024-02-06 02:09:07', '2024-02-06 02:09:07', '2025-02-06 09:09:07'),
('eed91bd9ee6bcbc810a302e93a31ab12b37729a0e77faf1955aedf926da9b688f5315761164c3ae4', 2, 1, 'app', '[]', 0, '2024-02-07 07:04:55', '2024-02-07 07:04:55', '2025-02-07 14:04:55'),
('f15acc6bf3c33e29ada79617b1f8343449e3f18b7d1bd752393c04aeb702b22a6370585f1ce20e90', 2, 1, 'app', '[]', 0, '2024-02-05 21:53:42', '2024-02-05 21:53:42', '2025-02-06 04:53:42'),
('f4d75412580ad3dbc9c28ef03580715afa84a24a1a54cdd11c5128fbd0a153876d00a809a0cb0f5e', 20, 1, 'app', '[]', 0, '2024-02-06 02:55:24', '2024-02-06 02:55:24', '2025-02-06 09:55:24'),
('f8e01fdbe87435ef4ea957785c1a7977d92742717916b0a1a4f6cdf3dfb0b2b7758aa34fb8cda424', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:09', '2024-02-05 21:57:09', '2025-02-06 04:57:09'),
('fbc6d16961ac91baee98eba725d1898d0dd79171e97ed769d5b15530c11091adc535a66fc3232cb2', 10, 1, 'app', '[]', 0, '2024-02-06 02:05:21', '2024-02-06 02:05:21', '2025-02-06 09:05:21'),
('fcab452d5727129d599ea3437256d4af2a436fd42f09f08d4c648b22635a82be2e6bf4d9af093117', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:08', '2024-02-05 21:57:08', '2025-02-06 04:57:08'),
('feb2377d6d28360c6693e22b1ca48503955890fe82a245d1fa8948b16664ab6daa0c9a471b99f020', 2, 1, 'app', '[]', 0, '2024-02-05 21:57:09', '2024-02-05 21:57:09', '2025-02-06 04:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'enHx0dUBeLR2PHCvb6KvAaMkdNDLuKnKEI4DDGxy', NULL, 'http://localhost', 1, 0, 0, '2024-02-05 04:45:05', '2024-02-05 04:45:05'),
(2, NULL, 'Laravel Password Grant Client', 'L68AdXCvrQH9qI4y47mnCSTfDrwl0CIuWpYp3lcq', 'users', 'http://localhost', 0, 1, 0, '2024-02-05 04:45:05', '2024-02-05 04:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-02-05 04:45:05', '2024-02-05 04:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`, `id`) VALUES
('kien@gmail.com', '57420', NULL, 1),
('kien@gmail.com', '17529', NULL, 2),
('admin@gmail.com', '28330', NULL, 3),
('kien@gmail.com', '29227', NULL, 4),
('kien@gmail.com', '17882', NULL, 5),
('kien@gmail.com', '81837', NULL, 6),
('kien@gmail.com', '214', NULL, 7),
('kien@gmail.com', '75756', NULL, 8),
('kien@gmail.com', '41461', NULL, 9),
('kien@gmail.com', '96150', NULL, 10),
('kien@gmail.com', '39301', NULL, 11),
('kien@gmail.com', '32663', NULL, 12),
('kien@gmail.com', '13318', NULL, 13),
('kien@gmail.com', '64793', NULL, 14),
('kien@gmail.com', '70305', NULL, 15),
('kien@gmail.com', '84244', NULL, 16),
('kien@gmail.com', '51147', NULL, 17),
('kien@gmail.com', '89557', NULL, 18),
('kien@gmail.com', '85229', NULL, 19),
('kien@gmail.com', '94992', NULL, 20),
('kien@gmail.com', '52838', NULL, 21),
('kien@gmail.com', '55919', NULL, 22),
('kien@gmail.com', '8057', NULL, 23),
('kien@gmail.com', '85869', NULL, 24),
('kien@gmail.com', '9225', NULL, 25),
('kien@gmail.com', '81907', NULL, 26),
('kien@gmail.com', '82804', NULL, 27),
('kien@gmail.com', '21169', NULL, 28),
('kien@gmail.com', '28858', NULL, 29),
('kien@gmail.com', '6223', NULL, 30),
('kien@gmail.com', '31421', NULL, 31),
('kien@gmail.com', '6613', NULL, 32),
('kien@gmail.com', '1827', NULL, 33),
('kien@gmail.com', '35258', NULL, 34),
('kien@gmail.com', '67303', NULL, 35),
('kien@gmail.com', '32470', NULL, 36),
('kien@gmail.com', '61457', NULL, 37),
('kien@gmail.com', '64481', NULL, 38),
('kien@gmail.com', '33818', NULL, 39),
('kien@gmail.com', '33804', NULL, 40),
('kien@gmail.com', '57910', NULL, 41),
('kien@gmail.com', '56023', NULL, 42),
('kien@gmail.com', '586', NULL, 43),
('linh@gmail.com', '51494', NULL, 44),
('kien@gmail.com', '265', NULL, 45),
('kien@gmail.com', '13318', NULL, 46),
('kien@gmail.com', '51881', NULL, 47),
('kien@gmail.com', '30442', NULL, 48);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'app', '4e947fde862ed3ec6eea779ed6137d75289d6ce6e6b2c90eb2188a9f26d30fc1', '[\"*\"]', NULL, NULL, '2024-02-05 19:13:19', '2024-02-05 19:13:19'),
(2, 'App\\Models\\User', 2, 'app', '43c2a4ed02dab562f3f8102e212929e9874a4c774d572f7e734d5678443019ec', '[\"*\"]', NULL, NULL, '2024-02-05 19:17:27', '2024-02-05 19:17:27'),
(3, 'App\\Models\\User', 2, 'app', '0967abe7f26942201112129a2922b504bd8d57edc109a515aba11e3c5fc69548', '[\"*\"]', NULL, NULL, '2024-02-05 20:21:01', '2024-02-05 20:21:01'),
(4, 'App\\Models\\User', 2, 'app', 'e678482e8b23fbc23f123642aac2806672c838141c19d353bb6a9d056b2975ab', '[\"*\"]', NULL, NULL, '2024-02-05 20:25:41', '2024-02-05 20:25:41'),
(5, 'App\\Models\\User', 2, 'app', 'b1acf9c2367c1d54e4df3ffd5ca89b96c8ba5ccca32bc01f12d4ab757b217597', '[\"*\"]', NULL, NULL, '2024-02-05 20:26:35', '2024-02-05 20:26:35'),
(6, 'App\\Models\\User', 2, 'app', '05c1a1af8c52375e59d5692a14737aa9ffbcb1840b05f428cbe639eadd47c9a0', '[\"*\"]', NULL, NULL, '2024-02-05 20:36:08', '2024-02-05 20:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(9, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li73lop716tu2c', 'linh@gmail.com', 'Áo thun phông nam', 'SCASE1213', 'Size: XL', 'Color: Brown', '03', '5', '15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) DEFAULT NULL,
  `image_two` varchar(255) DEFAULT NULL,
  `image_three` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `short_description`, `color`, `size`, `description`, `created_at`, `updated_at`) VALUES
(1, 10, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li73lop7i1n68b', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li73lop7f8ia29', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li73lop7b0syf1', 'wash nâu xám Đen T-shirt đẹp unisex 100% cotton-Y0244', 'Black, Navy, Brown', 'M, L, XL, 2XL', 'Thông tin sản phẩm Áo thun unisex BEEYANBUY tay lỡ \r\n\r\n- Chất liệu: Cotton 100%, vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp để phối với nhiều loại trang phục.\r\n\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\n\r\nBảng kích thước:\r\n\r\nChiều dài M: 68 Ngực: 102 Chiều dài tay: 20\r\n\r\nChiều dài L: 70 Ngực: 106 Chiều dài tay: 21\r\n\r\nChiều dài XL: 72 Ngực: 110 Chiều dài tay: 22\r\n\r\nChiều dài 2XL: 74 Ngực: 114 Chiều dài tay: 23\r\n\r\n\r\nDo ánh sáng, sẽ có một số khác biệt về màu sắc, mong bạn thông cảm!\r\n\r\n\r\nLưu ý: Đơn vị đo: cm. Do các phương pháp đo lường khác nhau, xin vui lòng cho phép sai số 1-3 cm, phạm vi sai số không phải vấn đề chất lượng. Do cài đặt hiển thị và ánh sáng, màu sắc của sản phẩm có thể hơi khác so với hình ảnh. Vui lòng thấu hiểu và cân nhắc khi đặt hàng!\r\n\r\n\r\nDịch vụ chăm sóc khách hàng\r\n\r\nNếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với bộ phận chăm sóc khách hàng. Đôi khi, đại diện dịch vụ chăm sóc khách hàng có thể chậm phản hồi do lượng tin nhắn tìm kiếm lời khuyên. Vui lòng kiên nhẫn chờ đợi. Chúng tôi sẽ tích cực giải quyết các mối quan tâm của bạn.\r\n\r\nNếu bạn có bất kỳ vấn đề nào với sản phẩm bạn nhận được, bạn có thể liên hệ với bộ phận chăm sóc khách hàng. Chúng tôi rất vui khi giải quyết vấn đề của bạn.\r\n\r\nXin đừng vội đưa ra đánh giá tiêu cực.\r\n\r\nChúng tôi sẽ cung cấp cho bạn dịch vụ sau bán hàng tốt nhất.', NULL, NULL),
(9, 31, 'http://127.0.0.1:8000/upload/productdetails/1791418489444428.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791418489502938.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791418489564454.jpg', '[BST Dragon] - Áo polo Dragon Karants Local Brand Form Oversize - KR73', 'Black', 'S,M,L,XL', NULL, NULL, '2024-02-20 04:50:03'),
(10, 32, 'http://127.0.0.1:8000/upload/productdetails/1791413464121314.png', 'http://127.0.0.1:8000/upload/productdetails/1791413464238265.png', 'http://127.0.0.1:8000/upload/productdetails/1791413464406204.png', 'Tee basic ss1 CREWZ áo thun tay lỡ unisex Local Brand - AO_THUN_DVR (V427)', 'White,Black,Pink', 'S,M,L,XL', NULL, NULL, '2024-02-20 03:30:11'),
(12, 36, 'http://127.0.0.1:8000/upload/productdetails/1791431878448540.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791431878534616.jpg', NULL, 'Áo Thun Phối Thể Thao Simpson Local Brand Streetwear Form Oversize - TS10', 'Red,Black,Gray', 'S,M,L,XL', NULL, NULL, NULL),
(13, 39, 'http://127.0.0.1:8000/upload/productdetails/1791470754436752.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791470754522339.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791470754605545.jpg', 'Áo Sơ Mi tay ngắn Local Brand .Áo sơ mi ngắn tay form rộng, thời trang hiện đại unisex chất liệu vải lụa mềm chống nhăn', 'Đen,Trắng,Xanh Navie,Be_SM3', 'S,M,L,XL', 'Áo Sơ Mi tay ngắn Local Brand .Áo sơ mi ngắn tay form rộng, thời trang hiện đại unisex chất liệu vải lụa mềm chống nhăn\r\n\r\nBảng size :\r\n\r\n\r\nM : Dài 70 Rộng 53 | 1m55 - 1m60, 45kg - 55kg\r\n\r\n\r\nL : Dài 72 Rộng 55 | 1m60 - 1m75, 55kg - 65kg\r\n\r\n\r\nXL : Dài 74 Rộng 58 | trên 1m75, trên 70kg\r\n\r\n\r\nChất liệu : Lụa mềm mịn, siêu mát, thấm hút mồ hôi nhanh, chống nhăn\r\n\r\n\r\nCộng nghệ : Thêu tỉ mỉ, bảo quản tốt khi giặt máy, không bong tróc phai màu\r\n\r\n\r\n\r\nHướng dẫn sử dụng :\r\n\r\n\r\nNhớ lộn áo trái khi giặt và không giặt ngâm\r\n\r\n\r\nKhông giặt máy trong 10 ngày đầu\r\n\r\n\r\nKhông sử dụng nước tẩy\r\n\r\n\r\nKhi phơi lộn trái áo và không phơi trực tiếp dưới ánh nắng mặt trời\r\n\r\n\r\n\r\nChính sách đổi trả :\r\n\r\n\r\nSản phẩm được đổi trả 1 lần trong vòng 3 ngày kể từ khi nhận được hàng (chỉ đổi size, không đổi mẫu và màu khác)', NULL, NULL),
(14, 40, 'http://127.0.0.1:8000/upload/productdetails/1791471026377978.png', 'http://127.0.0.1:8000/upload/productdetails/1791471026535729.png', 'http://127.0.0.1:8000/upload/productdetails/1791471026672993.png', 'Áo Sơ Mi tay ngắn Local Brand .Áo sơ mi ngắn tay form rộng, thời trang hiện đại unisex chất liệu vải lụa mềm chống nhăn', 'Đen,Trắng,Xanh Navie,Be_SM3', 'S,M,L,XL', NULL, NULL, '2024-02-20 18:45:06'),
(15, 41, 'http://127.0.0.1:8000/upload/productdetails/1791500979638476.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791500979733017.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791500979874672.jpg', 'Quần Short Teelab Local Brand Unisex Màu Đen, Quần Lừng Nam Nữ Phong Cách Basic Storeunisex', 'Đen,Trắng', 'S,M,L,XL', 'Quần Short Teelab Local Brand Unisex  Màu Đen, Quần Lừng Nam Nữ Phong Cách Basic Storeunisex\r\n\r\n\r\n- Chất liệu: Nỉ chân cua 350gsm\r\n\r\n- Form: Cơ bản\r\n\r\n- Thiết kế: Hình Typography In cán lụa cao cấp\r\n\r\n- Túi: Có 2 túi bên và sau\r\n\r\n- Bảo quản: Giặt với nước lạnh\r\n\r\n Cách chọn size: Teelab có bảng size mẫu. Nếu chưa biết lựa size bạn có thể inbox để được Teelab tư vấn. \r\n\r\n\r\nLưu ý : Quần Teelab là form rộng mặc thoải mái rồi không cần nhích size trừ trường hợp thích oversize size hẳn\r\n\r\n\r\n Hướng dẫn sử dụng sản phẩm quần Teelab \r\n\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. \r\n\r\n- Không dùng hóa chất tẩy.\r\n\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp. \r\n\r\n\r\n\r\n– Miễn phí đổi hàng cho khách mua ở STOREUNISEX trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n\r\n– Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n\r\n– Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng', NULL, NULL),
(16, 42, 'http://127.0.0.1:8000/upload/productdetails/1791502059575575.png', 'http://127.0.0.1:8000/upload/productdetails/1791502059712170.png', 'http://127.0.0.1:8000/upload/productdetails/1791502059909987.png', 'Quần AMIRI Đen Vá Da Đen Nhăn Quần Jean Skinny màu đen gối vá họa tiết bản cao cấp co dãn 4 chiều', 'Đen', 'S,M,L,XL', 'Shop Đồ Trend Hot Nhất 2024\r\n\r\nl.THÔNG TIN SẢN PHẨM\r\nQuần Bò Nam Amiri Đen Vá Gối Quần Jean màu đen gối vá họa tiết bản cao cấp\r\n+Quần Jean Nam Khoá gối chất liệu cotton thô,chuẩn dáng sang trọng thể thao lịch lãm\r\n+Quần jean nam rách gối kiểu dáng đường phố,được dệt bằng bò cotton thô mặc không xù không nhăn \r\n+Quần jean nam phù hợp với mọi loại ngoại cảnh ví dụ.đi chơi hay đi đám cưới hay du lịch\r\n+Quần bò nam khoá gối còn rất dễ phối đồ.giày dép hay áo phông sơ mi\r\n+Quần jean nam đen phù hợp với mọi lứa tuổi\r\nTRẢ HÀNG HOÀN TIỀN NẾU KHÁCH KHÔNG HÀI LÒNG\r\nll:THÔNG SỐ KĨ THUẬT\r\n***CÁCH CHỌN SIZE THAM KHẢO ĐỂ CÓ THỂ CHỌN ĐƯỢC QUẦN JEAN NAM PHÙ HỢP NHẤT:\r\n> Size 28 : Cân nặng 43 - 48kg, cao Khoảng 1m60 - 1m67\r\n> Size 29 : Cân nặng 49 - 53kg, cao Khoảng 1m65 - 1m70\r\n> Size 30 : Cân nặng 54- 59kg, cao Khoảng 1m68 - 1m75\r\n> Size 31 : Cân nặng 60 - 65kg, cao Khoảng 1m70 - 1m76\r\n> Size 32 : Cân nặng 66 - 70kg, cao Khoảng 1m70 - 1m80\r\nlll.HƯỚNG DẪN SỬ DỤNG QUẦN\r\n+Không khuyến khích khách hàng giặt bằng máy\r\n+không nên dùng thuốc tẩy rửa lên sản phẩm\r\n+Khi giũ quần áo jean, bạn nên sử dụng nhiều nước.Trước tiên giũ trong nước ấm, sau đó cho vào nước lạnh.\r\n+Nhớ lộn trái quần khi giặt tránh trường hợp va phải cản bị xù quần\r\n+Phơi sản phẩm ở ánh nắng nhẹ-tránh ánh nắng trực tiếp', NULL, NULL),
(17, 43, 'http://127.0.0.1:8000/upload/productdetails/1791502325729546.png', 'http://127.0.0.1:8000/upload/productdetails/1791502325973077.png', 'http://127.0.0.1:8000/upload/productdetails/1791502326184587.png', 'Quần Ống Rộng Tổ Ong Unisex Hot Tren 2023 Cạp Cao Lưng Thun Dây Rút Phối Chữ MA98', 'Đen,Kem,Nâu,Xanh', 'S,M,L,XL', '- THÔNG TIN SẢN PHẨM\r\nQuần ống rộng, quần ống suông nữ VUVY vải tổ ong cạp chun phong cách thể thao QTO16\r\n- Chất liệu: Vải tổ ong dày dặn, chất co dãn thoải mái, mát mẻ\r\n- Màu sắc: Đen, Trắng, Nâu\r\n\r\n           Size S:      từ 40 - 49kg   - dài 97cm, đùi 53cm, ống 40cm\r\n           Size M:      từ 49 - 53kg   - dài 98cm đùi 55cm, ống 40cm\r\n           Size L:       từ 53 - 56kg   - dài 99cm đùi 57cm, ống 40cm\r\n           Size XL:    từ 56 - 59kg   - dài 100cm đùi 59cm, ống 40cm\r\n           Size 2XL:  từ 60 - 65kg   - dài 101cm đùi 62cm, ống 40cm\r\n- Eo chun co dãn đến 85cm\r\n- Shope cho phép được đồng kiểm nên bạn kiểm tra sản phẩm trước khi nhận hàng nha\r\n+ Hàng đẹp, bấm nhận hàng và đánh giá 5* nha\r\n+ Hàng lỗi, không ưng, không thích ... hay bất kể các lí do khiến bạn không hài lòng, các bạn hoàn về cho bên mình nhé, \r\n   bên mình chịu hoàn toàn trách nhiệm về đơn hàng của bạn\r\n   Rất mong bạn có trải nghiệm tốt về sản phẩm của shop\r\n\r\nHƯỚNG DẪN MUA HÀNG\r\n - B1 : Click vào sản phẩm Quần ống rộng, quần ống suông nữ và ấn chọn ngay & điền số lượng rồi chọn \"Thêm vào giỏ hàng\" \r\n- B2 : Vào phần xem shop để tìm mua thêm những sản phẩm ưng ý\r\n- B3: Vào phần \"Giỏ hàng\" check lại một lần nữa sản phẩm Quần ống rộng, quần ống suông nữ mình cần rồi chọn Mua ngay\r\n- B4: Check lại thông tin địa chỉ giao hàng\r\n- B5: Chọn hình thức thanh toán\r\n- B6: Nhập mã giảm giá (nếu có) và nhập mã miễn phí ship nhé! \r\n- B7: Click vào ô ĐẶT HÀNG ở phía cuối là okie nhé!\r\n\r\n🐭 CAM KẾT CỦA SHOP : \r\n+ Bao đổi trả hàng miễn phí khi sản phẩm kém chất lượng và không giống hình, nhầm size, số lượng . \r\n+ Khách hàng cũ : Mua lần thứ 2 trở đi sẽ được nhận mã giảm giá của shop \r\n\r\n🐠 LƯU Ý KHI SỬ DỤNG CÁC SẢN PHẨM CỦA SHOP\r\n- Trong quá trình đóng gói và vận chuyển sản phẩm Quần ống rộng, quần ống suông nữ có thể bị nhàu, quý khách vui lòng giặt trước khi sử dụng để cảm nhận sản phẩm Quần ống rộng, quần ống suông nữ tốt nhất \r\n- Đối với sản phẩm đa dạng về chất liệu, kiểu dáng cách bảo quản sản phẩm Quần ống rộng, quần ống suông nữ tốt nhất là giặt tay với bột (nước) giặt nhẹ để giữ được độ bền của vải, tránh bị phai màu từ các loại quần áo khác. \r\n- Đối với những sản phẩm có thể giặt máy, chỉ nên để ở chế độ giặt nhẹ, hoặc mức trung bình và nên phân loại sản phẩm cùng màu và cùng loại vải khi giặt. \r\n- Nên phơi sản phẩm ở nơi thoáng mát, tránh ánh nắng trực tiếp dễ bị phai bạc màu, nên làm khô Quần ống rộng, quần ống suông nữ bằng cách phơi ở những điểm đón gió sẽ giữ được màu vải tốt hơn.', NULL, NULL),
(18, 44, 'http://127.0.0.1:8000/upload/productdetails/1791502754194275.png', 'http://127.0.0.1:8000/upload/productdetails/1791502754411409.png', 'http://127.0.0.1:8000/upload/productdetails/1791502754574948.png', 'quần jean nam dáng baggy rách gối chất liệu co dãn kiểu dáng skinny', 'Xanh,Đen', 'S,M,L,XL', '👖 Size 27 : Từ 38 - 43kg Cao trên 1m55\r\n\r\n👖 Size 28 : Từ 43 - 49kg Cao trên 1m55\r\n\r\n👖 Size 29 : Từ 49 - 57kg Cao trên 1m55\r\n\r\n👖 Size 30 : Từ 58 - 62kg Cao trên 1m60 ( là mặc đẹp nhất )\r\n\r\n👖 Size 31 : Từ 63 - 67kg Cao trên 1m60 ( là mặc đẹp nhất )\r\n\r\n👖 Size 32 : Từ 68 - 75 kg Cao trên 1m60 ( là mặc đẹp nhất )\r\n\r\n👖 Size 33 : Từ 76 - 83 kg Cao trên 1m60 ( là mặc đẹp nhất )\r\n\r\n.\r\n\r\nLƯU Ý: SHOP Có 2 loại rách Gối và không rách gối , Khách có yêu cầu gì đặc biệt có thể inbox shop hỗ trợ ạ !\r\n\r\nQuần jean rách gối bên mình khá đẹp và giá rẻ nên mọi người ủng hộ shop mình nhé\r\n\r\n✔️ Loại  : Quần Jean COTTON Co Giản , ống suông , rách gối !\r\n\r\n✔️ Kiểu dáng  : Hàn Quốc,  Đi Chơi,  Công Sở, Đời Thường\r\n\r\n✔️Chất liệu  : Vải Jean Cotton , co dãn\r\n\r\n✔️Thương hiệu  : Muidoi\r\n\r\n✔️Thích hợp  : 4 mùa', NULL, NULL),
(19, 45, 'http://127.0.0.1:8000/upload/productdetails/1791503006541368.png', 'http://127.0.0.1:8000/upload/productdetails/1791503006696883.png', 'http://127.0.0.1:8000/upload/productdetails/1791503006828388.png', 'Quần ống loe nữ cạp cao dáng dài, quần legging nữ kiểu ôm ống loe công sở đi học form xinh tôn dáng VIETCEN', 'Đen', 'S,M,L,XL', NULL, NULL, '2024-02-21 03:13:52'),
(20, 47, 'http://127.0.0.1:8000/upload/productdetails/1791503339766348.png', 'http://127.0.0.1:8000/upload/productdetails/1791503340349552.png', 'http://127.0.0.1:8000/upload/productdetails/1791503340976761.png', 'Quần Short Nữ ống Loe Quần Đùi ống Rộng Thời Trang Chất Tuyết Mưa Mềm Mịn MA506', 'Đen,Trắng', 'S,M,L,XL', 'Quần short nữ ống loe quần đùi nữ ống rộng thời trang chất tuyết mưa mềm mịn 909\r\n\r\n\r\n✪ Tên sản phẩm :Quần short nữ ống loe quần đùi nữ ống rộng thời trang chất tuyết mưa mềm mịn MA_854\r\n\r\n✪ Sản Xuất : Sản xuất trực tiếp tại xưởng - hàng Việt Nam\r\n\r\n✪ Địa chỉ xưởng chịu trách nhiệm sản phẩm : Xưởng may Bình đà - số 76 xóm dộc - bình minh - thanh oai - HN\r\n\r\n\r\n🥰Thông tin size :\r\n\r\n\r\n- Size S (43- 46 kg): Eo 66, Mông 88\r\n\r\n- Size M (47- 49 kg): Eo 69, Mông 92\r\n\r\n- Size L (50- 53 kg): Eo 72, Mông 96\r\n\r\n- Size XL (54- 58 kg): Eo 75, Mông 100\r\n\r\n- Size 2XL (59- 62 kg): Eo 80, Mông 100\r\n\r\n- Size 3XL (62- 65 kg): Eo 83, Mông 105\r\n\r\n\r\n\r\n👉CAM KẾT CỦA SHOP\r\n\r\n - Shop cam kết không bán hàng giả, hàng nhái, chất lượng luôn là hàng đầu để shop có thể phát triển thương hiệu và vươn xa. \r\n\r\n- Sản phẩm cam kết như hình thật 100% \r\n\r\n- Tư vấn nhiệt tình, chu đáo luôn lắng nghe khách hàng để phục vụ tốt.\r\n\r\n- Giao hàng nhanh đúng tiến độ không phải để quý khách chờ đợi lâu để nhận hàng. \r\n\r\n- Hàng được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách \r\n\r\n- Hàng có sẵn, giao hàng ngay khi nhận được đơn \r\n\r\n\r\n👉  QUY ĐỊNH BẢO HÀNH VÀ ĐỔI TRẢ\r\n\r\n Đổi trả theo đúng quy định của \r\n\r\n1. Điều kiện áp dụng (trong vòng 03 ngày kể từ khi nhận sản phẩm):\r\n\r\n- Hàng hoá vẫn còn mới, chưa qua sử dụng \r\n\r\n- Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất. \r\n\r\n2 . Trường hợp được chấp nhận: \r\n\r\n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \r\n\r\n- Không đủ số lượng, không đủ bộ như trong đơn hàng \r\n\r\n3. Trường hợp không đủ điều kiện áp dụng chính sách: \r\n\r\n- Quá 03 ngày kể từ khi Quý khách nhận hàng \r\n\r\n- Gửi lại hàng không đúng mẫu mã, không phải hàng của shop \r\n\r\n- Đặt nhầm sản phẩm, chủng loại, không thích, không hợp,...\r\n\r\n\r\nQuần short nữ đen trắng suông fit cạp cao khóa lưng đen mã525', NULL, NULL),
(21, 48, 'http://127.0.0.1:8000/upload/productdetails/1791503648226917.png', 'http://127.0.0.1:8000/upload/productdetails/1791503648390441.png', 'http://127.0.0.1:8000/upload/productdetails/1791503648572739.png', 'Đầm dự tiệc trễ vai nơ ngực tùng xòe cực xinh váy trắng xòe công chúa form chuẩn tôn dáng Midi dress', 'Trắng', 'S,M,L,XL', NULL, NULL, NULL),
(22, 49, 'http://127.0.0.1:8000/upload/productdetails/1791504043916474.png', 'http://127.0.0.1:8000/upload/productdetails/1791504044110524.png', 'http://127.0.0.1:8000/upload/productdetails/1791504044351620.png', 'Áo khoác liền mũ chữ N họa tiết ngôi sao bên tay STYLT MARVEN - AO KHOAC NAM 002', 'Xanh dương,Đen,Xanh lá', 'S,M,L,XL', NULL, NULL, NULL),
(23, 50, 'http://127.0.0.1:8000/upload/productdetails/1791504438487172.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791504438576160.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791504438661024.jpg', 'Áo khoác nam unisex cổ đứng vải dù 2 lớp phối màu độc lạ họa tiết chữ RESUAPRE đi mưa,cản gió,chống nắng', 'Kem xanh đen,Xám phối đen', 'S,M,L,XL', NULL, NULL, NULL),
(24, 51, 'http://127.0.0.1:8000/upload/productdetails/1791504718967262.png', 'http://127.0.0.1:8000/upload/productdetails/1791504719127754.png', 'http://127.0.0.1:8000/upload/productdetails/1791504719252662.png', 'Áo hoodie nam nữ local brand unisex cặp đôi nỉ ngoại cotton form rộng có mũ xám đen dày oversize', 'Be,Đen', 'S,M,L,XL', NULL, NULL, NULL),
(25, 52, 'http://127.0.0.1:8000/upload/productdetails/1791505079013208.png', 'http://127.0.0.1:8000/upload/productdetails/1791505079158958.png', 'http://127.0.0.1:8000/upload/productdetails/1791505079306791.png', 'Mistery Giày thể thao nữ độn đế màu nâu MIS-542', 'Be', '35,36,37,38,39,40', NULL, NULL, NULL),
(26, 53, 'http://127.0.0.1:8000/upload/productdetails/1791505723042555.jpg', 'http://127.0.0.1:8000/upload/productdetails/1791505723114918.png', 'http://127.0.0.1:8000/upload/productdetails/1791505723365969.png', 'Dép Sandal Học Sinh Ulzang Unisex Quai Dù Đế Cao Su Đi Cực Êm', 'Đen', 'S,M,L,XL', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `special_price` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `brand` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `product_code`, `created_at`, `updated_at`) VALUES
(10, 'Áo thun phông nam', '5', 'na', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li73lop716tu2c', 'Fashion', 'T-shirt', 'Collection', 'BEEYANBUY', 'SCASE1213', NULL, NULL),
(31, 'Áo polo Dragon Karants 7', '100000', 'na', 'http://127.0.0.1:8000/upload/product/1791372675022013.jpg', 'Fashion', 'Select SubCategory', 'COLLECTION', 'Select Brand', 'SNJKN-312', NULL, '2024-02-20 04:49:28'),
(32, 'Tee basic ss1 CREWZ', '95000', 'na', 'http://127.0.0.1:8000/upload/product/1791413463995995.png', 'Fashion', 'Shirt', 'FEATURED', 'Select Brand', 'HKNJ-123', NULL, '2024-02-20 06:07:26'),
(36, 'Áo Thun Phối Thể Thao Simpson', '169000', 'na', 'http://127.0.0.1:8000/upload/product/1791431878298799.jpg', 'Fashion', 'Shirt', 'NEW', 'Select Brand', 'NKJNKJ0-123', NULL, NULL),
(40, 'Áo Sơ Mi tay ngắn', '129000', NULL, 'http://127.0.0.1:8000/upload/product/1791471026236588.png', 'Fashion', 'Shirt', 'NEW', 'Select Brand', 'HNKJ-123', NULL, '2024-02-20 18:45:06'),
(41, 'Quần Short Teelab', '79000', 'na', 'http://127.0.0.1:8000/upload/product/1791500979390578.jpg', 'Quần', 'short', 'NEW', 'Select Brand', 'Quần Short Teelab', NULL, NULL),
(42, 'Jean Skinny', '199500', 'na', 'http://127.0.0.1:8000/upload/product/1791502059253291.png', 'Quần', 'Áo thun', 'COLLECTION', 'Select Brand', 'FFHN-123', NULL, NULL),
(43, 'Quần Ống Rộng Tổ Ong', '29000', 'na', 'http://127.0.0.1:8000/upload/product/1791502325496718.png', 'Quần', 'Quần dài', NULL, 'Select Brand', 'Quần Ống Rộng Tổ Ong', NULL, NULL),
(44, 'quần jean nam dáng baggy', '99000', NULL, 'http://127.0.0.1:8000/upload/product/1791502754043719.png', 'Quần', 'Quần dài', NULL, 'Select Brand', 'HNJLKN-123', NULL, NULL),
(45, 'Quần legging nữ', '48000', 'na', 'http://127.0.0.1:8000/upload/product/1791503006333514.png', 'Quần', 'legging', NULL, 'Select Brand', 'NSJR-123', NULL, '2024-02-21 03:13:52'),
(47, 'Quần Short Nữ ống Loe', '55000', 'na', 'http://127.0.0.1:8000/upload/product/1791503339258818.png', 'Quần', 'short', NULL, 'Select Brand', 'EHNK-0934', NULL, NULL),
(48, 'Đầm dự tiệc', '223000', 'na', 'http://127.0.0.1:8000/upload/product/1791503647993884.png', 'Đầm', 'Select SubCategory', NULL, 'Select Brand', 'HNKJ-123', NULL, '2024-02-21 03:31:24'),
(49, 'Áo khoác liền mũ chữ N', '80000', NULL, 'http://127.0.0.1:8000/upload/product/1791504043654909.png', 'Áo khoác', 'Áo khoác liền mũ', 'FEATURED', 'Select Brand', 'NKKN-013', NULL, '2024-02-21 03:31:47'),
(50, 'Áo khoác nam vải dù', '99000', 'na', 'http://127.0.0.1:8000/upload/product/1791504438383641.jpg', 'Áo khoác', 'Áo khoác dù', 'FEATURED', 'Select Brand', 'DND-132', NULL, NULL),
(51, 'Áo hoodie unisex', '259000', NULL, 'http://127.0.0.1:8000/upload/product/1791504718803354.png', 'Áo khoác', 'Hoodie', 'NEW', 'Select Brand', 'HTRRN-123', NULL, NULL),
(52, 'Giày thể thao nữ độn', '297000', NULL, 'http://127.0.0.1:8000/upload/product/1791505078786603.png', 'Giày', 'Giày thể thao', 'FEATURED', 'Select Brand', 'NFHN-103', NULL, '2024-02-21 03:51:32'),
(53, 'Dép Sandal Học Sinh', '40000', NULL, 'http://127.0.0.1:8000/upload/product/1791505722950609.jpg', 'Giày', 'Sandal', 'FEATURED', 'Select Brand', 'HNLK-132', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `reviewer_photo` varchar(255) DEFAULT NULL,
  `reviewer_rating` varchar(255) NOT NULL,
  `reviewer_comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(1, '', 'Áo thun phông nam', 'Kien', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', '4', 'Goods', NULL, NULL),
(12, 'SCASE1213', 'Áo thun phông nam', 'Kien', 'Nđákamdamk', '4', 'Good', NULL, NULL),
(13, 'SCASE1213', 'Áo thun phông nam', 'Linh', NULL, '3', 'Bad', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('OfAsZTcZMX0Swl1w2ZYfXK1QQgPv7S1ezGnp0PP1', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMjBveTBIdUplcmttTnQyYWVxRXBEMmhhMkZlbGh5V1pmVkdXOEEzViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zbGlkZXIvYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRGTWlBVzg2U1pLMi84L2I1Y2hKQ0dPOC5kaThPNFNtVC93SmpveFFBWDU1aHhMWFRqMHpwNiI7fQ==', 1708519474);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `purchase_guide` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `android_app_link` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<h4>About Us Page</h4>\r\n\r\n<p>Hi! I&#39;m Kazi Ariyan. I&#39;m a web developer with a serious love for teaching I am a founder of eLe easy Learning and a passionate Web Developer, Programmer &amp; Instructor.<br />\r\n<br />\r\nI am working online for the last 7 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. easy learning exists to help you succeed in life.<br />\r\n<br />\r\nEach course has been hand-tailored to teach a specific skill. I hope you agree! Whether you&rsquo;re trying to learn a new skill from scratch or want to refresh your memory on something you&rsquo;ve learned in the past, you&rsquo;ve come to the right place.<br />\r\nEducation makes the world a better place. Make your world better with new skills.</p>', '<h4>Refund Page</h4>\r\n\r\n<p>As a small business owner, you have enough on your plate getting a product ready for shipment to be too concerned about a package that arrived a few hours, or even just a few minutes, late. But it might be worth your while to pay attention.</p>\r\n\r\n<p>Major carriers offer a money-back guarantee for on-time deliveries and provide a refund if they don&#39;t fulfill that promise. The catch is a claim must be filed within 15 calendar days of the late delivery and most small companies simply don&#39;t have the time or resources to pursue their refunds.</p>\r\n\r\n<p>Though on-time rates are improving, these refunds can add up. Paul Cronin, chief executive officer at shipping refund recovery firm MTC Recovery Consultants in North Attleboro, Mass, estimates that 2 to 10 percent of domestic and international shipments are late. &quot;Most shippers don&#39;t even realize a package is late,&quot; notes Cronin. &quot;They don&#39;t realize they&#39;re missing out on a refund.&quot; According to most carriers&#39; guarantees, a delivery that arrives even one minute late can entitle the shipper to a refund.</p>', '<h4>Purchase Page</h4>\r\n\r\n<p>You know that moment when you&#39;re thinking about buying something, but you&#39;re just not sure if you should pull out your wallet? That&#39;s &quot;purchase anxiety.&quot; Most people feel it at some point, especially when they&#39;re buying a big-ticket item. Or when they&#39;re buying something over the internet.</p>\r\n\r\n<p>Online shoppers tend to suffer from purchase anxiety more than offline shoppers. After all, when you buy something over the internet, it&#39;s often a product you&#39;ve never seen before sold by a person you&#39;ve never met before.</p>\r\n\r\n<p>Here are some very simple elements you can add to your site that will reassure your visitors you&#39;re a reputable business offering a quality product--and that will get them to click that order button.</p>', '<h4>Privacry Page</h4>\r\n\r\n<p>Consumers have become increasingly connected and are constantly sharing information online. They are researching, purchasing and using online products and services, via any number of connected devices. They are also opting in to share their preferences as part of interactions on social media and search sites. All of this customer data is being collected by device manufacturers, desktop and mobile apps, internet providers and mobile operators for their own purposes or to sell to other businesses.</p>', '1635 Franklin Street Montgomery, Near Sherwood Mall. AL 36104 ', 'http://127.0.0.1:8000/android', 'https://www.facebook.com/', 'https://twitter.com', 'https://www.instagram.com/', '© Copyright 2021 by easy Shop, All Rights Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(21, 4, 'Áo', 'Áo thun', NULL, NULL),
(22, 3, 'Quần', 'short', NULL, NULL),
(23, 3, 'Quần', 'Quần dài', NULL, NULL),
(24, 3, 'Quần', 'legging', NULL, NULL),
(25, 6, 'Áo khoác', 'Áo khoác liền mũ', NULL, NULL),
(26, 6, 'Áo khoác', 'Áo khoác dù', NULL, NULL),
(27, 6, 'Áo khoác', 'Hoodie', NULL, NULL),
(28, 7, 'Giày', 'Giày thể thao', NULL, '2024-02-21 03:57:31'),
(29, 7, 'Giày', 'Giày cao gót', NULL, NULL),
(30, 7, 'Giày', 'Sandal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$FMiAW86SZK2/8/b5chJCGO8.di8O4SmT/wJjoxQAX55hxLXTj0zp6', NULL, NULL, NULL, NULL, NULL, '202402091409man_profile_default.jpg', '2024-02-02 00:26:50', '2024-02-09 07:39:17'),
(2, 'Kien', 'kien@gmail.com', NULL, '$2y$12$0N8CqLvHTqcoasAkwMTI7.M/W.lwTpHl1ISjBjVjEQXv6Eg6lMsza', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 19:17:27', '2024-02-05 19:17:27'),
(20, 'Linh', 'linh@gmail.com', NULL, '$2y$12$FrfI8KYbB/k0Hy.m7QbDt.ECe.MB./ygomXQqssTeHpQ7sR2PHa3a', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-06 02:55:24', '2024-02-06 02:55:24'),
(21, 'Trang', 'trang@gmail.com', NULL, '$2y$12$XZJTA4VJh7K2HLqcZj1GJeJCYQWcmvfpGu1dJrkq4w78i7hNYU6qa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-06 02:56:51', '2024-02-06 02:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '03:09:09pm', '02-02-2024', NULL, NULL),
(2, '127.0.0.1', '04:13:13pm', '02-02-2024', NULL, NULL),
(3, '127.0.0.1', '04:31:21pm', '02-02-2024', NULL, NULL),
(4, '127.0.0.1', '04:31:23pm', '02-02-2024', NULL, NULL),
(5, '127.0.0.1', '09:56:26pm', '02-02-2024', NULL, NULL),
(6, '127.0.0.1', '11:37:02pm', '02-02-2024', NULL, NULL),
(7, '127.0.0.1', '11:39:58pm', '02-02-2024', NULL, NULL),
(8, '127.0.0.1', '11:43:03pm', '02-02-2024', NULL, NULL),
(9, '127.0.0.1', '11:44:23pm', '02-02-2024', NULL, NULL),
(10, '127.0.0.1', '01:10:32am', '03-02-2024', NULL, NULL),
(11, '127.0.0.1', '01:38:57am', '03-02-2024', NULL, NULL),
(12, '127.0.0.1', '02:02:48am', '03-02-2024', NULL, NULL),
(13, '127.0.0.1', '02:06:30am', '03-02-2024', NULL, NULL),
(14, '127.0.0.1', '02:56:07am', '03-02-2024', NULL, NULL),
(15, '127.0.0.1', '03:15:57am', '03-02-2024', NULL, NULL),
(16, '127.0.0.1', '03:17:40am', '03-02-2024', NULL, NULL),
(17, '127.0.0.1', '04:13:11am', '03-02-2024', NULL, NULL),
(18, '127.0.0.1', '04:53:03am', '03-02-2024', NULL, NULL),
(19, '127.0.0.1', '05:30:40am', '03-02-2024', NULL, NULL),
(20, '127.0.0.1', '05:35:27am', '03-02-2024', NULL, NULL),
(21, '127.0.0.1', '05:36:48am', '03-02-2024', NULL, NULL),
(22, '127.0.0.1', '06:07:02am', '03-02-2024', NULL, NULL),
(23, '127.0.0.1', '06:07:27am', '03-02-2024', NULL, NULL),
(24, '127.0.0.1', '06:14:45am', '03-02-2024', NULL, NULL),
(25, '127.0.0.1', '06:40:29am', '03-02-2024', NULL, NULL),
(26, '127.0.0.1', '06:41:16am', '03-02-2024', NULL, NULL),
(27, '127.0.0.1', '06:42:01am', '03-02-2024', NULL, NULL),
(28, '127.0.0.1', '06:43:52am', '03-02-2024', NULL, NULL),
(29, '127.0.0.1', '06:46:26am', '03-02-2024', NULL, NULL),
(30, '127.0.0.1', '06:59:15am', '03-02-2024', NULL, NULL),
(31, '127.0.0.1', '07:03:13am', '03-02-2024', NULL, NULL),
(32, '127.0.0.1', '07:17:42am', '03-02-2024', NULL, NULL),
(33, '127.0.0.1', '09:44:12am', '03-02-2024', NULL, NULL),
(34, '127.0.0.1', '11:44:14am', '03-02-2024', NULL, NULL),
(35, '127.0.0.1', '11:44:55am', '03-02-2024', NULL, NULL),
(36, '127.0.0.1', '11:46:28am', '03-02-2024', NULL, NULL),
(37, '127.0.0.1', '11:50:23am', '03-02-2024', NULL, NULL),
(38, '127.0.0.1', '11:54:37am', '03-02-2024', NULL, NULL),
(39, '127.0.0.1', '12:02:19pm', '03-02-2024', NULL, NULL),
(40, '127.0.0.1', '12:02:42pm', '03-02-2024', NULL, NULL),
(41, '127.0.0.1', '12:04:27pm', '03-02-2024', NULL, NULL),
(42, '127.0.0.1', '12:05:50pm', '03-02-2024', NULL, NULL),
(43, '127.0.0.1', '12:08:27pm', '03-02-2024', NULL, NULL),
(44, '127.0.0.1', '12:08:46pm', '03-02-2024', NULL, NULL),
(45, '127.0.0.1', '12:09:23pm', '03-02-2024', NULL, NULL),
(46, '127.0.0.1', '12:10:09pm', '03-02-2024', NULL, NULL),
(47, '127.0.0.1', '12:10:45pm', '03-02-2024', NULL, NULL),
(48, '127.0.0.1', '12:11:17pm', '03-02-2024', NULL, NULL),
(49, '127.0.0.1', '12:13:16pm', '03-02-2024', NULL, NULL),
(50, '127.0.0.1', '12:13:35pm', '03-02-2024', NULL, NULL),
(51, '127.0.0.1', '12:14:51pm', '03-02-2024', NULL, NULL),
(52, '127.0.0.1', '12:18:09pm', '03-02-2024', NULL, NULL),
(53, '127.0.0.1', '12:18:49pm', '03-02-2024', NULL, NULL),
(54, '127.0.0.1', '12:18:54pm', '03-02-2024', NULL, NULL),
(55, '127.0.0.1', '12:19:00pm', '03-02-2024', NULL, NULL),
(56, '127.0.0.1', '12:20:01pm', '03-02-2024', NULL, NULL),
(57, '127.0.0.1', '12:23:53pm', '03-02-2024', NULL, NULL),
(58, '127.0.0.1', '12:24:03pm', '03-02-2024', NULL, NULL),
(59, '127.0.0.1', '12:25:40pm', '03-02-2024', NULL, NULL),
(60, '127.0.0.1', '12:26:23pm', '03-02-2024', NULL, NULL),
(61, '127.0.0.1', '12:26:36pm', '03-02-2024', NULL, NULL),
(62, '127.0.0.1', '12:27:36pm', '03-02-2024', NULL, NULL),
(63, '127.0.0.1', '12:28:50pm', '03-02-2024', NULL, NULL),
(64, '127.0.0.1', '12:29:35pm', '03-02-2024', NULL, NULL),
(65, '127.0.0.1', '12:37:35pm', '03-02-2024', NULL, NULL),
(66, '127.0.0.1', '12:37:36pm', '03-02-2024', NULL, NULL),
(67, '127.0.0.1', '12:37:53pm', '03-02-2024', NULL, NULL),
(68, '127.0.0.1', '12:38:04pm', '03-02-2024', NULL, NULL),
(69, '127.0.0.1', '12:38:32pm', '03-02-2024', NULL, NULL),
(70, '127.0.0.1', '12:41:43pm', '03-02-2024', NULL, NULL),
(71, '127.0.0.1', '12:42:16pm', '03-02-2024', NULL, NULL),
(72, '127.0.0.1', '12:42:53pm', '03-02-2024', NULL, NULL),
(73, '127.0.0.1', '01:05:41pm', '03-02-2024', NULL, NULL),
(74, '127.0.0.1', '02:54:44pm', '03-02-2024', NULL, NULL),
(75, '127.0.0.1', '02:54:56pm', '03-02-2024', NULL, NULL),
(76, '127.0.0.1', '02:54:58pm', '03-02-2024', NULL, NULL),
(77, '127.0.0.1', '02:55:04pm', '03-02-2024', NULL, NULL),
(78, '127.0.0.1', '02:55:08pm', '03-02-2024', NULL, NULL),
(79, '127.0.0.1', '02:55:16pm', '03-02-2024', NULL, NULL),
(80, '127.0.0.1', '02:55:18pm', '03-02-2024', NULL, NULL),
(81, '127.0.0.1', '02:58:33pm', '03-02-2024', NULL, NULL),
(82, '127.0.0.1', '02:59:47pm', '03-02-2024', NULL, NULL),
(83, '127.0.0.1', '03:09:14pm', '03-02-2024', NULL, NULL),
(84, '127.0.0.1', '03:42:16pm', '03-02-2024', NULL, NULL),
(85, '127.0.0.1', '03:42:19pm', '03-02-2024', NULL, NULL),
(86, '127.0.0.1', '03:42:33pm', '03-02-2024', NULL, NULL),
(87, '127.0.0.1', '03:42:40pm', '03-02-2024', NULL, NULL),
(88, '127.0.0.1', '03:44:54pm', '03-02-2024', NULL, NULL),
(89, '127.0.0.1', '03:54:26pm', '03-02-2024', NULL, NULL),
(90, '127.0.0.1', '03:54:32pm', '03-02-2024', NULL, NULL),
(91, '127.0.0.1', '04:05:52pm', '03-02-2024', NULL, NULL),
(92, '127.0.0.1', '04:06:59pm', '03-02-2024', NULL, NULL),
(93, '127.0.0.1', '04:07:23pm', '03-02-2024', NULL, NULL),
(94, '127.0.0.1', '04:15:56pm', '03-02-2024', NULL, NULL),
(95, '127.0.0.1', '04:15:59pm', '03-02-2024', NULL, NULL),
(96, '127.0.0.1', '04:16:50pm', '03-02-2024', NULL, NULL),
(97, '127.0.0.1', '04:16:59pm', '03-02-2024', NULL, NULL),
(98, '127.0.0.1', '04:17:36pm', '03-02-2024', NULL, NULL),
(99, '127.0.0.1', '04:45:02pm', '03-02-2024', NULL, NULL),
(100, '127.0.0.1', '04:45:09pm', '03-02-2024', NULL, NULL),
(101, '127.0.0.1', '05:00:19pm', '03-02-2024', NULL, NULL),
(102, '127.0.0.1', '05:00:24pm', '03-02-2024', NULL, NULL),
(103, '127.0.0.1', '05:00:58pm', '03-02-2024', NULL, NULL),
(104, '127.0.0.1', '05:01:05pm', '03-02-2024', NULL, NULL),
(105, '127.0.0.1', '05:02:31pm', '03-02-2024', NULL, NULL),
(106, '127.0.0.1', '05:02:41pm', '03-02-2024', NULL, NULL),
(107, '127.0.0.1', '05:03:19pm', '03-02-2024', NULL, NULL),
(108, '127.0.0.1', '05:04:16pm', '03-02-2024', NULL, NULL),
(109, '127.0.0.1', '05:04:55pm', '03-02-2024', NULL, NULL),
(110, '127.0.0.1', '05:05:56pm', '03-02-2024', NULL, NULL),
(111, '127.0.0.1', '05:08:03pm', '03-02-2024', NULL, NULL),
(112, '127.0.0.1', '05:08:05pm', '03-02-2024', NULL, NULL),
(113, '127.0.0.1', '05:08:42pm', '03-02-2024', NULL, NULL),
(114, '127.0.0.1', '05:08:46pm', '03-02-2024', NULL, NULL),
(115, '127.0.0.1', '05:09:32pm', '03-02-2024', NULL, NULL),
(116, '127.0.0.1', '05:10:29pm', '03-02-2024', NULL, NULL),
(117, '127.0.0.1', '05:12:02pm', '03-02-2024', NULL, NULL),
(118, '127.0.0.1', '05:16:55pm', '03-02-2024', NULL, NULL),
(119, '127.0.0.1', '05:19:57pm', '03-02-2024', NULL, NULL),
(120, '127.0.0.1', '05:20:01pm', '03-02-2024', NULL, NULL),
(121, '127.0.0.1', '05:20:35pm', '03-02-2024', NULL, NULL),
(122, '127.0.0.1', '05:20:39pm', '03-02-2024', NULL, NULL),
(123, '127.0.0.1', '05:21:47pm', '03-02-2024', NULL, NULL),
(124, '127.0.0.1', '05:21:53pm', '03-02-2024', NULL, NULL),
(125, '127.0.0.1', '05:22:12pm', '03-02-2024', NULL, NULL),
(126, '127.0.0.1', '05:22:15pm', '03-02-2024', NULL, NULL),
(127, '127.0.0.1', '05:22:42pm', '03-02-2024', NULL, NULL),
(128, '127.0.0.1', '05:26:10pm', '03-02-2024', NULL, NULL),
(129, '127.0.0.1', '05:31:54pm', '03-02-2024', NULL, NULL),
(130, '127.0.0.1', '05:32:50pm', '03-02-2024', NULL, NULL),
(131, '127.0.0.1', '05:38:38pm', '03-02-2024', NULL, NULL),
(132, '127.0.0.1', '05:38:59pm', '03-02-2024', NULL, NULL),
(133, '127.0.0.1', '05:39:02pm', '03-02-2024', NULL, NULL),
(134, '127.0.0.1', '05:39:09pm', '03-02-2024', NULL, NULL),
(135, '127.0.0.1', '05:39:37pm', '03-02-2024', NULL, NULL),
(136, '127.0.0.1', '05:43:01pm', '03-02-2024', NULL, NULL),
(137, '127.0.0.1', '05:44:06pm', '03-02-2024', NULL, NULL),
(138, '127.0.0.1', '05:49:34pm', '03-02-2024', NULL, NULL),
(139, '127.0.0.1', '05:52:49pm', '03-02-2024', NULL, NULL),
(140, '127.0.0.1', '05:52:53pm', '03-02-2024', NULL, NULL),
(141, '127.0.0.1', '05:53:10pm', '03-02-2024', NULL, NULL),
(142, '127.0.0.1', '06:38:11pm', '03-02-2024', NULL, NULL),
(143, '127.0.0.1', '07:01:43pm', '03-02-2024', NULL, NULL),
(144, '127.0.0.1', '07:02:24pm', '03-02-2024', NULL, NULL),
(145, '127.0.0.1', '07:03:37pm', '03-02-2024', NULL, NULL),
(146, '127.0.0.1', '07:03:45pm', '03-02-2024', NULL, NULL),
(147, '127.0.0.1', '07:03:59pm', '03-02-2024', NULL, NULL),
(148, '127.0.0.1', '07:04:26pm', '03-02-2024', NULL, NULL),
(149, '127.0.0.1', '07:07:17pm', '03-02-2024', NULL, NULL),
(150, '127.0.0.1', '07:07:29pm', '03-02-2024', NULL, NULL),
(151, '127.0.0.1', '07:18:02pm', '03-02-2024', NULL, NULL),
(152, '127.0.0.1', '07:42:52pm', '03-02-2024', NULL, NULL),
(153, '127.0.0.1', '07:43:20pm', '03-02-2024', NULL, NULL),
(154, '127.0.0.1', '07:47:23pm', '03-02-2024', NULL, NULL),
(155, '127.0.0.1', '07:50:33pm', '03-02-2024', NULL, NULL),
(156, '127.0.0.1', '07:52:51pm', '03-02-2024', NULL, NULL),
(157, '127.0.0.1', '07:55:17pm', '03-02-2024', NULL, NULL),
(158, '127.0.0.1', '08:21:45pm', '03-02-2024', NULL, NULL),
(159, '127.0.0.1', '08:22:23pm', '03-02-2024', NULL, NULL),
(160, '127.0.0.1', '08:23:29pm', '03-02-2024', NULL, NULL),
(161, '127.0.0.1', '09:17:52pm', '03-02-2024', NULL, NULL),
(162, '127.0.0.1', '09:17:55pm', '03-02-2024', NULL, NULL),
(163, '127.0.0.1', '09:18:09pm', '03-02-2024', NULL, NULL),
(164, '127.0.0.1', '09:18:11pm', '03-02-2024', NULL, NULL),
(165, '127.0.0.1', '09:18:14pm', '03-02-2024', NULL, NULL),
(166, '127.0.0.1', '09:18:16pm', '03-02-2024', NULL, NULL),
(167, '127.0.0.1', '09:18:20pm', '03-02-2024', NULL, NULL),
(168, '127.0.0.1', '09:20:26pm', '03-02-2024', NULL, NULL),
(169, '127.0.0.1', '09:20:34pm', '03-02-2024', NULL, NULL),
(170, '127.0.0.1', '09:21:58pm', '03-02-2024', NULL, NULL),
(171, '127.0.0.1', '09:24:10pm', '03-02-2024', NULL, NULL),
(172, '127.0.0.1', '09:25:56pm', '03-02-2024', NULL, NULL),
(173, '127.0.0.1', '09:29:52pm', '03-02-2024', NULL, NULL),
(174, '127.0.0.1', '09:49:02pm', '03-02-2024', NULL, NULL),
(175, '127.0.0.1', '09:49:06pm', '03-02-2024', NULL, NULL),
(176, '127.0.0.1', '09:59:58pm', '03-02-2024', NULL, NULL),
(177, '127.0.0.1', '07:20:18am', '04-02-2024', NULL, NULL),
(178, '127.0.0.1', '02:19:25pm', '04-02-2024', NULL, NULL),
(179, '127.0.0.1', '03:25:26pm', '04-02-2024', NULL, NULL),
(180, '127.0.0.1', '03:37:43pm', '04-02-2024', NULL, NULL),
(181, '127.0.0.1', '03:37:49pm', '04-02-2024', NULL, NULL),
(182, '127.0.0.1', '03:43:31pm', '04-02-2024', NULL, NULL),
(183, '127.0.0.1', '03:46:34pm', '04-02-2024', NULL, NULL),
(184, '127.0.0.1', '04:33:56pm', '04-02-2024', NULL, NULL),
(185, '127.0.0.1', '05:14:40pm', '04-02-2024', NULL, NULL),
(186, '127.0.0.1', '05:15:03pm', '04-02-2024', NULL, NULL),
(187, '127.0.0.1', '05:15:07pm', '04-02-2024', NULL, NULL),
(188, '127.0.0.1', '05:15:56pm', '04-02-2024', NULL, NULL),
(189, '127.0.0.1', '05:16:12pm', '04-02-2024', NULL, NULL),
(190, '127.0.0.1', '05:28:44pm', '04-02-2024', NULL, NULL),
(191, '127.0.0.1', '05:28:48pm', '04-02-2024', NULL, NULL),
(192, '127.0.0.1', '05:28:52pm', '04-02-2024', NULL, NULL),
(193, '127.0.0.1', '06:29:57pm', '04-02-2024', NULL, NULL),
(194, '127.0.0.1', '06:34:24pm', '04-02-2024', NULL, NULL),
(195, '127.0.0.1', '08:00:42pm', '04-02-2024', NULL, NULL),
(196, '127.0.0.1', '08:01:23pm', '04-02-2024', NULL, NULL),
(197, '127.0.0.1', '09:32:32am', '05-02-2024', NULL, NULL),
(198, '127.0.0.1', '09:32:46am', '05-02-2024', NULL, NULL),
(199, '127.0.0.1', '09:33:01am', '05-02-2024', NULL, NULL),
(200, '127.0.0.1', '09:35:24am', '05-02-2024', NULL, NULL),
(201, '127.0.0.1', '09:47:38am', '05-02-2024', NULL, NULL),
(202, '127.0.0.1', '09:47:52am', '05-02-2024', NULL, NULL),
(203, '127.0.0.1', '09:53:14am', '05-02-2024', NULL, NULL),
(204, '127.0.0.1', '09:53:19am', '05-02-2024', NULL, NULL),
(205, '127.0.0.1', '09:53:20am', '05-02-2024', NULL, NULL),
(206, '127.0.0.1', '09:53:21am', '05-02-2024', NULL, NULL),
(207, '127.0.0.1', '09:53:22am', '05-02-2024', NULL, NULL),
(208, '127.0.0.1', '09:55:13am', '05-02-2024', NULL, NULL),
(209, '127.0.0.1', '09:55:16am', '05-02-2024', NULL, NULL),
(210, '127.0.0.1', '09:55:22am', '05-02-2024', NULL, NULL),
(211, '127.0.0.1', '09:55:24am', '05-02-2024', NULL, NULL),
(212, '127.0.0.1', '09:55:27am', '05-02-2024', NULL, NULL),
(213, '127.0.0.1', '09:55:30am', '05-02-2024', NULL, NULL),
(214, '127.0.0.1', '09:56:32am', '05-02-2024', NULL, NULL),
(215, '127.0.0.1', '09:56:37am', '05-02-2024', NULL, NULL),
(216, '127.0.0.1', '09:56:42am', '05-02-2024', NULL, NULL),
(217, '127.0.0.1', '09:56:50am', '05-02-2024', NULL, NULL),
(218, '127.0.0.1', '09:56:58am', '05-02-2024', NULL, NULL),
(219, '127.0.0.1', '09:57:00am', '05-02-2024', NULL, NULL),
(220, '127.0.0.1', '09:57:34am', '05-02-2024', NULL, NULL),
(221, '127.0.0.1', '09:58:22am', '05-02-2024', NULL, NULL),
(222, '127.0.0.1', '09:58:24am', '05-02-2024', NULL, NULL),
(223, '127.0.0.1', '09:58:32am', '05-02-2024', NULL, NULL),
(224, '127.0.0.1', '09:58:37am', '05-02-2024', NULL, NULL),
(225, '127.0.0.1', '09:58:41am', '05-02-2024', NULL, NULL),
(226, '127.0.0.1', '09:58:48am', '05-02-2024', NULL, NULL),
(227, '127.0.0.1', '09:58:53am', '05-02-2024', NULL, NULL),
(228, '127.0.0.1', '09:58:55am', '05-02-2024', NULL, NULL),
(229, '127.0.0.1', '09:59:01am', '05-02-2024', NULL, NULL),
(230, '127.0.0.1', '09:59:46am', '05-02-2024', NULL, NULL),
(231, '127.0.0.1', '09:59:54am', '05-02-2024', NULL, NULL),
(232, '127.0.0.1', '10:00:02am', '05-02-2024', NULL, NULL),
(233, '127.0.0.1', '10:00:07am', '05-02-2024', NULL, NULL),
(234, '127.0.0.1', '10:00:12am', '05-02-2024', NULL, NULL),
(235, '127.0.0.1', '10:00:18am', '05-02-2024', NULL, NULL),
(236, '127.0.0.1', '10:09:14am', '05-02-2024', NULL, NULL),
(237, '127.0.0.1', '10:25:30am', '05-02-2024', NULL, NULL),
(238, '127.0.0.1', '11:24:52am', '05-02-2024', NULL, NULL),
(239, '127.0.0.1', '11:30:43am', '05-02-2024', NULL, NULL),
(240, '127.0.0.1', '11:33:06am', '05-02-2024', NULL, NULL),
(241, '127.0.0.1', '11:34:24am', '05-02-2024', NULL, NULL),
(242, '127.0.0.1', '11:43:11am', '05-02-2024', NULL, NULL),
(243, '127.0.0.1', '12:09:45pm', '05-02-2024', NULL, NULL),
(244, '127.0.0.1', '12:10:13pm', '05-02-2024', NULL, NULL),
(245, '127.0.0.1', '12:10:22pm', '05-02-2024', NULL, NULL),
(246, '127.0.0.1', '12:11:40pm', '05-02-2024', NULL, NULL),
(247, '127.0.0.1', '12:19:33pm', '05-02-2024', NULL, NULL),
(248, '127.0.0.1', '12:20:58pm', '05-02-2024', NULL, NULL),
(249, '127.0.0.1', '12:22:18pm', '05-02-2024', NULL, NULL),
(250, '127.0.0.1', '12:23:46pm', '05-02-2024', NULL, NULL),
(251, '127.0.0.1', '12:25:59pm', '05-02-2024', NULL, NULL),
(252, '127.0.0.1', '12:27:04pm', '05-02-2024', NULL, NULL),
(253, '127.0.0.1', '12:27:28pm', '05-02-2024', NULL, NULL),
(254, '127.0.0.1', '12:28:34pm', '05-02-2024', NULL, NULL),
(255, '127.0.0.1', '12:29:31pm', '05-02-2024', NULL, NULL),
(256, '127.0.0.1', '12:29:46pm', '05-02-2024', NULL, NULL),
(257, '127.0.0.1', '12:30:38pm', '05-02-2024', NULL, NULL),
(258, '127.0.0.1', '12:31:14pm', '05-02-2024', NULL, NULL),
(259, '127.0.0.1', '12:31:31pm', '05-02-2024', NULL, NULL),
(260, '127.0.0.1', '12:32:00pm', '05-02-2024', NULL, NULL),
(261, '127.0.0.1', '03:02:45pm', '05-02-2024', NULL, NULL),
(262, '127.0.0.1', '03:06:06pm', '05-02-2024', NULL, NULL),
(263, '127.0.0.1', '03:06:56pm', '05-02-2024', NULL, NULL),
(264, '127.0.0.1', '03:07:07pm', '05-02-2024', NULL, NULL),
(265, '127.0.0.1', '04:01:04pm', '05-02-2024', NULL, NULL),
(266, '127.0.0.1', '04:11:12pm', '05-02-2024', NULL, NULL),
(267, '127.0.0.1', '04:16:08pm', '05-02-2024', NULL, NULL),
(268, '127.0.0.1', '04:19:52pm', '05-02-2024', NULL, NULL),
(269, '127.0.0.1', '06:07:23pm', '05-02-2024', NULL, NULL),
(270, '127.0.0.1', '06:14:59pm', '05-02-2024', NULL, NULL),
(271, '127.0.0.1', '09:52:30am', '06-02-2024', NULL, NULL),
(272, '127.0.0.1', '11:28:54am', '06-02-2024', NULL, NULL),
(273, '127.0.0.1', '11:28:58am', '06-02-2024', NULL, NULL),
(274, '127.0.0.1', '11:32:56am', '06-02-2024', NULL, NULL),
(275, '127.0.0.1', '11:33:51am', '06-02-2024', NULL, NULL),
(276, '127.0.0.1', '11:41:59am', '06-02-2024', NULL, NULL),
(277, '127.0.0.1', '11:50:21am', '06-02-2024', NULL, NULL),
(278, '127.0.0.1', '03:35:01pm', '06-02-2024', NULL, NULL),
(279, '127.0.0.1', '03:38:10pm', '06-02-2024', NULL, NULL),
(280, '127.0.0.1', '03:54:21pm', '06-02-2024', NULL, NULL),
(281, '127.0.0.1', '03:54:21pm', '06-02-2024', NULL, NULL),
(282, '127.0.0.1', '03:58:35pm', '06-02-2024', NULL, NULL),
(283, '127.0.0.1', '04:00:01pm', '06-02-2024', NULL, NULL),
(284, '127.0.0.1', '04:03:49pm', '06-02-2024', NULL, NULL),
(285, '127.0.0.1', '04:04:48pm', '06-02-2024', NULL, NULL),
(286, '127.0.0.1', '04:06:22pm', '06-02-2024', NULL, NULL),
(287, '127.0.0.1', '04:06:22pm', '06-02-2024', NULL, NULL),
(288, '127.0.0.1', '04:06:26pm', '06-02-2024', NULL, NULL),
(289, '127.0.0.1', '04:07:51pm', '06-02-2024', NULL, NULL),
(290, '127.0.0.1', '04:08:42pm', '06-02-2024', NULL, NULL),
(291, '127.0.0.1', '04:09:55pm', '06-02-2024', NULL, NULL),
(292, '127.0.0.1', '04:10:56pm', '06-02-2024', NULL, NULL),
(293, '127.0.0.1', '04:10:56pm', '06-02-2024', NULL, NULL),
(294, '127.0.0.1', '04:13:04pm', '06-02-2024', NULL, NULL),
(295, '127.0.0.1', '04:15:54pm', '06-02-2024', NULL, NULL),
(296, '127.0.0.1', '04:24:11pm', '06-02-2024', NULL, NULL),
(297, '127.0.0.1', '04:25:17pm', '06-02-2024', NULL, NULL),
(298, '127.0.0.1', '04:26:07pm', '06-02-2024', NULL, NULL),
(299, '127.0.0.1', '04:26:07pm', '06-02-2024', NULL, NULL),
(300, '127.0.0.1', '04:26:23pm', '06-02-2024', NULL, NULL),
(301, '127.0.0.1', '04:29:07pm', '06-02-2024', NULL, NULL),
(302, '127.0.0.1', '04:31:49pm', '06-02-2024', NULL, NULL),
(303, '127.0.0.1', '04:33:22pm', '06-02-2024', NULL, NULL),
(304, '127.0.0.1', '04:35:40pm', '06-02-2024', NULL, NULL),
(305, '127.0.0.1', '04:36:11pm', '06-02-2024', NULL, NULL),
(306, '127.0.0.1', '04:38:43pm', '06-02-2024', NULL, NULL),
(307, '127.0.0.1', '04:38:43pm', '06-02-2024', NULL, NULL),
(308, '127.0.0.1', '04:55:05pm', '06-02-2024', NULL, NULL),
(309, '127.0.0.1', '05:04:45pm', '06-02-2024', NULL, NULL),
(310, '127.0.0.1', '05:10:24pm', '06-02-2024', NULL, NULL),
(311, '127.0.0.1', '05:10:27pm', '06-02-2024', NULL, NULL),
(312, '127.0.0.1', '05:10:33pm', '06-02-2024', NULL, NULL),
(313, '127.0.0.1', '05:11:15pm', '06-02-2024', NULL, NULL),
(314, '127.0.0.1', '05:11:58pm', '06-02-2024', NULL, NULL),
(315, '127.0.0.1', '05:12:16pm', '06-02-2024', NULL, NULL),
(316, '127.0.0.1', '05:12:58pm', '06-02-2024', NULL, NULL),
(317, '127.0.0.1', '05:19:38pm', '06-02-2024', NULL, NULL),
(318, '127.0.0.1', '06:38:18pm', '06-02-2024', NULL, NULL),
(319, '127.0.0.1', '06:38:34pm', '06-02-2024', NULL, NULL),
(320, '127.0.0.1', '06:39:53pm', '06-02-2024', NULL, NULL),
(321, '127.0.0.1', '06:40:57pm', '06-02-2024', NULL, NULL),
(322, '127.0.0.1', '06:46:31pm', '06-02-2024', NULL, NULL),
(323, '127.0.0.1', '07:06:57pm', '06-02-2024', NULL, NULL),
(324, '127.0.0.1', '07:06:57pm', '06-02-2024', NULL, NULL),
(325, '127.0.0.1', '07:10:31pm', '06-02-2024', NULL, NULL),
(326, '127.0.0.1', '07:34:38pm', '06-02-2024', NULL, NULL),
(327, '127.0.0.1', '07:34:38pm', '06-02-2024', NULL, NULL),
(328, '127.0.0.1', '07:34:52pm', '06-02-2024', NULL, NULL),
(329, '127.0.0.1', '07:35:08pm', '06-02-2024', NULL, NULL),
(330, '127.0.0.1', '06:13:40am', '07-02-2024', NULL, NULL),
(331, '127.0.0.1', '06:18:17am', '07-02-2024', NULL, NULL),
(332, '127.0.0.1', '06:34:41am', '07-02-2024', NULL, NULL),
(333, '127.0.0.1', '10:40:11am', '07-02-2024', NULL, NULL),
(334, '127.0.0.1', '11:11:56am', '07-02-2024', NULL, NULL),
(335, '127.0.0.1', '11:12:05am', '07-02-2024', NULL, NULL),
(336, '127.0.0.1', '11:12:08am', '07-02-2024', NULL, NULL),
(337, '127.0.0.1', '03:24:04pm', '07-02-2024', NULL, NULL),
(338, '127.0.0.1', '03:24:54pm', '07-02-2024', NULL, NULL),
(339, '127.0.0.1', '03:25:31pm', '07-02-2024', NULL, NULL),
(340, '127.0.0.1', '03:26:19pm', '07-02-2024', NULL, NULL),
(341, '127.0.0.1', '03:31:47pm', '07-02-2024', NULL, NULL),
(342, '127.0.0.1', '03:50:33pm', '07-02-2024', NULL, NULL),
(343, '127.0.0.1', '03:52:04pm', '07-02-2024', NULL, NULL),
(344, '127.0.0.1', '03:53:39pm', '07-02-2024', NULL, NULL),
(345, '127.0.0.1', '03:54:02pm', '07-02-2024', NULL, NULL),
(346, '127.0.0.1', '03:56:10pm', '07-02-2024', NULL, NULL),
(347, '127.0.0.1', '04:01:32pm', '07-02-2024', NULL, NULL),
(348, '127.0.0.1', '04:02:40pm', '07-02-2024', NULL, NULL),
(349, '127.0.0.1', '04:04:40pm', '07-02-2024', NULL, NULL),
(350, '127.0.0.1', '04:05:54pm', '07-02-2024', NULL, NULL),
(351, '127.0.0.1', '04:06:44pm', '07-02-2024', NULL, NULL),
(352, '127.0.0.1', '04:06:44pm', '07-02-2024', NULL, NULL),
(353, '127.0.0.1', '04:07:46pm', '07-02-2024', NULL, NULL),
(354, '127.0.0.1', '04:07:46pm', '07-02-2024', NULL, NULL),
(355, '127.0.0.1', '04:09:36pm', '07-02-2024', NULL, NULL),
(356, '127.0.0.1', '04:14:16pm', '07-02-2024', NULL, NULL),
(357, '127.0.0.1', '04:17:20pm', '07-02-2024', NULL, NULL),
(358, '127.0.0.1', '04:19:45pm', '07-02-2024', NULL, NULL),
(359, '127.0.0.1', '04:20:33pm', '07-02-2024', NULL, NULL),
(360, '127.0.0.1', '04:21:09pm', '07-02-2024', NULL, NULL),
(361, '127.0.0.1', '04:21:49pm', '07-02-2024', NULL, NULL),
(362, '127.0.0.1', '04:21:50pm', '07-02-2024', NULL, NULL),
(363, '127.0.0.1', '04:21:53pm', '07-02-2024', NULL, NULL),
(364, '127.0.0.1', '04:23:03pm', '07-02-2024', NULL, NULL),
(365, '127.0.0.1', '04:23:29pm', '07-02-2024', NULL, NULL),
(366, '127.0.0.1', '05:16:50pm', '07-02-2024', NULL, NULL),
(367, '127.0.0.1', '06:02:53pm', '07-02-2024', NULL, NULL),
(368, '127.0.0.1', '06:02:53pm', '07-02-2024', NULL, NULL),
(369, '127.0.0.1', '07:03:46pm', '07-02-2024', NULL, NULL),
(370, '127.0.0.1', '07:03:47pm', '07-02-2024', NULL, NULL),
(371, '127.0.0.1', '07:03:48pm', '07-02-2024', NULL, NULL),
(372, '127.0.0.1', '07:05:14pm', '07-02-2024', NULL, NULL),
(373, '127.0.0.1', '07:06:12pm', '07-02-2024', NULL, NULL),
(374, '127.0.0.1', '07:06:24pm', '07-02-2024', NULL, NULL),
(375, '127.0.0.1', '07:12:18pm', '07-02-2024', NULL, NULL),
(376, '127.0.0.1', '07:13:16pm', '07-02-2024', NULL, NULL),
(377, '127.0.0.1', '07:15:40pm', '07-02-2024', NULL, NULL),
(378, '127.0.0.1', '07:15:40pm', '07-02-2024', NULL, NULL),
(379, '127.0.0.1', '07:15:49pm', '07-02-2024', NULL, NULL),
(380, '127.0.0.1', '07:44:53pm', '07-02-2024', NULL, NULL),
(381, '127.0.0.1', '07:44:54pm', '07-02-2024', NULL, NULL),
(382, '127.0.0.1', '07:44:57pm', '07-02-2024', NULL, NULL),
(383, '127.0.0.1', '07:45:00pm', '07-02-2024', NULL, NULL),
(384, '127.0.0.1', '07:48:49pm', '07-02-2024', NULL, NULL),
(385, '127.0.0.1', '07:48:50pm', '07-02-2024', NULL, NULL),
(386, '127.0.0.1', '07:49:02pm', '07-02-2024', NULL, NULL),
(387, '127.0.0.1', '07:49:03pm', '07-02-2024', NULL, NULL),
(388, '127.0.0.1', '08:43:23pm', '07-02-2024', NULL, NULL),
(389, '127.0.0.1', '08:47:15pm', '07-02-2024', NULL, NULL),
(390, '127.0.0.1', '08:47:16pm', '07-02-2024', NULL, NULL),
(391, '127.0.0.1', '08:47:20pm', '07-02-2024', NULL, NULL),
(392, '127.0.0.1', '08:50:21pm', '07-02-2024', NULL, NULL),
(393, '127.0.0.1', '08:50:22pm', '07-02-2024', NULL, NULL),
(394, '127.0.0.1', '08:53:05pm', '07-02-2024', NULL, NULL),
(395, '127.0.0.1', '08:53:09pm', '07-02-2024', NULL, NULL),
(396, '127.0.0.1', '08:53:14pm', '07-02-2024', NULL, NULL),
(397, '127.0.0.1', '08:53:19pm', '07-02-2024', NULL, NULL),
(398, '127.0.0.1', '08:54:21pm', '07-02-2024', NULL, NULL),
(399, '127.0.0.1', '08:54:22pm', '07-02-2024', NULL, NULL),
(400, '127.0.0.1', '09:01:49pm', '07-02-2024', NULL, NULL),
(401, '127.0.0.1', '09:03:49pm', '07-02-2024', NULL, NULL),
(402, '127.0.0.1', '09:04:07pm', '07-02-2024', NULL, NULL),
(403, '127.0.0.1', '09:04:22pm', '07-02-2024', NULL, NULL),
(404, '127.0.0.1', '09:04:38pm', '07-02-2024', NULL, NULL),
(405, '127.0.0.1', '09:11:11pm', '07-02-2024', NULL, NULL),
(406, '127.0.0.1', '09:43:13pm', '07-02-2024', NULL, NULL),
(407, '127.0.0.1', '09:43:15pm', '07-02-2024', NULL, NULL),
(408, '127.0.0.1', '09:44:12pm', '07-02-2024', NULL, NULL),
(409, '127.0.0.1', '09:44:12pm', '07-02-2024', NULL, NULL),
(410, '127.0.0.1', '10:21:35pm', '07-02-2024', NULL, NULL),
(411, '127.0.0.1', '12:39:29pm', '08-02-2024', NULL, NULL),
(412, '127.0.0.1', '12:39:33pm', '08-02-2024', NULL, NULL),
(413, '127.0.0.1', '03:21:39pm', '08-02-2024', NULL, NULL),
(414, '127.0.0.1', '03:48:03pm', '08-02-2024', NULL, NULL),
(415, '127.0.0.1', '03:48:26pm', '08-02-2024', NULL, NULL),
(416, '127.0.0.1', '03:48:30pm', '08-02-2024', NULL, NULL),
(417, '127.0.0.1', '03:51:28pm', '08-02-2024', NULL, NULL),
(418, '127.0.0.1', '04:10:55pm', '08-02-2024', NULL, NULL),
(419, '127.0.0.1', '04:10:56pm', '08-02-2024', NULL, NULL),
(420, '127.0.0.1', '04:15:12pm', '08-02-2024', NULL, NULL),
(421, '127.0.0.1', '04:41:07pm', '08-02-2024', NULL, NULL),
(422, '127.0.0.1', '04:41:08pm', '08-02-2024', NULL, NULL),
(423, '127.0.0.1', '04:43:37pm', '08-02-2024', NULL, NULL),
(424, '127.0.0.1', '04:44:26pm', '08-02-2024', NULL, NULL),
(425, '127.0.0.1', '06:14:08pm', '08-02-2024', NULL, NULL),
(426, '127.0.0.1', '06:14:13pm', '08-02-2024', NULL, NULL),
(427, '127.0.0.1', '06:27:47pm', '08-02-2024', NULL, NULL),
(428, '127.0.0.1', '06:27:51pm', '08-02-2024', NULL, NULL),
(429, '127.0.0.1', '05:41:42pm', '09-02-2024', NULL, NULL),
(430, '127.0.0.1', '08:03:24am', '10-02-2024', NULL, NULL),
(431, '127.0.0.1', '08:24:30am', '10-02-2024', NULL, NULL),
(432, '127.0.0.1', '10:17:22am', '10-02-2024', NULL, NULL),
(433, '127.0.0.1', '07:29:51pm', '10-02-2024', NULL, NULL),
(434, '127.0.0.1', '09:34:08pm', '10-02-2024', NULL, NULL),
(435, '127.0.0.1', '09:35:48pm', '10-02-2024', NULL, NULL),
(436, '127.0.0.1', '09:35:59pm', '10-02-2024', NULL, NULL),
(437, '127.0.0.1', '09:36:08pm', '10-02-2024', NULL, NULL),
(438, '127.0.0.1', '09:37:03pm', '10-02-2024', NULL, NULL),
(439, '127.0.0.1', '09:38:05pm', '10-02-2024', NULL, NULL),
(440, '127.0.0.1', '09:38:11pm', '10-02-2024', NULL, NULL),
(441, '127.0.0.1', '09:38:22pm', '10-02-2024', NULL, NULL),
(442, '127.0.0.1', '09:52:36pm', '10-02-2024', NULL, NULL),
(443, '127.0.0.1', '07:19:11am', '11-02-2024', NULL, NULL),
(444, '127.0.0.1', '07:41:23am', '11-02-2024', NULL, NULL),
(445, '127.0.0.1', '02:21:52pm', '11-02-2024', NULL, NULL),
(446, '127.0.0.1', '06:49:54pm', '19-02-2024', NULL, NULL),
(447, '127.0.0.1', '06:51:02pm', '19-02-2024', NULL, NULL),
(448, '127.0.0.1', '06:52:23pm', '19-02-2024', NULL, NULL),
(449, '127.0.0.1', '06:52:59pm', '19-02-2024', NULL, NULL),
(450, '127.0.0.1', '06:54:36pm', '19-02-2024', NULL, NULL),
(451, '127.0.0.1', '06:56:55pm', '19-02-2024', NULL, NULL),
(452, '127.0.0.1', '07:03:11pm', '19-02-2024', NULL, NULL),
(453, '127.0.0.1', '07:09:18pm', '19-02-2024', NULL, NULL),
(454, '127.0.0.1', '07:09:24pm', '19-02-2024', NULL, NULL),
(455, '127.0.0.1', '07:36:34pm', '19-02-2024', NULL, NULL),
(456, '127.0.0.1', '08:41:08pm', '19-02-2024', NULL, NULL),
(457, '127.0.0.1', '08:41:08pm', '19-02-2024', NULL, NULL),
(458, '127.0.0.1', '08:41:26pm', '19-02-2024', NULL, NULL),
(459, '127.0.0.1', '09:49:29pm', '19-02-2024', NULL, NULL),
(460, '127.0.0.1', '09:49:30pm', '19-02-2024', NULL, NULL),
(461, '127.0.0.1', '09:50:01pm', '19-02-2024', NULL, NULL),
(462, '127.0.0.1', '09:50:02pm', '19-02-2024', NULL, NULL),
(463, '127.0.0.1', '05:43:21am', '20-02-2024', NULL, NULL),
(464, '127.0.0.1', '05:43:22am', '20-02-2024', NULL, NULL),
(465, '127.0.0.1', '05:12:36pm', '20-02-2024', NULL, NULL),
(466, '127.0.0.1', '05:12:37pm', '20-02-2024', NULL, NULL),
(467, '127.0.0.1', '05:27:27pm', '20-02-2024', NULL, NULL),
(468, '127.0.0.1', '05:29:28pm', '20-02-2024', NULL, NULL),
(469, '127.0.0.1', '05:30:15pm', '20-02-2024', NULL, NULL),
(470, '127.0.0.1', '05:31:34pm', '20-02-2024', NULL, NULL),
(471, '127.0.0.1', '05:33:01pm', '20-02-2024', NULL, NULL),
(472, '127.0.0.1', '05:34:16pm', '20-02-2024', NULL, NULL),
(473, '127.0.0.1', '05:34:34pm', '20-02-2024', NULL, NULL),
(474, '127.0.0.1', '05:41:17pm', '20-02-2024', NULL, NULL),
(475, '127.0.0.1', '05:41:45pm', '20-02-2024', NULL, NULL),
(476, '127.0.0.1', '08:07:48pm', '20-02-2024', NULL, NULL),
(477, '127.0.0.1', '08:08:11pm', '20-02-2024', NULL, NULL),
(478, '127.0.0.1', '09:35:02pm', '20-02-2024', NULL, NULL),
(479, '127.0.0.1', '10:24:04pm', '20-02-2024', NULL, NULL),
(480, '127.0.0.1', '11:18:23pm', '20-02-2024', NULL, NULL),
(481, '127.0.0.1', '07:56:15am', '21-02-2024', NULL, NULL),
(482, '127.0.0.1', '07:56:15am', '21-02-2024', NULL, NULL),
(483, '127.0.0.1', '07:57:12am', '21-02-2024', NULL, NULL),
(484, '127.0.0.1', '08:07:09am', '21-02-2024', NULL, NULL),
(485, '127.0.0.1', '08:08:12am', '21-02-2024', NULL, NULL),
(486, '127.0.0.1', '08:19:45am', '21-02-2024', NULL, NULL),
(487, '127.0.0.1', '08:21:28am', '21-02-2024', NULL, NULL),
(488, '127.0.0.1', '08:21:30am', '21-02-2024', NULL, NULL),
(489, '127.0.0.1', '08:30:20am', '21-02-2024', NULL, NULL),
(490, '127.0.0.1', '08:42:31am', '21-02-2024', NULL, NULL),
(491, '127.0.0.1', '08:45:13am', '21-02-2024', NULL, NULL),
(492, '127.0.0.1', '04:41:19pm', '21-02-2024', NULL, NULL),
(493, '127.0.0.1', '05:02:40pm', '21-02-2024', NULL, NULL),
(494, '127.0.0.1', '05:09:29pm', '21-02-2024', NULL, NULL),
(495, '127.0.0.1', '05:09:46pm', '21-02-2024', NULL, NULL),
(496, '127.0.0.1', '05:25:36pm', '21-02-2024', NULL, NULL),
(497, '127.0.0.1', '05:31:12pm', '21-02-2024', NULL, NULL),
(498, '127.0.0.1', '05:36:15pm', '21-02-2024', NULL, NULL),
(499, '127.0.0.1', '05:47:55pm', '21-02-2024', NULL, NULL),
(500, '127.0.0.1', '05:53:12pm', '21-02-2024', NULL, NULL),
(501, '127.0.0.1', '05:56:41pm', '21-02-2024', NULL, NULL),
(502, '127.0.0.1', '05:57:03pm', '21-02-2024', NULL, NULL),
(503, '127.0.0.1', '05:57:38pm', '21-02-2024', NULL, NULL),
(504, '127.0.0.1', '06:35:31pm', '21-02-2024', NULL, NULL),
(505, '127.0.0.1', '07:42:03pm', '21-02-2024', NULL, NULL),
(506, '127.0.0.1', '07:44:39pm', '21-02-2024', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
