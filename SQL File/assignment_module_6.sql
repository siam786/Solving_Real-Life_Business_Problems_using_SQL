-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2023 at 07:25 PM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 1, '2023-11-02 18:13:27', '2023-11-02 18:13:27'),
(2, 'Laptop', 2, '2023-11-02 18:13:56', '2023-11-02 18:13:56'),
(3, 'Desktop', 3, '2023-11-02 18:14:14', '2023-11-02 18:14:14'),
(4, 'TV', 4, '2023-11-02 18:14:31', '2023-11-02 18:14:31'),
(5, 'Water', 5, '2023-11-02 18:14:47', '2023-11-02 18:14:47'),
(6, 'Monitor', 6, '2023-11-02 18:15:04', '2023-11-02 18:15:04'),
(7, 'Mouse', 7, '2023-11-02 18:15:20', '2023-11-02 18:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'siam', 'siam@mail.com', 'Dhaka', '2023-11-02 18:06:56', '2023-11-02 18:06:56'),
(2, 'Rahim', 'rahim@mail.com', 'Rangpur', '2023-11-02 18:07:16', '2023-11-02 18:07:16'),
(3, 'Karim', 'karim@mail.com', 'Jessore', '2023-11-02 18:07:37', '2023-11-02 18:07:37'),
(4, 'Jisan', 'jisan@mail.com', 'Pabna', '2023-11-02 18:08:03', '2023-11-02 18:08:03'),
(5, 'Shahriar', 'shahriar@mail.com', 'Khulna', '2023-11-02 18:08:27', '2023-11-02 18:08:27'),
(6, 'Fahim', 'fahim@mail.com', 'Natore', '2023-11-02 18:08:47', '2023-11-02 18:08:47'),
(7, 'Naim', 'naim@mail.com', 'Rnagpur', '2023-11-02 18:09:10', '2023-11-02 18:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `total_amount`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '2010-05-23', '5000.00', 1, '2023-11-02 18:41:35', '2023-11-02 18:41:35'),
(2, '2011-06-23', '7000.00', 2, '2023-11-02 18:42:11', '2023-11-02 18:42:11'),
(3, '2019-07-23', '6500.00', 3, '2023-11-02 18:42:37', '2023-11-02 18:42:37'),
(4, '2025-07-23', '8500.00', 4, '2023-11-02 18:42:55', '2023-11-02 18:42:55'),
(5, '2025-06-23', '9000.00', 5, '2023-11-02 18:43:14', '2023-11-02 18:43:14'),
(6, '2022-07-23', '4500.00', 6, '2023-11-02 18:43:36', '2023-11-02 18:43:36'),
(7, '2027-08-23', '9700.00', 7, '2023-11-02 18:43:54', '2023-11-02 18:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '5', '500.00', '2023-11-02 18:44:42', '2023-11-02 18:44:42'),
(2, 2, 2, '1', '2000.00', '2023-11-02 18:45:21', '2023-11-02 18:45:21'),
(3, 3, 3, '3', '1500.00', '2023-11-02 18:45:49', '2023-11-02 18:45:49'),
(4, 4, 4, '2', '2200.00', '2023-11-02 18:46:21', '2023-11-02 18:46:21'),
(5, 5, 5, '10', '300.00', '2023-11-02 18:46:50', '2023-11-02 18:46:50'),
(6, 6, 6, '3', '1800.00', '2023-11-02 18:47:29', '2023-11-02 18:47:29'),
(7, 7, 7, '6', '700.00', '2023-11-02 18:47:59', '2023-11-02 18:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `customer_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'POLO T-shirt', 'POLO T-shirt  ', '500.00', 1, 1, '2023-11-02 18:34:59', '2023-11-02 18:34:59'),
(2, 'ASUS Laptop', 'Asus Laptop', '2000.00', 2, 2, '2023-11-02 18:36:06', '2023-11-02 18:36:06'),
(3, 'DELL Destop', 'Dell Desktop', '1500.00', 3, 3, '2023-11-02 18:37:03', '2023-11-02 18:37:03'),
(4, 'LG TV', 'Lg Tv', '1700.00', 4, 4, '2023-11-02 18:37:49', '2023-11-02 18:37:49'),
(5, 'Drinking Water', 'Drinking Water ', '400.00', 5, 5, '2023-11-02 18:38:43', '2023-11-02 18:38:43'),
(6, 'HP MONITOR', 'Hp Monitor', '2500.00', 6, 6, '2023-11-02 18:39:42', '2023-11-02 18:39:42'),
(7, 'Logestic Mouse', 'Logestic Mouse', '1200.00', 7, 7, '2023-11-02 18:40:27', '2023-11-02 18:40:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
