-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 06:32 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmadah1_shopping-cart`
--
CREATE DATABASE IF NOT EXISTS `ahmadah1_shopping-cart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ahmadah1_shopping-cart`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'laptops', 'contains many types of laptops and PCs', '2016-09-24 16:04:13', '2016-09-24 16:04:13'),
(2, 'Cameras', 'contains many types of moderns cameras', '2016-09-24 16:04:13', '2016-09-24 16:04:13'),
(3, 'Servers', 'contains many types of moderns Servers used to managing Networks', '2016-09-24 16:04:13', '2016-09-24 16:04:13'),
(4, 'laptops', 'contains many types of laptops and PCs', '2016-09-24 16:06:44', '2016-09-24 16:06:44'),
(5, 'Cameras', 'contains many types of moderns cameras', '2016-09-24 16:06:44', '2016-09-24 16:06:44'),
(6, 'Servers linux', 'contains many types of moderns Servers used to managing Networks', '2016-09-24 16:06:44', '2016-09-25 05:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_05_13_074706_create_products_table', 1),
('2016_05_26_075850_create_user_table', 1),
('2016_07_14_065415_create_orders_table', 1),
('2016_08_25_164409_create_categories_table', 1),
('2016_10_23_212236_AprioriProducts', 2),
('2016_10_23_213323_crate_AprioriProducts_table', 3),
('2016_10_23_215144_create_table_Apriori_Products', 4),
('2016_10_23_215933_crate_AprioriProducts_table', 5),
('2016_10_23_220450_create_table_pi_products', 6),
('2016_10_24_072939_create_table_transactions', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(18, '2016-10-26 21:15:12', '2016-10-26 21:15:12', 2, 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:206;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:11:"\0*\0original";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:206;}', 'asdf', 'asdf', ''),
(19, '2016-10-27 17:02:31', '2016-10-27 17:02:31', 2, 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:1900;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:07";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:7:"servers";s:11:"description";s:233:"Qihoo 360 and Hewlett Packard Enterprise Deploy Massive Cloud Services \r\n\r\nChina’s largest internet security company, serving hundreds of millions of users and over 70 billion user queries a day, keeps growing with HPE Cloudline.\r\n";s:5:"price";i:1900;}s:11:"\0*\0original";a:8:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:07";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:7:"servers";s:11:"description";s:233:"Qihoo 360 and Hewlett Packard Enterprise Deploy Massive Cloud Services \r\n\r\nChina’s largest internet security company, serving hundreds of millions of users and over 70 billion user queries a day, keeps growing with HPE Cloudline.\r\n";s:5:"price";i:1900;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:1900;}', 'asdfads', 'asdfasdf', ''),
(17, '2016-10-26 07:47:23', '2016-10-26 07:47:23', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:6;a:3:{s:3:"qty";i:1;s:5:"price";i:607;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:6;s:10:"created_at";s:19:"2016-09-24 19:06:44";s:10:"updated_at";s:19:"2016-10-24 07:50:42";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:6:"camera";s:11:"description";s:319:"oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.";s:5:"price";i:607;}s:11:"\0*\0original";a:8:{s:2:"id";i:6;s:10:"created_at";s:19:"2016-09-24 19:06:44";s:10:"updated_at";s:19:"2016-10-24 07:50:42";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:6:"camera";s:11:"description";s:319:"oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.";s:5:"price";i:607;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:105;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:712;}', 'asdf', 'asdf', ''),
(16, '2016-10-26 07:47:04', '2016-10-26 07:47:04', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:3:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:105;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:6;a:3:{s:3:"qty";i:1;s:5:"price";i:607;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:6;s:10:"created_at";s:19:"2016-09-24 19:06:44";s:10:"updated_at";s:19:"2016-10-24 07:50:42";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:6:"camera";s:11:"description";s:319:"oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.";s:5:"price";i:607;}s:11:"\0*\0original";a:8:{s:2:"id";i:6;s:10:"created_at";s:19:"2016-09-24 19:06:44";s:10:"updated_at";s:19:"2016-10-24 07:50:42";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:6:"camera";s:11:"description";s:319:"oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.";s:5:"price";i:607;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:206;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:11:"\0*\0original";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:918;}', 'asdf', 'asdf', ''),
(15, '2016-10-26 07:46:47', '2016-10-26 07:46:47', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:3:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:105;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:206;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:11:"\0*\0original";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:6;a:3:{s:3:"qty";i:1;s:5:"price";i:607;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:6;s:10:"created_at";s:19:"2016-09-24 19:06:44";s:10:"updated_at";s:19:"2016-10-24 07:50:42";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:6:"camera";s:11:"description";s:319:"oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.";s:5:"price";i:607;}s:11:"\0*\0original";a:8:{s:2:"id";i:6;s:10:"created_at";s:19:"2016-09-24 19:06:44";s:10:"updated_at";s:19:"2016-10-24 07:50:42";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:6:"camera";s:11:"description";s:319:"oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.";s:5:"price";i:607;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:918;}', 'asdf', 'asdf', ''),
(14, '2016-10-26 07:45:52', '2016-10-26 07:45:52', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:105;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:206;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:11:"\0*\0original";a:8:{s:2:"id";i:3;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:32";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image4.jpg";s:5:"title";s:8:"keyboard";s:11:"description";s:419:"he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.";s:5:"price";i:206;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:311;}', 'asdf', 'aa', ''),
(12, '2016-10-26 07:10:35', '2016-10-26 07:10:35', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:105;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:14";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image3.jpg";s:5:"title";s:6:"screen";s:11:"description";s:182:"His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.";s:5:"price";i:105;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:4;a:3:{s:3:"qty";i:1;s:5:"price";i:20;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:4;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:51:00";s:11:"category_id";i:2;s:9:"imagePath";s:10:"image5.jpg";s:5:"title";s:6:"Router";s:11:"description";s:27:"No one is going to survive!";s:5:"price";i:20;}s:11:"\0*\0original";a:8:{s:2:"id";i:4;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:51:00";s:11:"category_id";i:2;s:9:"imagePath";s:10:"image5.jpg";s:5:"title";s:6:"Router";s:11:"description";s:27:"No one is going to survive!";s:5:"price";i:20;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:125;}', 'iraq bghadad', 'ahmad', ''),
(13, '2016-10-26 07:11:43', '2016-10-26 07:11:43', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:11;a:3:{s:3:"qty";i:1;s:5:"price";i:0;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:11;s:10:"created_at";s:19:"2016-09-25 08:03:20";s:10:"updated_at";s:19:"2016-09-25 08:03:20";s:11:"category_id";i:6;s:9:"imagePath";s:0:"";s:5:"title";s:4:"kali";s:11:"description";s:0:"";s:5:"price";i:0;}s:11:"\0*\0original";a:8:{s:2:"id";i:11;s:10:"created_at";s:19:"2016-09-25 08:03:20";s:10:"updated_at";s:19:"2016-09-25 08:03:20";s:11:"category_id";i:6;s:9:"imagePath";s:0:"";s:5:"title";s:4:"kali";s:11:"description";s:0:"";s:5:"price";i:0;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:1900;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:07";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:7:"servers";s:11:"description";s:233:"Qihoo 360 and Hewlett Packard Enterprise Deploy Massive Cloud Services \r\n\r\nChina’s largest internet security company, serving hundreds of millions of users and over 70 billion user queries a day, keeps growing with HPE Cloudline.\r\n";s:5:"price";i:1900;}s:11:"\0*\0original";a:8:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-24 19:04:13";s:10:"updated_at";s:19:"2016-10-24 07:50:07";s:11:"category_id";i:1;s:9:"imagePath";s:10:"image2.jpg";s:5:"title";s:7:"servers";s:11:"description";s:233:"Qihoo 360 and Hewlett Packard Enterprise Deploy Massive Cloud Services \r\n\r\nChina’s largest internet security company, serving hundreds of millions of users and over 70 billion user queries a day, keeps growing with HPE Cloudline.\r\n";s:5:"price";i:1900;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:1900;}', 'iraq', 'ahmad', '');

-- --------------------------------------------------------

--
-- Table structure for table `pi_products`
--

CREATE TABLE `pi_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brought` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recommend` text COLLATE utf8_unicode_ci NOT NULL,
  `confidence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pi_products`
--

INSERT INTO `pi_products` (`id`, `brought`, `recommend`, `confidence`, `created_at`, `updated_at`) VALUES
(1, 'kali', 'camera', '75', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(2, 'servers', 'Router', '66.67', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(3, 'Router', 'servers', '80', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(4, 'keyboard', 'camera', '50', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(5, 'keyboard', 'screen', '50', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(6, 'screen', 'camera', '50', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(7, 'screen', 'keyboard', '50', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(8, 'screen,keyboard', 'camera', '66.67', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(9, 'screen,camera', 'keyboard', '66.67', '2016-11-04 16:12:27', '2016-11-04 16:12:27'),
(10, 'keyboard,camera', 'screen', '66.67', '2016-11-04 16:12:27', '2016-11-04 16:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `category_id`, `imagePath`, `title`, `description`, `price`) VALUES
(1, '2016-09-24 16:04:13', '2016-10-24 04:50:07', 1, 'image2.jpg', 'servers', 'Qihoo 360 and Hewlett Packard Enterprise Deploy Massive Cloud Services \r\n\r\nChina’s largest internet security company, serving hundreds of millions of users and over 70 billion user queries a day, keeps growing with HPE Cloudline.\r\n', 1900),
(2, '2016-09-24 16:04:13', '2016-10-24 04:50:14', 1, 'image3.jpg', 'screen', 'His organization is a large EMC and VMware customer and with VCE\'s Vblock, Cisco had a strong relationship with EMC and VMware -- something he feels has waned in the past six months.', 105),
(3, '2016-09-24 16:04:13', '2016-10-24 04:50:32', 1, 'image4.jpg', 'keyboard', 'he acquisition of VMware, long the leader in virtualization, could offer Dell a major advantage over HP, but officials from both companies this week did not clearly spell out what strategic role VMware would play, except to convey that Dell has no plans to change VMware\'s strategic course. If this hands-off approach, at least for the short term, plays out, some analysts think it will serve both VMware and Dell well.', 206),
(4, '2016-09-24 16:04:13', '2016-10-24 04:51:00', 2, 'image5.jpg', 'Router', 'No one is going to survive!', 20),
(6, '2016-09-24 16:06:44', '2016-10-24 04:50:42', 1, 'image2.jpg', 'camera', 'oT data originates remotely, often from equipment at the edge that emits analog data in industries like energy, manufacturing and utilities. Outside the traditional data center or cloud, the edge is in the field, on a plant floor, at an oil rig or copper mine—generating business, engineering and scientific insights.', 607),
(11, '2016-09-25 05:03:20', '2016-09-25 05:03:20', 6, '', 'kali', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `title`, `title2`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(57, '11,1', 'screen,keyboard', '', '1', 'just descriptions', '2016-10-26 07:11:43', '2016-10-26 07:11:43'),
(58, '2,3', 'kali', '', '1', 'just descriptions', '2016-10-26 07:45:52', '2016-10-26 07:45:52'),
(59, '2,3,6', 'screen,keyboard,camera', '', '1', 'just descriptions', '2016-10-26 07:46:47', '2016-10-26 07:46:47'),
(56, '2,4', 'screen,Router', '', '1', 'just descriptions', '2016-10-26 07:10:35', '2016-10-26 07:10:35'),
(55, '1,6', 'servers,camera', '', '1', 'just descriptions', '2016-10-24 18:36:28', '2016-10-24 18:36:28'),
(54, '11,6', 'kali,camera', '', '1', 'just descriptions', '2016-10-24 18:36:10', '2016-10-24 18:36:10'),
(46, '2,6', 'screen camera', '', '1', 'just descriptions', '2016-10-24 18:13:24', '2016-10-24 18:13:24'),
(47, '1,2,4', 'servers,screen,Router', '', '1', 'just descriptions', '2016-10-24 18:33:54', '2016-10-24 18:33:54'),
(48, '1,3,4', 'servers,keyboard,Router', '', '1', 'just descriptions', '2016-10-24 18:34:21', '2016-10-24 18:34:21'),
(49, '1,4', 'servers,Router', '', '1', 'just descriptions', '2016-10-24 18:34:36', '2016-10-24 18:34:36'),
(50, '1,4', 'servers,Router', '', '1', 'just descriptions', '2016-10-24 18:34:51', '2016-10-24 18:34:51'),
(51, '6,11', 'camera kali', '', '1', 'just descriptions', '2016-10-24 18:35:11', '2016-10-24 18:35:11'),
(52, '6,11', 'camera,kali', '', '1', 'just descriptions', '2016-10-24 18:35:27', '2016-10-24 18:35:27'),
(53, '6,3,11', 'camera,keyboard,kali', '', '1', 'just descriptions', '2016-10-24 18:35:44', '2016-10-24 18:35:44'),
(60, '2,6,3', 'screen,camera,keyboard', '', '1', 'just descriptions', '2016-10-26 07:47:04', '2016-10-26 07:47:04'),
(61, '6,2', 'camera,screen', '', '1', 'just descriptions', '2016-10-26 07:47:23', '2016-10-26 07:47:23'),
(62, '3', 'keyboard', '', '2', 'just descriptions', '2016-10-26 21:15:12', '2016-10-26 21:15:12'),
(63, '1', 'servers', '', '2', 'just descriptions', '2016-10-27 17:02:31', '2016-10-27 17:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `remember_token`) VALUES
(1, '2016-09-24 16:51:02', '2016-10-26 21:05:04', 'a@yahoo.com', '$2y$10$2lnP/8uIHzXu/97XdzTTfe0VybajhAW9gwVd65PeVPAG7UlvFPF1q', '2EMYtUBGh6NJii1tGqZvb3FLR30TLsaspmOksAgcHDRaKqThjxIK8yiZC4Nn'),
(2, '2016-10-26 21:13:53', '2016-10-27 17:37:36', 'b@yahoo.com', '$2y$10$da4PRzSevxhUhbUNgJtYquGcUVUiL.7A3Q3aj/lp8Qi/tV1Di2QOO', 'omPbfoPP5nT69qAFH20ns8T9muPUdfaV6OUDYqyHXDWlzDnT79HEJJDA7g1S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pi_products`
--
ALTER TABLE `pi_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pi_products`
--
ALTER TABLE `pi_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
