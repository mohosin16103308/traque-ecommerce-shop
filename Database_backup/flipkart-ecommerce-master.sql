-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 08:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flipkart-ecommerce-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Eden Walsh', 'beryl11@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'ukyuixGnvk', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(2, 'Alec Strosin', 'betsy25@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'jkKewb1POR', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(3, 'Malachi Reilly', 'ebony.hegmann@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 1, 'AJlZ0T3ULS', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(4, 'Aurelia Block', 'satterfield.alessandro@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 1, 'Mk6AHW7YWa', '2020-06-30 03:43:32', '2020-06-30 03:43:32'),
(5, 'Mrs. Lavonne Schaefer', 'ystrosin@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'l6OSoITg2O', '2020-06-30 03:43:32', '2020-06-30 03:43:32'),
(6, 'admin', 'admin@gmail.com', '$2y$10$4YzlUgfZhAUliQ1Vr6qZ3emEjT6yIP0RXIEl7yNByQ9V5gY79u3xS', 0, NULL, '2020-06-30 03:45:29', '2020-06-30 03:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fake_banner/cat-banner-1.jpg', 'Quae quas et porro eos minima. Laudantium laborum et animi quia aut animi. Officiis ducimus veniam et at tenetur occaecati quidem.', 'Cupiditate necessitatibus ab minus. Ratione quo deleniti mollitia quia vitae. Et ducimus modi nihil voluptas optio sint.', 1, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(2, 'fake_banner/cat-banner-1.jpg', 'Libero quibusdam rem vitae eveniet fuga maxime. Cupiditate rerum ullam illo dolores. Sit rem velit mollitia illo minima occaecati eos magni.', 'Repellendus cupiditate voluptatem voluptas voluptatem molestiae. Consequatur esse aut consectetur sed nesciunt totam reprehenderit. Libero facilis deserunt omnis eveniet.', 1, '2020-06-30 03:44:00', '2020-06-30 03:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Lucio Hill', 'qui', 'MediumSlateBlue', 'small', 1426.00, 2, 'jward@example.net', 'SUNZmL56SM', '2020-06-30 03:44:05', '2020-06-30 03:44:05'),
(2, 6, 'Bennie Aufderhar', 'quod', 'DarkCyan', 'small', 1881.00, 7, 'wnitzsche@example.net', 'FWyhehs9Vq', '2020-06-30 03:44:05', '2020-06-30 03:44:05'),
(3, 4, 'Bennie Aufderhar', 'qui', 'Purple', 'small', 794.00, 3, 'wnitzsche@example.net', 'UU2x7VNwRA', '2020-06-30 03:44:05', '2020-06-30 03:44:05'),
(4, 5, 'Lucio Hill', 'aperiam', 'Silver', 'small', 1881.00, 2, 'wnitzsche@example.net', 'ICScyPeTsV', '2020-06-30 03:44:05', '2020-06-30 03:44:05'),
(5, 7, 'Baylee Langworth', 'consequatur', 'Silver', 'small', 1402.00, 2, 'marvin.jenkins@example.org', 'zpnfKajIhL', '2020-06-30 03:44:05', '2020-06-30 03:44:05'),
(6, 4, 'Marielle Graham', 'laudantium', 'Black', 'small', 1655.00, 7, 'schaden.sigurd@example.org', 'LTngVMCxsW', '2020-06-30 03:44:06', '2020-06-30 03:44:06'),
(7, 6, 'Bennie Aufderhar', 'qui', 'Purple', 'small', 1426.00, 5, 'schaden.sigurd@example.org', 'Oy2jpl74Kb', '2020-06-30 03:44:06', '2020-06-30 03:44:06'),
(8, 2, 'Lucio Hill', 'aperiam', 'LightSkyBlue', 'small', 1881.00, 2, 'marvin.jenkins@example.org', 'rtVpIp1ewj', '2020-06-30 03:44:06', '2020-06-30 03:44:06'),
(9, 7, 'Lucio Hill', 'quod', 'DarkCyan', 'small', 794.00, 2, 'marvin.jenkins@example.org', 'ncH96zzh15', '2020-06-30 03:44:06', '2020-06-30 03:44:06'),
(10, 4, 'Baylee Langworth', 'beatae', 'MediumSlateBlue', 'small', 794.00, 5, 'jward@example.net', 'p0vny8fFmR', '2020-06-30 03:44:06', '2020-06-30 03:44:06'),
(11, 7, 'Hilda Funk', 'aspernatur', 'Blue', 'small', 794.00, 2, 'marvin.jenkins@example.org', 'dtd5R8vvx2', '2020-06-30 03:44:07', '2020-06-30 03:44:07'),
(12, 7, 'Hilda Funk', 'aspernatur', 'DarkCyan', 'small', 1003.00, 2, 'alfonzo16@example.net', 'S3HIXJVpFP', '2020-06-30 03:44:07', '2020-06-30 03:44:07'),
(13, 6, 'Hilda Funk', 'aspernatur', 'LightSkyBlue', 'small', 1704.00, 4, 'wnitzsche@example.net', 'OD7M0hI11A', '2020-06-30 03:44:07', '2020-06-30 03:44:07'),
(14, 5, 'Bennie Aufderhar', 'laudantium', 'Blue', 'small', 1704.00, 2, 'wnitzsche@example.net', 'ZAnt4Iwpaq', '2020-06-30 03:44:08', '2020-06-30 03:44:08'),
(15, 1, 'Afton Reichel Sr.', 'qui', 'DarkCyan', 'small', 1426.00, 4, 'wnitzsche@example.net', 'G2fdr3APSb', '2020-06-30 03:44:08', '2020-06-30 03:44:08'),
(16, 4, 'Ariane Rau', 'consequatur', 'Purple', 'small', 1655.00, 7, 'wnitzsche@example.net', 'pRP0ifGKzD', '2020-06-30 03:44:08', '2020-06-30 03:44:08'),
(17, 4, 'Bennie Aufderhar', 'quod', 'Black', 'small', 1402.00, 3, 'marvin.jenkins@example.org', 'yxkZEoQo8Y', '2020-06-30 03:44:08', '2020-06-30 03:44:08'),
(18, 7, 'Bennie Aufderhar', 'qui', 'LightSkyBlue', 'small', 1704.00, 4, 'alfonzo16@example.net', 'S4FMMgAFUN', '2020-06-30 03:44:08', '2020-06-30 03:44:08'),
(19, 2, 'Ariane Rau', 'laudantium', 'Black', 'small', 794.00, 3, 'wnitzsche@example.net', '9Ha88Ey6Nm', '2020-06-30 03:44:08', '2020-06-30 03:44:08'),
(20, 5, 'Bennie Aufderhar', 'consequatur', 'Black', 'small', 1704.00, 1, 'marvin.jenkins@example.org', 'nt1lxnNFzP', '2020-06-30 03:44:08', '2020-06-30 03:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 8, 'tempore', 'Consequatur earum placeat enim et maiores voluptas. Rerum fuga delectus nostrum error quidem expedita illum in. Voluptatem tenetur consequuntur dolores aut qui.', 'et', 'Vitae ut numquam qui tempore aut. Et sit velit iste eius recusandae vel eligendi. Sapiente repudiandae voluptatem vero animi. Perferendis optio distinctio officia aliquam nesciunt perspiciatis nobis.', 'Mollitia in magni eos beatae quam cupiditate. Ut omnis et in odit odit quo. Dolores omnis inventore autem ipsam aut. Aut iusto excepturi excepturi ipsam veniam repellendus. Accusantium dignissimos modi eum ea corporis dolore rerum.', 'quos', 0, 'GaRpaSWaPY', '2020-06-30 03:43:32', '2020-06-30 03:43:32'),
(2, 10, 'consequatur', 'Laboriosam est ut expedita deserunt nihil beatae laboriosam aliquam. Ducimus et et est optio optio ea voluptatem. Dolorem non possimus dolores. Sunt dicta iusto modi architecto rem minima quasi. Est laborum est ullam quam beatae officiis maiores.', 'qui', 'Eius enim error officia dolorum error. Aspernatur tenetur beatae eos.', 'Consequuntur consequuntur aut aut et et omnis. Alias nulla aut eaque commodi saepe qui. Unde ut cum sapiente tenetur in molestiae praesentium. Quis sunt non numquam pariatur. Tempora quo quidem non reiciendis adipisci adipisci magnam non. Expedita porro c', 'omnis', 1, 'Csj0G6e5UC', '2020-06-30 03:43:32', '2020-06-30 03:43:32'),
(3, 2, 'ipsam', 'Odit nihil aut nam rerum est non beatae ducimus. Tempora in possimus qui eos quis.', 'et', 'Nulla et blanditiis eveniet natus facilis aut. Ducimus recusandae molestiae illo. Velit et mollitia quaerat eaque qui omnis. Libero consequatur tempora delectus.', 'Nobis maiores eum qui voluptas. Est numquam et cum dolor. Illo repudiandae inventore provident debitis. Magnam recusandae asperiores eum qui. Repellendus tenetur dolore ut non fugiat quis.', 'nemo', 0, 'wLoxN7IixX', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(4, 6, 'debitis', 'Aut delectus id ducimus sapiente voluptates nobis aliquam. Eligendi perferendis cumque aut placeat doloremque. Necessitatibus officia sapiente perspiciatis et officiis dolores nobis non.', 'rerum', 'Qui incidunt error sit unde excepturi doloremque consequatur. Aspernatur ea reprehenderit officiis sint ullam. Et ipsum cupiditate placeat et.', 'Possimus qui nisi corrupti possimus doloribus. Ut eligendi sed et fuga. Dicta voluptas et impedit ut saepe. Corrupti placeat et quo quia ratione eum qui quos.', 'numquam', 1, 'MEvaeTfegc', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(5, 10, 'et', 'Consequatur et sed ut dolor quisquam reprehenderit. Quo numquam aliquam in modi. Voluptatem expedita odio ut pariatur laboriosam. Temporibus quisquam laudantium provident rerum assumenda asperiores.', 'nesciunt', 'Doloribus saepe velit consequatur dolor aut. Expedita quis suscipit ex ea. Et sint itaque tenetur aspernatur et. Est vero molestias error cupiditate dolores. Amet similique qui voluptas.', 'Laboriosam sit eum et occaecati. Unde illo at consequuntur possimus perspiciatis sint porro. Nihil quia sed ipsa harum hic iste. At tempore quos facere illum est deserunt natus.', 'accusantium', 1, 'MwRJH9g10u', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(6, 10, 'quidem', 'Nihil fugit consequuntur sapiente quasi. Vel dolores et aut qui beatae ut natus.', 'nam', 'Rerum nobis qui dolores tempore ex odio et. Pariatur cumque voluptatem ratione tenetur id aut iure. Dolor labore voluptatibus est est rerum. Ducimus voluptas ab qui magni qui quidem.', 'Et debitis id iure minus fugit. Autem aut fuga id voluptates in illo rerum dolor. Tenetur est minus et facere et similique est odio. Dolores natus vero natus optio cupiditate aliquam nemo ut.', 'rerum', 1, 'vVmnluWYLS', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(7, 10, 'dolor', 'Voluptates vel eaque sapiente doloribus et. Cumque expedita cumque et quod aut tempora. Blanditiis velit qui ea nemo.', 'sit', 'Omnis mollitia earum quasi sint laborum perferendis. Rerum voluptatem sit laudantium autem temporibus et modi. Ut atque aut veritatis quo.', 'Et sunt voluptatem accusamus et minus. Quidem et provident repellendus est cumque.', 'non', 1, 'J4bFp36pHy', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(8, 3, 'odit', 'Vero cum omnis rem qui impedit voluptatem. Sapiente porro a voluptas tempore magnam. Repellat dolores nihil inventore enim quibusdam ab consequatur.', 'illo', 'Explicabo dolor iste corporis similique enim sequi. Pariatur aut itaque sed voluptatem aperiam ratione et. Nostrum sed quis et temporibus dolor ipsa. Labore eius id qui sint quia dolore.', 'Voluptatem nostrum soluta occaecati quis ea numquam. Minima et quod et dignissimos nam repellat.', 'laudantium', 0, 'KgCw2xEnk1', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(9, 3, 'placeat', 'Est distinctio quibusdam natus qui eius quia esse. Earum quaerat eius qui occaecati nemo. Et rerum dolores vitae reprehenderit sunt nesciunt totam dolores. Sequi animi placeat doloremque ut optio pariatur. Voluptatum aspernatur aut recusandae minima est.', 'aspernatur', 'Dolorem non aut voluptatem id debitis est error. Officiis explicabo dolor sunt sed minus voluptate. Mollitia nostrum voluptas accusamus.', 'Et autem aut dolorem. Corrupti impedit dignissimos sit rerum eos beatae. Impedit fugiat non eum autem voluptas placeat nobis tenetur. Dicta sint quod est. Ab maiores facere nobis atque velit doloremque id eos. Dolorem et sed repellat possimus quibusdam eo', 'velit', 1, 'DAqIlxmGaX', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(10, 9, 'ut', 'Et dolorum quisquam ea numquam. Voluptates id et numquam sit. Ea nihil aut consequatur ad. Reprehenderit quisquam aut dolorem accusantium accusantium atque. Corporis sed eveniet et minus consectetur nihil iste.', 'ea', 'Dolores ut non non dignissimos. Numquam et est qui labore quasi dicta. Delectus quas nesciunt consectetur qui velit. Expedita dolorum inventore facere voluptatem totam et commodi.', 'Accusamus aut in cupiditate itaque saepe consectetur quos. Nobis quia vero ut nisi eos autem rerum. Eligendi harum velit molestias et libero doloremque laborum.', 'veritatis', 1, '3XnA7b5n0y', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(11, 1, 'magni', 'Ipsam ratione architecto aut temporibus sit ea aut dolores. Doloribus sit soluta esse et doloribus odit ut. Aperiam totam perspiciatis quisquam consequatur reprehenderit. Quibusdam earum excepturi et et fugiat.', 'id', 'Placeat corporis est dolorem quidem blanditiis aut voluptatum. Fuga et voluptatibus possimus animi magni consequatur. Nihil adipisci sint alias.', 'Maiores fuga perferendis ipsum ipsum quia consequuntur. Assumenda culpa consequatur deserunt laborum aut blanditiis sit. Consectetur delectus quia quo eum voluptas odit impedit.', 'repellendus', 0, '1BkRTLZU4r', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(12, 3, 'illo', 'Inventore culpa rem iusto laboriosam minus omnis. Error excepturi rerum rerum similique repudiandae distinctio. Ullam numquam et pariatur placeat fugiat. Veniam adipisci similique optio explicabo officia at. Ex nihil libero aut quo minus quia autem.', 'facere', 'Aut sit incidunt quod nemo sunt. Vero dolore quis enim voluptates reprehenderit ut deleniti. Autem omnis vel est non nobis quaerat necessitatibus.', 'Aut optio amet cum qui. Sunt enim eligendi fugit occaecati.', 'architecto', 1, 'IWnVLHF1Bw', '2020-06-30 03:43:33', '2020-06-30 03:43:33'),
(13, 9, 'accusamus', 'Excepturi eligendi sit maiores itaque. Numquam sed iusto est. Qui ut soluta harum ipsam aut et dolor. Vel eveniet voluptatibus tempore. Vitae voluptate mollitia sunt ipsum quis vel.', 'nihil', 'Architecto iusto facere quia debitis ea quis dolores eum. Labore debitis assumenda quisquam quidem sit dolore.', 'A soluta labore vero cum aut ratione fuga. Ad sunt magni omnis excepturi repellat reprehenderit. Et nihil et distinctio rerum non quo. Nesciunt voluptatibus ratione non porro sit repellendus. Modi doloremque officiis soluta in ut voluptatem.', 'ab', 1, '4iKfL20xc5', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(14, 5, 'necessitatibus', 'Libero a impedit iusto id consequuntur. Ratione voluptatem et esse fugiat sint voluptatem. Modi harum non totam numquam. Eligendi dignissimos est est quae.', 'sit', 'Commodi in id enim sed dolorum earum debitis. Sint error et minus explicabo. Adipisci praesentium cupiditate voluptatibus alias animi quidem repellat quidem.', 'Qui in accusantium quia amet qui aspernatur quia qui. Quia molestias unde voluptas omnis aut voluptas. Numquam perferendis excepturi enim ullam velit qui officiis. Sequi vel maxime numquam quia. Qui nihil quia dolorem.', 'ut', 0, '3nsk24GAas', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(15, 3, 'vel', 'A modi numquam et qui. Nostrum et molestiae quia. Et quia necessitatibus ipsa atque mollitia.', 'quis', 'Et sit quo consequatur nam. Vero exercitationem laudantium debitis. Tempora sit beatae sit non labore.', 'Non officiis pariatur totam autem est et dolorem. Blanditiis qui earum placeat dolorum. Ut minus quo voluptatem iure ducimus porro dolor. Et minima magni dignissimos natus similique rem voluptas deserunt. Fugiat odit molestias explicabo sit ad.', 'temporibus', 0, 'lDTXLVeruK', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(16, 2, 'soluta', 'Molestiae voluptatum in culpa hic sapiente. Rem sapiente qui unde dolores. Asperiores cupiditate molestiae sed qui totam omnis.', 'architecto', 'Et et eligendi dolores consequatur. Et modi sit corrupti. Veritatis omnis qui error. Ipsam dicta dolor qui cumque.', 'Suscipit voluptatem omnis assumenda eaque omnis voluptatem voluptatem. Quae at dolorem consectetur. Ut quia ab non eos est dolores.', 'voluptatem', 1, 'xAZiYvafKJ', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(17, 4, 'perspiciatis', 'Nesciunt labore et maiores quaerat sit qui. Dolor placeat eligendi rerum est corrupti eaque. Ex ut quaerat minus rerum. Facere dolor dolores maiores in. Placeat odit perspiciatis maiores sed quidem.', 'delectus', 'Dignissimos temporibus vel rerum vitae tempora aut dolores. Fuga et iure fugiat accusantium quibusdam. Ut repellendus sed quae animi.', 'Id facilis corrupti sed libero aliquam et. Non quam autem quidem laboriosam adipisci. Provident accusantium quisquam natus rerum odit.', 'velit', 0, '1waIpNN0tt', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(18, 2, 'molestiae', 'Consequatur a vero eum aliquam. Dolores excepturi quo a illo in aut quo. Ut et dolorum saepe expedita nihil. Saepe qui et voluptas sunt incidunt cumque nihil. Modi nihil temporibus enim quia.', 'totam', 'Excepturi aliquid quas vel ex qui ipsa tenetur. Provident et molestias corrupti at eos delectus distinctio. Totam quas beatae adipisci sed fuga rerum et omnis. Occaecati iste odit sunt et voluptatem.', 'Facere laudantium voluptatibus corporis quo sunt. Neque delectus dolore voluptatibus. Debitis esse tempore ad consectetur quasi nisi ab. Ut dignissimos voluptas temporibus dolorem.', 'necessitatibus', 0, '1a35ovH6HJ', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(19, 1, 'impedit', 'Sit eligendi et natus et officiis. Rerum qui ab expedita magni recusandae. Distinctio qui aut qui fugit incidunt quia praesentium. Ratione consequatur iusto officia doloribus rerum. Est et quod omnis id et ad. Illum repellendus totam sunt voluptatem accusamus.', 'doloribus', 'Ea quos porro incidunt quod iusto earum sed corporis. Quidem voluptas ratione sint unde labore sint corporis. Nulla est quibusdam ut animi modi beatae assumenda.', 'Quo et nihil architecto dignissimos. Provident pariatur praesentium eveniet est quia. Doloribus cupiditate nihil ut voluptas et. Doloribus quia corrupti eum dolores.', 'consectetur', 1, 'cnkVikU3W5', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(20, 6, 'laudantium', 'Consequatur cumque et in cupiditate quos consequatur. Voluptatem id quae et eius labore. Quaerat voluptate saepe qui aperiam voluptas optio.', 'aut', 'Nisi est et consequatur magni porro sint excepturi non. Non necessitatibus corrupti pariatur sint necessitatibus a. Eaque odit aut et dolorum rerum omnis.', 'Vel voluptates provident omnis ipsam qui. Animi nulla modi sequi molestias accusantium deleniti. Sed qui ut sunt rerum nihil inventore. Voluptas ipsam velit hic non.', 'nulla', 1, 'pEV8sedhsZ', '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(21, 0, 'Apple', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Apple', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 1, NULL, '2020-06-30 03:47:24', '2020-06-30 03:47:24'),
(22, 21, 'ios', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'ios', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 1, NULL, '2020-06-30 03:47:51', '2020-06-30 03:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `title`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Molestiae sed dicta dignissimos quasi officiis ab perferendis. Sint repellendus dolore aliquid veniam molestias quod. Vel repellendus aliquid non enim sit non.', 'Delectus exercitationem est vel sunt debitis qui aut. Autem odit et blanditiis et nam est. Est officia voluptatem eos alias et sit.', 'Sunt necessitatibus nemo illum voluptas. Quia non non voluptates aut iusto veniam. Adipisci aut voluptatem dolorem id earum. Iusto sapiente dolores ipsum nemo.', 'Dolorum dicta blanditiis sint eligendi rerum natus esse. Adipisci modi reprehenderit in eaque et hic asperiores. Omnis nulla nam commodi optio. Ea perspiciatis minus accusantium nobis ut quis quasi.', 'Officia sint a ullam. Recusandae velit corporis culpa non quia sunt. Qui est debitis illo optio.', 'vel', 0, '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(2, 'Et doloribus sunt minima ut corrupti dolores porro repellendus. Necessitatibus maxime nostrum consequatur voluptatem est.', 'Necessitatibus dicta natus officiis et dolor. Fugit aspernatur et unde adipisci possimus repudiandae optio. Qui pariatur aut doloribus voluptates consequuntur est et.', 'Aspernatur vitae numquam sequi. Culpa labore culpa eum quam minima. Est aperiam ut aperiam quis. Dolores consequatur sunt vel unde. Nostrum enim corrupti qui ea maiores qui.', 'Atque aliquam voluptas dicta dicta similique unde ratione a. Quia nihil hic veniam ea. Aut inventore deserunt est. Nobis est velit enim assumenda.', 'Totam beatae fugit nisi doloribus perspiciatis ex. Debitis necessitatibus aperiam nihil doloribus laudantium. Laborum harum vel quia eum vitae alias minus. Voluptatem et vitae vel dolores. Ut similique nihil suscipit dignissimos laborum esse.', 'quibusdam', 1, '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(3, 'Quia sit aut velit velit veniam saepe qui. Rerum dolorem mollitia officiis assumenda et. Voluptas eveniet non sed et doloremque.', 'Perspiciatis quia praesentium ipsa itaque unde qui. Qui quos et dicta voluptatem possimus sed. Aut et dolorem et sint velit sed cupiditate quam. Voluptatem delectus a excepturi iste quod. Magni facere tempora impedit praesentium praesentium ratione.', 'Ducimus dolor nemo iusto sit voluptates. Perspiciatis tempora eum provident quisquam. Autem illo ut culpa. Quas sunt exercitationem natus.', 'Voluptas nam sint facilis quae. Nulla vitae sed corrupti dignissimos repellendus debitis. Sunt non veritatis harum at. Consectetur ea et eos architecto.', 'Eum dolorum autem fuga et modi labore. Hic est ullam autem.', 'inventore', 0, '2020-06-30 03:43:34', '2020-06-30 03:43:34'),
(4, 'Asperiores aliquam earum magnam. Et delectus quia autem molestiae eos eum perspiciatis.', 'Qui amet aut at rerum. Voluptas veritatis in et recusandae. Labore nostrum non quae vel id aperiam.', 'Quis magnam esse eligendi et veniam odit voluptates est. Numquam et laboriosam id fuga. Sed qui voluptatibus corrupti omnis aut qui ex.', 'Asperiores non qui laboriosam. Vero non aut vitae. Nulla ut nulla quaerat molestias fuga.', 'Soluta fugit impedit ea maiores. Et eaque soluta quo nam et et omnis voluptatem. Necessitatibus sit a officiis voluptatum aliquam temporibus itaque sit.', 'sed', 1, '2020-06-30 03:43:35', '2020-06-30 03:43:35'),
(5, 'Et quaerat id facere dicta et neque non. Dolorem quia in in eius pariatur quia. Quis est sequi quia ut. Maiores cum qui est voluptas sit. Ex minus labore et quam cum voluptates.', 'Odit et id dolorem rerum. Dolor illum libero ipsam quia. Velit non sint quia harum.', 'Sequi esse at omnis nihil autem. Placeat quis perferendis consequatur sint animi. Eaque omnis maxime esse similique. Fuga harum consectetur et quia enim.', 'Modi qui fugiat officia consectetur minus dignissimos. Autem error harum quam atque voluptatem. Error sed impedit iste aut eum est. Dolorum laudantium repellat officiis est laboriosam.', 'Excepturi quos in dolores accusantium optio. Sint doloribus cupiditate eligendi inventore iste. Minima aliquam adipisci dolores et corporis voluptates dolorem.', 'autem', 0, '2020-06-30 03:43:35', '2020-06-30 03:43:35'),
(6, 'Esse sit numquam enim recusandae rem earum. Sit ipsa dicta et reprehenderit ut similique velit eius. Quis sed rerum et in. Rem dolor est aut eius nesciunt qui.', 'Quia aut sed quasi quo. Et non et modi qui sit libero sunt. Et pariatur nihil eos aliquid.', 'Corporis quo quidem eum et expedita debitis sit. Voluptas modi est aliquid voluptatibus expedita repellendus. Culpa laborum voluptatem non.', 'Dignissimos quia nihil eligendi doloremque at. Consectetur eos quod quia qui repellendus maxime quia. Ipsum qui magnam sed sit. Odit et veniam perferendis quia nostrum eaque.', 'Dicta deleniti libero ipsam vel aspernatur quibusdam nulla quia. Vel id sed asperiores nostrum. Ad veniam deleniti repudiandae dicta.', 'qui', 1, '2020-06-30 03:43:35', '2020-06-30 03:43:35'),
(7, 'Culpa similique officia aut quia. Qui officiis nesciunt doloribus aut optio mollitia molestiae est. Cum dicta repudiandae et non.', 'Ut optio sint rerum pariatur. Esse vero reiciendis odio. Aut fugiat incidunt quasi nemo. Quibusdam maiores ipsam harum vel. Rerum cumque non commodi non. Et aliquam incidunt dolor iusto. Quaerat odit eum blanditiis mollitia quae voluptatem beatae ad.', 'Perspiciatis iusto officiis perspiciatis soluta debitis. Dignissimos quae dicta sit odio molestiae. Aut dolorem ex sit eos aut. Quam vero vel ut possimus quam magnam est.', 'Laudantium et quo eum fugit. Non aliquam assumenda eos qui occaecati molestiae. Debitis sit facilis et. Quis qui vitae voluptatem consequatur deleniti in repellendus molestias.', 'Voluptatem maiores neque soluta vero. Aut libero quis non molestiae sit. Et nam mollitia beatae ut quam possimus. Necessitatibus debitis sint voluptas sed sunt dolores. Culpa reiciendis totam ducimus quaerat cumque voluptas. Labore unde ad in exercitation', 'odit', 1, '2020-06-30 03:43:35', '2020-06-30 03:43:35'),
(8, 'Illo sit sed quisquam vero qui odit aut. Tenetur necessitatibus aliquid tenetur necessitatibus debitis dolores iure. Explicabo dolores voluptatem eos aut voluptates cumque ab.', 'Nobis iste dignissimos aut. Corrupti esse ipsam optio voluptatem quasi modi. Perferendis eos illo at et perferendis et sint.', 'Est aut eos qui voluptates a. Eum alias sed amet porro. Neque non ea in fuga.', 'Minus nihil enim adipisci. Consequatur quo consequatur laboriosam. Consequatur recusandae aspernatur provident quis culpa iure. In explicabo minus culpa omnis alias quidem vero.', 'Suscipit quia veritatis nesciunt sit sunt dolores. Cupiditate aspernatur non vitae sed. Et maxime minima ea sit. Atque fugiat nam et dolorem eius et deleniti voluptatibus.', 'odio', 1, '2020-06-30 03:43:35', '2020-06-30 03:43:35'),
(9, 'Fugiat ut voluptatem sit. Soluta voluptatem nostrum voluptatem officia autem magnam. Rerum et saepe aliquam perferendis temporibus. Sequi voluptates et illum quo voluptatem iure.', 'Laudantium quia at quis. Sunt ipsa vel et sunt et dolores non. Error minima et aut eius aut consectetur nisi. Accusantium enim deleniti voluptate quam eum et et rerum.', 'Ut odit temporibus itaque sapiente autem. Nobis distinctio laudantium cupiditate consequuntur. Eum adipisci vero eum iusto ullam maiores.', 'Magnam expedita qui quasi atque. Expedita adipisci quidem dignissimos sapiente. Odio eos voluptatem et sint omnis quisquam tempora rerum. Odio at beatae qui qui aspernatur laudantium eos quo.', 'Exercitationem aut reiciendis rerum ut. Nihil est ullam doloribus qui sunt sit. Consequuntur ut fugiat aut et cumque nisi. Quis eligendi accusantium minima saepe. Ea fuga qui at sint nemo. Vel sunt quasi officia aut.', 'consequatur', 0, '2020-06-30 03:43:35', '2020-06-30 03:43:35'),
(10, 'Vel iusto est sapiente sunt. Rerum sed odio dolorum amet. Sint eligendi aut iure a consectetur id nam. Quam dolor exercitationem voluptates id incidunt.', 'Tempore molestias veniam non aut nihil maxime. Unde quia itaque quis accusantium vel placeat. Eos quisquam fugiat saepe quod. Unde sed nesciunt quo ullam. Amet atque exercitationem recusandae pariatur tempora rerum. Modi facere sit earum odio quisquam.', 'Odio rerum hic deleniti voluptatem quo officiis minima. Dolor sit optio quia non. Sequi labore optio officia odio. Et repudiandae quam placeat et.', 'In atque sunt ipsum quas aperiam. Tenetur iste tempora rerum id mollitia. Cupiditate omnis dolores dolore distinctio est. Voluptatem reiciendis dolor ex.', 'Praesentium voluptate aliquid occaecati numquam temporibus expedita. Qui modi suscipit assumenda ratione. Aspernatur itaque fugit nisi iure. Adipisci ut repudiandae omnis nisi maiores vel expedita.', 'tempora', 0, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(11, 'Voluptates repellat excepturi quis enim. Earum dolorum est deleniti. Laudantium excepturi sapiente est harum rerum explicabo sed dolores.', 'In temporibus eos qui aut commodi voluptatum delectus. Fugiat delectus distinctio asperiores possimus sunt.', 'Omnis non et accusantium quae enim quo maxime. Voluptas aut et sed vero. Quisquam sapiente voluptatem qui est velit.', 'Dolor ut quo corporis ab eius itaque. Iste quia labore dolorem quam. Sit velit labore reprehenderit qui quod et est. Rem quia non et recusandae et similique.', 'Similique quaerat asperiores odit animi hic repellendus. Non harum delectus perferendis quia cum odit nostrum. Sit eaque in dolores.', 'cumque', 1, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(12, 'Perspiciatis aspernatur quibusdam rerum excepturi. Quis praesentium qui necessitatibus laborum maxime. Ex et praesentium illum rerum distinctio qui inventore.', 'Delectus perspiciatis debitis enim consequatur. Quam eligendi qui totam fugit. At amet molestiae eveniet non asperiores hic laboriosam. Quis et consequatur nam. Ducimus sequi aspernatur quia eveniet aperiam facilis ad.', 'Impedit perspiciatis debitis nisi et consequatur. Excepturi eum voluptates eos rem assumenda eligendi minima. Impedit fugit tempora neque voluptatem eligendi illum tenetur dolores.', 'Ratione ab corporis eum. Voluptas debitis quia eligendi incidunt et vero. Minus et voluptatum voluptatum qui.', 'Dolorem quis adipisci cumque in exercitationem alias odio consectetur. Asperiores placeat amet in ut. Unde ipsam ad repudiandae esse eum quia alias. Qui magnam nam corrupti aut est esse veniam. Repellendus cumque ab corrupti ex amet fugit repellendus at. ', 'et', 0, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(13, 'Nesciunt aut aut mollitia culpa dolorem doloremque consectetur. Repudiandae aut dolore sapiente illum sit. Consequatur velit sapiente et culpa modi et.', 'Dolor ullam facere qui ex nihil at quibusdam. Beatae placeat iusto ullam magnam labore sint. Non et error autem voluptas rerum. Reprehenderit ipsam distinctio quia id a sed accusantium.', 'Quis quasi dolor libero accusantium exercitationem facere dolorum. Nihil ipsa fugit maiores dolorem. Quas culpa ea et quae consequatur dolorem assumenda.', 'Qui qui molestiae adipisci ab et. Reiciendis voluptatum vero numquam velit iste. Quo ab sequi quia voluptatem debitis omnis.', 'Laboriosam minus doloremque aspernatur quos quaerat. Omnis ut itaque et unde quod temporibus adipisci. Labore qui cumque aut corporis alias aut. Voluptas est sunt quibusdam deserunt accusantium quasi. Aperiam explicabo et placeat eveniet et quia ipsum lab', 'velit', 1, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(14, 'Est ipsa veniam quia est. Molestiae reiciendis voluptatem minima. Incidunt qui ut eaque saepe.', 'Unde temporibus quia quos voluptatem error error voluptas. Aliquid magnam laboriosam qui amet. Natus sequi laboriosam ut asperiores.', 'Est eum cumque dolorum officia. Omnis aliquam qui quidem eos laudantium. Culpa nesciunt est animi incidunt ea. Iusto dolor excepturi maxime dolores.', 'Nihil alias sapiente odit explicabo corrupti. Deleniti qui voluptas eaque aut laudantium est quod. Nulla voluptatem voluptatem odio quis non consectetur consequatur.', 'Ipsam sit possimus laudantium autem aut sunt. At et doloribus in beatae excepturi. Neque modi qui ad qui.', 'ipsam', 1, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(15, 'Eligendi sunt aut at harum vel perspiciatis ut. Quam consequatur ullam sint quo provident. Nam recusandae vel ea deserunt.', 'Quidem quisquam tempore explicabo. Fuga id quam minus aperiam unde saepe odio.', 'At eum aut inventore aspernatur. Deserunt modi commodi consequuntur ut. Velit ut minima ut qui. Debitis molestias voluptatem alias.', 'Est mollitia nihil eligendi reiciendis. Et quidem et maiores nemo est. A sint voluptates aut eum totam ut.', 'Cumque qui reiciendis ea libero rerum incidunt. Iure et ea rerum a quas facilis officiis modi. Rerum quos possimus consequatur sit id recusandae. Nesciunt sint inventore ipsam praesentium velit.', 'maxime', 0, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(16, 'Consequatur aliquid deserunt dignissimos. Dolor nostrum amet voluptatibus vitae culpa.', 'Sit odit quo eum et cum et atque. Et nihil ut mollitia saepe odio rerum dolores rerum. Magnam corrupti eum officiis vitae laborum et cupiditate occaecati. Qui dolores ut nihil aut eos dolorem cupiditate eligendi. Velit ut nihil est cum. Necessitatibus distinctio aut quibusdam tempore.', 'Quia et architecto quia repellat. Magni qui est sint et temporibus sed. Nisi inventore et tempore consequatur. Suscipit tempora temporibus ea ut mollitia enim sunt.', 'Eos adipisci adipisci aut corrupti. Nisi doloremque quas et rerum. Iure laborum voluptas pariatur iste nesciunt molestias.', 'Et perspiciatis ut repellat commodi consequatur enim. Dolor voluptas totam officia quia. Voluptatum dolores fugit dicta eum quod vel ipsam ratione. Ex omnis omnis esse facilis sit. Qui quisquam in sint libero. Corrupti hic ab sequi voluptatem.', 'quis', 0, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(17, 'Nihil quibusdam ex rerum odio perspiciatis. Ducimus quidem voluptate qui. Eligendi ut aut odio quis possimus optio illum.', 'Corporis quia sed accusamus optio eligendi. Officiis laboriosam accusantium omnis voluptatem dolor dolor. Soluta sit eius nam distinctio. Eius quia rerum ea dolor veniam iure et laborum. Incidunt sunt et ad consectetur commodi exercitationem.', 'Saepe consequatur similique sit consequatur corrupti. Maiores odio perferendis id corrupti occaecati consectetur repudiandae. Ducimus est et et id quia architecto qui.', 'Illo soluta omnis eligendi dolores accusantium non et delectus. Id corporis at assumenda quaerat iste consequatur. Magni odio soluta expedita.', 'Omnis praesentium tempora est blanditiis et labore consequatur. Officiis impedit ut ex ipsa sed culpa et.', 'sit', 1, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(18, 'Labore facilis architecto quia occaecati incidunt dolores esse. Sunt placeat esse deleniti corporis illo et. Earum veniam nobis aut deserunt veniam. Eum ab est repellat error quam.', 'Similique amet qui quas rerum sit tenetur. Ab voluptates deleniti suscipit sed ut. Delectus placeat ipsum deleniti ad et. Est minima error error voluptas nostrum eligendi sapiente. Et est quia explicabo dolor perferendis. Commodi ex est expedita iure consectetur vero accusantium. Totam sequi sint repellat explicabo tenetur et.', 'Cupiditate quod fugit sunt excepturi minus. Quidem laudantium rerum error voluptas nostrum nam. Quod at ipsum accusamus inventore quisquam dolores.', 'Quia sit eaque debitis sunt nostrum consectetur. Maiores ipsum ut unde quis. Ut quisquam sequi voluptatem alias excepturi.', 'Ipsum fugiat beatae fuga nam dicta facere aut. Quas cupiditate ut quo incidunt dicta aut pariatur magnam.', 'qui', 0, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(19, 'Dolor autem ad inventore officiis ipsa. Quam earum optio iste blanditiis mollitia vitae consectetur.', 'Et ut quia eligendi minima eaque. Enim culpa illum quia est. Facilis esse alias id aut eius.', 'Odit quae qui ullam veritatis architecto. Omnis nesciunt odit reprehenderit vel. Est ea hic id culpa. Id laboriosam cupiditate incidunt aliquid.', 'Aut quas sequi sed molestiae adipisci et. Velit facere cupiditate quia rerum. Voluptas ab adipisci dicta praesentium et. Consequatur facilis expedita doloremque ea incidunt.', 'Quia quasi et alias iste aut aut iusto. Sit sed aut quo id numquam voluptatem ex. Ut qui nam ad repellat. Repellendus omnis qui esse inventore aperiam molestiae. Maiores autem cupiditate maiores aut placeat. Fugiat nesciunt voluptatem est necessitatibus. ', 'ratione', 1, '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(20, 'Ut adipisci totam et labore. Quia at suscipit ipsum magni ut. Aperiam dolores quod sit autem.', 'Perferendis quae et vel. Corporis tenetur sint ut qui animi. Neque ut qui omnis non quam.', 'Tempore rerum beatae voluptates qui necessitatibus recusandae aut error. Rerum aut ut at ducimus tenetur veritatis vel.', 'Optio et praesentium et et. Aut ipsa explicabo fugiat. Omnis et est enim sunt sint excepturi. Quis est inventore quia quae non.', 'Enim est quaerat maiores optio tempore non. Excepturi aperiam quo earum aut minus mollitia. Officia nesciunt eaque eius nam. Voluptatem sed sunt aut esse aut ad. Quam in quo aut quos nam non placeat id. Debitis sunt sed esse aut corrupti.', 'atque', 0, '2020-06-30 03:43:36', '2020-06-30 03:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `cod_pincodes`
--

CREATE TABLE `cod_pincodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cod_pincodes`
--

INSERT INTO `cod_pincodes` (`id`, `pincode`, `city`, `state`, `created_at`, `updated_at`) VALUES
(1, '73656', 'South Carmel', 'New Hampshire', '2020-06-30 03:43:36', '2020-06-30 03:43:36'),
(2, '78789-1300', 'East Liamchester', 'Rhode Island', '2020-06-30 03:43:37', '2020-06-30 03:43:37'),
(3, '72287', 'Kingside', 'Alaska', '2020-06-30 03:43:37', '2020-06-30 03:43:37'),
(4, '64370-6390', 'Macyfurt', 'Illinois', '2020-06-30 03:43:37', '2020-06-30 03:43:37'),
(5, '48789', 'South Kristyberg', 'Tennessee', '2020-06-30 03:43:37', '2020-06-30 03:43:37'),
(6, '66582-2267', 'Dachland', 'South Dakota', '2020-06-30 03:43:37', '2020-06-30 03:43:37'),
(7, '50899', 'Beierland', 'Washington', '2020-06-30 03:43:37', '2020-06-30 03:43:37'),
(8, '92461-6720', 'Port Sigmundborough', 'Michigan', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(9, '81000', 'Treutelview', 'Washington', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(10, '52426', 'Port Omariborough', 'West Virginia', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(11, '08982', 'Hauckburgh', 'New Mexico', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(12, '95799', 'Port Mollystad', 'Washington', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(13, '07533-4143', 'North Vivienne', 'Illinois', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(14, '86110-7429', 'Port Josiannetown', 'Massachusetts', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(15, '60298-7641', 'Lake Helga', 'Connecticut', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(16, '46980', 'Sidneyhaven', 'Arkansas', '2020-06-30 03:43:38', '2020-06-30 03:43:38'),
(17, '19351', 'Elwinberg', 'Georgia', '2020-06-30 03:43:39', '2020-06-30 03:43:39'),
(18, '28689-5304', 'Jensenberg', 'Missouri', '2020-06-30 03:43:39', '2020-06-30 03:43:39'),
(19, '97519', 'New Esmeraldaberg', 'Wyoming', '2020-06-30 03:43:39', '2020-06-30 03:43:39'),
(20, '67771', 'West Amara', 'Hawaii', '2020-06-30 03:43:39', '2020-06-30 03:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'VU', 'Finland', '2020-06-30 03:43:39', '2020-06-30 03:43:39'),
(2, 'UZ', 'Holy See (Vatican City State)', '2020-06-30 03:43:39', '2020-06-30 03:43:39'),
(3, 'CX', 'Uruguay', '2020-06-30 03:43:39', '2020-06-30 03:43:39'),
(4, 'AU', 'Paraguay', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(5, 'ID', 'Trinidad and Tobago', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(6, 'KZ', 'Mali', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(7, 'TR', 'Portugal', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(8, 'CN', 'Micronesia', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(9, 'TR', 'New Zealand', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(10, 'PK', 'Costa Rica', '2020-06-30 03:43:40', '2020-06-30 03:43:40'),
(11, 'PM', 'Saint Martin', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(12, 'CZ', 'Palestinian Territories', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(13, 'TN', 'Italy', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(14, 'DJ', 'Macedonia', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(15, 'MK', 'Afghanistan', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(16, 'BJ', 'Martinique', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(17, 'BE', 'Bolivia', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(18, 'DJ', 'Macedonia', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(19, 'DE', 'Costa Rica', '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(20, 'AW', 'Sudan', '2020-06-30 03:43:41', '2020-06-30 03:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'qwerty', 5, 'Percentage', '2017-03-23', 1, '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(2, 'qwerty', 5, 'Percentage', '1977-12-28', 1, '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(3, 'qwerty', 6, 'Percentage', '1972-03-22', 0, '2020-06-30 03:43:41', '2020-06-30 03:43:41'),
(4, 'qwerty', 4, 'Percentage', '1980-08-11', 0, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(5, 'qwerty', 7, 'Percentage', '2008-07-01', 1, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(6, 'qwerty', 1, 'Percentage', '1973-07-25', 1, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(7, 'qwerty', 7, 'Percentage', '1996-03-16', 1, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(8, 'qwerty', 4, 'Percentage', '1987-04-30', 1, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(9, 'qwerty', 1, 'Percentage', '1982-11-06', 1, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(10, 'qwerty', 3, 'Percentage', '1994-05-26', 1, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(11, 'qwerty', 2, 'Percentage', '2015-05-15', 0, '2020-06-30 03:43:42', '2020-06-30 03:43:42'),
(12, 'qwerty', 6, 'Percentage', '1971-02-11', 1, '2020-06-30 03:43:43', '2020-06-30 03:43:43'),
(13, 'qwerty', 2, 'Percentage', '2013-07-12', 1, '2020-06-30 03:43:43', '2020-06-30 03:43:43'),
(14, 'qwerty', 6, 'Percentage', '1996-08-16', 0, '2020-06-30 03:43:43', '2020-06-30 03:43:43'),
(15, 'qwerty', 5, 'Percentage', '2014-05-09', 1, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(16, 'qwerty', 7, 'Percentage', '2014-07-04', 0, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(17, 'qwerty', 3, 'Percentage', '1972-05-17', 1, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(18, 'qwerty', 3, 'Percentage', '2012-09-11', 0, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(19, 'qwerty', 7, 'Percentage', '1995-06-25', 1, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(20, 'qwerty', 1, 'Percentage', '1983-04-26', 1, '2020-06-30 03:43:44', '2020-06-30 03:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_code`, `exchange_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TZS', 81.00, 0, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(2, 'MKD', 83.00, 1, '2020-06-30 03:43:44', '2020-06-30 03:43:44'),
(3, 'LSL', 83.00, 0, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(4, 'TWD', 87.00, 1, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(5, 'AOA', 87.00, 0, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(6, 'HNL', 84.00, 0, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(7, 'NOK', 84.00, 1, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(8, 'KHR', 85.00, 1, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(9, 'UGX', 90.00, 0, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(10, 'LSL', 90.00, 1, '2020-06-30 03:43:45', '2020-06-30 03:43:45'),
(11, 'BRL', 85.00, 0, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(12, 'BZD', 87.00, 1, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(13, 'PGK', 88.00, 0, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(14, 'MOP', 83.00, 1, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(15, 'ZAR', 83.00, 1, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(16, 'SGD', 81.00, 0, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(17, 'BMD', 81.00, 1, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(18, 'NZD', 81.00, 0, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(19, 'VUV', 88.00, 1, '2020-06-30 03:43:46', '2020-06-30 03:43:46'),
(20, 'ILS', 81.00, 1, '2020-06-30 03:43:46', '2020-06-30 03:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 4, 'wnitzsche@example.net', 'Triston Schmidt', '518 Kuhlman Corners\nSouth Otilia, DE 92020-5256', 'New Sybleshire', 'Oregon', 'Korea', '53207', '1-989-318-0347', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(2, 4, 'marvin.jenkins@example.org', 'Prof. Kallie Bartoletti V', '1382 Nicolas Terrace Suite 476\nSmithamborough, GA 88531', 'Lake Ottotown', 'Virginia', 'Djibouti', '32311-7437', '934-451-9276 x652', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(3, 4, 'jward@example.net', 'Dariana Armstrong', '55205 Dibbert Row\nOlsonfort, KY 56489', 'North Jaron', 'Wisconsin', 'Bermuda', '24889-4265', '1-763-819-7049 x666', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(4, 4, 'schaden.sigurd@example.org', 'Karine Kautzer', '906 Mabel Brook Apt. 930\nWest Kyla, NC 86075', 'Wisozkshire', 'Maine', 'Namibia', '27348-6656', '1-543-262-2208', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(5, 3, 'schaden.sigurd@example.org', 'Kody Kutch', '46818 Moises Radial Apt. 318\nNitzschefurt, NY 95891-1269', 'Leannonview', 'Maine', 'Niue', '89431', '+1 (924) 962-3967', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(6, 4, 'jward@example.net', 'Dr. Marjolaine Goodwin Jr.', '90397 Haley Locks Apt. 020\nGusikowskiton, HI 39614-8032', 'West Jasonville', 'North Dakota', 'Monaco', '88473-8739', '1-693-622-1385', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(7, 3, 'wnitzsche@example.net', 'Elisha Quigley', '415 Patricia Freeway Suite 604\nKennedihaven, OH 28957', 'Schultzberg', 'New Jersey', 'Saint Barthelemy', '86585', '916.824.4261 x19214', '2020-06-30 03:43:47', '2020-06-30 03:43:47'),
(8, 1, 'wnitzsche@example.net', 'Mrs. Breanna Schmeler', '823 Hansen Junction Suite 431\nLake Flossie, AZ 69292', 'Ernserville', 'Illinois', 'Christmas Island', '00829-8809', '730.317.8805 x967', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(9, 1, 'marvin.jenkins@example.org', 'Jackson Beier', '135 Lori Isle Suite 104\nLake Dasia, NY 92644', 'South Dorris', 'North Carolina', 'Saint Martin', '98790-3482', '262-899-2094 x665', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(10, 2, 'schaden.sigurd@example.org', 'Camryn Reynolds', '338 Gladyce Isle Suite 294\nJohnsborough, CT 74225', 'Laurineville', 'Alaska', 'Chad', '75781', '774-504-5720 x4804', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(11, 4, 'schaden.sigurd@example.org', 'Jenifer Roberts II', '955 Amara Burgs\nLittelborough, KS 85922-7431', 'Binsbury', 'Texas', 'Palau', '49666', '+1-496-385-5681', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(12, 1, 'schaden.sigurd@example.org', 'Mr. Bryon McClure', '6389 Kreiger Brooks\nNorth Chancebury, GA 94527', 'Toyview', 'Washington', 'Uruguay', '64733-2910', '441-276-8372 x9315', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(13, 2, 'marvin.jenkins@example.org', 'Weston Cole I', '44860 Tiffany Parks\nWest Krystelfort, NJ 14565', 'Dickenshaven', 'Missouri', 'Macedonia', '51824', '537-499-8436', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(14, 5, 'wnitzsche@example.net', 'Odessa Langosh', '516 Madonna Light Suite 008\nNew Titofurt, AK 55744-0506', 'Henryborough', 'Indiana', 'Niue', '84469', '(540) 994-9516 x3048', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(15, 2, 'marvin.jenkins@example.org', 'Modesto Runte', '77292 Johnny Rue Suite 961\nKozeytown, WV 52096-8652', 'Ervinton', 'Kansas', 'Vietnam', '73155-4958', '(218) 670-5124 x6584', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(16, 5, 'jward@example.net', 'Miss Aryanna Brown', '5437 German Stravenue\nHirtheview, WA 02774', 'Leliaville', 'California', 'United States Virgin Islands', '10625-4795', '350.357.8761', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(17, 5, 'alfonzo16@example.net', 'Earlene Lesch', '21413 Schultz Cliff Suite 305\nNorth Merlberg, IL 84104-6600', 'New Jaime', 'Tennessee', 'Falkland Islands (Malvinas)', '24335', '+1-626-920-1484', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(18, 5, 'marvin.jenkins@example.org', 'Anabelle Graham II', '32636 Gleason Locks Apt. 494\nPort Doyleville, VA 34060-8333', 'New Yasminfort', 'New Jersey', 'Saint Martin', '91656-0058', '(790) 249-1483 x831', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(19, 2, 'alfonzo16@example.net', 'Mr. Gayle Nicolas IV', '6986 Bailey Lodge\nHeathcoteberg, DE 24940', 'East Skyla', 'Wyoming', 'Mongolia', '27368', '+1 (713) 690-4764', '2020-06-30 03:43:48', '2020-06-30 03:43:48'),
(20, 1, 'schaden.sigurd@example.org', 'Mrs. Chanel Waters', '76079 Kemmer Terrace\nEast Javierport, WV 59689', 'East Felicity', 'Iowa', 'Czech Republic', '98786-1406', '1-791-417-7273', '2020-06-30 03:43:48', '2020-06-30 03:43:48');

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
(3, '2020_04_15_080554_create_admins_table', 1),
(4, '2020_04_15_181127_create_products_table', 1),
(5, '2020_04_15_181254_create_product_attributes_table', 1),
(6, '2020_04_15_181339_create_product_images_table', 1),
(7, '2020_04_15_181439_create_carts_table', 1),
(8, '2020_04_15_181552_create_coupons_table', 1),
(9, '2020_04_15_181638_create_banners_table', 1),
(10, '2020_04_15_181726_create_countries_table', 1),
(11, '2020_04_15_181846_create_deliveries_table', 1),
(12, '2020_04_15_181944_create_orders_table', 1),
(13, '2020_04_15_182049_create_order_products_table', 1),
(14, '2020_04_15_182213_create_cms_pages_table', 1),
(15, '2020_04_15_182303_create_pincodes_table', 1),
(16, '2020_04_15_182355_create_cod_pincodes_table', 1),
(17, '2020_04_15_182437_create_prepaid_pincodes_table', 1),
(18, '2020_04_15_182539_create_currencies_table', 1),
(19, '2020_04_15_182625_create_shipping_charges_table', 1),
(20, '2020_04_16_074001_create_categories_table', 1),
(21, '2020_05_30_083308_create_profiles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` double(8,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 5, 'alfonzo16@example.net', 'Miss Eveline Rodriguez PhD', '69375 Brakus Mill\nWittingshire, OH 82633-5991', 'Stephanchester', 'Missouri', '58574', 'Madagascar', '440.439.0380 x5199', 72.00, 'qwerty', 73.00, 'Paid', 'COD', 1043.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(2, 1, 'schaden.sigurd@example.org', 'Bo Cummings', '59796 Daniela Cliff Suite 943\nNicolasshire, VA 10832', 'Bartonfort', 'Tennessee', '49977-6814', 'Estonia', '1-918-547-0852 x44752', 2.00, 'qwerty', 76.00, 'Paid', 'COD', 708.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(3, 5, 'jward@example.net', 'Dr. Cordelia Thompson', '79731 Aron Mountains Apt. 786\nEast Seanmouth, TX 18940', 'North Libbymouth', 'Alaska', '07966', 'New Zealand', '1-906-999-5042', 66.00, 'qwerty', 98.00, 'Paid', 'COD', 1259.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(4, 5, 'alfonzo16@example.net', 'Corine Jakubowski IV', '8748 Bernhard Villages Suite 452\nWest Brennonhaven, MD 56420', 'Aufderharberg', 'Minnesota', '22202-2676', 'Spain', '(946) 248-1170', 18.00, 'qwerty', 68.00, 'Paid', 'COD', 551.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(5, 5, 'alfonzo16@example.net', 'Dr. Dimitri Pacocha Sr.', '9892 Johanna Cliff\nLake Justine, UT 19438', 'Michaelport', 'Oregon', '78082', 'Kenya', '(938) 517-2895', 9.00, 'qwerty', 62.00, 'Paid', 'COD', 1244.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(6, 4, 'marvin.jenkins@example.org', 'Prof. Dora Boyer', '5213 Lilian Trace\nPort Darien, OH 84573-7639', 'Heidenreichview', 'Massachusetts', '04054', 'Ghana', '(906) 517-4130 x38414', 48.00, 'qwerty', 76.00, 'Paid', 'COD', 730.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(7, 1, 'wnitzsche@example.net', 'Destini Howe V', '932 Bogan Village Apt. 409\nPort Cleta, VA 05477-5369', 'West Maya', 'Nevada', '93918-0169', 'Lithuania', '+1-540-483-6004', 77.00, 'qwerty', 82.00, 'Paid', 'COD', 1327.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(8, 2, 'jward@example.net', 'Ariane O\'Keefe', '768 Gulgowski Mountain Suite 613\nGlenborough, MI 45123', 'West Misty', 'Alabama', '60573', 'Burundi', '471-479-2281 x487', 22.00, 'qwerty', 93.00, 'Paid', 'COD', 768.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(9, 3, 'alfonzo16@example.net', 'Cordie Schuppe', '52019 Natalia Lakes Suite 962\nNew Jimmiebury, IA 10138-0932', 'Hiramhaven', 'Washington', '59493-3343', 'Colombia', '892-690-8969 x162', 51.00, 'qwerty', 98.00, 'Paid', 'COD', 818.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(10, 2, 'marvin.jenkins@example.org', 'Fredrick McGlynn V', '8822 Beryl Pines Suite 492\nNicoletteshire, DE 08311-0956', 'Nicolachester', 'Missouri', '23043', 'Madagascar', '963.384.8780 x7871', 74.00, 'qwerty', 79.00, 'Paid', 'COD', 629.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(11, 2, 'jward@example.net', 'Gunner Schuppe', '280 Terry Rapid Suite 995\nCarrollfurt, MN 76369', 'New Esthermouth', 'New Mexico', '07794', 'Brazil', '1-926-502-1918 x865', 76.00, 'qwerty', 92.00, 'Paid', 'COD', 608.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(12, 1, 'schaden.sigurd@example.org', 'Eliza Boyer', '7669 Marilou Knoll Apt. 327\nNew Valeriehaven, DC 51533', 'O\'Haramouth', 'Connecticut', '56112-6923', 'El Salvador', '(382) 396-7594 x214', 38.00, 'qwerty', 76.00, 'Paid', 'COD', 1345.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(13, 4, 'alfonzo16@example.net', 'Lucie Gerhold', '673 Foster Port Suite 821\nNorth Markberg, WA 91264-6399', 'Noemyport', 'North Carolina', '33949', 'Afghanistan', '309.266.9780', 12.00, 'qwerty', 93.00, 'Paid', 'COD', 1138.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(14, 4, 'marvin.jenkins@example.org', 'Mrs. Tamia Marquardt IV', '40509 Gaylord Parks Suite 930\nLake Annalise, SC 23123-8496', 'East Elenora', 'Florida', '08765', 'Czech Republic', '1-963-876-0084 x56701', 29.00, 'qwerty', 87.00, 'Paid', 'COD', 644.00, '2020-06-30 03:43:49', '2020-06-30 03:43:49'),
(15, 1, 'jward@example.net', 'Leann Donnelly DVM', '297 Sawayn Circle Apt. 563\nSouth Christ, NC 72344-6639', 'North Tracefort', 'Georgia', '16698-1241', 'Tajikistan', '1-689-953-7840 x49174', 74.00, 'qwerty', 65.00, 'Paid', 'COD', 1051.00, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(16, 5, 'marvin.jenkins@example.org', 'Miss Tomasa Zieme', '60705 Elisabeth Drive\nSouth Emmet, ND 40355', 'East Kaiaville', 'Iowa', '13467-3852', 'Peru', '1-929-625-5360 x60730', 45.00, 'qwerty', 65.00, 'Paid', 'COD', 806.00, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(17, 1, 'schaden.sigurd@example.org', 'Christ Kemmer', '8156 Cornell Alley\nNorth Kathlynview, NH 20922-8998', 'Hilmashire', 'Virginia', '80131', 'Bermuda', '553.243.0558', 40.00, 'qwerty', 56.00, 'Paid', 'COD', 654.00, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(18, 1, 'marvin.jenkins@example.org', 'Pattie Kuhic', '48992 Deckow Mission Suite 651\nProsaccomouth, VT 16713', 'North Kaci', 'Wisconsin', '33462-0577', 'Ireland', '1-342-767-0306 x049', 12.00, 'qwerty', 63.00, 'Paid', 'COD', 558.00, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(19, 1, 'schaden.sigurd@example.org', 'Dr. Ruby Torp', '30684 Olga Ramp Suite 187\nLake Charles, NC 42745-7583', 'West Roxane', 'South Carolina', '82245', 'Somalia', '964.682.6684 x6915', 55.00, 'qwerty', 82.00, 'Paid', 'COD', 583.00, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(20, 1, 'marvin.jenkins@example.org', 'Meggie Reilly Sr.', '6869 Roob Extension Apt. 913\nSouth Dasiaport, GA 14283-1897', 'Damionmouth', 'Massachusetts', '79057', 'Belize', '+1-524-542-2465', 52.00, 'qwerty', 89.00, 'Paid', 'COD', 1301.00, '2020-06-30 03:43:50', '2020-06-30 03:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 19, 4, 5, 'beatae', 'Hilda Funk', 'small', 'DarkCyan', 794.00, 6, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(2, 10, 2, 2, 'quod', 'Bennie Aufderhar', 'small', 'MediumSlateBlue', 1655.00, 7, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(3, 9, 1, 1, 'beatae', 'Baylee Langworth', 'small', 'Black', 1881.00, 2, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(4, 7, 2, 4, 'aperiam', 'Lucio Hill', 'small', 'Blue', 1704.00, 3, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(5, 13, 5, 1, 'aperiam', 'Lucio Hill', 'small', 'MediumSlateBlue', 1426.00, 3, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(6, 15, 3, 7, 'consequatur', 'Marielle Graham', 'small', 'DarkCyan', 1655.00, 5, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(7, 13, 2, 6, 'aspernatur', 'Baylee Langworth', 'small', 'Silver', 1881.00, 7, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(8, 19, 4, 6, 'quod', 'Bennie Aufderhar', 'small', 'MediumSlateBlue', 1426.00, 6, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(9, 14, 2, 3, 'aspernatur', 'Lucio Hill', 'small', 'Blue', 1881.00, 4, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(10, 4, 1, 2, 'quod', 'Ariane Rau', 'small', 'Purple', 1003.00, 2, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(11, 20, 2, 5, 'aperiam', 'Marielle Graham', 'small', 'LightSkyBlue', 1426.00, 2, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(12, 3, 4, 6, 'quod', 'Ariane Rau', 'small', 'MediumSlateBlue', 794.00, 2, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(13, 6, 1, 2, 'laudantium', 'Afton Reichel Sr.', 'small', 'Purple', 1704.00, 4, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(14, 6, 3, 4, 'consequatur', 'Bennie Aufderhar', 'small', 'Silver', 1704.00, 1, '2020-06-30 03:43:53', '2020-06-30 03:43:53'),
(15, 20, 3, 1, 'laudantium', 'Lucio Hill', 'small', 'Black', 1881.00, 3, '2020-06-30 03:43:54', '2020-06-30 03:43:54'),
(16, 6, 3, 5, 'aspernatur', 'Marielle Graham', 'small', 'DarkCyan', 1402.00, 6, '2020-06-30 03:43:54', '2020-06-30 03:43:54'),
(17, 1, 4, 2, 'consequatur', 'Marielle Graham', 'small', 'MediumSlateBlue', 1003.00, 4, '2020-06-30 03:43:54', '2020-06-30 03:43:54'),
(18, 18, 1, 4, 'aperiam', 'Lucio Hill', 'small', 'Silver', 1426.00, 7, '2020-06-30 03:43:54', '2020-06-30 03:43:54'),
(19, 15, 3, 5, 'beatae', 'Hilda Funk', 'small', 'Purple', 1881.00, 2, '2020-06-30 03:43:54', '2020-06-30 03:43:54'),
(20, 14, 1, 5, 'beatae', 'Hilda Funk', 'small', 'Blue', 1655.00, 6, '2020-06-30 03:43:54', '2020-06-30 03:43:54');

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
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`id`, `pincode`, `city`, `state`, `created_at`, `updated_at`) VALUES
(1, '45834', 'New Neomashire', 'Tennessee', '2020-06-30 03:43:54', '2020-06-30 03:43:54'),
(2, '42574-2565', 'West Treystad', 'Nevada', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(3, '08686', 'Joannybury', 'Hawaii', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(4, '70766-7214', 'Schneiderberg', 'Mississippi', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(5, '11737', 'Lake Wilhelm', 'South Dakota', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(6, '25089-3215', 'Kennediland', 'Pennsylvania', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(7, '91057-1085', 'East Gregory', 'Massachusetts', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(8, '29762-6361', 'South Joanny', 'New Jersey', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(9, '33311-2076', 'Boyleton', 'California', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(10, '10315-5375', 'Lake Lilliana', 'Connecticut', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(11, '29590-0533', 'West Nola', 'Texas', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(12, '99943-2380', 'Lake Gabriellahaven', 'Rhode Island', '2020-06-30 03:43:55', '2020-06-30 03:43:55'),
(13, '31686', 'South Graysonborough', 'Illinois', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(14, '52166', 'Effertzport', 'Georgia', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(15, '63962', 'North Tad', 'Delaware', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(16, '64057', 'Labadiebury', 'New Hampshire', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(17, '16666-2924', 'Heathcotetown', 'Texas', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(18, '93995-9709', 'Rickeyview', 'Pennsylvania', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(19, '09369', 'Lake Antoniettaport', 'Kentucky', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(20, '84061', 'North Theron', 'Delaware', '2020-06-30 03:43:56', '2020-06-30 03:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `prepaid_pincodes`
--

CREATE TABLE `prepaid_pincodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prepaid_pincodes`
--

INSERT INTO `prepaid_pincodes` (`id`, `pincode`, `city`, `state`, `created_at`, `updated_at`) VALUES
(1, '18761', 'North Jessicaberg', 'Maine', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(2, '02371', 'Krisport', 'Nevada', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(3, '17430', 'Jeniferburgh', 'Idaho', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(4, '20226', 'Jordanton', 'Kentucky', '2020-06-30 03:43:56', '2020-06-30 03:43:56'),
(5, '24216', 'Emmachester', 'Arkansas', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(6, '74790', 'Brownchester', 'California', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(7, '32783-6601', 'Lake Corrine', 'Delaware', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(8, '71879-1567', 'North Rosalyn', 'Oregon', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(9, '37804', 'North Amaya', 'South Dakota', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(10, '34080', 'Ankundington', 'West Virginia', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(11, '45412-8025', 'Lake Ewell', 'South Carolina', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(12, '88241', 'Bahringerville', 'Pennsylvania', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(13, '86468-3929', 'Port Odie', 'Connecticut', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(14, '90375-0863', 'West Minaview', 'Kansas', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(15, '34552', 'Walshburgh', 'Hawaii', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(16, '11270-0303', 'West Linneaberg', 'South Dakota', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(17, '51836', 'North Alfonso', 'Hawaii', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(18, '40681-8924', 'Port Sigmundburgh', 'Maine', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(19, '14040', 'West Vitamouth', 'North Carolina', '2020-06-30 03:43:57', '2020-06-30 03:43:57'),
(20, '40020-6539', 'New Codyview', 'New Jersey', '2020-06-30 03:43:58', '2020-06-30 03:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_item` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `slug`, `product_code`, `product_color`, `description`, `care`, `sleeve`, `pattern`, `price`, `weight`, `image`, `video`, `feature_item`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 'Ariane Rau', 'ariane-rau', 'aperiam', 'Purple', 'Quis iste numquam ullam a in. Porro sunt temporibus velit qui nesciunt quis ut. Reiciendis excepturi provident magni voluptatem ullam autem necessitatibus. Qui itaque corporis ipsum. Nemo vitae non quisquam. Ea quo et rerum voluptatem veniam aperiam. Sequi tempore quia fuga dolores.', 'Eum eum magnam nemo aut omnis voluptatem. Officia quia earum aliquam pariatur. Asperiores excepturi quod ipsam et qui dolor qui.', '100% Cotton', 'Not washable', 1402.00, 116.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 1, 0, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(2, 12, 'Hilda Funk', 'hilda-funk', 'consequatur', 'Blue', 'Beatae ut repellat dolore minima earum nemo. Nemo ex omnis maxime vitae. Hic labore nam aliquam.', 'Velit animi minima earum quos soluta harum. Quis ut suscipit eum et. Nemo doloribus expedita a ut labore et qui.', '100% Cotton', 'Not washable', 1426.00, 108.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 1, 1, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(3, 17, 'Bennie Aufderhar', 'bennie-aufderhar', 'quod', 'LightSkyBlue', 'Quia et nulla nostrum qui atque odit. Adipisci modi voluptatibus nihil mollitia rem quo. Sit minus quae sunt hic expedita. Id vitae nostrum at. Dolorem est saepe molestias assumenda non ut.', 'Rerum harum voluptas accusamus reprehenderit sapiente blanditiis eos. Reprehenderit voluptate velit velit voluptatibus sapiente excepturi. Officia consectetur id ex tempora.', '100% Cotton', 'Not washable', 794.00, 133.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 0, 0, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(4, 3, 'Baylee Langworth', 'baylee-langworth', 'qui', 'Silver', 'Quos provident ullam veritatis quis dolore molestiae temporibus. Perferendis commodi est qui aut. Sit repudiandae suscipit delectus sequi qui et.', 'Esse est aut qui ad quis et. Tenetur ipsam est voluptatum nesciunt doloribus aut quisquam enim. Eius libero aut ullam et.', '100% Cotton', 'Not washable', 1881.00, 174.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 0, 0, '2020-06-30 03:43:50', '2020-06-30 03:43:50'),
(5, 17, 'Afton Reichel Sr.', 'afton-reichel-sr', 'beatae', 'Black', 'Qui distinctio et laborum veritatis tenetur maxime. Doloremque dicta voluptatem voluptas excepturi exercitationem a. Animi ea et saepe magnam voluptatibus recusandae. Labore dicta sint velit hic voluptas deleniti cumque. Omnis maiores est autem sunt fugiat aut aut. Veniam cum ipsum tempore beatae. Iusto repudiandae nesciunt ea delectus a. Quos totam totam esse rerum.', 'Dicta accusamus sed quos aut enim consequatur. Quo ut et dolorem. Ut dolores adipisci voluptas cumque voluptatibus nemo. Aut quod cum iusto quod illo explicabo. Et ipsum reprehenderit sit deleniti. Quos commodi similique numquam eveniet.', '100% Cotton', 'Not washable', 1655.00, 100.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 0, 1, '2020-06-30 03:43:51', '2020-06-30 03:43:51'),
(6, 2, 'Marielle Graham', 'marielle-graham', 'aspernatur', 'MediumSlateBlue', 'Nobis ad expedita dolorem qui labore. Quia fugiat ipsam suscipit voluptatem. Ea necessitatibus quibusdam dolores itaque. Inventore corrupti velit ullam ad. Sed quas blanditiis at quia rem rem. Ab ipsam voluptates facere molestiae consequuntur et molestias amet.', 'Natus aut et sint est dolore repudiandae. Dolores consequatur ut molestiae exercitationem optio sit. Non maiores eveniet id voluptas necessitatibus aut eligendi aliquam. Mollitia ullam provident quis quasi qui.', '100% Cotton', 'Not washable', 1704.00, 149.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 0, 0, '2020-06-30 03:43:51', '2020-06-30 03:43:51'),
(7, 16, 'Lucio Hill', 'lucio-hill', 'laudantium', 'DarkCyan', 'Fugit temporibus quia sed. Fugiat sapiente natus voluptas repudiandae. Dicta reprehenderit beatae consectetur eos quidem delectus quod.', 'Earum in animi eos quidem eaque. Ad ut magnam sequi sequi quaerat aut minus. Illum alias inventore illo quia rerum ducimus a eligendi. Temporibus et occaecati fuga pariatur. Consectetur fugiat et voluptatibus et expedita veniam. Nobis quo natus nulla exercitationem sequi placeat.', '100% Cotton', 'Not washable', 1003.00, 120.00, 'fake_avatar/p6.jpg', 'videos/tareq.mp4', 1, 1, '2020-06-30 03:43:51', '2020-06-30 03:43:51'),
(8, 21, 'apple', 'apple', 'apple-01', 'red', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', '', '', 100.00, 100.00, '1593510505.jpg', '', 1, 1, '2020-06-30 03:48:25', '2020-06-30 03:48:25'),
(9, 22, 'ios', 'ios', 'ios-01', 'red', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', '', '', 100.00, 100.00, '1593510534.png', '', 1, 1, '2020-06-30 03:48:54', '2020-06-30 03:48:54'),
(10, 21, 'apple one', 'apple-one', 'apple-one', 'red', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', '', '', 100.00, 100.00, '1593510562.png', '', 1, 1, '2020-06-30 03:49:22', '2020-06-30 03:49:22'),
(11, 22, 'ios one', 'ios-one', 'apple-01vfdsfsdc', 'red', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', '', '', 100.00, 100.00, '1593510592.png', '', 1, 1, '2020-06-30 03:49:53', '2020-06-30 03:49:53'),
(12, 21, 'mohosin vai bnp', 'mohosin-vai-bnp', 'apple-01vfdsfsdc', 'ahmed', 'fgbgbvgb', 'apple-01', '', '', 100.00, 100.00, '1593784781.jpg', '', 1, 1, '2020-07-03 07:59:42', '2020-07-03 07:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 4, 'officia', 'small', 0.00, 17, '2020-06-30 03:43:51', '2020-06-30 03:43:51'),
(2, 6, 'labore', 'small', 0.00, 12, '2020-06-30 03:43:51', '2020-06-30 03:43:51'),
(5, 3, 'voluptatem', 'small', 0.00, 5, '2020-06-30 03:43:52', '2020-06-30 03:43:52'),
(6, 1, 'et', 'small', 10.00, 10, '2020-06-30 03:43:52', '2020-07-01 03:37:39'),
(7, 5, 'voluptas', 'small', 10.00, 30, '2020-06-30 03:43:52', '2020-07-01 03:36:50'),
(11, 2, 'vbghf', 'tareq', 50.00, 456, '2020-07-01 05:08:55', '2020-07-03 04:29:59'),
(12, 1, 'qwer', 'medium', 456.00, 450, '2020-07-01 11:21:22', '2020-07-01 11:21:22'),
(13, 2, 'laravel', 'medium', 456.00, 456, '2020-07-03 04:33:03', '2020-07-03 04:33:03'),
(14, 2, 'bonding', 'na', 100.00, 100, '2020-07-03 04:34:12', '2020-07-03 04:34:12'),
(15, 12, 'fg-02', 'small', 100.00, 100, '2020-07-03 08:02:53', '2020-07-03 08:02:53'),
(16, 12, 'fg-03', 'medium', 200.00, 456, '2020-07-03 08:02:54', '2020-07-03 08:02:54'),
(17, 12, 'fg-05', 'large', 300.00, 0, '2020-07-03 08:02:54', '2020-07-03 08:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'fake_avatar/p6.jpg', '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(2, 3, 'fake_avatar/p6.jpg', '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(3, 5, 'fake_avatar/p6.jpg', '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(4, 3, 'fake_avatar/p6.jpg', '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(5, 3, 'fake_avatar/p6.jpg', '2020-06-30 03:43:58', '2020-06-30 03:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 5, '36225 Helmer Green\nKiehnborough, PA 31053-3373', 'Lake Walterberg', 'Missouri', 'Tanzania', '85504-4185', '1-776-917-8002 x5300', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(2, 2, '2069 Parisian Plaza Suite 280\nLake Erik, IA 57242', 'Mayermouth', 'Virginia', 'Swaziland', '23710', '693.480.1871', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(3, 3, '69483 Bergstrom Points Suite 954\nWest Carlostown, AL 65338-6128', 'Brigittemouth', 'Minnesota', 'China', '72931-4901', '1-442-281-4411', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(4, 2, '49311 Ryan Alley Suite 142\nDelbertside, NM 91342', 'Kobyburgh', 'Nebraska', 'British Indian Ocean Territory (Chagos Archipelago)', '82790', '934.345.7207 x04625', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(5, 4, '359 Prohaska Trail Apt. 153\nEast Pat, HI 25320', 'Edytheton', 'California', 'Uzbekistan', '19296-3424', '+1.443.322.5117', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(6, 3, '65380 Wolf Neck\nNew Isidro, NV 69391-2136', 'Eudoramouth', 'Pennsylvania', 'Anguilla', '29275-5924', '604.732.0194', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(7, 3, '911 Turner Hill Suite 015\nEast Anabelle, VA 75914', 'East Jamir', 'Minnesota', 'Senegal', '39983-1496', '520-599-4834 x86717', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(8, 1, '3065 Mraz Knolls Suite 072\nAnkundingmouth, OH 40199', 'Stammstad', 'Wyoming', 'Liechtenstein', '54359', '542-566-9460 x9267', '2020-06-30 03:44:01', '2020-06-30 03:44:01'),
(9, 2, '422 Clare Shoal\nWest Ena, NE 35092', 'Hermannburgh', 'New Hampshire', 'Russian Federation', '13593-1338', '1-578-635-5801 x3435', '2020-06-30 03:44:02', '2020-06-30 03:44:02'),
(10, 5, '388 Sheila Mill Apt. 957\nD\'Amorechester, TX 55548-5706', 'Port Alda', 'Maryland', 'Antarctica (the territory South of 60 deg S)', '06510-4970', '728-303-7375 x29683', '2020-06-30 03:44:02', '2020-06-30 03:44:02'),
(11, 4, '427 Jocelyn Bridge Apt. 118\nEast Flossieborough, IN 81225-1175', 'North Kianna', 'West Virginia', 'New Zealand', '81282', '1-868-446-2051', '2020-06-30 03:44:02', '2020-06-30 03:44:02'),
(12, 2, '136 Felicita Stream\nEast Ismael, NC 64714', 'Lake Elliott', 'Ohio', 'Macao', '19646', '1-824-721-9286 x5343', '2020-06-30 03:44:02', '2020-06-30 03:44:02'),
(13, 5, '72846 Arden Fall Apt. 567\nOsinskiburgh, AZ 70906', 'North Dorothy', 'Texas', 'Tonga', '11437', '+1.305.661.7242', '2020-06-30 03:44:02', '2020-06-30 03:44:02'),
(14, 4, '71974 O\'Conner Extensions\nBodeland, IA 03202', 'Lake Tinamouth', 'Illinois', 'Iran', '32772', '790-645-7925 x94372', '2020-06-30 03:44:02', '2020-06-30 03:44:02'),
(15, 5, '1675 Littel Centers\nHarberton, MA 40858', 'Vandervortland', 'Tennessee', 'Finland', '09791', '(564) 214-3150 x8228', '2020-06-30 03:44:03', '2020-06-30 03:44:03'),
(16, 4, '86252 Schowalter Shores Suite 622\nWest Maurineville, GA 33893', 'Grantport', 'District of Columbia', 'Tokelau', '09831', '(234) 749-5486', '2020-06-30 03:44:03', '2020-06-30 03:44:03'),
(17, 2, '41071 McKenzie Lights\nSouth Charlene, TX 55433', 'New Hilbert', 'Kentucky', 'Benin', '01131-1983', '796.616.0689 x16754', '2020-06-30 03:44:03', '2020-06-30 03:44:03'),
(18, 3, '40641 Maximo Views Apt. 792\nNorth Winifred, MI 33867', 'Port Hildegardport', 'West Virginia', 'Canada', '98482-6229', '+1 (647) 369-4836', '2020-06-30 03:44:03', '2020-06-30 03:44:03'),
(19, 1, '6936 Sauer Spur\nLockmanberg, OH 36126', 'North Cielo', 'Alabama', 'French Guiana', '16622', '245-955-9229', '2020-06-30 03:44:03', '2020-06-30 03:44:03'),
(20, 3, '9740 Ezra Gateway\nMarshallside, MD 42886-9751', 'Katarinaville', 'Wisconsin', 'Zambia', '11013-1856', '750-703-6204', '2020-06-30 03:44:04', '2020-06-30 03:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges0_500g` double(8,2) NOT NULL,
  `shipping_charges501_1000g` double(8,2) NOT NULL,
  `shipping_charges1001_2000g` double(8,2) NOT NULL,
  `shipping_charges2001_5000g` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country`, `shipping_charges0_500g`, `shipping_charges501_1000g`, `shipping_charges1001_2000g`, `shipping_charges2001_5000g`, `created_at`, `updated_at`) VALUES
(1, 'Eritrea', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(2, 'Sweden', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(3, 'Puerto Rico', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:58', '2020-06-30 03:43:58'),
(4, 'Venezuela', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(5, 'Montenegro', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(6, 'Monaco', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(7, 'Macao', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(8, 'Grenada', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(9, 'Iran', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(10, 'Pakistan', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(11, 'Serbia', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(12, 'Liberia', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:43:59', '2020-06-30 03:43:59'),
(13, 'Antigua and Barbuda', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(14, 'Hong Kong', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(15, 'Singapore', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(16, 'Malta', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(17, 'Tokelau', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(18, 'Zimbabwe', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(19, 'French Southern Territories', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00'),
(20, 'Poland', 500.00, 1000.00, 1500.00, 2000.00, '2020-06-30 03:44:00', '2020-06-30 03:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jaden Gutkowski', 'seeker', 'marvin.jenkins@example.org', '2020-06-30 03:43:31', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 1, 1, 'LsiStasagk', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(2, 'General Grimes', 'seeker', 'schaden.sigurd@example.org', '2020-06-30 03:43:31', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 1, 1, 'iUAKOhieoy', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(3, 'Prof. Marcelle Zemlak', 'seeker', 'alfonzo16@example.net', '2020-06-30 03:43:31', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 1, 'K3dL0ZRRHH', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(4, 'Margaret Mraz', 'seeker', 'wnitzsche@example.net', '2020-06-30 03:43:31', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 0, 'BnhTlqBa8j', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(5, 'Myles Ernser', 'seeker', 'jward@example.net', '2020-06-30 03:43:31', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 0, 'wFonTd6z96', '2020-06-30 03:43:31', '2020-06-30 03:43:31'),
(6, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$FFxmjEqmQjHjMIXhpwprT.V72A/pkjRGyFTeTi8eqJ19yo6.dLxQ.', 1, 0, NULL, '2020-06-30 03:45:29', '2020-06-30 03:45:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod_pincodes`
--
ALTER TABLE `cod_pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_country_code_index` (`country_code`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pincodes`
--
ALTER TABLE `pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prepaid_pincodes`
--
ALTER TABLE `prepaid_pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cod_pincodes`
--
ALTER TABLE `cod_pincodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pincodes`
--
ALTER TABLE `pincodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prepaid_pincodes`
--
ALTER TABLE `prepaid_pincodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
