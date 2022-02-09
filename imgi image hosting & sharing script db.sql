-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 02:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imgi`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `message`, `created_at`, `updated_at`) VALUES
(1, '<h4>Contact for business</h4>\n                            <p>Thanks for your interest. For any kind of business and advertising contact, you are welcome to message using the email below.</p>\n                            <p><strong>Email:</strong> advertising@website.com</p>\n                            <p><strong>Facebook:</strong> https://www.facebook.com/webfuelcode</p>\n                            \n                            <h4 class=\"my-4\">Feedback</h4>\n                            <p>Follow us on social media and add your feedback and suggestiong.</p>\n                            <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-facebook fa-2x\"></i></a> <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-twitter-square fa-2x\"></i></a> <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-linkedin fa-2x\"></i></a> <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-pinterest fa-2x\"></i></a> <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-instagram fa-2x\"></i></a> <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-whatsapp fa-2x\"></i></a> <a class=\"mx-2\" href=\"#\" target=\"_blank\"><i class=\"fab fa-blogger fa-2x\"></i></a>', '2022-02-05 08:25:20', '2022-02-05 08:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Banana', '1644069413.jpg', '2022-02-05 08:26:55', '2022-02-05 08:26:55'),
(2, 2, 'flower blossom', '1644069433.jpg', '2022-02-05 08:27:13', '2022-02-05 08:27:13'),
(3, 2, 'cake', '1644069444.jpg', '2022-02-05 08:27:24', '2022-02-05 08:27:24'),
(4, 2, 'fly', '1644069459.jpg', '2022-02-05 08:27:39', '2022-02-05 08:27:39'),
(5, 2, 'pink rose', '1644069505.jpg', '2022-02-05 08:28:26', '2022-02-05 08:28:26'),
(6, 2, 'moon', '1644069548.jpg', '2022-02-05 08:29:08', '2022-02-05 08:29:08'),
(7, 2, 'rooster full photo', '1644069573.jpg', '2022-02-05 08:29:33', '2022-02-05 08:29:33'),
(8, 2, 'rooster head', '1644069584.jpg', '2022-02-05 08:29:44', '2022-02-05 08:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_29_130941_create_images_table', 1),
(6, '2022_01_18_145937_create_settings_table', 1),
(7, '2022_01_19_133744_create_terms_table', 1),
(8, '2022_01_19_133859_create_questions_table', 1),
(9, '2022_01_25_133640_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'What is imgi.wall-spot.com? How do I use it?', 'We are a free image hosting solution. What is designed for you to share your digital pictures with friends and family, email, post images on forums, social networking sites, blogs and Online auctions sites.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(2, 'How much does the service cost?', 'This website will always be 100&#37; free! imgi.wall-spot.com is supported by our featured advertisers.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(3, 'Which image file formats are accepted?', 'PNG, JPG, JPEG, GIF, BMP images and photos can be uploaded using our service.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(4, 'What kinds of pictures will you host for me?', 'Our service will host any legal image, except for adult-rated images. Any files against the law will be deleted and your info will be reported to the appropriate authorities.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(5, 'I am not able to upload images, why?', 'Main reason could be the file size and the format.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(6, 'Is direct linking allowed?', 'Yes, we allow \"direct linking\" (also referred to as \"hot linking\"). It&apos;s best to hotlink to the thumbnails leading to the large images to save on bandwidth as there is a limit of  1 GB of bandwidth per Image/month.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(7, 'How long will you store my images?', 'Barring any unforeseen event, the uploaded images that do not violate our <a href=\"http://yoursite.com/page/terms-of-services\" target=\"_blank\" title=\"Terms of Service\">Terms of Service</a> are stored on our server for forever.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(8, 'What is the max filesize limit?', 'The maximum file-size is 2 MB.', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(9, 'What can I do to help?', 'Link to us from your web page or profile, and let other people know about our site!', '2022-02-05 08:25:09', '2022-02-05 08:25:09'),
(10, 'Have more questions?', 'Please use the <a href=\"http://yoursite.com/page/contact\" target=\"_blank\" title=\"Contact page\">Contact page</a> to e-mail us.', '2022-02-05 08:25:09', '2022-02-05 08:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ads` text COLLATE utf8mb4_unicode_ci,
  `copyright` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `ads`, `copyright`, `note`, `created_at`, `updated_at`) VALUES
(1, '<a href=\"http://www.wall-spot.com/web-hosting-starters\" target=\"_blank\"><img class=\"img-fluid\" src=\"../storage/imgi-assets/webhosting.png\"></a>', 'imgi.wall-spot.com', 'Welcome to imgi image sharing and hosting site.', '2022-02-05 08:25:19', '2022-02-05 08:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `terms`, `created_at`, `updated_at`) VALUES
(1, '<p>\n            <h2>Terms of Service</h2>\n                            <ul>\n                                <li>imgi.wall-spot.com reserves the right to disable or delete any file which might compromise the security of our servers, uses excessive bandwidth, violates this Terms of Service or is otherwise considered undesirable (at our sole discretion).</li>\n                                <li>The image hosting service is provided as-is with no implied warranties of any kind. We can not be held responsible for the loss of data or other damages which may result from (lack of) functionality of our service.</li>\n                                <li>imgi.wall-spot.com does not allow the following types of files to be uploaded:						<ul>\n                                        <li>Images which violate copyrights or patents are not allowed.</li>\n                                        <li>Images which contain adult content such as pornography or excessive nudity.</li>\n                                        <li>Images which contain gruesome scenes, such as dead people or mutilations.</li>\n                                        <li>Images which violate the privacy of the individuals depicted are not allowed.</li>\n                                        <li>Images which are considered illegal in your country.</li>\n                                    </ul>\n                                </li>\n                                <li>Files will not be deleted unless they have not been accessed for some time or violate our Terms of Service.</li>\n                                <li>imgi.wall-spot.com reserves the right to deny access to any user who uploads files that compromise the security of our servers, use excessive bandwidth or are otherwise deemed to be misusing the free file hosting service.</li>\n                                <li>imgi.wall-spot.com reserves the right to modify these Terms of Service at any time without prior notification.</li>\n                            </ul>\n                            <br/><br/>\n                            <h2>Privacy Policy</h2>\n                            <ul>\n                                <li>We will never sell, rent, or lease our customer information to third parties.</li>\n                            </ul>\n                        </div>\n            </p>', '2022-02-05 08:25:31', '2022-02-05 08:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'admin', 'admin@gmail.com', NULL, '$2y$10$FkSdy8q3OC1NO/E3LikRc.Ji.OyDeB5pcByqoX.o/mPxw8x2oz2Xe', NULL, '2022-02-05 08:24:28', '2022-02-05 08:24:28'),
(2, 'anonymouse', 'NULL', 'admin1@gmail.com', NULL, '$2y$10$xi0ZUrI7ryrQcdSh.kyiTus32l4YkEqVJ1rlo.7ZwO1MWZNBXY2zy', NULL, '2022-02-05 08:24:28', '2022-02-05 08:24:28');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
