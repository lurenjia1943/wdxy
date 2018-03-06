-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-03-05 17:46:14
-- 服务器版本： 5.5.56-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdxy`
--

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `classid` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `starttime` varchar(255) DEFAULT NULL,
  `finishtime` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`id`, `classid`, `status`, `starttime`, `finishtime`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '全栈14班', '0', '2018-01-02', '2018-11-30', '2018-02-03 12:58:24', '2018-02-03 12:58:24', NULL),
(2, 'TEST01', '0', '2018-02-01', '2018-11-30', '2018-02-03 12:59:10', '2018-02-03 12:59:10', NULL),
(3, 'test002', '0', '2018-01-03', '2018-12-03', '2018-02-03 15:48:05', '2018-02-03 15:48:05', NULL),
(4, '全栈开发15班', '0', NULL, NULL, '2018-02-22 11:03:45', '2018-02-22 11:03:45', NULL),
(5, '全栈开发15班', '0', '2018-02-22', '2019-03-22', '2018-02-22 11:04:15', '2018-02-22 11:04:15', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `commuting`
--

CREATE TABLE `commuting` (
  `id` int(11) UNSIGNED NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `commuting` int(11) NOT NULL,
  `time` date DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commuting`
--

INSERT INTO `commuting` (`id`, `sid`, `classid`, `commuting`, `time`, `describe`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 0, '2018-02-22', '家里有事，请假3天', '2018-02-22 12:14:44', '2018-02-22 12:14:44'),
(2, 2, 1, 2, '2018-02-21', '迟到10分钟', NULL, NULL),
(4, 4, 1, 2, '2018-02-22', '迟到半天', '2018-02-22 14:33:43', '2018-02-22 14:33:43');

-- --------------------------------------------------------

--
-- 表的结构 `grade`
--

CREATE TABLE `grade` (
  `id` int(10) UNSIGNED NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `subjectid` int(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `grade`
--

INSERT INTO `grade` (`id`, `studentid`, `subjectid`, `grade`, `state`) VALUES
(4, '2', 1, '99', '1'),
(16, '11', 2, '23', '1'),
(15, '11', 1, '54', '1'),
(10, '2', 2, '76', '1'),
(11, '4', 1, '83', '1'),
(12, '4', 2, '73', '1'),
(13, '10', 1, '', '2'),
(14, '10', 2, '88', '2'),
(17, '12', 1, '44', '1'),
(18, '12', 2, '78', '1'),
(19, '10', 1, '55', '1'),
(20, '10', 2, '86', '1');

-- --------------------------------------------------------

--
-- 表的结构 `liuji`
--

CREATE TABLE `liuji` (
  `id` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `liuji`
--

INSERT INTO `liuji` (`id`, `tid`, `sid`, `from`, `to`, `reason`, `time`, `created_at`, `updated_at`) VALUES
(7, 1, 10, 1, 2, NULL, NULL, '2018-02-22 22:31:04', '2018-02-22 22:31:04'),
(3, 2, 2, 3, 1, '测试留级', '2018-02-03', '2018-02-03 16:04:32', '2018-02-03 16:04:32'),
(8, 1, 10, 2, 1, NULL, NULL, '2018-02-22 22:35:48', '2018-02-22 22:35:48'),
(6, 2, 5, 3, 1, NULL, NULL, '2018-02-22 10:55:20', '2018-02-22 10:55:20');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('395696661@qq.com', '$2y$10$GVQPpGXABs5V/TNJx/8YrOOrZT2pOUdH22bk95qoMBxdBFLYIch5y', '2018-02-27 08:00:58');

-- --------------------------------------------------------

--
-- 表的结构 `project_con`
--

CREATE TABLE `project_con` (
  `id` int(11) NOT NULL,
  `pn_id` int(11) DEFAULT NULL,
  `zigongneng` varchar(255) DEFAULT NULL,
  `kaohedian` varchar(255) DEFAULT NULL,
  `pfbiaozhun` varchar(255) DEFAULT NULL,
  `fenzhi` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `project_needs`
--

CREATE TABLE `project_needs` (
  `id` int(11) NOT NULL,
  `gongneng` varchar(255) DEFAULT NULL,
  `zhuyemian` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `qin`
--

CREATE TABLE `qin` (
  `id` int(11) NOT NULL,
  `stuid` varchar(255) DEFAULT NULL,
  `classid` varchar(255) DEFAULT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `liuid` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qin`
--

INSERT INTO `qin` (`id`, `stuid`, `classid`, `tid`, `type`, `time`, `beizhu`, `liuid`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '1', '1', '测试请假说明，怎么没有请假时间', NULL, '2018-02-03 15:09:04', '2018-02-03 15:09:04'),
(2, '2', '1', '1', '1', '1', '测试请假说明，怎么没有请假时间', NULL, '2018-02-03 15:09:13', '2018-02-03 15:09:13'),
(3, '2', '1', '1', '2', '1', '旷课说明', NULL, '2018-02-03 15:34:38', '2018-02-03 15:34:38');

-- --------------------------------------------------------

--
-- 表的结构 `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `score`
--

INSERT INTO `score` (`id`, `tid`, `sid`, `num`, `reason`, `time`, `created_at`, `updated_at`) VALUES
(4, 2, 6, -3, '迟到', '2018-02-22', '2018-02-22 10:54:04', '2018-02-22 10:54:04'),
(2, 1, 2, -5, '请假一天', '2018-02-03', '2018-02-03 16:05:01', '2018-02-03 16:05:01'),
(3, 1, 2, 3, '测试加分', '2018-02-03', '2018-02-03 18:04:28', '2018-02-03 18:04:28'),
(5, 2, 6, 5, 'UHDWK', '2018-02-22', '2018-02-22 10:55:08', '2018-02-22 10:55:08');

-- --------------------------------------------------------

--
-- 表的结构 `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shenfenzheng` varchar(255) DEFAULT NULL,
  `iphone` varchar(255) DEFAULT NULL,
  `jphone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `classid` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '100',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `students`
--

INSERT INTO `students` (`id`, `name`, `shenfenzheng`, `iphone`, `jphone`, `sex`, `address`, `classid`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '杨', NULL, '12233454322', NULL, '男', '省份地级市市、县级市', '3', 102, '2018-02-22 10:53:07', '2018-02-22 10:55:08', NULL),
(2, '李四', '1222', '22', '22', '女', '山西省运城市永济市2222', '1', 98, '2018-02-03 16:01:08', '2018-02-03 18:04:28', NULL),
(11, '张3', NULL, NULL, NULL, '男', '省份地级市市、县级市', '1', 100, '2018-02-22 22:28:38', '2018-02-22 22:28:38', NULL),
(4, '刘六', '123', '1111', '哥哥：189012345678', '女', '山西省运城市盐湖区123456', '1', 100, '2018-02-03 18:03:26', '2018-02-03 18:03:26', NULL),
(12, '789', NULL, NULL, NULL, '男', '省份地级市市、县级市', '1', 100, '2018-02-22 22:30:21', '2018-02-22 22:30:21', NULL),
(10, '97777', NULL, NULL, NULL, '男', '省份地级市市、县级市', '1', 100, '2018-02-22 21:59:37', '2018-02-22 22:35:48', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` varchar(255) DEFAULT '',
  `subject` varchar(255) NOT NULL,
  `testteacher` varchar(255) DEFAULT NULL,
  `teststarttime` varchar(255) DEFAULT NULL,
  `testyingdao` varchar(255) DEFAULT NULL,
  `testshidao` varchar(255) DEFAULT NULL,
  `pingjuanteacher` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `test`
--

INSERT INTO `test` (`id`, `classid`, `subject`, `testteacher`, `teststarttime`, `testyingdao`, `testshidao`, `pingjuanteacher`) VALUES
(1, '1', 'HTML', '张老师、李老师、王老师', '2018-02-01', '20', '20', '陈老师'),
(2, '1', 'PHP正则', '1、2、3', '2018-02-03', '20', '19', '评分老师'),
(3, '3', 'HTML', '1、2、3', '2018-02-03', '23', '22', '4');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$Ow.lwgcTeyqkTGper8Jl7OTb16euX2w5yNTT2oeAshnx2BXuTJZmC',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `class`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '白晓转', '395696661@qq.com', '$2y$10$Ow.lwgcTeyqkTGper8Jl7OTb16euX2w5yNTT2oeAshnx2BXuTJZmC', '1#2#', 'lcwucZsbSDyAjFxTBIsFUhCAjaQK9aiqUwR5qtGlQbTfk7pWPCMC2tacGcUj', '2017-11-23 03:30:10', '2018-02-03 04:59:10'),
(2, '薛晶晶', '395696662@qq.com', '$2y$10$Ow.lwgcTeyqkTGper8Jl7OTb16euX2w5yNTT2oeAshnx2BXuTJZmC', '3#4#5#', '9id3DfcSITsJXZ1V74q9K66aieF0fNXRsGo65iY1lik5ubOjwt9S7Nd9rCu5', '2017-11-23 03:30:10', '2018-02-22 03:04:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commuting`
--
ALTER TABLE `commuting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liuji`
--
ALTER TABLE `liuji`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `project_con`
--
ALTER TABLE `project_con`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_needs`
--
ALTER TABLE `project_needs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qin`
--
ALTER TABLE `qin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `commuting`
--
ALTER TABLE `commuting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `liuji`
--
ALTER TABLE `liuji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qin`
--
ALTER TABLE `qin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
