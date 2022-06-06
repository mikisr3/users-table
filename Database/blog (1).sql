-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 09:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` varchar(255) DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `parent`, `create_at`) VALUES
(2, 3, 'Technology', '0', '2021-09-06 07:28:58'),
(4, 3, 'Blue', '0', '2021-09-13 08:59:09'),
(9, 4, 'RED', '0', '2021-09-13 10:51:05'),
(140, 3, 'oop', '4', '2022-02-04 10:14:35'),
(141, 3, 'lola', '0', '2022-06-02 19:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `body`, `created_at`) VALUES
(25, 98, 'mikisr33', '<p><img src=\"https://www.sunnybrookhealthstore.com.au/assets/images/479.jpg\" /></p>\r\n', '2021-11-01 10:48:50'),
(26, 98, 'mikisr33', '<p><img src=\"https://www.sunnybrookhealthstore.com.au/assets/marketing/96.png?1634778396\" /></p>\r\n', '2021-11-01 10:49:22'),
(27, 98, 'mikisr33', '<p><img alt=\"Vego Hazelnut Chocolate Bar 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/9735.jpg?20210309033219\" /></p>\r\n', '2021-11-01 10:49:45'),
(28, 98, 'mikisr33', '<p><img alt=\"Vego Hazelnut Chocolate Bar 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/9735.jpg?20210309033219\" /><img alt=\"Vego Hazelnut Chocolate Bar 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/9735.jpg?20210309033219\" /><img alt=\"Vego Hazelnut Chocolate Bar 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/9735.jpg?20210309033219\" /><img alt=\"Vego Hazelnut Chocolate Bar 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/9735.jpg?20210309033219\" /><img alt=\"Vego Hazelnut Chocolate Bar 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/9735.jpg?20210309033219\" /></p>\r\n', '2021-11-01 10:50:15'),
(29, 98, 'mikisr33', '<p><img alt=\"Simply Wize Irresistible Gluten Free Fruit Salad 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/7803.jpg?20210309033808\" /><img alt=\"Simply Wize Irresistible Gluten Free Fruit Salad 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/7803.jpg?20210309033808\" /><img alt=\"Simply Wize Irresistible Gluten Free Fruit Salad 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/7803.jpg?20210309033808\" /><img alt=\"Simply Wize Irresistible Gluten Free Fruit Salad 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/7803.jpg?20210309033808\" /><img alt=\"Simply Wize Irresistible Gluten Free Fruit Salad 150g\" src=\"https://www.sunnybrookhealthstore.com.au/assets/thumb/7803.jpg?20210309033808\" /></p>\r\n', '2021-11-01 10:50:40'),
(31, 110, 'kace', '<p>popppopoopooppop</p>\r\n', '2021-11-05 15:03:43'),
(32, 89, 'kace', '<p>ioio</p>\r\n', '2021-11-23 12:49:45'),
(36, 89, 'kace', '<p>zasto</p>\r\n', '2021-11-23 13:13:08'),
(65, 107, 'mikisr33', '<p><img alt=\"\" src=\"https://www.sordaustralia.com/assets/full/SAAM014.jpg?20210309030320\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-11-24 13:23:48'),
(86, 112, 'mikisr33', '<p><img alt=\"\" src=\"data:image/png;base64,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\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>oioioioio</p>\r\n', '2021-11-29 09:15:41'),
(99, 112, 'mikisr33', '<p><img alt=\"\" src=\"data:image/png;base64,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\" /></p>\r\n', '2021-11-29 13:29:04'),
(100, 112, 'mikisr33', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum diam tincidunt, suscipit elit in, congue nunc. Nulla lobortis ligula id tellus mollis, ac accumsan eros tristique. Phasellus eros augue, venenatis quis facilisis eget, tincidunt quis orci. Nullam imperdiet at orci at dapibus. Nulla quis nibh vel arcu dignissim consectetur. Cras id cursus lectus. Cras vel elit sit amet lacus egestas pellentesque id eget nulla. Phasellus id quam vitae leo suscipit vehicula a at dolor. Suspendisse rhoncus placerat dui, eget tristique massa bibendum ac. Sed gravida molestie turpis in luctus. In sed ligula ex. Etiam sodales, nisi mollis ornare feugiat, sapien orci ornare nulla, et imperdiet odio lectus congue nibh. In sodales velit in justo pretium, ut gravida felis vestibulum.</p>\r\n\r\n<p>Nulla vehicula, nisi nec elementum lacinia, arcu dui mollis metus, in sagittis leo urna non nibh. Vivamus faucibus condimentum odio, id dignissim nulla tempus quis. Aliquam volutpat arcu ex, id vestibulum lorem vestibulum sit amet. In ligula lectus, pharetra vulputate convallis id, placerat blandit arcu. Donec et accumsan erat. Curabitur facilisis urna id arcu vulputate congue. Aliquam ut sapien lobortis, pretium urna eget, imperdiet nulla. Integer vitae orci pulvinar, tempor lectus quis, suscipit tellus. Mauris quis hendrerit magna. Nunc mattis risus id aliquet venenatis. Fusce euismod purus vitae feugiat lobortis. Integer vitae urna in ex mattis gravida ac bibendum odio. Aliquam euismod ornare dictum. Morbi quis efficitur metus.</p>\r\n\r\n<p>Donec nec lorem at urna pulvinar placerat. Morbi id convallis orci, quis convallis tellus. Integer rhoncus commodo gravida. Praesent consequat odio sed nibh finibus tincidunt nec ut diam. Praesent pharetra libero at nisi efficitur vehicula. Proin ac semper sapien. Vivamus gravida sed urna eu rhoncus.</p>\r\n\r\n<p>Sed sagittis libero in vehicula egestas. Pellentesque euismod in velit eu mattis. Integer vitae accumsan tellus. Suspendisse pretium scelerisque leo, ac accumsan urna dapibus et. Quisque imperdiet molestie dui, vel luctus est tristique a. Integer malesuada nibh nisi, sit amet aliquet leo venenatis in. Sed tristique quam in orci porta rutrum. Mauris et feugiat elit. Nulla convallis lectus dignissim mi vulputate cursus. Quisque a pretium neque, vel laoreet turpis. Fusce efficitur dui ex, iaculis porttitor nibh tincidunt malesuada. Sed at augue eu justo ultrices congue.</p>\r\n\r\n<p>Integer in suscipit odio. Suspendisse potenti. Integer rhoncus suscipit eros vel vulputate. Sed in lacinia elit. Ut eget eleifend massa. Nulla interdum, sapien eget mollis dignissim, nisl elit efficitur ante, vitae iaculis lacus urna vel lectus. Nulla ultrices neque vitae diam pulvinar, vitae interdum dui consectetur. Vestibulum eget mi vitae mi efficitur imperdiet. Pellentesque consequat ligula at fermentum interdum. Donec faucibus enim in aliquet lobortis. Sed ac est non enim egestas blandit. Nam euismod porta elit nec aliquam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum diam tincidunt, suscipit elit in, congue nunc. Nulla lobortis ligula id tellus mollis, ac accumsan eros tristique. Phasellus eros augue, venenatis quis facilisis eget, tincidunt quis orci. Nullam imperdiet at orci at dapibus. Nulla quis nibh vel arcu dignissim consectetur. Cras id cursus lectus. Cras vel elit sit amet lacus egestas pellentesque id eget nulla. Phasellus id quam vitae leo suscipit vehicula a at dolor. Suspendisse rhoncus placerat dui, eget tristique massa bibendum ac. Sed gravida molestie turpis in luctus. In sed ligula ex. Etiam sodales, nisi mollis ornare feugiat, sapien orci ornare nulla, et imperdiet odio lectus congue nibh. In sodales velit in justo pretium, ut gravida felis vestibulum.</p>\r\n\r\n<p>Nulla vehicula, nisi nec elementum lacinia, arcu dui mollis metus, in sagittis leo urna non nibh. Vivamus faucibus condimentum odio, id dignissim nulla tempus quis. Aliquam volutpat arcu ex, id vestibulum lorem vestibulum sit amet. In ligula lectus, pharetra vulputate convallis id, placerat blandit arcu. Donec et accumsan erat. Curabitur facilisis urna id arcu vulputate congue. Aliquam ut sapien lobortis, pretium urna eget, imperdiet nulla. Integer vitae orci pulvinar, tempor lectus quis, suscipit tellus. Mauris quis hendrerit magna. Nunc mattis risus id aliquet venenatis. Fusce euismod purus vitae feugiat lobortis. Integer vitae urna in ex mattis gravida ac bibendum odio. Aliquam euismod ornare dictum. Morbi quis efficitur metus.</p>\r\n\r\n<p>Donec nec lorem at urna pulvinar placerat. Morbi id convallis orci, quis convallis tellus. Integer rhoncus commodo gravida. Praesent consequat odio sed nibh finibus tincidunt nec ut diam. Praesent pharetra libero at nisi efficitur vehicula. Proin ac semper sapien. Vivamus gravida sed urna eu rhoncus.</p>\r\n\r\n<p>Sed sagittis libero in vehicula egestas. Pellentesque euismod in velit eu mattis. Integer vitae accumsan tellus. Suspendisse pretium scelerisque leo, ac accumsan urna dapibus et. Quisque imperdiet molestie dui, vel luctus est tristique a. Integer malesuada nibh nisi, sit amet aliquet leo venenatis in. Sed tristique quam in orci porta rutrum. Mauris et feugiat elit. Nulla convallis lectus dignissim mi vulputate cursus. Quisque a pretium neque, vel laoreet turpis. Fusce efficitur dui ex, iaculis porttitor nibh tincidunt malesuada. Sed at augue eu justo ultrices congue.</p>\r\n\r\n<p>Integer in suscipit odio. Suspendisse potenti. Integer rhoncus suscipit eros vel vulputate. Sed in lacinia elit. Ut eget eleifend massa. Nulla interdum, sapien eget mollis dignissim, nisl elit efficitur ante, vitae iaculis lacus urna vel lectus. Nulla ultrices neque vitae diam pulvinar, vitae interdum dui consectetur. Vestibulum eget mi vitae mi efficitur imperdiet. Pellentesque consequat ligula at fermentum interdum. Donec faucibus enim in aliquet lobortis. Sed ac est non enim egestas blandit. Nam euismod porta elit nec aliquam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum diam tincidunt, suscipit elit in, congue nunc. Nulla lobortis ligula id tellus mollis, ac accumsan eros tristique. Phasellus eros augue, venenatis quis facilisis eget, tincidunt quis orci. Nullam imperdiet at orci at dapibus. Nulla quis nibh vel arcu dignissim consectetur. Cras id cursus lectus. Cras vel elit sit amet lacus egestas pellentesque id eget nulla. Phasellus id quam vitae leo suscipit vehicula a at dolor. Suspendisse rhoncus placerat dui, eget tristique massa bibendum ac. Sed gravida molestie turpis in luctus. In sed ligula ex. Etiam sodales, nisi mollis ornare feugiat, sapien orci ornare nulla, et imperdiet odio lectus congue nibh. In sodales velit in justo pretium, ut gravida felis vestibulum.</p>\r\n\r\n<p>Nulla vehicula, nisi nec elementum lacinia, arcu dui mollis metus, in sagittis leo urna non nibh. Vivamus faucibus condimentum odio, id dignissim nulla tempus quis. Aliquam volutpat arcu ex, id vestibulum lorem vestibulum sit amet. In ligula lectus, pharetra vulputate convallis id, placerat blandit arcu. Donec et accumsan erat. Curabitur facilisis urna id arcu vulputate congue. Aliquam ut sapien lobortis, pretium urna eget, imperdiet nulla. Integer vitae orci pulvinar, tempor lectus quis, suscipit tellus. Mauris quis hendrerit magna. Nunc mattis risus id aliquet venenatis. Fusce euismod purus vitae feugiat lobortis. Integer vitae urna in ex mattis gravida ac bibendum odio. Aliquam euismod ornare dictum. Morbi quis efficitur metus.</p>\r\n\r\n<p>Donec nec lorem at urna pulvinar placerat. Morbi id convallis orci, quis convallis tellus. Integer rhoncus commodo gravida. Praesent consequat odio sed nibh finibus tincidunt nec ut diam. Praesent pharetra libero at nisi efficitur vehicula. Proin ac semper sapien. Vivamus gravida sed urna eu rhoncus.</p>\r\n\r\n<p>Sed sagittis libero in vehicula egestas. Pellentesque euismod in velit eu mattis. Integer vitae accumsan tellus. Suspendisse pretium scelerisque leo, ac accumsan urna dapibus et. Quisque imperdiet molestie dui, vel luctus est tristique a. Integer malesuada nibh nisi, sit amet aliquet leo venenatis in. Sed tristique quam in orci porta rutrum. Mauris et feugiat elit. Nulla convallis lectus dignissim mi vulputate cursus. Quisque a pretium neque, vel laoreet turpis. Fusce efficitur dui ex, iaculis porttitor nibh tincidunt malesuada. Sed at augue eu justo ultrices congue.</p>\r\n\r\n<p>Integer in suscipit odio. Suspendisse potenti. Integer rhoncus suscipit eros vel vulputate. Sed in lacinia elit. Ut eget eleifend massa. Nulla interdum, sapien eget mollis dignissim, nisl elit efficitur ante, vitae iaculis lacus urna vel lectus. Nulla ultrices neque vitae diam pulvinar, vitae interdum dui consectetur. Vestibulum eget mi vitae mi efficitur imperdiet. Pellentesque consequat ligula at fermentum interdum. Donec faucibus enim in aliquet lobortis. Sed ac est non enim egestas blandit. Nam euismod porta elit nec aliquam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum diam tincidunt, suscipit elit in, congue nunc. Nulla lobortis ligula id tellus mollis, ac accumsan eros tristique. Phasellus eros augue, venenatis quis facilisis eget, tincidunt quis orci. Nullam imperdiet at orci at dapibus. Nulla quis nibh vel arcu dignissim consectetur. Cras id cursus lectus. Cras vel elit sit amet lacus egestas pellentesque id eget nulla. Phasellus id quam vitae leo suscipit vehicula a at dolor. Suspendisse rhoncus placerat dui, eget tristique massa bibendum ac. Sed gravida molestie turpis in luctus. In sed ligula ex. Etiam sodales, nisi mollis ornare feugiat, sapien orci ornare nulla, et imperdiet odio lectus congue nibh. In sodales velit in justo pretium, ut gravida felis vestibulum.</p>\r\n\r\n<p>Nulla vehicula, nisi nec elementum lacinia, arcu dui mollis metus, in sagittis leo urna non nibh. Vivamus faucibus condimentum odio, id dignissim nulla tempus quis. Aliquam volutpat arcu ex, id vestibulum lorem vestibulum sit amet. In ligula lectus, pharetra vulputate convallis id, placerat blandit arcu. Donec et accumsan erat. Curabitur facilisis urna id arcu vulputate congue. Aliquam ut sapien lobortis, pretium urna eget, imperdiet nulla. Integer vitae orci pulvinar, tempor lectus quis, suscipit tellus. Mauris quis hendrerit magna. Nunc mattis risus id aliquet venenatis. Fusce euismod purus vitae feugiat lobortis. Integer vitae urna in ex mattis gravida ac bibendum odio. Aliquam euismod ornare dictum. Morbi quis efficitur metus.</p>\r\n\r\n<p>Donec nec lorem at urna pulvinar placerat. Morbi id convallis orci, quis convallis tellus. Integer rhoncus commodo gravida. Praesent consequat odio sed nibh finibus tincidunt nec ut diam. Praesent pharetra libero at nisi efficitur vehicula. Proin ac semper sapien. Vivamus gravida sed urna eu rhoncus.</p>\r\n\r\n<p>Sed sagittis libero in vehicula egestas. Pellentesque euismod in velit eu mattis. Integer vitae accumsan tellus. Suspendisse pretium scelerisque leo, ac accumsan urna dapibus et. Quisque imperdiet molestie dui, vel luctus est tristique a. Integer malesuada nibh nisi, sit amet aliquet leo venenatis in. Sed tristique quam in orci porta rutrum. Mauris et feugiat elit. Nulla convallis lectus dignissim mi vulputate cursus. Quisque a pretium neque, vel laoreet turpis. Fusce efficitur dui ex, iaculis porttitor nibh tincidunt malesuada. Sed at augue eu justo ultrices congue.</p>\r\n\r\n<p>Integer in suscipit odio. Suspendisse potenti. Integer rhoncus suscipit eros vel vulputate. Sed in lacinia elit. Ut eget eleifend massa. Nulla interdum, sapien eget mollis dignissim, nisl elit efficitur ante, vitae iaculis lacus urna vel lectus. Nulla ultrices neque vitae diam pulvinar, vitae interdum dui consectetur. Vestibulum eget mi vitae mi efficitur imperdiet. Pellentesque consequat ligula at fermentum interdum. Donec faucibus enim in aliquet lobortis. Sed ac est non enim egestas blandit. Nam euismod porta elit nec aliquam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum diam tincidunt, suscipit elit in, congue nunc. Nulla lobortis ligula id tellus mollis, ac accumsan eros tristique. Phasellus eros augue, venenatis quis facilisis eget, tincidunt quis orci. Nullam imperdiet at orci at dapibus. Nulla quis nibh vel arcu dignissim consectetur. Cras id cursus lectus. Cras vel elit sit amet lacus egestas pellentesque id eget nulla. Phasellus id quam vitae leo suscipit vehicula a at dolor. Suspendisse rhoncus placerat dui, eget tristique massa bibendum ac. Sed gravida molestie turpis in luctus. In sed ligula ex. Etiam sodales, nisi mollis ornare feugiat, sapien orci ornare nulla, et imperdiet odio lectus congue nibh. In sodales velit in justo pretium, ut gravida felis vestibulum.</p>\r\n\r\n<p>Nulla vehicula, nisi nec elementum lacinia, arcu dui mollis metus, in sagittis leo urna non nibh. Vivamus faucibus condimentum odio, id dignissim nulla tempus quis. Aliquam volutpat arcu ex, id vestibulum lorem vestibulum sit amet. In ligula lectus, pharetra vulputate convallis id, placerat blandit arcu. Donec et accumsan erat. Curabitur facilisis urna id arcu vulputate congue. Aliquam ut sapien lobortis, pretium urna eget, imperdiet nulla. Integer vitae orci pulvinar, tempor lectus quis, suscipit tellus. Mauris quis hendrerit magna. Nunc mattis risus id aliquet venenatis. Fusce euismod purus vitae feugiat lobortis. Integer vitae urna in ex mattis gravida ac bibendum odio. Aliquam euismod ornare dictum. Morbi quis efficitur metus.</p>\r\n\r\n<p>Donec nec lorem at urna pulvinar placerat. Morbi id convallis orci, quis convallis tellus. Integer rhoncus commodo gravida. Praesent consequat odio sed nibh finibus tincidunt nec ut diam. Praesent pharetra libero at nisi efficitur vehicula. Proin ac semper sapien. Vivamus gravida sed urna eu rhoncus.</p>\r\n\r\n<p>Sed sagittis libero in vehicula egestas. Pellentesque euismod in velit eu mattis. Integer vitae accumsan tellus. Suspendisse pretium scelerisque leo, ac accumsan urna dapibus et. Quisque imperdiet molestie dui, vel luctus est tristique a. Integer malesuada nibh nisi, sit amet aliquet leo venenatis in. Sed tristique quam in orci porta rutrum. Mauris et feugiat elit. Nulla convallis lectus dignissim mi vulputate cursus. Quisque a pretium neque, vel laoreet turpis. Fusce efficitur dui ex, iaculis porttitor nibh tincidunt malesuada. Sed at augue eu justo ultrices congue.</p>\r\n\r\n<p>Integer in suscipit odio. Suspendisse potenti. Integer rhoncus suscipit eros vel vulputate. Sed in lacinia elit. Ut eget eleifend massa. Nulla interdum, sapien eget mollis dignissim, nisl elit efficitur ante, vitae iaculis lacus urna vel lectus. Nulla ultrices neque vitae diam pulvinar, vitae interdum dui consectetur. Vestibulum eget mi vitae mi efficitur imperdiet. Pellentesque consequat ligula at fermentum interdum. Donec faucibus enim in aliquet lobortis. Sed ac est non enim egestas blandit. Nam euismod porta elit nec aliquam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum diam tincidunt, suscipit elit in, congue nunc. Nulla lobortis ligula id tellus mollis, ac accumsan eros tristique. Phasellus eros augue, venenatis quis facilisis eget, tincidunt quis orci. Nullam imperdiet at orci at dapibus. Nulla quis nibh vel arcu dignissim consectetur. Cras id cursus lectus. Cras vel elit sit amet lacus egestas pellentesque id eget nulla. Phasellus id quam vitae leo suscipit vehicula a at dolor. Suspendisse rhoncus placerat dui, eget tristique massa bibendum ac. Sed gravida molestie turpis in luctus. In sed ligula ex. Etiam sodales, nisi mollis ornare feugiat, sapien orci ornare nulla, et imperdiet odio lectus congue nibh. In sodales velit in justo pretium, ut gravida felis vestibulum.</p>\r\n\r\n<p>Nulla vehicula, nisi nec elementum lacinia, arcu dui mollis metus, in sagittis leo urna non nibh. Vivamus faucibus condimentum odio, id dignissim nulla tempus quis. Aliquam volutpat arcu ex, id vestibulum lorem vestibulum sit amet. In ligula lectus, pharetra vulputate convallis id, placerat blandit arcu. Donec et accumsan erat. Curabitur facilisis urna id arcu vulputate congue. Aliquam ut sapien lobortis, pretium urna eget, imperdiet nulla. Integer vitae orci pulvinar, tempor lectus quis, suscipit tellus. Mauris quis hendrerit magna. Nunc mattis risus id aliquet venenatis. Fusce euismod purus vitae feugiat lobortis. Integer vitae urna in ex mattis gravida ac bibendum odio. Aliquam euismod ornare dictum. Morbi quis efficitur metus.</p>\r\n\r\n<p>Donec nec lorem at urna pulvinar placerat. Morbi id convallis orci, quis convallis tellus. Integer rhoncus commodo gravida. Praesent consequat odio sed nibh finibus tincidunt nec ut diam. Praesent pharetra libero at nisi efficitur vehicula. Proin ac semper sapien. Vivamus gravida sed urna eu rhoncus.</p>\r\n\r\n<p>Sed sagittis libero in vehicula egestas. Pellentesque euismod in velit eu mattis. Integer vitae accumsan tellus. Suspendisse pretium scelerisque leo, ac accumsan urna dapibus et. Quisque imperdiet molestie dui, vel luctus est tristique a. Integer malesuada nibh nisi, sit amet aliquet leo venenatis in. Sed tristique quam in orci porta rutrum. Mauris et feugiat elit. Nulla convallis lectus dignissim mi vulputate cursus. Quisque a pretium neque, vel laoreet turpis. Fusce efficitur dui ex, iaculis porttitor nibh tincidunt malesuada. Sed at augue eu justo ultrices congue.</p>\r\n\r\n<p>Integer in suscipit odio. Suspendisse potenti. Integer rhoncus suscipit eros vel vulputate. Sed in lacinia elit. Ut eget eleifend massa. Nulla interdum, sapien eget mollis dignissim, nisl elit efficitur ante, vitae iaculis lacus urna vel lectus. Nulla ultrices neque vitae diam pulvinar, vitae interdum dui consectetur. Vestibulum eget mi vitae mi efficitur imperdiet. Pellentesque consequat ligula at fermentum interdum. Donec faucibus enim in aliquet lobortis. Sed ac est non enim egestas blandit. Nam euismod porta elit nec aliquam.</p>\r\n', '2021-11-29 13:29:45'),
(103, 112, 'mikisr33', '<p><img alt=\"\" src=\"https://www.google.com/search?q=270+plin+srbija&amp;rlz=1C1GCEA_enMK981MK981&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=dx53ly_aJzwJbM%252CBQrjhFP1OG-MFM%252C_%253BcnUrbsjcGtyKGM%252CBQrjhFP1OG-MFM%252C_%253BSTWySLfhVRIYjM%252CBQrjhFP1OG-MFM%252C_%253BPqJZ_63WWpCRGM%252CBQrjhFP1OG-MFM%252C_%253BeGG2VLuAAaN1FM%252CvxGAg_SfEsbYyM%252C_%253BvDthFkM8weBe8M%252CBQrjhFP1OG-MFM%252C_%253Bu9dQ7x6b6GUcxM%252CBQrjhFP1OG-MFM%252C_%253BLoqELBlXus4IPM%252CvxGAg_SfEsbYyM%252C_%253BpokEzU9H398z3M%252CBQrjhFP1OG-MFM%252C_%253BDpno0dB6J-4Q3M%252CLEmX1XIWTQ6FhM%252C_&amp;vet=1&amp;usg=AI4_-kQqjOx8_QlhtAjrPHLDDUej3f94Pg&amp;sa=X&amp;ved=2ahUKEwiv6ajs5r30AhWBDewKHQJiBUgQ9QF6BAgYEAE#imgrc=STWySLfhVRIYjM\" /><img alt=\"\" src=\"https://cdn-katapult.azureedge.net/cdn/products/AH6789-101_1_460x460.jpg\" style=\"height:460px; width:460px\" /><img alt=\"\" src=\"https://www.google.com/search?q=270+plin+srbija&amp;rlz=1C1GCEA_enMK981MK981&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=dx53ly_aJzwJbM%252CBQrjhFP1OG-MFM%252C_%253BcnUrbsjcGtyKGM%252CBQrjhFP1OG-MFM%252C_%253BSTWySLfhVRIYjM%252CBQrjhFP1OG-MFM%252C_%253BPqJZ_63WWpCRGM%252CBQrjhFP1OG-MFM%252C_%253BeGG2VLuAAaN1FM%252CvxGAg_SfEsbYyM%252C_%253BvDthFkM8weBe8M%252CBQrjhFP1OG-MFM%252C_%253Bu9dQ7x6b6GUcxM%252CBQrjhFP1OG-MFM%252C_%253BLoqELBlXus4IPM%252CvxGAg_SfEsbYyM%252C_%253BpokEzU9H398z3M%252CBQrjhFP1OG-MFM%252C_%253BDpno0dB6J-4Q3M%252CLEmX1XIWTQ6FhM%252C_&amp;vet=1&amp;usg=AI4_-kQqjOx8_QlhtAjrPHLDDUej3f94Pg&amp;sa=X&amp;ved=2ahUKEwiv6ajs5r30AhWBDewKHQJiBUgQ9QF6BAgYEAE#imgrc=STWySLfhVRIYjM\" /></p>\r\n', '2021-11-30 09:15:26'),
(109, 107, 'mikisr33', '<p><img alt=\"\" src=\"https://i.pinimg.com/736x/f7/af/c6/f7afc6d39f0419b0bc212ceb6e1e7cd0.jpg\" /></p>\r\n', '2022-01-04 14:49:08'),
(110, 107, 'mikisr33', '<p><img alt=\"\" src=\"https://i.ytimg.com/vi/n0Zli_fQeP8/maxresdefault.jpg\" style=\"height:720px; width:1280px\" /></p>\r\n', '2022-01-04 14:50:45'),
(111, 107, 'mikisr33', '<p><img alt=\"\" src=\"https://i.ytimg.com/vi/1TQCFE4KUY8/maxresdefault.jpg\" style=\"height:720px; width:1280px\" /></p>\r\n', '2022-01-04 14:51:28'),
(113, 107, 'mikisr33', '<p><img alt=\"\" src=\"https://i.ytimg.com/vi/WddpRmmAYkg/maxresdefault.jpg\" /></p>\r\n', '2022-01-04 14:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `geocoding`
--

CREATE TABLE `geocoding` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `geocoding`
--

INSERT INTO `geocoding` (`address`, `latitude`, `longitude`) VALUES
('adelaide, australia', -34.9285, 138.601),
('auto', 37.0326, -95.6251),
('skopje', 41.9981, 21.4254),
('strumica', 41.4378, 22.6427);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id_new` int(11) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `number_likes` int(11) NOT NULL,
  `last_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id_new`, `post_slug`, `number_likes`, `last_added`) VALUES
(33, '8-x-5-Tradesmans-Trailer', 12, '2021-10-01 00:46:32'),
(34, 'o', 9, '2021-10-01 08:12:16'),
(35, 'oioi-145917', 12, '2021-09-30 10:53:46'),
(36, 'Skate-Tools_51385', 2, '2021-10-01 01:22:31'),
(37, 'Kids-Cricket-Sets', 7, '2021-09-30 10:54:16'),
(38, 'post_1111', 6, '2021-10-01 08:12:09'),
(39, 'i-86578', 2, '2021-09-30 10:59:47'),
(40, 'post_999', 2, '2021-09-30 02:27:45'),
(41, 'oioi', 1, '2021-09-30 13:09:16'),
(42, 'Sterling-Silver-Charm-Bracelets', 5, '2021-10-01 01:35:33'),
(43, 'Skate-Tools-758948', 4, '2021-10-01 01:10:05'),
(44, 'yu', 2, '2021-10-06 23:55:55'),
(45, 'Skate-Tools', 1, '2021-10-06 14:23:46'),
(46, 'Skate-Too2', 5, '2021-10-12 02:30:53'),
(47, 'SWITCH-Statement', 6, '2021-10-12 14:31:02'),
(48, 'mikiiiiiiiiii', 9, '2021-10-20 01:52:40'),
(49, 'ioioi', 28, '2021-10-25 14:24:52'),
(50, 'Pantec-Trailers', 9, '2021-10-25 14:25:08'),
(51, 'Sterling-Silver-Charm-Bracelets-538580', 5, '2021-10-25 14:26:16'),
(52, '8-x-5-Tradesmans-Trailer-588202', 3, '2021-10-25 14:26:27'),
(53, 'oii', 5, '2021-10-26 06:39:51'),
(54, 'wordpress', 3, '2021-11-02 11:29:38'),
(55, 'popopopop', 4, '2021-11-04 08:48:38'),
(56, '0-0', 0, '2021-11-05 13:51:54'),
(57, '90909', 8, '2021-11-05 13:55:41'),
(58, 'ioi-421147', 0, '2021-11-05 14:26:01'),
(59, 'pooo', 0, '2021-11-05 15:01:11'),
(60, 'ioi', 1, '2021-11-08 08:12:48'),
(61, 'proba-proba', 0, '2021-11-11 13:51:47'),
(62, 'loader.gif', 0, '2021-11-11 15:25:30'),
(63, 'get-data.php', 0, '2021-11-11 15:30:51'),
(64, 'jquery-3.2.1.min.js', 0, '2021-11-11 15:32:01'),
(65, '107', 0, '2021-11-15 08:54:37'),
(66, 'i', 2, '2021-11-19 11:16:49'),
(67, 'posts', 0, '2021-11-23 12:24:13'),
(68, 'opop', 7, '2021-11-26 14:33:19'),
(69, 'bars', 0, '2021-12-23 08:35:10'),
(70, 'Mega-Menu', 0, '2022-01-11 13:54:45'),
(71, 'uiuiu', 0, '2022-01-12 14:18:51'),
(72, 'opop-358381', 0, '2022-01-12 15:14:46'),
(73, 'search_user', 0, '2022-06-04 05:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `marker_id` int(11) NOT NULL,
  `marker_Title` varchar(255) NOT NULL,
  `latitude` float(20,10) NOT NULL,
  `longitude` float(20,10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`marker_id`, `marker_Title`, `latitude`, `longitude`, `description`, `user_id`, `time_added`) VALUES
(104, '', 38.4228477478, -79.8047409058, '', 3, '2022-02-07 08:14:08'),
(105, '', 38.9032402039, -77.0032272339, '', 3, '2022-02-07 08:14:14'),
(107, '', 40.5591163635, -91.2854537964, '', 3, '2022-06-02 19:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_p` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `visits` int(255) NOT NULL DEFAULT 0,
  `num_comments` int(11) DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_p`, `category_id`, `user_id`, `title`, `visits`, `num_comments`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 4, 3, 'post_1111', 30, 0, 'post_1111', '<p>edited !!! t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using LOREM Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using<span class=\"marker\"><strong> </strong></span>&#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use</p>\r\n', 'vegan-icon.jpg', '2021-09-02 13:18:56'),
(7, 4, 3, 'post_999', 1, 0, 'post_999', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tincidunt nisi ut neque fermentum feugiat. Morbi non condimentum arcu. Quisque gravida nulla at lorem porta suscipit vel euismod elit. Etiam tincidunt pulvinar vehicula. Maecenas quis aliquam sem, nec finibus dui. Etiam fermentum nunc sed purus ornare iaculis. Quisque nunc nulla, lacinia et dapibus sit amet, fringilla id nibh. Nullam mattis consectetur suscipit. Quisque id odio sed nulla dapibus mattis a vitae mauris. Mauris ut mi ut nulla fermentum consequat ut vel est. Nullam accumsan, dolor et ultrices semper, mi erat luctus urna, non varius enim mauris at tellus. Integer pellentesque ullamcorper velit. Ut felis enim, luctus sit amet magna non, ultrices fermentum quam. Ut erat velit, cursus egestas lorem ut, hendrerit volutpat mauris.</p>\r\n\r\n<p>In hac habitasse platea dictumst. Mauris vel laoreet sapien, at gravida ante. Quisque quis felis risus. Nunc luctus, nisl ac fringilla egestas, odio velit posuere ex, ut mattis orci massa non nunc. Sed eleifend pellentesque euismod. Nam placerat eros eu risus rutrum aliquam. Fusce sit amet tellus nec tellus vestibulum consectetur a efficitur lacus. Suspendisse venenatis velit ac nisi euismod commodo. Praesent odio libero, porta et purus ac, dictum euismod ex. Nulla enim nisi, sodales ut facilisis in, porta at nunc. Mauris bibendum ultricies sem sit amet viverra.</p>\r\n\r\n<p>Aenean egestas ac elit et faucibus. Donec eget posuere tortor. In porta lobortis nisl vel dictum. Ut at tellus tristique, viverra odio eu, ultricies lorem. Etiam vulputate volutpat tincidunt. Curabitur sit amet eros purus. Aenean nec molestie turpis.</p>\r\n\r\n<p>Proin ut sapien a nibh varius convallis id eu nisi. Curabitur ut mattis tortor, at porttitor mi. Aenean vel vestibulum odio. Vestibulum at pellentesque leo, non pretium magna. Praesent aliquet dictum leo in fringilla. Quisque volutpat nulla ut augue gravida, in porttitor leo efficitur. Proin in leo erat. Aenean gravida lorem urna, vel volutpat tellus scelerisque a. Sed odio enim, hendrerit nec accumsan sit amet, facilisis nec nunc. In rutrum, dolor eu blandit tempus, nisl nisi aliquet purus, vel laoreet odio tellus volutpat eros. Praesent lacinia eu nisi vel commodo.</p>\r\n', 'fructose-friendly-icon.jpg', '2021-09-03 14:08:18'),
(78, 4, 3, 'Skate Tools', 5, 0, 'Skate-Tools', '<p>pop</p>\r\n', 'fructose-friendly-icon.jpg', '2021-09-16 12:54:07'),
(79, 4, 3, 'Skate Tools damjan', 2, 0, 'Skate-Tools_51385', '<p>iuui</p>\r\n', 'soy-free-icon.jpg', '2021-09-16 12:54:15'),
(82, 4, 3, 'Skate Tools', 0, 0, 'Skate-Tools-758948', '<p>u</p>\r\n', 'sugar-free-icon.jpg', '2021-09-16 13:33:17'),
(84, 4, 3, 'Kids Cricket Sets', 16, 0, 'Kids-Cricket-Sets', '<p>l</p>\r\n', 'tree-768x537.jpg', '2021-09-20 07:19:55'),
(85, 4, 3, 'Sterling Silver Charm Bracelets', 2, 0, 'Sterling-Silver-Charm-Bracelets', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula quam non ante volutpat placerat. Duis vehicula ligula vel leo facilisis, a porta dolor efficitur. Morbi sit amet mattis enim. Suspendisse auctor justo scelerisque risus aliquet ullamcorper. Vestibulum porta, leo venenatis hendrerit interdum, enim magna venenatis justo, ut tempus ipsum sem quis arcu. Vestibulum convallis mi ac vestibulum tempus. Aenean id dui consectetur, fermentum velit in, porta metus. Proin luctus tortor ut justo pharetra, sed blandit tortor lobortis. Integer placerat ligula eu leo dignissim, sit amet pharetra odio egestas. Curabitur iaculis, leo sed maximus tempor, eros dolor consectetur diam, maximus rhoncus risus arcu quis leo. Cras tristique lectus neque, at rutrum enim finibus in. Nulla facilisi. Praesent eget urna vulputate, accumsan nunc id, ornare elit.</p>\r\n\r\n<p>Vivamus ultrices, sem at ornare feugiat, quam nisl accumsan dolor, ac auctor est turpis vitae mauris. Donec non turpis magna. Duis pellentesque felis suscipit, gravida dui a, egestas elit. Praesent dui eros, finibus vel ornare a, ornare id mauris. Nullam vitae dolor vel leo iaculis lobortis sed nec tellus. Phasellus nec tincidunt nisl. Donec quis purus vel nisi mollis tempus in et mauris.</p>\r\n\r\n<p>Fusce scelerisque mattis elit, consequat pulvinar neque semper pretium. In malesuada nibh erat, vel egestas arcu eleifend eu. Vivamus tincidunt lacus in urna fermentum lacinia. Integer eu porta risus. Vivamus vel laoreet quam. Proin pretium urna ac viverra auctor. Quisque bibendum sodales ultricies. Morbi tempor purus risus, sed bibendum libero condimentum vulputate. In et luctus dolor. Donec ut semper mauris, non commodo libero. Vestibulum semper lacus justo, id finibus mi sagittis ut. Sed dictum tincidunt neque. Pellentesque sagittis ipsum bibendum, convallis libero at, molestie nulla. Aenean id odio ligula. Etiam justo lorem, pretium eget justo eu, feugiat facilisis turpis. Ut ultrices auctor velit, ac convallis nisl posuere non.</p>\r\n', 'gluten-free-icon.jpg', '2021-09-22 13:52:05'),
(86, 2, 3, 'ip', 7, 0, 'i', '<p>n tristique nibh ante, a porta justo mollis sit amet. Nam nec lacus odio. Donec suscipit est sapien, nec imperdiet lectus gravida non. Suspendisse neque magna, porttitor vulputate pellentesque eu, egestas quis risus. Suspendisse nisi felis, molestie a purus sit amet, iaculis maximus diam. Mauris aliquet diam erat, quis pellentesque dolor ultricies eu. Donec blandit fermentum massa, et facilisis diam dictum in. Vestibulum quam erat, faucibus sit amet lacus eu, pretium pharetra est. Nulla nec dui lobortis mi dapibus accumsan at ut eros. Vestibulum lobortis, tortor non molestie fermentum, sem eros mollis felis, sed rutrum diam sapien quis odio. Cras urna nulla, dignissim eget felis id, facilisis rutrum ipsum.</p>\r\n', 'Untitled1.jpg', '2021-09-22 13:56:13'),
(89, 4, 3, 'oioi', 40, 2, 'oioi-145917', '<h1>opaaaaaa</h1>\r\n', 'rose.jpg', '2021-09-23 12:51:17'),
(90, 9, 3, 'Orange ', 3, 0, 'o', '<p>ioio</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tincidunt nisi ut neque fermentum feugiat. Morbi non condimentum arcu. Quisque gravida nulla at lorem porta suscipit vel euismod elit. Etiam tincidunt pulvinar vehicula. Maecenas quis aliquam sem, nec finibus dui. Etiam fermentum nunc sed purus ornare iaculis. Quisque nunc nulla, lacinia et dapibus sit amet, fringilla id nibh. Nullam mattis consectetur suscipit. Quisque id odio sed nulla dapibus mattis a vitae mauris. Mauris ut mi ut nulla fermentum consequat ut vel est. Nullam accumsan, dolor et ultrices semper, mi erat luctus urna, non varius enim mauris at tellus. Integer pellentesque ullamcorper velit. Ut felis enim, luctus sit amet magna non, ultrices fermentum quam. Ut erat velit, cursus egestas lorem ut, hendrerit volutpat mauris.</p>\r\n\r\n<p>In hac habitasse platea dictumst. Mauris vel laoreet sapien, at gravida ante. Quisque quis felis risus. Nunc luctus, nisl ac fringilla egestas, odio velit posuere ex, ut mattis orci massa non nunc. Sed eleifend pellentesque euismod. Nam placerat eros eu risus rutrum aliquam. Fusce sit amet tellus nec tellus vestibulum consectetur a efficitur lacus. Suspendisse venenatis velit ac nisi euismod commodo. Praesent odio libero, porta et purus ac, dictum euismod ex. Nulla enim nisi, sodales ut facilisis in, porta at nunc. Mauris bibendum ultricies sem sit amet viverra.</p>\r\n\r\n<p>Aenean egestas ac elit et faucibus. Donec eget posuere tortor. In porta lo</p>\r\n', 'new_post.jpg', '2021-09-23 12:51:23'),
(91, 2, 3, '8 x 5 Tradesman\'s Trailer', 29, 0, '8-x-5-Tradesmans-Trailer', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tincidunt nisi ut neque fermentum feugiat. Morbi non condimentum arcu. Quisque gravida nulla at lorem porta suscipit vel euismod elit. Etiam tincidunt pulvinar vehicula. Maecenas quis aliquam sem, nec finibus dui. Etiam fermentum nunc sed purus ornare iaculis. Quisque nunc nulla, lacinia et dapibus sit amet, fringilla id nibh. Nullam mattis consectetur suscipit. Quisque id odio sed nulla dapibus mattis a vitae mauris. Mauris ut mi ut nulla fermentum consequat ut vel est. Nullam accumsan, dolor et ultrices semper, mi erat luctus urna, non varius enim mauris at tellus. Integer pellentesque ullamcorper velit. Ut felis enim, luctus sit amet magna non, ultrices fermentum quam. Ut erat velit, cursus egestas lorem ut, hendrerit volutpat mauris.</p>\r\n\r\n<p>In hac habitasse platea dictumst. Mauris vel laoreet sapien, at gravida ante. Quisque quis felis risus. Nunc luctus, nisl ac fringilla egestas, odio velit posuere ex, ut mattis orci massa non nunc. Sed eleifend pellentesque euismod. Nam placerat eros eu risus rutrum aliquam. Fusce sit amet tellus nec tellus vestibulum consectetur a efficitur lacus. Suspendisse venenatis velit ac nisi euismod commodo. Praesent odio libero, porta et purus ac, dictum euismod ex. Nulla enim nisi, sodales ut facilisis in, porta at nunc. Mauris bibendum ultricies sem sit amet viverra.</p>\r\n\r\n<p>Aenean egestas ac elit et faucibus. Donec eget posuere tortor. In porta lo</p>\r\n', 'watermelon.jpg', '2021-09-28 13:08:21'),
(92, 4, 3, 'yu', 0, 0, 'yu', '<p>yyuy</p>\r\n', 'like1.jpg', '2021-10-04 14:34:38'),
(93, 4, 3, 'Skate Too2', 2, 0, 'Skate-Too2', '<p><strong>Tip:</strong>&nbsp;Also see&nbsp;<a href=\"https://www.w3schools.com/howto/howto_js_toggle_class.asp\">How To Toggle A Class</a>.</p>\r\n\r\n<p><strong>Tip:</strong>&nbsp;Also see&nbsp;<a href=\"https://www.w3schools.com/howto/howto_js_remove_class.asp\">How To Remove A Class</a>.</p>\r\n\r\n<p><strong>Tip:</strong>&nbsp;Learn more about the&nbsp;<a href=\"https://www.w3schools.com/jsref/prop_element_classlist.asp\">classList</a>&nbsp;property in our JavaScript Reference.</p>\r\n\r\n<p><strong>Tip:</strong>&nbsp;Learn more about the&nbsp;<a href=\"https://www.w3schools.com/jsref/prop_html_classname.asp\">className</a>&nbsp;property in our JavaScript Reference.</p>\r\n', 'like2.jpg', '2021-10-07 13:53:24'),
(95, 4, 3, 'SWITCH Statement', 6, 0, 'SWITCH-Statement', '<p>switch(<em>expression</em>) {<br />\r\n&nbsp;&nbsp;case&nbsp;<em>x</em>:<br />\r\n<em>&nbsp;&nbsp;&nbsp;&nbsp;// code block</em><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;break;<br />\r\n&nbsp;&nbsp;case&nbsp;<em>y</em>:<br />\r\n<em>&nbsp;&nbsp;&nbsp;&nbsp;// code block</em><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;break;<br />\r\n&nbsp;&nbsp;default:<br />\r\n&nbsp;&nbsp; &nbsp;//&nbsp;<em>code block</em><br />\r\n}</p>\r\n', 'op.jpg', '2021-10-08 13:13:04'),
(96, 4, 3, '8 x 5 Tradesman\'s Trailer', 4, 0, '8-x-5-Tradesmans-Trailer-588202', '<p>lpop</p>\r\n', 'op.jpg', '2021-10-08 13:16:14'),
(98, 4, 3, 'Sterling Silver Charm Bracelets', 47, 5, 'Sterling-Silver-Charm-Bracelets-538580', '<p>oioio</p>\r\n', 'cat.jpg', '2021-10-13 09:55:35'),
(105, 9, 3, 'mikiiiiiiiiii', 64, 0, 'mikiiiiiiiiii', '<p>poooooooooooooo</p>\r\n', 'noimage.jpg', '2021-10-15 14:53:58'),
(106, 4, 4, 'Pantec Trailers', 20, 0, 'Pantec-Trailers', '<p>ioio</p>\r\n', 'bag1.jpg', '2021-10-19 06:33:24'),
(107, 9, 4, 'ioioi', 297, 5, 'ioioi', '<p>oioioi</p>\r\n', 'bi7.jpg', '2021-10-25 13:45:47'),
(108, 4, 3, 'wordpress', 45, 0, 'wordpress', '<p><strong>By:&nbsp;<strong>Will Tutt</strong>&nbsp;on&nbsp;1 February 2017</strong></p>\r\n\r\n<p>I&#39;ve owned 3 different dump pouches. All SORD. I&#39;ve used issued ones too. From land 125 to SCE16. All SORD ones were better than issued. This one is the best.</p>\r\n\r\n<p><img src=\"https://www.sordaustralia.com/assets/full/SAAC141.jpg?20210309030325\" /></p>\r\n', 'gps-bluetooth.jpg', '2021-11-01 14:32:46'),
(109, 4, 3, 'ioi', 37, 0, 'ioi', '<p>ioi</p>\r\n', 'aa.jpg', '2021-11-03 13:52:45'),
(110, 4, 3, 'popopopop', 93, 1, 'popopopop', '<p>opopopopopopo</p>\r\n', 'noimage.jpg', '2021-11-03 13:53:17'),
(112, 4, 4, '90909', 154, 4, '90909', '<p><img alt=\"\" src=\"https://www.telekom.mk/webimg?id=35516&amp;width=240&amp;height=240\" /><img alt=\"\" src=\"https://www.telekom.mk/webimg?id=35516&amp;width=240&amp;height=240\" style=\"height:400px; width:400px\" /><img alt=\"\" src=\"https://www.telekom.mk/webimg?id=35516&amp;width=240&amp;height=240\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<p>ppopppo</p>\r\n', 'Untitled1.png', '2021-11-05 13:55:26'),
(118, 4, 3, 'opop', 99, 0, 'opop', '<p>opopo</p>\r\n', 'bi4.jpg', '2021-11-26 14:33:01'),
(119, 9, 3, 'Mega Menu', 39, 0, 'Mega-Menu', '<p>Vivamus tristique non dolor nec scelerisque. Integer justo sem, bibendum et dui id, faucibus rhoncus lorem. Quisque at sodales augue. Sed congue faucibus erat eu placerat. Morbi sem justo, lobortis mollis ex quis, tincidunt maximus dolor. Fusce at porttitor velit. Integer justo nibh, pellentesque vitae pulvinar vitae, dictum a ligula. Etiam vel aliquet eros. Duis eu faucibus magna. Ut ac venenatis mauris. Vestibulum a massa sit amet elit eleifend ultricies in eu enim. Nunc rhoncus nisl vitae enim dictum volutpat. Etiam sagittis tincidunt est, sit amet mollis mauris facilisis eu. Maecenas sapien ante, pharetra sit amet leo quis, elementum tincidunt urna. Quisque vel elit purus.</p>\r\n\r\n<p>Vivamus quis sem urna. Cras pulvinar velit quam, in sagittis sem ultricies nec. Vivamus lorem metus, lobortis dignissim mi quis, lobortis tempus leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec vulputate ex eget hendrerit placerat. Integer laoreet tempor urna, bibendum maximus magna lobortis a. Vestibulum quis metus quis velit feugiat tristique et vel neque. Aenean finibus vel velit at venenatis. Phasellus id eros vulputate, placerat arcu vitae, pellentesque sem. Suspendisse potenti. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse ullamcorper magna augue, nec dapibus lacus tristique vitae. Curabitur id tellus lobortis, congue sem id, aliquam mauris.</p>\r\n', 'logos.jpg', '2022-01-11 13:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id_images` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id_images`, `post_id`, `image_name`, `date_created`) VALUES
(320, 116, 'truck2.jpg', '2021-11-15 08:08:54'),
(321, 116, 'truck1.jpg', '2021-11-15 08:08:54'),
(329, 112, 'truck2.jpg', '2021-11-15 10:28:51'),
(353, 116, 'bag1.jpg', '2021-11-17 15:20:12'),
(354, 116, 'cat.jpg', '2021-11-17 15:20:12'),
(355, 116, 'corn-free-icon.jpg', '2021-11-17 15:20:12'),
(356, 116, 'dairy-free-icon.jpg', '2021-11-17 15:20:12'),
(357, 116, 'egg-free-icon.jpg', '2021-11-17 15:20:12'),
(358, 116, 'fructose-friendly-icon.jpg', '2021-11-17 15:20:12'),
(359, 116, 'gluten-free-icon.jpg', '2021-11-17 15:20:12'),
(361, 116, 'new_post.jpg', '2021-11-17 15:20:38'),
(362, 116, 'truck2.jpg', '2021-11-17 15:20:38'),
(363, 116, 'Untitled1.png', '2021-11-17 15:20:38'),
(374, 112, 'corn-free-icon.jpg', '2021-11-18 13:06:17'),
(375, 112, 'dairy-free-icon.jpg', '2021-11-18 13:06:17'),
(376, 112, 'fructose-friendly-icon.jpg', '2021-11-18 13:06:17'),
(377, 112, 'nut-free-icon.jpg', '2021-11-18 13:06:17'),
(383, 110, 'new_post.jpg', '2021-11-19 07:47:55'),
(384, 110, 'rose.jpg', '2021-11-19 07:47:55'),
(385, 110, 'sord1.jpg', '2021-11-19 07:47:55'),
(386, 110, 'sord2.jpg', '2021-11-19 07:47:55'),
(387, 110, 'sord3.jpg', '2021-11-19 07:47:55'),
(388, 110, 'sord4.jpg', '2021-11-19 07:47:55'),
(389, 110, 'sord5.jpg', '2021-11-19 07:47:55'),
(390, 110, 'Untitled1.png', '2021-11-19 07:47:55'),
(391, 112, 'bi5.jpg', '2021-11-19 11:12:12'),
(392, 112, 'bi4.jpg', '2021-11-19 11:12:12'),
(393, 112, 'bi3.jpg', '2021-11-19 11:12:12'),
(394, 112, 'bi2.jpg', '2021-11-19 11:12:12'),
(395, 112, 'bi1.jpg', '2021-11-19 11:12:12'),
(396, 112, 'bi7.jpg', '2021-11-19 11:14:42'),
(397, 112, 'bi6.jpg', '2021-11-19 11:14:42'),
(398, 107, 'bi7.jpg', '2021-11-19 15:11:26'),
(400, 107, 'bi5.jpg', '2021-11-19 15:11:26'),
(401, 107, 'bi4.jpg', '2021-11-19 15:11:26'),
(402, 107, 'bi3.jpg', '2021-11-19 15:11:26'),
(403, 107, 'bi2.jpg', '2021-11-19 15:11:26'),
(405, 1, 'bi7.jpg', '2021-11-24 11:35:01'),
(406, 1, 'bi6.jpg', '2021-11-24 11:35:01'),
(407, 1, 'bi5.jpg', '2021-11-24 11:35:01'),
(408, 1, 'bi4.jpg', '2021-11-24 11:35:01'),
(409, 1, 'bi3.jpg', '2021-11-24 11:35:01'),
(410, 1, 'bi2.jpg', '2021-11-24 11:35:01'),
(411, 1, 'bi1.jpg', '2021-11-24 11:35:01'),
(412, 91, 'bi7.jpg', '2021-11-25 08:41:55'),
(413, 91, 'bi4.jpg', '2021-11-25 08:41:55'),
(414, 91, 'bi1.jpg', '2021-11-25 08:41:55'),
(415, 108, 'bi7.jpg', '2021-11-25 10:02:51'),
(416, 108, 'bi6.jpg', '2021-11-25 10:02:51'),
(417, 108, 'bi5.jpg', '2021-11-25 10:02:51'),
(418, 108, 'bi4.jpg', '2021-11-25 10:02:51'),
(419, 108, 'bi3.jpg', '2021-11-25 10:02:51'),
(420, 108, 'bi2.jpg', '2021-11-25 10:02:51'),
(421, 108, 'bi1.jpg', '2021-11-25 10:02:51'),
(422, 118, 'bi3.jpg', '2021-11-26 14:33:54'),
(424, 118, 'bi5.jpg', '2021-11-26 14:33:54'),
(425, 118, 'bi6.jpg', '2021-11-26 14:33:54'),
(426, 118, 'bi7.jpg', '2021-11-26 14:33:54'),
(429, 118, 'bandaz1.jpg', '2021-11-30 08:36:46'),
(430, 89, 'bandaz1.jpg', '2021-11-30 09:18:45'),
(431, 89, 'bandaz12.jpg', '2021-11-30 09:18:45'),
(432, 89, 'bandaz123.jpg', '2021-11-30 09:18:45'),
(433, 89, 'bandaz1234.jpg', '2021-11-30 09:18:45'),
(434, 118, 'bandaz123456.jpg', '2021-11-30 10:20:36'),
(436, 118, 'bandaz12.jpg', '2021-11-30 11:58:30'),
(437, 118, 'bandaz123.jpg', '2021-11-30 11:58:31'),
(438, 118, 'bandaz1234.jpg', '2021-11-30 11:58:31'),
(443, 118, 'bandaz12345.jpg', '2021-12-13 15:51:07'),
(453, 109, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-201x201.png', '2022-01-11 15:02:41'),
(454, 109, '80b1ef0bfd10050f9541b2fedde669bb-150x150.jpeg', '2022-01-11 15:02:41'),
(455, 109, 'Arboricultural-Impact-Assessment-Report-300x420.jpg', '2022-01-11 15:02:41'),
(456, 109, 'Arboricultural-Impact-Assessment-Reports-150x150.jpg', '2022-01-11 15:02:41'),
(457, 109, 'cnsider-Your-Dogs-Size-Before-Choosing-a-Dog-Bed-201x201.jpg', '2022-01-11 15:02:41'),
(459, 109, 'Dog-in-Snuggle-Bed-300x300.jpg', '2022-01-11 15:02:41'),
(460, 109, 'dogs-in-elevated-dog-bed-201x201.jpg', '2022-01-11 15:02:41'),
(461, 109, 'dogs-in-elevated-dog-bed-300x420.jpg', '2022-01-11 15:02:41'),
(463, 109, 'gps-receiver-340x250.jpg', '2022-01-11 15:02:41'),
(464, 109, 'How-to-Choose-the-Right-Bed-for-Your-Dog-150x150.jpg', '2022-01-11 15:02:41'),
(465, 109, 'longboard_helmet_1-300x200.jpg', '2022-01-11 15:02:41'),
(466, 109, 'longboard_helmet_2-82x84.jpg', '2022-01-11 15:02:41'),
(468, 109, 'trees-82x84.jpg', '2022-01-11 15:02:41'),
(469, 84, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-82x84.png', '2022-01-13 13:27:40'),
(470, 84, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-150x150.png', '2022-01-13 13:27:40'),
(471, 84, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-201x201.png', '2022-01-13 13:27:40'),
(472, 84, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-300x300.png', '2022-01-13 13:27:40'),
(473, 84, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-300x420.png', '2022-01-13 13:27:40'),
(474, 84, '7_bd2632af-ab92-4e64-b6a3-801e816706e6_800x-785x350.png', '2022-01-13 13:27:40'),
(475, 84, '80b1ef0bfd10050f9541b2fedde669bb.jpeg', '2022-01-13 13:27:40'),
(476, 84, '80b1ef0bfd10050f9541b2fedde669bb-82x84.jpeg', '2022-01-13 13:27:41'),
(477, 84, '80b1ef0bfd10050f9541b2fedde669bb-150x150.jpeg', '2022-01-13 13:27:41'),
(478, 84, '80b1ef0bfd10050f9541b2fedde669bb-201x201.jpeg', '2022-01-13 13:27:41'),
(485, 119, 'sord3.jpg', '2022-01-17 09:10:49'),
(486, 119, 'sord4.jpg', '2022-01-17 09:10:49'),
(487, 119, 'sord5.jpg', '2022-01-17 09:10:49'),
(489, 119, 'Untitled11.png', '2022-01-17 09:10:49'),
(495, 119, 'open.jpg', '2022-01-18 11:18:55'),
(498, 119, 'sord3.jpg', '2022-01-21 09:43:35'),
(499, 119, 'sord4.jpg', '2022-01-21 09:43:35'),
(500, 119, 'sord5.jpg', '2022-01-21 09:43:35'),
(502, 119, 'truck3.jpg', '2022-01-21 09:43:35'),
(504, 119, 'Untitled11.png', '2022-01-21 09:43:35'),
(505, 119, 'vegan-icon.jpg', '2022-01-21 09:43:35'),
(507, 119, 'Untitled1.png', '2022-01-21 09:43:58'),
(508, 119, 'Untitled11.jpg', '2022-01-21 09:43:58'),
(510, 119, 'vegan-icon.jpg', '2022-01-21 09:43:58'),
(511, 119, 'watermelon.jpg', '2022-01-21 09:43:58'),
(512, 118, 'aa.jpg', '2022-01-25 14:38:40'),
(513, 118, 'netokracija.jpg', '2022-01-25 14:38:40'),
(514, 118, 'Untitled.jpg', '2022-01-25 14:38:40'),
(515, 118, 'Untitled1.jpg', '2022-01-25 14:38:40'),
(516, 118, 'm1_chip_icon__bn1jndnnp2b6_large.jpg', '2022-01-28 11:47:17'),
(517, 118, 'mac_mini__dc46f3sbvqi6_large.jpg', '2022-01-28 11:47:18'),
(518, 118, 'macbook_air__knzp0i282eyy_large.jpg', '2022-01-28 11:47:18'),
(519, 118, 'macbook_pro__c4kxmnzo9hoy_large.jpg', '2022-01-28 11:47:18'),
(520, 108, 'm1_chip__fb0belhcdiai_large.jpg', '2022-01-28 12:04:07'),
(521, 108, 'm1_chip_icon__bn1jndnnp2b6_large.jpg', '2022-01-28 12:04:07'),
(522, 108, 'mac_mini__dc46f3sbvqi6_large.jpg', '2022-01-28 12:04:07'),
(523, 108, 'macbook_air__knzp0i282eyy_large.jpg', '2022-01-28 12:04:07'),
(524, 108, 'macbook_pro__c4kxmnzo9hoy_large.jpg', '2022-01-28 12:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `storepostnumber`
--

CREATE TABLE `storepostnumber` (
  `posts_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name_users` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `framework` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `name_users`, `email`, `type`, `language`, `framework`, `username`, `password`, `register_date`) VALUES
(5, 'lence', 'mit1@gmail.com', 'backend', 'PHP', 'Symphony', 'leni', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 16:02:21'),
(6, 'damjan', 'damjan@gmail.com', 'frontend', 'Vue', 'No Framework', 'dame', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 16:06:04'),
(7, 'mite', 'mitko@gmail.com', 'backend', 'PHP', 'Laravel', 'mikisr3', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 16:10:50'),
(8, 'Katerina', 'kate@gmail.com', 'frontend', 'React', 'React native', 'katence', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 16:12:03'),
(9, 'silvi', 'exfo@gmail.com', 'backend', 'NodeJs', 'Expres', 'silva', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 19:15:49'),
(10, 'lola', 'info@liveskolawp.rs', 'backend', 'NodeJs', 'NestJS', 'kili', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 19:23:03'),
(11, 'sando', 's@gmail.com', 'backend', 'NodeJs', 'Expres', 'cande', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 19:34:55'),
(12, 'John', 'send@gmail.com', 'frontend', 'Angular', 'AngularJs', 'johny', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-04 19:42:48'),
(13, 'daniel', 'dani@yahoo.com', 'frontend', 'React', 'React native', 'dani123', 'eff422e6e170bd4c32c37ac026b8f1a4', '2022-06-06 19:25:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geocoding`
--
ALTER TABLE `geocoding`
  ADD PRIMARY KEY (`address`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_new`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`marker_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id_images`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_new` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `marker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id_images` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
