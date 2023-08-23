-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2023 at 02:28 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21176937_realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `name`, `email`, `image`, `post`, `phone`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Kelian Anderson', 'rawjassasm_1212.jd@gmail.com', 'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg', 'land Seller', '+17213265789', 's. Aliquam feugiat eleifend efficitur. Cras vel commodo eros. Aenean consectetur dui et nulla egestas, vel lobortis arcu fringilla. Aenean eu augue in arcu lobortis consequat rutrum nec nisi. Suspendisse efficitur orci eu dignissim volutpat. Pellentesque ullamcorper tortor sit amet metus lobortis, a vulputate lorem tincidunt. Nam volutpat congue augue, ut tincidunt magna dignissim volutpat. Pellentesque hendrerit porttitor congue. Suspendisse porttitor ex sit amet posuere pharetra. Sed gravida felis sed est interdum, nec gravida tortor maximus.', '2023-08-17 16:04:48', '2023-08-17 16:04:48'),
(2, 'Elena Gilbert', 'elena.Gd@gmail.com', 'https://images.unsplash.com/photo-1609132718484-cc90df3417f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFrZSUyMHdvbWFufGVufDB8fDB8fHww&w=1000&q=80', 'land Seller', '+2123265789', 's. Aliquam feugiat eleifend efficitur. Cras vel commodo eros. Aenean consectetur dui et nulla egestas, vel lobortis arcu fringilla. Aenean eu augue in arcu lobortis consequat rutrum nec nisi. Suspendisse efficitur orci eu dignissim volutpat. Pellentesque ullamcorper tortor sit amet metus lobortis, a vulputate lorem tincidunt. Nam volutpat congue augue, ut tincidunt magna dignissim volutpat. Pellentesque hendrerit porttitor congue. Suspendisse porttitor ex sit amet posuere pharetra. Sed gravida felis sed est interdum, nec gravida tortor maximus.', '2023-08-17 16:04:48', '2023-08-17 16:04:48'),
(3, 'Rose Roselinna', 'Roselina.Ro@gmail.com', 'https://i.dailymail.co.uk/i/pix/2014/04/23/article-2611078-1D48BA1600000578-1000_306x477.jpg', 'land Seller', '+2523265789', 's. Aliquam feugiat eleifend efficitur. Cras vel commodo eros. Aenean consectetur dui et nulla egestas, vel lobortis arcu fringilla. Aenean eu augue in arcu lobortis consequat rutrum nec nisi. Suspendisse efficitur orci eu dignissim volutpat. Pellentesque ullamcorper tortor sit amet metus lobortis, a vulputate lorem tincidunt. Nam volutpat congue augue, ut tincidunt magna dignissim volutpat. Pellentesque hendrerit porttitor congue. Suspendisse porttitor ex sit amet posuere pharetra. Sed gravida felis sed est interdum, nec gravida tortor maximus.', '2023-08-17 16:04:48', '2023-08-17 16:04:48'),
(4, 'Joan J Noel', 'damion.dubuq@yahoo.com', 'https://images.unsplash.com/photo-1582015752624-e8b1c75e3711?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80', 'Land seller', '91389499013', 'Evil zombie trailblazer. Troublemaker. Web enthusiast. Total music fan. Internet junkie. Reader. Tv guru.', '2023-08-23 13:24:14', '2023-08-23 13:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(5000) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `agent_id`, `title`, `body`, `tag`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1615874694520-474822394e73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGludGVyaW9yJTIwZGVzaWdufGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60', '2023-08-23 14:03:46', '2023-08-23 14:03:46'),
(2, 2, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', '2023-08-23 14:05:32', '2023-08-23 14:05:32'),
(3, 1, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1495433324511-bf8e92934d90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', '2023-08-23 14:07:50', '2023-08-23 14:07:50'),
(4, 1, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1502672023488-70e25813eb80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80', '2023-08-23 14:08:21', '2023-08-23 14:08:21'),
(5, 2, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80', '2023-08-23 14:11:52', '2023-08-23 14:11:52'),
(6, 4, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1600047508329-e8c910592435?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', '2023-08-23 14:13:08', '2023-08-23 14:13:08'),
(7, 4, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1600566752871-041b45cf7173?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=913&q=80', '2023-08-23 14:13:26', '2023-08-23 14:13:26'),
(8, 1, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1600585152915-d208bec867a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=852&q=80', '2023-08-23 14:14:07', '2023-08-23 14:14:07'),
(9, 3, 'How to Set your new home from scratch', 'Aenean neque turpis, imperdiet nec ultricies eget, hendrerit at lorem. Vivamus congue vehicula fringilla. Suspendisse fringilla, diam nec tempor eleifend, metus felis imperdiet urna, in varius nisl urna et justo. Pellentesque ultricies fringilla ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus non ante posuere, finibus sapien at, suscipit justo. Aenean nisi risus, tincidunt sed turpis in, accumsan malesuada dolor. Proin sed nisi vulputate, aliquam purus quis, mattis dui. Nam efficitur ipsum orci, in viverra tellus venenatis et. Donec sagittis interdum malesuada. Nullam sed ante ullamcorper, tincidunt odio vel, posuere nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sit amet diam sed est fringilla facilisis eu a felis. Proin quis elit eu sem auctor efficitur vitae vel turpis. Suspendisse eu commodo diam. Proin congue nisl libero. Integer et pharetra ipsum. Cras egestas massa dignissim, iaculis nunc venenatis, finibus ante.\n\nPellentesque consectetur purus sit amet cursus pretium. Donec vitae augue lorem. Integer sit amet fringilla erat, vitae cursus leo. Aliquam iaculis, mauris non feugiat ultrices, nisl neque maximus dolor, at consectetur nibh velit vitae neque. Proin eu leo sit amet nunc interdum dapibus. Fusce nulla dui, hendrerit sed arcu suscipit, porttitor varius enim. Ut imperdiet felis ut ante convallis semper.\n\nNam a quam id urna ultricies hendrerit quis eu dui. Aliquam in risus sit amet quam placerat fringilla nec a turpis. Curabitur tristique dolor elit.', 'Sale', 'https://images.unsplash.com/photo-1600047508006-16c1f3111ef8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', '2023-08-23 14:15:34', '2023-08-23 14:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'New York', 'https://i.pinimg.com/1200x/7d/d3/06/7dd3064ef0e69e98158540c6c19ee38d.jpg', '2023-08-17 16:05:16', '2023-08-17 16:05:16'),
(2, 'Atlanta', 'https://a.cdn-hotels.com/gdcs/production31/d1958/3e9e520e-1c67-4bd6-a3a9-9eb4ab4a5b2f.jpg', '2023-08-17 16:05:16', '2023-08-17 16:05:16'),
(3, 'Singapore', 'https://images.squarespace-cdn.com/content/v1/5a3bb03b4c326d76de73ddaa/1570204764595-DR2JEEZHR46QLSK2RQZX/chuttersnap-Y8AQatKZRGc-unsplash.jpg', '2023-08-17 16:05:16', '2023-08-17 16:05:16'),
(4, 'Paris', 'https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/blogs/9262/images/8es5qCDSdekmvLc41K4k_Eiffel_Tower_Portrait-min.jpg', '2023-08-17 16:05:16', '2023-08-17 16:05:16'),
(5, 'Tokyo', 'https://images.unsplash.com/photo-1498036882173-b41c28a8ba34?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80', '2023-08-23 14:21:28', '2023-08-23 14:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `bedspace` varchar(255) NOT NULL,
  `baths` varchar(255) NOT NULL,
  `parking_space` varchar(255) NOT NULL,
  `measurement` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL DEFAULT 'For Sale',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `agent_id`, `location_id`, `title`, `address`, `price`, `description`, `bedspace`, `baths`, `parking_space`, `measurement`, `image`, `availability`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Comfortable Apartment', '701 MARTINA DR NE ATLANTA GA 30305-2737 USA', '3500', 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.\n\n                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.\n                \n                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.', '5', '3', '2', '120sqft', 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', 'For Sale', '2023-08-17 16:05:31', '2023-08-17 16:05:31'),
(2, 1, 2, 'Home in downtown', '900 DIMMOCK ST SW ATLANTA GA 30310-3314 USA', '3500', 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.\n\n                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.\n                \n                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.', '2', '1', '5', '120sqft', 'https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=692&q=80', 'For Sale', '2023-08-17 16:05:31', '2023-08-17 16:05:31'),
(3, 2, 3, 'Comfortable Apartment', '100 Kim Seng Road 01-24 Kim Seng Plaza', '3500', 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.\n\n                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.\n                \n                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.', '5', '3', '2', '120sqft', 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', 'For Sale', '2023-08-17 16:05:31', '2023-08-17 16:05:31'),
(4, 2, 3, 'Home in Downtown', '10 Changi North Street 1 04-01', '3500', 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.\n\n                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.\n                \n                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.', '5', '3', '2', '120sqft', 'https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', 'For Sale', '2023-08-17 16:05:31', '2023-08-17 16:05:31'),
(5, 3, 4, 'Comfortable Apartment', '10 Changi North Street 1 04-01', '3500', 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.\n\n                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.\n                \n                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.', '5', '3', '2', '120sqft', 'https://images.unsplash.com/photo-1559329145-afaf18e3f349?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', 'For Sale', '2023-08-17 16:05:31', '2023-08-17 16:05:31'),
(7, 2, 3, 'Home in Downtown', '1 North Bridge Road #02-35 HIGH STREET CENTRE', '900000', 'Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id', '7', '6', '6', '120sqft', 'https://plus.unsplash.com/premium_photo-1661883964999-c1bcb57a7357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=828&q=80', 'For Sale', '2023-08-23 13:37:25', '2023-08-23 13:37:25'),
(8, 2, 3, 'Comfortable Apartment', '1 North Bridge Road #02-35 HIGH STREET CENTRE', '120000', 'Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id', '7', '6', '3', '120sqft', 'https://plus.unsplash.com/premium_photo-1671358689953-ee06a6671fce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80', 'For Sale', '2023-08-23 13:46:36', '2023-08-23 13:46:36'),
(9, 1, 3, 'Home in Downtown', '1 North Bridge Road #02-35 HIGH STREET CENTRE', '120000', 'Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id', '7', '6', '3', '120sqft', 'https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', 'For Sale', '2023-08-23 13:50:36', '2023-08-23 13:50:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_agent_id_foreign` (`agent_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_agent_id_foreign` (`agent_id`),
  ADD KEY `property_location_id_foreign` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
