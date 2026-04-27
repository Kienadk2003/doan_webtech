-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th4 27, 2026 lúc 04:10 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(13, 'banners/vzhvcsjijfdph5xo5hp5', 1, '2025-08-28 10:16:40', '2025-10-13 14:45:18'),
(14, 'banners/ujx1gasyrnajzsc02cwp', 1, '2025-08-29 01:56:31', '2025-08-29 01:56:31'),
(15, 'banners/li29lqntfzac2q5yp9mq', 1, '2025-08-29 01:56:50', '2025-08-29 01:56:50'),
(16, 'banners/eok8rygptjjattdwf8ld', 1, '2025-08-29 01:57:03', '2025-08-29 01:57:03'),
(17, 'banners/jjrxuymvxoebfr0ci1v2', 1, '2025-08-29 01:57:13', '2025-08-29 01:57:13'),
(18, 'banners/f0xsrakxci0di5upptnp', 1, '2025-08-29 01:57:59', '2025-08-29 01:57:59'),
(19, 'banners/nd9icyc5u6znpnnddwck', 1, '2025-08-29 01:58:11', '2025-08-29 01:58:11'),
(20, 'banners/zfhhlvxsa7dir3pefihy', 1, '2025-10-13 14:45:48', '2025-10-13 14:45:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners_featureds`
--

CREATE TABLE `banners_featureds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners_featureds`
--

INSERT INTO `banners_featureds` (`id`, `name`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(7, 'GEARVN PC', 'bannersfeatured/l0mbyahjrwzgrlanbsdr', 'https://gearvn.com/collections/pc-gvn-rtx-5060', 1, '2025-08-29 13:52:41', '2026-04-22 09:48:13'),
(8, 'An phat màn hình', 'bannersfeatured/aoqhr67f4j1ewrdazayl', 'https://www.anphatpc.com.vn/man-hinh-may-tinh.html-1', 1, '2025-08-29 13:56:50', '2026-04-22 09:48:14'),
(9, 'Fptshop laptop', 'bannersfeatured/ts6nexgrbcztipzhlo2w', 'https://fptshop.com.vn/tim-kiem?s=laptop', 1, '2025-08-29 14:17:37', '2026-04-22 09:48:14'),
(10, 'Thế giới di động', 'bannersfeatured/jvghwqikynuxzjcumfzb', 'https://www.thegioididong.com/', 1, '2025-09-03 07:40:08', '2026-04-22 09:48:15'),
(11, 'GEARVN PC', 'bannersfeatured/weyngtruxxbvkupu8bxl', 'https://gearvn.com', 1, '2025-12-14 16:44:43', '2025-12-14 16:44:43'),
(12, 'AN PHÁT PC', 'bannersfeatured/q3djbcgl5r04k3h9ly44', 'https://www.anphatpc.com.vn', 1, '2025-12-14 16:46:04', '2025-12-14 16:46:04'),
(13, 'FPT SHOP', 'bannersfeatured/zoufenibz8qm2ho51hn7', 'https://fptshop.com.vn', 1, '2025-12-14 16:47:08', '2025-12-14 16:47:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'MSI', 'brands/ipl6vorenibpiys3mcik', 1, '2023-10-29 04:38:22', '2025-08-29 15:24:10'),
(3, 'Acer', 'brands/aaajnv0prjo3vlx557pv', 1, '2023-10-26 08:17:44', '2025-08-29 15:29:05'),
(4, 'Lenovo', 'brands/xjgiqcfpcgs5kkuilnmi', 1, '2023-10-26 08:17:52', '2025-08-29 15:35:15'),
(5, 'Apple', 'brands/f1keg2nwmot0hywlw4oo', 1, '2023-10-26 08:18:29', '2025-10-16 02:26:41'),
(6, 'Dell', 'brands/vxrgnzlll2z3cjzv4xbz', 1, '2023-10-26 08:19:03', '2025-08-29 15:47:52'),
(7, 'Samsung', 'brands/quvlqrybwlfj8hsr3p5b', 1, '2023-10-26 08:19:22', '2025-08-29 15:46:24'),
(8, 'Asus', 'brands/jcwdsf41xmjda49rxlt8', 1, '2023-10-26 08:46:49', '2025-08-30 02:02:51'),
(9, 'Khác', NULL, 1, '2023-10-26 09:15:33', '2023-10-26 09:15:33'),
(17, 'UGREEN', NULL, 1, '2025-10-16 02:26:31', '2025-10-16 02:26:31'),
(18, 'LG', NULL, 1, '2025-10-17 08:43:52', '2025-10-17 08:43:52'),
(19, 'E-dra', NULL, 1, '2025-10-18 02:39:26', '2025-10-18 02:39:26'),
(20, 'HP', NULL, 1, '2025-10-23 07:43:59', '2025-10-23 07:43:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Màn hình', 1, '2023-10-26 07:34:27', '2025-08-30 02:08:15'),
(2, 'Tai nghe', 1, '2023-11-03 04:10:12', '2025-08-30 02:08:30'),
(17, 'Laptop', 1, '2023-11-03 04:10:17', '2025-08-30 02:08:59'),
(18, 'Bàn phím', 1, '2023-11-03 04:10:22', '2025-08-30 02:09:48'),
(19, 'Điện thoại', 1, '2023-11-03 04:10:39', '2026-04-22 09:35:45'),
(20, 'Chuột', 1, '2023-11-03 04:10:45', '2025-08-30 02:10:57'),
(26, 'Máy tính bảng', 1, '2025-09-02 07:19:49', '2025-09-02 07:19:49'),
(27, 'Dapi', 0, '2025-11-08 03:04:07', '2025-11-08 03:04:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `code`, `percent`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(4, 'test3', 'test3', 70, 25, 0, '2023-12-25 10:42:37', '2025-09-02 02:05:05'),
(5, 'Giảm 100%', 'ma100', 100, 10, 0, '2025-08-29 04:02:42', '2025-12-08 16:50:13'),
(6, 'Giảm 50%', 'giam50', 50, 998, 1, '2025-09-03 01:54:41', '2025-11-28 03:16:53'),
(7, 'Ngày sale chính', '15thang12', 20, 200, 1, '2025-09-03 01:55:26', '2025-12-11 10:13:51'),
(8, 'Giảm 90%', 'sale90', 90, 98, 0, '2025-10-16 04:27:51', '2026-04-22 10:16:12'),
(9, 'Khách mua lại', 'mualai', 10, 20, 1, '2025-12-04 03:57:31', '2025-12-11 10:13:02'),
(10, 'Khách hàng mới', 'dis5', 5, 11, 1, '2025-12-04 04:00:41', '2026-04-22 10:16:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `worktime` varchar(191) DEFAULT NULL,
  `copyright` varchar(191) DEFAULT NULL,
  `tax` float NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infos`
--

INSERT INTO `infos` (`id`, `logo`, `name`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `address`, `worktime`, `copyright`, `tax`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'TechStore', '0396959786', 'nguyenvankienadk2003@gmail.com', 'https://www.facebook.com/', 'http://www.twitter.com', 'http://www.youtube.com', 'Phường Phú Diễn, thành phố Hà Nội', '7:00 - 22:00', '@kiennguyenvan', 0, NULL, '2026-04-17 08:38:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_23_041801_create_products_table', 1),
(6, '2023_10_23_041817_create_categories_table', 1),
(7, '2023_10_23_071609_create_subcategories_table', 1),
(8, '2023_10_23_073915_create_brands_table', 1),
(9, '2023_10_23_105308_create_permission_tables', 1),
(10, '2023_10_25_055949_create_products_libraries_table', 1),
(11, '2023_10_28_151756_create_banners_table', 2),
(12, '2023_10_29_040353_create_banners_featureds_table', 3),
(13, '2013_01_04_170724_create_wishlists_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` text NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `content`, `status`, `users_id`, `created_at`, `updated_at`) VALUES
(4, 'Bard AI là gì Tìm hiểu đặc điểm và cách sử dụng Google Bard', 'news/ldbongtvunb2ssulynlf', '<p><i><strong>Sự tiến bộ của trí tuệ nhân tạo (AI) đã và đang mở ra nhiều cơ hội mới trong việc tìm kiếm ý tưởng sáng tạo, hỗ trợ công việc hằng ngày. Và chúng ta không thể phủ nhận rằng Bard AI là một trong những AI có đóng góp quan trọng trong thời đại công nghệ ngày nay. Trong bài viết này GEARVN sẽ giúp bạn tìm hiểu kỹ càng hơn về “Google Bard là gì? Những đặc điểm nổi bật và cách ứng dụng trí tuệ nhân tạo từ Google vào công việc và cuộc sống” nhé!</strong></i></p><h2><strong>Giới thiệu về Bard AI&nbsp;</strong></h2><p>Nếu như bạn còn đang thắc mắc Bard AI là gì thì đây là đáp án dành cho bạn. Bard AI là chatbot trí tuệ nhân được ra đời vào khoảng đầu tháng 2/2023 bởi nhà phát hành Google AI. Bard được xây dựng dựa trên mô hình ngôn ngữ LaMDA xử lý tình huống và tương tác trong giao tiếp của cuộc trò chuyện. Kết hợp cùng nguồn dữ liệu lớn (Big data) để mang đến nhiều cuộc đối thoại hữu ích cho người sử dụng Google Bard.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-9_0dbdecab632e49d28dde0356b305c3d5_1024x1024.png\" alt=\"GEARVN - Google Bard AI là gì\"></p><p>Trong khoảng thời gian đầu mới ra mắt công chúng, Bard AI chưa thật sự gây được nhiều tiếng vang. Đặc biệt chịu sự ảnh hưởng bởi mạnh mẽ của ChatGPT trên toàn cầu. Nhưng đến thời điểm hiện tại người dùng phải công nhận rằng Google đã không ngừng cố gắng và cập nhật liên tục cho “đứa con” của mình. Google Bard AI hỗ trợ nhu cầu tìm kiếm ý tưởng cho các công việc hằng ngày, gợi ý những nội dung sáng tạo nhanh chóng với khả năng tiếp cận đa lĩnh vực một cách đáng kinh ngạc. Điều này ngầm hứa hẹn rằng Google Bard AI sẽ trở thành một trong những công cụ trí tuệ nhân tạo đột phá và hữu ích với người dùng trong thời công nghệ số phát triển liên tục.</p><h2><strong>Google Bard AI vận hành như thế nào?</strong></h2><p>Cách mà Google Bard AI hoạt động có phần tương tự như đối thủ ChatGPT. Đều là sản phẩm trí tuệ nhân tạo dưới dạng chatbot nên Bard hoạt động dựa trên sự phân tích những yêu cầu của người dùng dưới dạng văn bản và đưa ra câu trả lời phù hợp nhất.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-10_f9676fcd99fa44ab80b9479e148418c3_1024x1024.jpg\" alt=\"GEARVN - Google Bard AI vận hành thế nào\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/sang-tao-anh-ai-leonardo-ai\"><i><strong>Leonardo.ai - Sáng tạo ảnh AI \"nghệ như Leonardo da Vinci\"</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><p>Quy trình có thể hiểu đơn giản như sau:&nbsp;</p><p><strong>Bước 1:</strong> Bạn sẽ nhập các thông tin bất kỳ mô tả vấn đề / câu hỏi mà bạn đang tìm kiếm và gửi cho Bard AI.</p><p><strong>Bước 2:</strong> Bard sẽ dựa trên yêu cầu của bạn để dò tìm với Big data từ hệ thống, sau đó trả về kết quả tương ứng.&nbsp;</p><h2><strong>Công dụng của Google Bard&nbsp;</strong></h2><p>Google Bard sở hữu nhiều đặc điểm nổi bật giúp người dùng giải quyết được các công việc hằng ngày. Và chúng ta có thể dễ dàng thấy rõ những công dụng này khi ứng dụng Bard AI:</p><p><strong>Phân tích dữ liệu và đưa ra dự đoán:</strong> Không chỉ giúp người dùng trong việc tổng hợp thông tin mà còn cung cấp giải pháp cá nhân hóa, đặc biệt là trong lĩnh vực tài chính, bảo hiểm, y tế, và nhiều lĩnh vực khác. Điều này mang lại cho họ khả năng hiểu rõ hơn về dữ liệu và khám phá những xu hướng ẩn sau trong các số liệu.</p><p><strong>Cải thiện và nâng cao trải nghiệm người dùng: </strong>Bard AI không chỉ là một trợ lý ảo thông thường mà còn là một đối tác tương tác, nỗ lực hướng dẫn người dùng qua một hành trình trải nghiệm mượt mà và tích cực. Bằng cách này, nó không chỉ là một công cụ hữu ích mà còn là một nguồn động viên, tối ưu hóa mọi khía cạnh của trải nghiệm người dùng.</p><p><strong>Bard AI đóng vai trò quan trọng trong ngành Marketing: </strong>Không chỉ giúp tối ưu hóa chiến lược quảng cáo mà còn hỗ trợ việc tiếp cận khách hàng thông qua cung cấp nội dung chất lượng, thông tin hữu ích và việc viết blog sáng tạo. Sự linh hoạt và tích hợp của nó giúp doanh nghiệp xây dựng mối quan hệ mạng lưới vững chắc và tăng cường hiệu suất tiếp thị.</p><p><strong>Trong lĩnh vực dịch thuật: </strong>Bard AI vượt trội so với Google Dịch bằng cách sử dụng kho thông tin lớn LaMDA để dịch văn bản, không chỉ chú trọng vào ngôn ngữ mà còn xem xét ngữ cảnh để đảm bảo nghĩa chính xác nhất, đáp ứng mức độ phức tạp của nhiều loại văn bản.</p><p><strong>Hỗ trợ giáo dục và văn phòng: </strong>Bard AI không chỉ là một trợ lý ảo thông thường mà còn là nguồn hỗ trợ đắc lực trong giáo dục và các tác vụ văn phòng. Việc tìm kiếm tài liệu học thuật và thực hiện các nhiệm vụ liên quan đến tin học văn phòng trở nên mạnh mẽ và hiệu quả nhờ vào sự tích hợp linh hoạt của nó trong nhiều lĩnh vực chuyên ngành.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-12_780a4bf8480b46e082e04ed9c0a8840f_1024x1024.png\" alt=\"GEARVN - Công dụng của Google Bard\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/murf-ai\"><i><strong>Murf AI có phải là voice AI đỉnh nhất?</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><h2><strong>Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI</strong></h2><p>Để sử dụng trí tuệ nhân tạo Bard AI bạn hãy thực hiện lần lượt các bước sau cùng GEARVN nhé!</p><p><strong>Bước 1:</strong> Sử dụng trình duyệt<strong> Google Chrome </strong>và truy cập vào Bard bằng đường link này <a href=\"https://bard.google.com/?hl=vi\"><i><strong>https://bard.google.com/?hl=vi</strong></i></a><i><strong>.</strong></i></p><p><strong>Bước 2: </strong>Tại giao diện trang web Bard bạn hãy chọn <strong>Đăng nhập</strong>.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-1_7029522acdf846aa93700bbb1829007d_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 3:</strong> Tiến hành đăng nhập <strong>tài khoản Google</strong> để có thể sử dụng Bard AI.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-2_fc60a7405f104ded8111c1ded8acec6d_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 4: </strong>Chọn <strong>Thử dùng Bard</strong>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-3_26c826710420444ea99a6ec7efd63d08_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 5: </strong><a href=\"https://gearvn.com/pages/man-hinh\">Màn hình</a> sẽ hiện box về các điều khoản và chính sách sử dụng Bard AI. Bạn hãy kéo chuột đến cuối và sau đó chọn <strong>Tôi đồng ý</strong>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-4_30a879ef71bc45948f63185d3311fb8d_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 6:</strong> Hãy nhập những câu lệnh mà bạn muốn yêu cầu Bard AI trả lời tại khung yêu cầu và gửi.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-7_f7a7bfe1b11841509f773330621046f1_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><p><strong>Bước 7: </strong>Google Bard AI sẽ đưa ra câu trả lời tương ứng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-bard-ai-la-gi-tim-hieu-dac-diem-va-cach-su-dung-google-bard-8_e16f1d94163043ca8c387e9fcbbcbbff_1024x1024.png\" alt=\"GEARVN - Hướng dẫn sử dụng trí tuệ nhân tạo Google Bard AI\"></p><blockquote><p><i><strong>Lưu ý:</strong> Những thông tin đến từ Bard AI chỉ mang tính chất tham khảo và có thể thay đổi theo từng thời điểm của bản cập nhật.&nbsp;</i></p></blockquote><p>Sự xuất hiện của Bard AI mở ra một cánh cửa mới về trải nghiệm người dùng và tương tác với thông tin. Bằng cách tận dụng sức mạnh của trí tuệ nhân tạo, Google Bard không chỉ là một công cụ tìm kiếm thông thường mà còn là một đối tác đắc lực, giúp chúng ta tiếp cận thông tin, tìm kiếm ý tưởng một cách hiệu quả và thuận tiện hơn bao giờ hết. Theo dõi <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap\"><i><strong>GEARVN - Thủ Thuật Giải Đáp</strong></i></a> để xem thêm nhiều bài viết hay nhé!</p>', 1, 2, '2023-12-05 18:58:36', '2023-12-07 18:58:36'),
(6, 'Apple One là gì? Có nên sử dụng Apple One?', 'news/ukkixfcdgpym01qbrgrz', '<p><i><strong>Apple One, một gói dịch vụ đa dạng của Apple, đã thu hút sự chú ý của người dùng với hứa hẹn mang đến sự tiện ích và tiết kiệm chi phí. Nhưng, liệu đây có phải là sự đáp án hoàn hảo cho nhu cầu giải trí và công việc số của bạn hay không? Hãy cùng GEARVN khám phá xem Apple One là gì và liệu có nên sử dụng nó hay không ngay nhé!</strong></i></p><h2><strong>Apple One là gì?</strong></h2><p>\"Apple One\" là một dịch vụ đa dạng của <a href=\"https://gearvn.com/collections/macbook\">Apple</a>, cho phép người dùng đăng ký một loạt các dịch vụ của Apple với một giá hợp lý hơn so với việc mua các dịch vụ này một cách độc lập. Apple One được giới thiệu vào tháng 9 năm 2020. Gói dịch vụ này bao gồm nhiều dịch vụ khác nhau, chẳng hạn như Apple Music, Apple TV+, Apple Arcade, Apple News+, iCloud, và Apple Fitness+.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-8_7e6b15cc7277443c9ce528fd7d485026_1024x1024.png\" alt=\"GEARVN - Apple One là gì?\"></p><p>Bằng cách đăng ký Apple One, người dùng có thể tiết kiệm chi phí so với việc thanh toán cho từng dịch vụ một cách riêng lẻ. Apple One có một số gói dịch vụ khác nhau để phù hợp với nhu cầu và sở thích của người dùng khác nhau.</p><h2><strong>Apple One cung cấp dịch vụ gì?&nbsp;</strong></h2><p>Apple One cung cấp nhiều dịch vụ khác nhau dưới dạng một gói duy nhất. Các dịch vụ chính bao gồm:</p><p><strong>Apple Music:</strong> Dịch vụ âm nhạc trực tuyến, cho phép người dùng nghe nhạc từ một thư viện lớn các bài hát và album.</p><p><strong>Apple TV+:</strong> Dịch vụ phát sóng video của Apple, cung cấp nhiều chương trình, phim truyện và nội dung giải trí chất lượng cao.</p><p><strong>Apple Arcade: </strong>Nền tảng chơi game đám mây của Apple, nơi người dùng có thể trải nghiệm nhiều trò chơi đa dạng trên nhiều thiết bị khác nhau.</p><p><strong>Apple News+:</strong> Dịch vụ tin tức có phí, cung cấp truy cập đến nhiều tạp chí và báo chí nổi tiếng.</p><p><strong>iCloud:</strong> Dịch vụ lưu trữ đám mây của Apple, giúp người dùng lưu trữ và đồng bộ hóa dữ liệu trên các thiết bị của họ.</p><p><strong>Apple Fitness+:</strong> Dịch vụ tập luyện và theo dõi sức khỏe cá nhân, cung cấp các lớp tập luyện và nội dung tập luyện chất lượng cao.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-2_71c648ff444a4a708d2b9373f15332d1_1024x1024.png\" alt=\"GEARVN - Apple One cung cấp dịch vụ gì?\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-doi-ten-airpod\"><i><strong>Bạn đã biết cách đổi tên Airpod và tùy chỉnh cài đặt Airpod chưa?</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><p>Apple One có các gói khác nhau, nhưng mỗi gói đều kết hợp một số dịch vụ trên để mang lại giá trị tốt nhất cho người dùng.</p><h2><strong>Những gói dịch vụ của Apple One&nbsp;</strong></h2><p>Khi Apple One được giới thiệu, Apple cung cấp ba gói dịch vụ khác nhau với mức giá và tính năng khác nhau. Các gói này bao gồm:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-4_86687a203bca4529af28d5ed628236bb_1024x1024.jpg\" alt=\"GEARVN - Những gói dịch vụ của Apple One\"></p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/bi-quyet-dang-nhap-icloud-tren-may-tinh-an-toan-hieu-qua-nhat\"><i><strong>Bí quyết đăng nhập iCloud trên máy tính an toàn, hiệu quả nhất</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td><strong>Individual</strong></td><td><strong>Family</strong></td><td><strong>Premier</strong></td></tr><tr><td><strong>Giá</strong></td><td>$14.95/month<br>239.000đ/tháng</td><td><p>$19.95/month<br>279.000đ/tháng</p><ul><li>Chia sẻ tối đa 6 thành viên trong gia đình thông qua Family Sharing.</li></ul></td><td><p>$29.95/month<br>~ 688.000đ/tháng</p><ul><li>Chia sẻ tối đa 6 thành viên trong gia đình thông qua Family Sharing.</li></ul><p><i>*Hiện tại Việt Nam chưa được hỗ trợ gói Apple One cao cấp.</i></p></td></tr><tr><td><strong>Dịch vụ</strong></td><td><p>Apple Music</p><p>Apple TV+</p><p>Apple Arcade</p><p>iCloud (lưu trữ 50 GB)</p></td><td><p>Tất cả các dịch vụ trong gói Individual</p><p>iCloud (lưu trữ 200GB)</p></td><td><p>Tất cả các dịch vụ trong gói Family</p><p>Apple News+</p><p>Apple Fitness+</p><p>iCloud (lưu trữ 2TB)</p></td></tr></tbody></table></figure><h2><strong>Có nên sử dụng Apple One hay không?&nbsp;</strong></h2><p>Quyết định có nên sử dụng Apple One hay không phụ thuộc vào nhu cầu cá nhân của bạn và liệu các dịch vụ được bao gồm trong gói có phải là những gì bạn thường xuyên sử dụng hay không. Dưới đây là một số điểm cần xem xét khi đưa ra quyết định:</p><p><strong>Tiết kiệm chi phí: </strong>Nếu bạn đã sử dụng hoặc có ý định sử dụng nhiều dịch vụ của Apple, việc đăng ký Apple One có thể là một cách tiết kiệm chi phí so với việc mua các dịch vụ này một cách độc lập.</p><p><strong>Sử dụng thường xuyên: </strong>Đảm bảo rằng bạn thường xuyên sử dụng các dịch vụ được bao gồm trong gói. Nếu một số dịch vụ không phải là một phần quan trọng của hệ sinh thái của bạn, việc đăng ký gói có thể không đem lại giá trị lớn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-6_4b50f2ff2d234d448f1c049045ab3e4a_1024x1024.jpg\" alt=\"GEARVN - Có nên sử dụng Apple One hay không?\"></p><p><strong>Phù hợp với gia đình: </strong>Nếu bạn có gia đình và mọi người trong gia đình sử dụng các dịch vụ của Apple, gói Family hoặc Premier có thể là lựa chọn tốt để chia sẻ chi phí và dịch vụ.</p><p><strong>Nhu cầu lưu trữ:</strong> Lưu ý dung lượng lưu trữ iCloud đi kèm với gói bạn chọn. Nếu bạn cần nhiều không gian lưu trữ, việc lựa chọn gói có dung lượng lớn hơn là quan trọng.</p><p><strong>Tính linh hoạt:</strong> Nếu bạn thích linh hoạt và muốn tùy chọn dịch vụ mà bạn sử dụng, việc mua từng dịch vụ một có thể là lựa chọn phù hợp hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-apple-one-la-gi-co-nen-su-dung-apple-one-7_6ab932e479dd4c72b632b5188c2b62f2_1024x1024.png\" alt=\"GEARVN - Có nên sử dụng Apple One hay không?\"></p><p>Trước quyết định đăng ký <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/apple-one-la-gi-co-nen-su-dung-apple-one\">Apple One</a>, hãy cân nhắc kỹ lưỡng với nhu cầu và sở thích cá nhân của bạn. Nếu bạn đang tìm kiếm sự linh hoạt và tiết kiệm chi phí trong hệ sinh thái Apple, Apple One có thể là một lựa chọn hấp dẫn. Tuy nhiên, quan trọng nhất là đảm bảo rằng những dịch vụ được bao gồm thực sự đáp ứng đúng với mong đợi và nhu cầu của bạn. Theo dõi <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap\"><i><strong>GEARVN - Thủ Thuật Giải Đáp</strong></i></a> để xem nhiều bài viết hơn nhé!</p>', 1, 2, '2023-12-05 19:05:44', '2023-12-05 19:05:44'),
(8, 'Picture in Picture đã có mặt trên TikTok, thử ngay!', 'news/lrbrjbquhuu7jpkkpczh', '<p><i><strong>Mong muốn&nbsp;bấy lâu của chúng ta đã trở thành hiện thực khi TikTok được chính thức cho ra mắt tính năng Picture in Picture. Tức là cho phép bạn lướt video song song với nhiều tác vụ khác trên thiết bị di động mà không cần phải vuốt để chuyển video. Hãy cùng GEARVN tìm hiểu về tính năng hay ho này ngay sau đây nhé!</strong></i></p><h2><strong>Picture in Picture là gì?</strong></h2><p><strong>Picture in Picture </strong>(<strong>PiP</strong>) là tính năng cho phép một video hay hình ảnh nhỏ xuất hiện trên màn hình và chồng lên trên các ứng dụng khác hoặc trên nền <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> chính. Điều này cho phép người dùng theo dõi một phần của nội dung multimedia trong khi tiếp tục làm việc trên các ứng dụng khác. Tính năng này thường được sử dụng trong các ứng dụng video, hội nghị trực tuyến, và các ứng dụng giải trí khác để cải thiện đồng thời hiệu suất làm việc và trải nghiệm giải trí.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-1_d698f4e40cb14aee96fb6825ad1c5fd3_1024x1024.jpg\" alt=\"GEARVN - Picture in Picture là gì?\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-su-dung-tinh-nang-picture-in-picture-tren-google-chrome\"><i><strong>Hướng dẫn sử dụng tính năng Picture in Picture trên Google Chrome</strong></i></a><i><strong>.</strong></i></p><p>Đây là một tính năng phổ biến trên nhiều nền tảng phát video ăn khách như Youtube hay Google Chrome. Cũng tương tự như nhiều nền tảng khác, bạn sẽ được cùng lúc xem video TikTok yêu thích và sử dụng nhiều ứng dụng khác cùng một lúc. Vậy làm sao để sử dụng tính năng hay ho này?</p><h2><strong>Cách sử dụng tính năng Picture in Picture trên TikTok</strong></h2><p><strong>Bước 1: </strong>Mở ứng dụng TikTok trên thiết bị của bạn &gt; nhấn giữ vào một vị trí bất kỳ trên màn hình cho đến khi xuất hiện menu tùy chỉnh.</p><p><strong>Bước 2:</strong> Lướt tùy chọn cho đến cuối tùy chọn &gt; chọn “<strong>Picture-in-Picture</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-2_851939aca68a441f90990ce95976da54_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Bước 3: Một thông báo sẽ hiển thị ngay sau đó &gt; nhấn chọn “OK”. Vậy là bạn đã có thể xem video TikTok Picture in Picture được rồi.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-3_2a03cbeec66d418080768c86135cb8bf_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Trong trường hợp thiết bị của bạn chưa được phép hiển thị trên các ứng dụng khác, bạn cần phải cấp quyền này. Hệ thống sẽ tự động chuyển bạn đến màn hình cấp quyền. Bạn chỉ cần chọn TikTok và tìm mục \"<strong>Cho phép hiển thị trên các ứng dụng khác</strong>\" và bật công tắc để kích hoạt.&nbsp;</p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-xem-youtube-ngoai-man-hinh\"><i><strong>Cách xem youtube ngoài màn hình trên điện thoại, máy tính</strong></i></a><i><strong>.</strong></i></p><p>Khi bạn còn quay về \'<i>Màn hình chính</i>\' hoặc chuyển sang ứng dụng khác, video TikTok sẽ hiển thị dưới dạng một hình nhỏ ở góc trên bên phải màn hình như hình bên dưới. Nó cũng sẽ tự động chuyển sang video khác mà không cần bạn vuốt thủ công để chuyển video.</p><p>Để&nbsp;trở lại chế độ toàn màn hình, bạn chỉ cần nhấn vào biểu tượng như hình bên dưới là xong.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-4_0b3cd1e2764140e8b9fdf821d4bc5fce_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Tổng kết lại, trên đây là những cách sử dụng tính năng <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/picture-in-picture-tren-tiktok\">Picture in Picture</a> trên TikTok. Tuy không phải một tính năng mới mẻ nhưng chắc chắn thứ bạn mong chờ bấy lâu nay sẽ nâng cao trải nghiệm sử dụng ứng dụng của bạn. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật &amp; Giải Đáp</strong></a>.</p>', 1, 2, '2023-12-05 19:08:38', '2023-12-05 19:08:38'),
(10, 'Review ASUS ROG Strix G16/G18: \"Quái vật\" của dòng laptop gaming RTX 40 Series hiện nay', 'news/jp0brbwiskv2ve7kyyld', '<p><i><strong>Là một trong những thương hiệu nổi tiếng trong dòng laptop gaming cao cấp, ASUS luôn trau chuốt trong từng sản phẩm của mình nhằm đem đến trải nghiệm sử dụng tốt nhất. Và trong năm nay, chúng ta đã được chào đón 2 “chiến binh” mới và vô cùng mạnh mẽ ASUS với series ROG Strix G16 và G18.</strong></i></p><h2><strong>Unbox ASUS ROG Strix G16/G18</strong></h2><p>Đặt ngay vào mắt người dùng là phần hộp được thiết kế đẹp mắt về mặt thẩm mỹ, giữ vững những “tha thu” đậm nét đã có trên sản phẩm thuộc series <a href=\"https://gearvn.com/collections/laptop-gaming-asus-rog-strix-g\">ROG Strix&nbsp;G</a> để tạo vẻ ngoài cuốn hút và mạnh mẽ. Ngoài ra, phần hộp của của ROG Strix G16/G18 được thiết kế dạng dọc mới, độc và lạ. Vì thế, bạn cũng nên lưu ý trong cách mở hộp khi muốn lấy sản phẩm ra.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-1_512edc0d761844fdb6e4500c54f893a4_1024x1024.jpg\" alt=\"Unbox ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-2_be0ee6cf9658457daa5d91c2df96f40e_1024x1024.jpg\" alt=\"Unbox ASUS ROG Strix G16/G18 - GEARVN\"></p><h2><strong>Cấu hình của ASUS ROG Strix G16/G18</strong></h2><p>ASUS ROG Strix G16 và G18 ra mắt người dùng với danh xưng là những chiếc <a href=\"https://gearvn.com/pages/laptop-gaming\">laptop gaming</a> cao cấp hàng đầu hiện nay. Cho nên, ASUS đã trang bị cho “chiến binh” của mình những nguồn sức mạnh đỉnh cao nhất hiện tại của laptop. Chi tiết cấu hình của 2 chiếc laptop sẽ được đề cập trong hình ảnh dưới đây:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-3_d4501161414e492eacd5535a38d58bd2_1024x1024.jpg\" alt=\"Cấu hình của ASUS ROG Strix G16/G18 - GEARVN\"></p><h2><strong>Đánh giá chi tiết về ASUS ROG Strix G16/G18</strong></h2><h3><strong>Sức mạnh tối thượng</strong></h3><p>Để xứng tầm với vị thế hàng đầu trong dòng laptop gaming cao cấp, phiên bản cao nhất của ROG Strix G16/G18 sẽ được sở hữu cho mình nguồn sức mạnh xử lý với phiên bản cao cấp nhất là Intel® Core™ i9-13980HX Processor. Là một chiếc CPU <a href=\"https://gearvn.com/collections/cpu-intel-13th-gen\">Intel Gen 13</a> đứng đầu trong dòng mobile, sức mạnh của dòng vi xử lý này được sánh ngang với i7-13700K dành cho <a href=\"https://gearvn.com/pages/pc-gvn\">PC Gaming</a>. TDP tối đa có thể đạt 175W (trong chế độ ép xung Manual Mode) đảm bảo nguồn năng lượng thích hợp quá trình vận hành của cả bộ máy.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-4_4018d080130b463eabef5db244d6cef1_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Là một chiếc laptop phục vụ cho gaming, chúng ta không thể thiếu sự hỗ trợ từ phía GPU và cả ASUS ROG Strix G16/G18 đều sẽ nhận được khả năng phục vụ từ GPU <a href=\"https://gearvn.com/collections/vga-rtx-4070\">RTX 4070</a>. Khả năng xử lý hình ảnh, đồ họa đều được chiếc <a href=\"https://gearvn.com/collections/vga-card-man-hinh\">card màn hình</a>&nbsp;thuộc thế hệ RTX 40 Series đảm bảo trong từng tác vụ. Qua đó, đảm bảo hiệu suất gaming tốt nhất cho mọi game thủ, cân tất mọi tựa game hot nhất hiện nay trên thị trường, từ eSport đến AAA. Cùng với đó là những công việc liên quan đến đồ họa cũng được RTX 4070 xử lý mượt mà và tốt nhất. Biến ASUS ROG Strix G16/G18 trở thành chiếc laptop chơi game RTX 40 Series mạnh nhất tại Việt Nam hiện tại và được chính NVIDIA chứng nhận.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-5_6547161d21924c01ba76f77247278f0f_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Nhằm đáp ứng nhu cầu và khả năng làm việc tốt nhất, ASUS đã sử dụng keo tản nhiệt kim loại lỏng thế hệ mới (Liquid Metal Conductonaut Extreme) trên 2 khu vực hoạt động nặng nhất, là <a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">CPU</a> và GPU. Điều này đã giúp nhiệt độ của 2 phân khu được giảm tới 15°C mang lại tuổi thọ cùng hiệu suất hoạt động ổn định hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-6_d7516737beb445ff98b1268555478184_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Đến với không gian trình chiếu, cả 2 phiên bản cao cấp nhất của&nbsp; ASUS ROG Strix G16/G18 đều sở hữu những độ phân giải khác nhau. Với G16, đó là chiếc màn hình kích thước 16 inch với độ phân giải WQHD; đạt những tiêu chuẩn hiển thị uy tín như DCI-P3: 100%, độ sáng đạt 500nits, G-Sync, chứng nhận Pantone và Dolby Vision HDR. Đến với G18, bạn sẽ sở hữu cho mình chiếc màn hình 18 inch ở độ phân giải 2K cùng tất cả tiêu chuẩn tuyệt vời có trên G16. Cộng hưởng vào đó là tần số quét 240Hz cho một trải nghiệm mượt mà trên từng pha hành động trên tỷ lệ màn hình 16:10 bắt trọng mọi sự vật trong khùng hình.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-7_5cbfda47d513491e95e8b44c1f0bb781_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Đặc biệt, khi ASUS đã mang tới tiêu chuẩn mới với tên ROG Nebula Display trên cả 2 chiếc dòng ROG Strix G16 và G18. Đó là sự kết hợp giữa 3 yếu tố đã có mặt trên sản phẩm của ASUS: viền mỏng, G-Sync và Dolby Vision-Atmos; tất cả tinh hoa quan trọng nhất cho khả năng hiển thị đều được hội tụ trên 2 chiếc laptop gaming này.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-8_faec7d28331c4dfab7d6ed58db5a665d_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Nguồn sức mạnh khổng lồ trên ROG Strix G16/G18 sẽ được tận dụng và tối ưu thông qua 2 công nghệ MUX Switch và NVIDIA Advanced Optimus. Cả hai đều sở hữu cho mình công nghệ tùy biến tự động chuyển luồng xuất từ iGPU hoặc GPU rời sang <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> dựa trên ứng dụng đồ họa. Điều này giúp cho tài nguyên sẽ được tận dụng tốt cho mọi quy trình trên <a href=\"https://gearvn.com/collections/laptop\">laptop</a>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-9_6eb636bc059b4c3eafd0831a229c772b_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Ở trên ROG Strix G16/G18 không chỉ có thể giải trí, ASUS còn trang bị cho sản phẩm của mình khả năng làm việc đa tác vụ mạnh mẽ đến từ kit <a href=\"https://gearvn.com/collections/ram-pc\">RAM</a> DDR5-4800. Tốc độ đọc, ghi và copy dữ liệu đều được nâng cấp hoàn toàn so với thế hệ RAM trước đây. Bộ nhớ trong <a href=\"https://gearvn.com/collections/ram-pc-ddr5\">RAM DDR5</a> giúp cải thiện thêm những khung hình, điều này được thể hiện qua bài test trên tựa game Rainbow Six Siege ở mức đồ họa Ultra High với số FPS tăng lên khoảng 24%.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-10_5344de0ba76a49b89128368e58dfc604_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Dưới đây sẽ là sức mạnh của CPU và GPU trên ASUS ROG Strix G16/G18 được test trên Benchmark:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-11_9cc316b98a7e4980bc6001ae094e4d9e_1024x1024.jpg\" alt=\"Test benchmark ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-12_2684a5f284cb4dedaa82e2b2db936568_1024x1024.jpg\" alt=\"Test benchmark ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Tản nhiệt cao cấp, giữ vững hiệu năng</strong></h3><p>Sức mạnh càng lớn, tản nhiệt càng “xịn” - đó chính là điều mà ASUS cung cấp cho ROG Strix G16/G18 để duy trì sức mạnh tốt nhất. Không thể bắn tơ từ 2 tay như người nhện nhưng cả ROG Strix G16/G18 đều có thể cho không khi thoát ra từ khắp mọi các khe thoát nhiệt của laptop (trái, phải, sau) để tối ưu được nhiệt độ bên trong. Mọi luồng khí sẽ được công nghệ tản nhiệt 3 quạt (Tri-Fan) xử lý kết hợp với những chiếc ống đồng tản nhiệt bao phủ linh kiện (Strix G18 là 33%, Strix G16 là 32%). Tất cả phối hợp với nhau để mang lại không gian mát mẻ nhất cho phần cứng trong laptop.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-13_8aaaac412af14543b207ad686698b725_1024x1024.jpg\" alt=\"Tản nhiệt ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Vẻ ngoài đẹp mắt với những chi tiết hoàn toàn mới</strong></h3><p>Một nét đẹp đậm chất gaming vẫn được ASUS trình bày trên ROG Strix G16/G18. Vẫn sẽ là logo mắt cú vọ, biểu tượng đặc trưng cho dòng ROG đặt ở mặt A gây nhung nhớ bao game thủ nằm trên bề mặt được gia công trơn và mượt mà. Đi cùng với đó là một dòng chữ Republic Of Gamers nhỏ cắt ngang qua mặt A và mặt C. Mọi góc cạnh được hoàn thiện trở nên mượt mà và nhẹ nhàng hơn rất nhiều, tạo độ thân thiện nhất định cho mọi người dùng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-14_7763661f9c124a4781d07ec47ce3ade9_1024x1024.jpg\" alt=\"Ngoại hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Sau khi mở mặt A của ROG Strix G16/G18, đặt ngay vào mắt chúng ta đó là phần bàn phím RGB rực rỡ. Từng phím được tỏa sáng với hiệu ứng <a href=\"https://gearvn.com/collections/fan-led-trang-tri\">LED RGB</a> tạo nên buổi tiệc ánh sáng thực sự ngay trên chiếc laptop gaming. Ngoài ra phần gầm chữ U mặt trước cũng có cho mình khả năng phát sáng từ hiệu ứng ánh sáng này.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-15_c854f6334f494b6c813222d3e1a486b4_1024x1024.jpg\" alt=\"Ngoại hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Cụm phím điều hướng của series ROG Strix G năm ngoái khiến cho game thủ bao phần khó khăn thì đến với phiên bản 2023, ASUS đã quyết định cải tiến và tối ưu diện tích 4 chiếc phím lên - xuống - trái - phải. Qua đó đem lại khu vực nhấn phím tốt hơn và dễ dàng hơn. Phần touchpad của ROG Strix G16/G18 cũng được gia tăng về diện tích tiếp xúc giúp mọi thao tác trở nên mượt mà hơn. Đặc biệt hơn đó là cụm số numpad đã được xuất hiện ở chỗ touchpad với tính năng bật/tắt, cho phép bạn thoải mái sử dụng trong công việc.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-16_1e68b5ecb0c845e09ac307345187ce50_1024x1024.jpg\" alt=\"Bàn phím ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Quy tụ mọi kết nối tốc độ nhất</strong></h3><p>ASUS ROG Strix G16/G18 mang đến những công nghệ kết nối tuyệt vời nhất hiện nay. Mở đầu, đó là chính là kết nối Internet siêu tốc độ cùng cổng Ethernet RJ-45 và chuẩn WiFi 6E.</p><p>Cổng LAN được hỗ trợ tốc độ lên đến 2.5 Gbps, gấp 2.5 lần so với cổng LAN Gigabit thông thường, đem lại sự ổn định khi khi chơi game online và download tài liệu. Còn đến với khả năng kết nối mạng không dây thông qua WiFi 6E, ASUS ROG Strix G16/G18 nâng cấp hoàn toàn khả năng truy cập mạng từ mọi khía cạnh như tốc độ, dung lượng, độ trễ và băng thông.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-17_7df31c26fc714aafba9c594957938be8_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-18_673834cdfb05489c8b02b29289eb0177_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Tiếp đến là những cổng kết nối phục vụ cho hiệu quả sử dụng từ ASUS ROG Strix G16/G18. Nhằm phục vụ cho mọi nhu cầu công việc và giải trí, cổng Thunderbolt 4 được trang bị cho chúng ta. Tốc độ lên đến 40 Gb/s, hỗ trợ cho khả năng sạc từ USB Type-C và xuất hình độ phân giải 4K UHD, chiếc cổng kết nối đa năng này sẽ phục vụ cho bạn từ A đến Á.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-19_1e3ae5ee1f724d60b0137ffb52f8978f_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Phục vụ cho nhu cầu xuất hình ảnh chất lượng cao với ASUS ROG Strix G16/G18, chúng ta sẽ được sở hữu cho mình cổng HDMI 2.0. Là chuẩn mới nhất của cổng HDMI, hỗ trợ cho bạn xuất hình, trình chiếu cùng độ phân giải 4K 120Hz hoặc 8K 60Hz cùng công nghệ HDR10+ và eARC. Đảm bảo phục vụ tốt cho mọi tệp khách hàng đang muốn sở hữu cho mình một chiếc laptop gaming.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-20_319639783c5c435eaf8f111c11ea4ffb_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Và để đáp ứng cho nhu cầu sử dụng di động của chúng ta, ASUS ROG Strix G16/G18 vẫn trang bị cho mình viên pin 4 Cell 90WHrs cho thời lượng sử dụng lên đến 12 tiếng khi lướt web. Không chỉ sử dụng lâu, ASUS ROG Strix G16/G18 có thể trở lại cuộc chơi cực nhanh cùng công nghệ sạc nhanh khi cung cấp cho cho bạn tốc độ sạc từ 0% lên 50% trong 30 phút để quay trở lại tác vụ bằng cục sạc Type-C PD có công suất lên đến 100W.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-21_35c5d24be76349d4af220898a3753e1f_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Cuối cùng sẽ là những cổng kết nối phục vụ cho nhu cầu sử dụng tất yếu của mọi người dùng trên ASUS ROG Strix G16/G18 gồm combo jack audio nhằm kết nối cùng những thiết bị âm thanh và cổng nguồn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-22_77289a5bebdc48d1911f96c094c9d3ba_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Trên đây là bài review về <strong>ROG Strix G16</strong> và <strong>G18</strong> - 2 siêu chiến binh mới đến từ ASUS. Và nếu bạn quan tâm sản phẩm về 2 dòng laptop gaming này thì hãy đến ngay với showroom <a href=\"https://gearvn.com/\"><strong>GEARVN</strong></a> hoặc có thể mua online thông qua đường dẫn dưới đây. Cảm ơn các bạn đã dành thời gian cho chúng mình và hẹn gặp lại trong những bài review tiếp theo !</p><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g16-1_4e7f9733d1304459a2bf6503bbbbfa3f_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G16 G614JV N4261W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G16 G614JV N4261W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 16 inch QHD+ IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i9-13980HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4060</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;&nbsp;&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g16-g614jv-n4261w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g16-1_4e7f9733d1304459a2bf6503bbbbfa3f_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G16 G614JI N4084W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G16 G614JI N4084W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 16 inch WQHD&nbsp;IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i7-13650HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4070</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs&nbsp;</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g16-g614ji-n4084w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g18_68fc31e57cc743168d3884660b0c17ac_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G18 G814JI N6063W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G18 G814JI N6063W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 18&nbsp;inch QHD+ IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i9-13980HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4070</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs&nbsp;</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g18-g814ji-n6063w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure>', 1, 2, '2023-12-07 07:38:46', '2023-12-07 07:54:30'),
(11, 'HỌC TẬP, LÀM VIỆC SÁNG TẠO HƠN VỚI ONENOTE, BẠN ĐÃ THỬ VỚI MICROSOFT PHIÊN BẢN MỚI NHẤT CHƯA?', 'news/banmz3idoqgmyfifkwyc', '<p><i><strong>Khi nhắc đến những tính năng đặc biệt của Microsoft, ngoài OneDrive thì OneNote được ví như là sổ ghi chép phiên bản kỹ thuật số. Mọi tiện ích đều được tích hợp trong OneNote với các tính năng như: ghi chú, lên ý tưởng, brainstorming,…&nbsp;</strong></i></p><p><i><strong>Ngoài ra, sử dụng OneNote giúp tối ưu hóa những công cụ ghi chú cồng kềnh và thiết kế lại một cách logic cho người dùng dễ dàng quản lý công việc hiệu quả. Vậy có gì thú vị khi khám phá OneNote hiệu quả hơn? Cùng GearVN tìm hiểu xem OneNote còn những tính năng gì hay ho nhé!</strong></i></p><h2><strong>1. TRẢI NGHIỆM TÍNH NĂNG IN GHI CHÚ NHANH CHÓNG TRÊN ONENOTE</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-2_240d4d03703f4f4a8fd82fcd07a1535b_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>Hiện nay từ Windows 10 trở lên đều hỗ trợ tính năng in toàn bộ phần ghi chú thay vì phải in từng trang một. Bạn có thể thực hiện các bước theo thứ tự:</p><p>Bước 1: Điều hướng đến bất cứ trang nào trong phần hoặc ghi chú để in.</p><p>Bước 2: Click vào <strong>biểu tượng ba dấu chấm</strong> (…) ở phía bên phải.</p><p>Bước 3: Chọn <strong>Print</strong>.</p><p>Bước 4: Đối với máy in, bạn chọn máy in bạn muốn sử dụng.</p><p>Bước 5: Đối với các trang (Pages), bạn đổi sang <strong>Current Section</strong> hoặc <strong>Current Notebook</strong>.</p><p>Bước 6: Click vào <strong>Print</strong> khi đã sẵn sàng.</p><h2><strong>2. XEM LẠI LỊCH SỬ PHIÊN BẢN TRANG CHỈ VỚI 1 CLICK</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-3_3c0ff6b6b72343baa4753807987647b7_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>OneNote theo dõi bất kỳ sự thay đổi nào được tạo ra trên trang và nhãn như một phiên bản trang. Bạn có thể xem lịch sử của một trang cụ thể bằng cách click chuột phải vào nó và chọn <strong>Page Versions</strong>. Bạn sau đó có thể phục hồi một phiên bản trước đó bằng cách chọn nó và click vào <strong>Make Current Page</strong>.</p><h2><strong>3. THỎA SỨC THAY ĐỔI MÀU SẮC VÀ ĐẶT NICKNAME</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-4_7e4b5dd08ad047b0826fd8cbe5bffc40_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>Cá nhân hóa ghi chú giúp bạn dễ dàng chuyển qua lại giữa chúng trong nháy mắt. Và nếu ghi chú được chia sẻ với bạn thì bạn có thể đổi tên của nó cho chính mình bằng cách click vào ghi chú đó và chọn <strong>Nickname Notebook</strong>.</p><p>Bạn cũng có thể nhấp chuột phải và chọn <strong>Notebook Color</strong> để áp dụng màu yêu thích cho ghi chú của mình.</p><h2><strong>4. THAO TÁC TẠO VÀ ẨN TRANG PHỤ ĐƠN GIẢN</strong></h2><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-5_23b7ab1a2b5944ddbd2b28b3888c97b4_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p>Click chuột phải vào một trang trong phần ghi chú đang hiển thị, sau đó chọn <strong>Subpages </strong>&gt;<strong> Make Subpage</strong> để biến trang đó thành một trang phụ của trang phía trên nó. Khi một trang có các trang phụ, nó sẽ có một <strong>biểu tượng mũi tên</strong> bên cạnh để bạn có thể sử dụng để thu gọn và ẩn.</p><p>Trang phụ có thể có khác trang con khác, nhưng chỉ những trang cấp cao mới có thể thu gọn. Bạn có thể biến một trang phụ thành một trang bình thường bằng cách click chuột phải vào nó và chọn <strong>Subpages</strong> &gt; <strong>Promote Subpage</strong>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-hoc-tap-lam-viec-sang-tao-hon-voi-onenote-6_366538d404ed47b186efcf588bbb4f83_1024x1024.jpg\" alt=\"GEARVN - ONENOTE\"></p><p><strong>(*) VỚI MICROSOFT 365, BẠN CÓ THỂ HỌC TẬP VÀ LÀM VIỆC NĂNG SUẤT VỚI GIÁ CHỈ TỪ 19K/THÁNG, ĐI KÈM NHIỀU TIỆN ÍCH:</strong></p><ul><li>Đăng nhập và đồng bộ dữ liệu lên tới 5 thiết bị trên mỗi tài khoản&nbsp;</li><li>Dung lượng lưu trữ khổng lồ với 1 TB lưu trữ đám mây OneDrive&nbsp;</li><li>Trọn bộ ứng dụng văn phòng cao cấp Word, Excel, PowerPoint, Outlook, Microsoft To Do, OneNote, … đáp ứng đầy đủ nhu cầu bạn cần, góp phần nâng cao hiệu suất công việc.</li><li>Chia sẻ thông tin, dữ liệu một cách an toàn giữa các thiết bị, bảo vệ dữ liệu của bạn an toàn nhờ két sắt personal vault.</li></ul><blockquote><p><i><strong>🔥🔥 NHẬN NGAY VOUCHER GIẢM GIÁ OFFICE LÊN ĐẾN 100,000 VND KHI MUA LAPTOP KÈM OFFICE HOME &amp; STUDENT 2021</strong></i><br><i><strong>HAY MUA LAPTOP KÈM MICROSOFT 365 CHỈ TỪ 19,000 VND/THÁNG, TIẾT KIỆM LÊN ĐẾN 600,000 VND (*).</strong></i></p><p><i>(*) Áp dụng khi mua Microsoft 365 Family, chia sẻ tài khoản cho 6 người.</i></p><p><i>👉&nbsp; Chi tiết mua hàng tại:</i></p><p><i>+ Microsoft 365 Family: </i><a href=\"https://gearvn.com/products/office-365-home-32-64-alllngsub-pklic-1yr-online-apac-em-c2r-nr-6gq-00083\"><i>https://gearvn.com/products/office-365-home-32-64-alllngsub-pklic-1yr-online-apac-em-c2r-nr-6gq-00083</i></a><i>&nbsp;</i></p><p><i>+ Office Home &amp; Student 2021, mua một lần dùng trọn đời: </i><a href=\"https://gearvn.com/products/phan-mem-office-home-student-2021-79g-05337\"><i>https://gearvn.com/products/phan-mem-office-home-student-2021-79g-05337</i></a></p></blockquote>', 1, 2, '2023-12-07 07:41:12', '2023-12-07 07:51:17'),
(12, 'Back To School cùng MSI', 'news/evf0dit5gdpi5xr0xmnp', '<p><i><strong>Mùa tựu trường gần kề, để tiếp thêm hành trang cho các học sinh – sinh viên bước vào năm học mới, MSI xin trân trọng gửi đến quý khách chương trình Back To School, tự tin đến trường với Laptop MSI.</strong></i><br><br>Khách hàng khi mua <a href=\"https://gearvn.com/collections/laptop-msi-gaming\"><strong>LAPTOP MSI</strong></a> thuộc các dòng <strong>Modern, Raider, Stealth, Vector, Katana, Prestige</strong> tại <a href=\"https://gearvn.com/\"><strong>Gearvn</strong></a> sẽ nhận được quà tặng đặc biệt.<br><br><strong>Thời gian áp dụng:</strong> Từ ngày <strong>10/08/2023</strong> đến ngày <strong>30/09/2023</strong> hoặc đến khi hết số lượng quà khuyến mãi.<br><br><strong>Cơ cấu giải thưởng</strong><br>Nhận ngay 01 QUÀ TẶNG khi mua Laptop MSI thuộc các dòng sau:<br>1. Modern Series Intel Gen 13th and AMD 7000 Series<br>• Các SKU được áp dụng: Modern 14 C13M, Modern 15 B13M, Modern 14 C7M, Modern B7M<br>► MSI Sleeve Bag (PK-MSI-SLEEVE-BAG)<br><br>2. Gaming GE/GS/GP Series<br>• Các SKU được áp dụng: Raider GE78HX, Raider GE68HX, Stealth 14 Studio, Stealth 15 A13VF, Stealth 16 Studio, Stealth 16 Mercesdes, Vector GP68HX, Raider GE78HX<br>► MSI Gaming Headset (TAI-MSI-H991)<br><br>3. Gaming Katana<br>• Các SKU được áp dụng: Katana GF66, Katana GF76, Katana 15<br>► MSI Gaming Mouse M99 Pro (CHU-MSI-M99)</p><p><br>4. Prestige (CPU Gen 13th)<br>• Các SKU được áp dụng: Prestige 16 Studio, Prestige 14 EVO, Prestige 13 EVO<br>► MSI 9 in 1 TypeC Multi-port Hub (PK-HUB-MSI-9IN1)</p><p>&nbsp;</p><p><br>&nbsp;</p>', 1, 2, '2023-12-07 07:41:48', '2023-12-07 07:41:48'),
(13, 'Mua Laptop LG Gram tại Gearvn nhận quà tặng cực hấp dẫn từ LG', 'news/whlc7fgsjzr9rzxeuxyu', '<p><strong>Mua Laptop LG Gram tại Gearvn nhận quà tặng cực hấp dẫn từ LG</strong></p><p><img src=\"https://file.hstatic.net/200000722513/file/chuong_trinh_lg_cfab845adcd64d798497e86f0e3f4893.png\" alt=\"Chương trình khuyến mãi LG Gram\"></p><p>&nbsp;</p><h2><strong>Thời gian áp dụng</strong></h2><p>Từ ngày <strong>01/10 – 31/12/2023</strong> khi mua Laptop LG Gram tại Gearvn, khách hàng nhận được quà tặng cực hấp dẫn từ LG.</p><h2><strong>🎁 Quà tặng:</strong></h2><ul><li>Tặng màn hình mở rộng LG gram + view trị giá 9.890.000 VND khi mua <a href=\"https://gearvn.com/collections/laptop-lg-gram\">LG gram</a> 2022 &amp; 2023 15 inch, 16 inch và 17 inch</li><li>Tặng tai nghe LG TONE Free FP8 trị giá 4.190.000 VND khi mua LG gram 2022 &amp; 2023 14 inch</li></ul><h2><strong>Hướng dẫn nhận quà</strong></h2><p>Hướng dẫn cách thức nhận Quà KM của LG tại hệ thống đổi quà Công ty LG:</p><ul><li>Laptop Gram 2023 tại <a href=\"https://quatanglg.com/campaign/28\">https://quatanglg.com/campaign/28</a></li><li>Laptop Gram 2022 tại <a href=\"https://quatanglg.com/campaign/22\">https://quatanglg.com/campaign/22</a></li></ul><p>Để xem Thể lệ và điều kiện chi tiết, hướng dẫn đổi quà tại địa điểm chỉ định.</p>', 1, 2, '2023-12-07 07:42:17', '2023-12-07 07:49:32'),
(14, 'CẤU HÌNH THỜI THƯỢNG, HIỆU NĂNG ẤN TƯỢNG', 'news/hf3espydmqyafmgpzd2r', '<p><strong>Thời gian áp dụng:</strong> Từ ngày <strong>27/06</strong> đến ngày <strong>24/07/2023</strong></p><p><strong>Phạm vi áp dụng:</strong> Áp dụng tại các đại lý bán lẻ trên toàn quốc đang kinh doanh các sản phẩm khuyến mãi chính hãng được phân phối chính thức từ ba nhà phân phối FPT Synnex, PSD và DGW.</p><p><strong>Đối tượng áp dụng:</strong> Khách hàng đầu cuối trên toàn quốc.</p><p><strong>Sản phẩm áp dụng:</strong> Áp dụng cho tất cả các sản phẩm máy tính xách tay gaming <strong>Legion và LOQ tích hợp vi xử lý Intel core gen 13</strong> đặt hàng trong thời gian áp dụng và có hóa đơn VAT mua hàng xuất trong thời gian từ 27/06/2023 đến 24/07/2023.</p><p>Các Model được áp dụng tại Gearvn</p><ul><li><a href=\"https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv000pvn\">https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv000pvn</a></li><li><a href=\"https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv00d5vn\">https://gearvn.com/products/laptop-gaming-lenovo-loq-15irh8-82xv00d5vn</a></li><li><a href=\"https://gearvn.com/products/laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn\">https://gearvn.com/products/laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn</a></li></ul><p><strong>Hình thức khuyến mãi:</strong> Tặng quà khi mua sản phẩm.</p><p><strong>Quà khuyến mãi:</strong> <strong>Tặng ngay 01 Màn hình gaming Y27-30 trị giá 6.790.000VNĐ khi mua bất kỳ sản phẩm khuyến mãi</strong></p><p><strong>Cách thức trả thưởng:</strong> Nhận quà qua đường bưu điện sau khi gửi đầy đủ các chứng từ mua hàng cho Lenovo, cụ thể như sau:</p><ul><li>Khách hàng gửi hình chụp chứng từ mua hàng về email <strong>khuyenmai.lenovo@gmail.com</strong>.</li><li>Lenovo sẽ xác minh thông tin mua hàng trong vòng 48 giờ làm việc và gửi xác nhận qua email.</li><li>Lenovo sẽ gửi quà tặng theo địa chỉ đã được khách hàng cung cấp trong email.</li><li><strong>Lưu ý:</strong> Chứng từ mua hàng hợp lệ là hóa đơn VAT hoặc hóa đơn bán hàng bình thường có mộc của nơi bán được xuất trong thời gian từ 27/06/2023 đến 24/07/2023.</li></ul><p>Mọi thắc mắc xin vui lòng gọi về hotline <strong>07741 02943</strong> để được giải đáp và hỗ trợ.</p><p><strong>Quy định khác:</strong></p><ul><li>Chương trình khuyến mãi có thể kết thúc ngay khi hết quà.</li></ul>', 1, 2, '2023-12-07 07:42:48', '2023-12-07 07:50:10');
INSERT INTO `news` (`id`, `title`, `image`, `content`, `status`, `users_id`, `created_at`, `updated_at`) VALUES
(15, 'MÁT TỪ TRONG LÕI – MẠNH TỪ TRONG NHÂN !!!', 'news/gxc6lafy3mmuesgjwkrw', '<p>Tặng tai nghe ASUS TUF Gaming H1 trị giá 900,000đ khi mua Bo mach chủ ASUS Z790 series + tản nhiệt AIO AIO ROG RYUJIN III 360 ARGB/ RYUJIN III 360/ RYUJIN III 240 ARGB/ RYUJIN III 240</p><h2><strong>1. Thời gian khuyến mãi:&nbsp;</strong></h2><p>Bất kì hóa đơn mua hàng, phiếu thu hoặc phiếu xuất kho có giá trị từ ngày <strong>10/10/2023 </strong>đến <strong>11/11/2023</strong> hoặc cho đến khi hết quà</p><p>Hạn chót đăng ký nhận quà: <strong>03/01/2024</strong></p><h2><strong>2. Sản phẩm áp dụng và quà tặng:&nbsp;</strong></h2><ul><li>Tặng <a href=\"https://gearvn.com/products/tai-nghe-asus-tuf-gaming-h1\"><strong>tai nghe ASUS TUF Gaming H1</strong></a> trị giá <strong>900,000đ</strong> khi mua <a href=\"https://gearvn.com/collections/mainboard-intel-z790-raptor-lake?vendor=asus\"><strong>Bo mach chủ Asus Z790</strong></a><strong> series</strong> dòng TUF và ROG + <a href=\"https://gearvn.com/products/tan-nhiet-nuoc-asus-rog-ryujin-iii-360-argb\"><strong>tản nhiệt AIO ROG RYUJIN III 360 ARGB</strong></a><strong>/ </strong><a href=\"https://gearvn.com/products/tan-nhiet-nuoc-asus-rog-ryujin-iii-360\"><strong>RYUJIN III 360</strong></a><strong>/ RYUJIN III 240 ARGB/ RYUJIN III 240</strong></li></ul><h2><strong>3. Cách thức nhận quà:</strong></h2><p>&gt;&gt;&gt;Click vào nút “<strong>Đăng Ký</strong>” trên website Asus tại đây:</p><p><a href=\"https://www.asus.com/vn/events/infoM/activity_AIO2023\">https://www.asus.com/vn/events/infoM/activity_AIO2023</a></p><p><strong>Lưu Ý: </strong>Trong trường hợp không thể đăng ký trên hệ thống, quý khách hàng vui lòng gửi thông tin nhận quà như bên dưới về địa chỉ Email: <strong>dangkyasus@gmail.com</strong> với tiêu đề: “<strong>[Khuyen mai] Z790 + Ryujin III</strong></p><ul><li>Đính kèm hình ảnh hóa đơn mua hàng, phiếu thu, phiếu xuất kho có dấu xác nhận của cửa hàng, thể hiện rõ tên sản phẩm và ngày mua hàng trong thời gian chương trình diễn ra.</li><li>Đính kèm ảnh chụp số S/N của sản phẩm</li><li>Điền series của sản phẩm</li><li>Điền Họ và tên người nhận quà</li><li>Điền Địa chỉ nhận quà</li><li>Điền Số điện thoại liên hệ</li></ul><p>Hình chụp số S/N trên sản phẩm phải chụp kèm với hoá đơn, chỉ chấp nhận hình chụp số S/N trên sản phẩm, số S/N trên hộp không có hiệu lực.</p><p><img src=\"https://file.hstatic.net/1000026716/file/mbr5hr9_98628dc179c04d5295f3e45233add9c6.png\"></p><p><strong>4. Các lưu ý khác:</strong></p><ul><li>ASUS sẽ kiểm tra và liên hệ gửi quà tới bạn trong 20 ngày làm việc (ngoại trừ thứ 7 &amp; Chủ nhật)</li><li>Chương trình không áp dụng đồng thời với các chương trình khuyến mãi khác</li><li>Quà tặng không có giá trị quy đổi thành tiền mặt hoặc các giá trị khác tương đương</li><li>Hóa đơn/ phiếu thu/ phiếu xuất kho phải có con dấu của cửa hàng bán lẻ</li><li>Chương trình chỉ dành cho khách hàng mua lẻ từ cửa hàng, tất cả hóa đơn từ nhà phân phối đều không được tham gia chương trình khuyến mãi này</li><li>Dung lượng hình ảnh hóa đơn tải lên hệ thống &lt;1Mb</li><li>Trong trường hợp cần thiết nhằm bảo đảm quyền lợi khách hàng, phía ASUS sẽ cần thêm những thông tin khác để xác định khách mua hàng là chính xác như: hóa đơn đỏ, giấy tờ tùy thân có ảnh đại diện...</li><li>Mọi góp ý hay thắc mắc khác về chương trình, xin vui lòng post tại Hội linh kiện <a href=\"https://gearvn.com/pages/pc-gvn\">PC</a> ASUS ROG Việt Nam</li></ul>', 1, 2, '2023-12-07 07:52:41', '2023-12-07 07:52:41'),
(16, 'MUA AORUS/GIGABYTE LAPTOP 2023 - NHẬN NGAY QUÀ CỰC HOT', 'news/cz9dl7eyr6apqvbh1wyj', '<h2><strong>Thời gian</strong></h2><p>Từ <strong>21/11/2023</strong> – <strong>31/12/2023</strong></p><h2><strong>Nội dung</strong></h2><p>Khách hàng sẽ nhận được 1 áo khoác AORUS Baseball khi mua các sản phẩm:&nbsp;</p><ul><li>AORUS 15 9MF-E2VN583SH</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-aorus-15-9mf-e2vn583sh\"><picture><source srcset=\"https://product.hstatic.net/200000722513/product/aorus-15_92ffbcfe601f4257a1ee1f764d8743a4.png\" media=\"(max-width: 767px)\"><img src=\"https://product.hstatic.net/200000722513/product/aorus-15_92ffbcfe601f4257a1ee1f764d8743a4.png\" alt=\"Laptop gaming Gigabyte AORUS 15 9MF E2VN583SH\"></picture></a><img src=\"https://file.hstatic.net/200000722513/file/thumb-promotion-gaming-t10_5936e_22708b19d5854209a09f21f012c703b1.png\" alt=\"icon\"></p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-aorus-15-9mf-e2vn583sh\"><strong>Laptop gaming Gigabyte AORUS 15 9MF E2VN583SH</strong></a></p><p>37.990.000₫</p><p><strong>27.990.000₫</strong>-26%</p><p><strong>0.0</strong>(0 đánh giá)</p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-aorus-15-9mf-e2vn583sh\">XEM CHI TIẾT</a></p><ul><li>G6 KF-H3VN853SH</li><li>G5 MF5-H2VN353SH</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-g5-mf5-h2vn353sh\"><picture><source srcset=\"https://product.hstatic.net/200000722513/product/ava_b44086f2ed514525bb58cb437d95244d.png\" media=\"(max-width: 767px)\"><img src=\"https://product.hstatic.net/200000722513/product/ava_b44086f2ed514525bb58cb437d95244d.png\" alt=\"Laptop gaming Gigabyte G5 MF5 H2VN353SH\"></picture></a></p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-g5-mf5-h2vn353sh\"><strong>Laptop gaming Gigabyte G5 MF5 H2VN353SH</strong></a></p><p>27.990.000₫</p><p><strong>26.990.000₫</strong>-4%</p><p><strong>0.0</strong>(0 đánh giá)</p><p><a href=\"https://gearvn.com/products/laptop-gaming-gigabyte-g5-mf5-h2vn353sh\">XEM CHI TIẾT</a></p><h2><strong>Cách thức nhận quà</strong></h2><p>Khách hàng mua laptop GIGABYTE các mã trong chương trình chụp lại hoá đơn và claim quà tại landing page GIGABYTE</p><p><strong>Địa chỉ link claim quà:</strong>&nbsp;<a href=\"https://gigabyte.microstar.vn/khuyen-mai-g6-g5-aorus?fbclid=IwAR3M1wCdSJuNJ3tMqansMPYVy49qXY-5uktiUhoPVrKv2c1eCCpoa5BJLJQ\">https://gigabyte.microstar.vn/khuyen-mai-g6-g5-aorus?fbclid=IwAR3M1wCdSJuNJ3tMqansMPYVy49qXY-5uktiUhoPVrKv2c1eCCpoa5BJLJQ</a></p><h2><strong>Lưu ý&nbsp;</strong></h2><ul><li>Quà tặng không có giá trị quy đổi thành tiền mặt hoặc các giá trị khác tương đương.</li><li>Số lượng quà tặng có hạn, chương trình có thể kết thúc mà không cần báo trước.</li></ul><p>&nbsp;</p><p><br>&nbsp;</p>', 1, 2, '2023-12-07 07:53:08', '2023-12-07 07:53:08'),
(17, 'PREDATOR FEST 2025: REBORN OF THE KING - ĐẠI TIỆC CÔNG NGHỆ LỚN NHẤT NĂM 2025', 'news/pbn8l7p2q0jzqpl7arot', '<p>Vào lúc <strong>8:00 ngày 10/07/2025</strong> tại khuôn viên hơn 8.000m2 thuộc trung tâm triển lãm Sky Expo Q.12, đại tiệc hoành tráng nhất năm <strong>Predator Fest 2025: Reborn of the King</strong> của Acer với sự đồng hành của Đối tác Intel Việt Nam, sẽ chính thức được diễn ra.</p><p>Tiếp nối thành công các mùa trước, chuỗi sự kiện công nghệ Predator Fest của Acer chưa từng khiến người tham dự thất vọng bởi độ đầu tư chỉn chu đến từng chi tiết nhỏ nhất, song quy mô lại càng ngày càng hoành tráng. Predator Fest 2023: Reborn of the King, là sự kiện công nghệ mang sự chiêu đãi hoành tráng đến với người hâm mộ.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-2_0aa3d4a1e023499bb5ed798a72c9413d_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Predator Fest 2023 xây dựng nên một thế giới trò chơi nhập vai hoàn toàn mới lạ, một khi bước chân qua “cổng không gian” đến với thế giới Predator, người tham gia sẽ hóa thân thành những chiến binh, vượt qua các “ải” và muôn vàn “thử thách” thú vị để hoàn thành các tuyến nhiệm vụ chính/phụ, tất cả để “vị vua Predator” được hồi sinh và trị vì vương quốc ngày càng hùng mạnh.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-3_3001df5a4442472d896be7ad5dd5b9f7_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Ngoài những trải nghiệm nhập vai,&nbsp;Predator Fest 2025 còn mang đến những sản phẩm công nghệ cao cấp nhất đến từ Acer Predator như dàn siêu phẩm <strong>desktop Orion X</strong>, <strong>Orion 7000</strong>, Màn hình <strong>Predator CG48</strong> và cơ hội trải nghiệm các dòng laptop gaming trang bị card đồ họa và CPU Intel thế hệ 13 mới nhất như <strong>Predator Helios 18</strong>, <strong>Predator Helios Neo 16</strong>…</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-4_f9f458df1751422cbf58988e379edb19_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Bên cạnh đó, ngay tại khuôn viên sự kiện, ca sĩ <strong>Wren Evans</strong> và rapper <strong>Obito</strong> sẽ xuất hiện với tư cách nghệ sĩ khách mời và trình diễn các ca khúc nổi tiếng của họ như “Từng quen”, “Call me”, “Simple love”, “Đánh đổi” v.v, mang đến một tiết mục concert vừa trầm vừa bổng, vừa du dương lại vừa khí thế khiến người tham dự “đứng ngồi không yên”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-5_5702017ed1d64ed19e5f179c45d7b01c_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Các KOLs và top streamers như 500 Bros, CKG Team cũng đến góp mặt xuyên suốt tại sự kiện ở khu vực thi đấu, nơi fan hâm mộ có cơ hội thách đấu thần tượng của mình để giành lấy giải thưởng cực chất.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-6_25280437b5324115a7d578f9a8557366_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Sự kiện Predator Fest 2023, với sự đồng hành của Đối tác Intel cùng 8 Đại lý bán lẻ hàng đầu như Thế Giới Di Động, Phong Vũ, FPT Shop, HACOM, An Phát, GearVN, Nguyễn Kim, Hàng Chính Hiệu, và không thể thiếu là sự góp mặt của những tựa game đình đám từ các nhà phát hành game như VNG, Krafton, FC Online…</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-7_02a730eb941b4ddfaf24b6fe0208c32e_1024x1024.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Ngoài ra, khi đến với sự kiện Predator Fest: Reborn of the King, cộng đồng fans Acer Predator còn có cơ hội nhận hơn 10.000 phần quà trải nghiệm cùng hàng loạt sản phẩm gaming gear, laptop và màn hình, cũng như trải nghiệm dịch vụ vệ sinh máy và tra keo tản nhiệt trực tiếp tại quầy Acer 3S1.</p><p>3S1 là chính sách bảo hành VIP của Acer: Bảo hành nhanh trong vòng 3 ngày, kể cả thứ 7 và chủ nhật, quá 3 ngày 1 đổi 1.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-8_12ddbdeb450d4fa88fe8ba982b6fa98e.jpg\" alt=\"GEARVN - Predator Fest 2023\"></p><p>Sự kiện Predator Fest: Reborn of the King chính thức khai mạc vào <strong>Chủ nhật, 10/12/2025</strong> và diễn ra từ<strong> 8:00 đến 17:00</strong> tại <strong>Trung tâm triển lãm SkyExpo - Công viên phần mềm Quang Trung, phường Tân Chánh Hiệp, quận 12, Thành phố Hồ Chí Minh</strong>. Hãy đến và trải nghiệm ngay, đăng ký trước&nbsp;<a href=\"https://www.google.com/url?q=https://fest.acervietnam.com.vn/enroll&amp;sa=D&amp;source=editors&amp;ust=1701338260719244&amp;usg=AOvVaw1edsi4Dvzyk4JCXwY_bwFG\"><strong>tại đây</strong></a>.</p><p><i>Bạn đọc đừng quên theo dõi&nbsp;</i><a href=\"https://www.google.com/url?q=https://www.facebook.com/AcerVN&amp;sa=D&amp;source=editors&amp;ust=1701338260719684&amp;usg=AOvVaw0G5BqiwAHqhDilM9zbO7hX\"><i><strong>Fanpage Acer VN</strong></i></a><i>&nbsp;và cộng đồng&nbsp;</i><a href=\"https://www.google.com/url?q=https://www.facebook.com/groups/AcerGamingVietNam&amp;sa=D&amp;source=editors&amp;ust=1701338260719921&amp;usg=AOvVaw2MOnv23BhJZHyjnzJReEY9\"><i><strong>Predator Community Vietnam</strong></i></a><i>&nbsp;để cập nhật liên tục thông tin sự kiện nhé!</i></p>', 1, 2, '2023-12-07 07:53:44', '2025-08-29 15:02:55'),
(18, 'Tin tức 1', 'news/wlcjimpnly3ultrelshc', '<p>Ngày 29/8&nbsp;</p><p>&nbsp;</p>', 1, 2, '2025-08-29 15:06:20', '2025-08-29 15:06:20'),
(19, 'Murf AI có phải là voice AI đỉnh nhất?', 'news/k45s9z57ll2mqwddp6em', '<p><i><strong>Murf AI là công cụ tạo giọng nói AI vô cùng phổ biến trên nhiều nơi trên Thế giới. Với kho tàng ngôn ngữ phong phú và nhiều chất giọng khác nhau, Murf AI dần được biết đến nhiều hơn và đóng vai trò quan trọng trong việc hỗ trợ người dùng trong nhiều tác vụ khác nhau. Hôm nay hãy cùng GEARVN tìm hiểu về Murf AI và cách dùng Murf AI trong nhiều trường hợp ngay sau đây nhé!</strong></i></p><h2><strong>Murf AI là gì?</strong></h2><p><strong>Murf AI </strong>là một trình tạo giọng nói AI tiên tiến sử dụng trí tuệ nhân tạo để sản xuất âm thanh chất lượng cao cho quảng cáo, video giải thích, video YouTube, <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/podcast-la-gi-mot-so-kenh-podcast-hay-khong-nen-bo-qua\">podcast</a> và nhiều nội dung khác. Bằng cách tận dụng công nghệ tổng hợp giọng nói tiên tiến, bạn có thể tạo ra giọng nói tự nhiên mà không cần phải thuê diễn viên lồng tiếng hoặc dành nhiều giờ thu âm và chỉnh sửa âm thanh.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-1_d10ec6c369184ca392cca8f1acaeb315_1024x1024.png\" alt=\"GEARVN - Murf AI là gì?\"></p><h2><strong>Tính năng nổi bật của Murf AI</strong></h2><p>Murf AI cung cấp một loạt ấn tượng các tính năng chính, làm cho nó nổi bật giữa các trình tạo giọng nói AI khác, từ chức năng chuyển văn bản thành giọng nói cho đến việc tăng cường quy trình làm việc của bạn với Murf API.</p><p><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/chuyen-van-ban-thanh-giong-noi\"><strong>Chuyển văn bản thành giọng nói</strong></a><strong> (Text to Speech): </strong>Tính năng này cho phép bạn chuyển đổi văn bản thành âm thanh với giọng đọc tự nhiên và chất lượng cao.</p><p><strong>Canva Add-On: </strong>Bổ sung <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-tai-canva-ve-may-tinh-laptop\">Canva</a> giúp tích hợp dễ dàng giọng đọc AI vào thiết kế của bạn trực tiếp từ nền tảng Canva.</p><p><strong>Tạo giọng nói nhân vật (Voice Cloning): </strong>Tính năng này cho phép bạn tạo ra giọng đọc AI dựa trên giọng của người nổi tiếng.</p><p><strong>Giọng đọc cho video (Voice over Video): </strong>Murf AI cung cấp khả năng thêm giọng đọc vào video để tạo ra nội dung video chuyên nghiệp và chất lượng cao.</p><p><strong>Google Slides Add-on: </strong>Bổ sung cho <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/google-slides-la-gi-huong-dan-su-dung-google-slides\">Google Slides</a> giúp tích hợp giọng đọc vào bài thuyết trình một cách trực tiếp từ Google Slides.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-18_2c2ca83f93eb45e18ac0d1db368b739b_1024x1024.jpg\" alt=\"GEARVN - Tính năng nổi bật của Murf AI\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cong-cu-chuyen-van-ban-thanh-giong-noi-tieng-viet\"><i><strong>Chia sẻ 5 công cụ chuyển văn bản thành giọng nói tiếng Việt trên máy tính</strong></i></a><i><strong>.</strong></i></p><h2><strong>Ưu và nhược điểm của Murf AI</strong></h2><h3><strong>Ưu điểm</strong></h3><p>Giao diện thân thiện với người dùng và miễn phí.</p><p>Kho tàng giọng nói đa dạng với hơn 120 giọng nói với hơn 20 loại ngôn ngữ và giọng địa phương.</p><p>Tiết kiệm thời gian và chi phí đáng kể so với cách làm truyền thống.</p><p>Chỉnh sửa bản ghi giọng nói dễ dàng như chỉnh sửa văn bản.</p><p>Khả năng làm cho âm thanh trở nên tự nhiên nhất bằng cách điều chỉ cao độ, tốc độ, và nhiều điều khác.</p><p>Murf AI có thể được sử dụng miễn phí trên Canva và Google Slides.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-3_f655fe30b87c4911bd33d6245b191e00_1024x1024.png\" alt=\"GEARVN -  Ưu và nhược điểm của Murf AI\"></p><h3><strong>Nhược điểm</strong></h3><p><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/google-cong-bo-su-dung-tinh-nang-ai-trong-gmail-google-docs\">Add-on trên Google Slides</a> chỉ cung cấp các tính năng cơ bản của giọng đọc (chỉnh sửa chi tiết hơn phải thực hiện trong Murf Studio).</p><p>Một số giọng còn thiếu sự tự tin, điều này có thể đòi hỏi nhiều công tác chỉnh sửa hơn.</p><h2><strong>Hướng dẫn chi tiết cách dùng Murf AI</strong></h2><h3><strong>Cách dùng Text to Speech trên Murf AI</strong></h3><p>Một trong tính năng nổi bật của Murf AI chính là khả năng chuyển văn bản thành giọng nói. Nếu bạn thấy <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/bat-mi-cach-tao-giong-chi-google-ai-cung-lam-duoc\">giọng chị Google</a> quá bình thường và muốn có một chất giọng mới trông tự nhiên và cuốn hút hơn thì bạn không nên bỏ qua Murf AI với hơn 20 ngôn ngữ và nhiều chất giọng khác nhau.</p><p><strong>Bước 1: </strong>Truy cập trang web Murf AI trên thanh công cụ tìm kiếm hoặc truy cập trực tiếp <a href=\"https://murf.ai/\"><strong>TẠI ĐÂY</strong></a>.</p><p><strong>Bước 2: </strong>Bạn có thể chọn Sign Up để đăng ký tài khoản Murf AI hoặc trực tiếp “<strong>Login</strong>” bằng tài khoản Google của mình nhé.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-1_90b33a0d13d341f08c11a62e5e06e208_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 3:</strong>&nbsp;Chọn \"<strong>Create project</strong>\" để bắt đầu dự án mới của bạn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-2_c54c66840b7f4b8c8307f24982481bb1_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 4: </strong>Đặt tên&nbsp;và chọn hình sử dụng voice AI &gt; tiếp tục chọn \"<strong>Create project</strong>\".</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-3_addeda510e9e4714bbf17fb855958792_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p>&nbsp;</p><p><strong>Bước 5: </strong>Bạn có thể tùy chỉnh giọng nói sao cho phù hợp với yêu cầu của mình nhất. Ví dụ như thay thế giọng nói khác, điều chỉnh cao độ, phong thái giọng nói và cả điều chỉnh phát âm. Tất nhiên, nếu bạn chỉ sử dụng tài khoản miễn phí thì không thể lựa chọn những âm thanh “<strong>PRO</strong>” được đâu nhé.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-5_42425f1ed5394766b3097aa990e62157_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 6:</strong> Ngoài ra, bạn cũng có thể sử dụng nhiều tính năng khác ở góc bên trái <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> như “<strong>Import Script</strong>” để tải lên một đoạn văn bản có sẵn thay vì gõ thủ công; chèn theo media hay thay đổi giọng nói với “<strong>Voice Change</strong>r”. Bản cập nhật mới nhất còn có cả tính năng “<strong>Translate</strong>” để bạn <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-dich-tieng-anh-sang-tieng-viet-bang-hinh-anh\">dịch văn bản</a> và tạo giọng nói nhanh chóng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-6_94afd51de6974e6ab08d2a3d53b7025d_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><p><strong>Bước 7: </strong>Sau khi hoàn tất chỉnh sửa &gt; nhấn chọn “<strong>Export</strong>” để xuất file.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-7_ca204b6755a947239b8181fb526bae2a_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Text to Speech trên Murf AI\"></p><h3><strong>Cách dùng Murf trên Canva Add-on</strong></h3><p>Murf AI đã có màn bắt tay với Canva để tích hợp khả năng text-to-speech vào trong sản phẩm của mình. Để sử dụng Murf AI trên Canva, bạn có thể thực hiện theo những bước sau đây:</p><p><strong>Bước 1:</strong> Truy cập Canva &gt; tạo một project mới hoặc mở project bạn đang thực hiện.</p><p><strong>Bước 2:</strong> Chọn “<strong>Ứng dụng</strong>” &gt; kéo xuống và chọn “<strong>Murf AI</strong>” &gt; chọn “<strong>Mở</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-8_5b6fd1177e13464bbe6f5ab2fba1f25e_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf trên Canva Add-on\"></p><p><strong>Bước 3: </strong>Hãy kết nối tài khoản Canva của bạn với Murf AI.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-9_73e619bad3a34a779f19c205ab5d0da9_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf trên Canva Add-on\"></p><p><strong>Bước 4:</strong> Lúc này bạn đã có thể tạo giọng nói AI bằng Murf AI trực tiếp trên Canva được rồi.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-10_6219c7a5d1244f33b4c3714edb93102a_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf trên Canva Add-on\"></p><h3><strong>Cách dùng Murf AI bằng Google Slides Add-on</strong></h3><p>Ngoài Canva, Google Slides cũng là một trong những “đối tác” khác của Murf AI. Giúp bạn tạo ra những trang slide vô cùng sống động từ hình ảnh lẫn âm thanh. Bằng cách này bạn có thể sử dụng Google Slides để tạo nên những thước phim tuyệt vời mà ai cũng có thể làm được kể cả beginner.&nbsp;</p><p>Để sử dụng Murf AI trên Google Slides, bạn có thể thực hiện theo những bước sau đây:</p><p><strong>Bước 1: </strong>Truy cập Google Slides &gt; chọn “<a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/google-extension\"><strong>Tiện ích mở rộng</strong></a>” &gt; tiếp tục chọn “<strong>Tiện ích bổ sung</strong>” &gt; “<strong>Tải tiện ích bổ sung</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-11_6962e4690a19462dbd31c5cefcd38c63_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 2: </strong>Tìm kiếm Murf AI, sau đó “<strong>Cài đặt</strong>” tiện ích vào Google Slides.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-13_3fcabdf407b1415596f72db32a814dd2_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 3: </strong>Sau khi đã cài đặt Murf AI vào Google Slides, phần add-on của Murf AI sẽ hiển thị như hình bên dưới.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-14_12a0bd0194f64a6bb8182a2045481c8d_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 4: </strong>Để sử dụng tiện ích, bạn hãy đăng nhập &gt; gõ đoạn văn bạn muốn chuyển thành văn bản và chọn “<strong>Build video</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-15_979ff2dd8d3e4952ae49899d39d6a1b4_1024x1024.jpg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><p><strong>Bước 5: </strong>Sau khi đã hoàn tất, bạn có thể chọn “<strong>View Video</strong>” hoặc “<strong>Download video</strong>” về máy tính. Hoặc nhấn “<strong>Re-Build</strong>” để tiện ích xử lý dữ liệu thêm một lần nữa.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-murf-ai-16_5cef2532d6ee4bbd94538744cc68da82_1024x1024.jpeg\" alt=\"GEARVN - Cách dùng Murf AI bằng Google Slides Add-on\"></p><blockquote><p><i>Lưu ý khi sử dụng add-on Murf AI trên Google Slides:</i></p><p><i>Thành phẩm cuối cùng sẽ được xuất ra dưới dạng </i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/file-mkv-la-gi\"><i>video MP4</i></a><i>.</i></p><p><i>Chỉ nên nhập một đoạn văn bản vừa đủ để miêu tả nội dung của từng slide. Nếu bạn nhập tất cả nội dung vào một slide, đồng nghĩa Murf AI sẽ chỉ xử lý phần voice ngay tại một slide duy nhất.</i></p></blockquote><p>Tổng kết lại, trên đây là những thông tin về <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/murf-ai\">Murf AI</a>&nbsp;- công cụ tạo voice thông minh giúp bạn thực hiện mọi nhu cầu về giọng nói. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật &amp; Giải Đáp</strong></a>.</p>', 1, 2, '2025-08-29 15:08:19', '2025-08-29 15:08:19'),
(20, 'Top 10 phần mềm thiết kế đồ họa chuyên nghiệp', 'news/nsucejxujyxcdfkekvdp', '<p><i><strong>Ngày nay, nhu cầu về thiết kế đồ họa trở nên quan trọng trong nhiều lĩnh vực, từ sáng tạo nghệ thuật đến công nghiệp và kỹ thuật. Để đáp ứng xu hướng này, việc sử dụng các phần mềm thiết kế đồ họa chuyên nghiệp là không thể phủ nhận. Dưới đây là danh sách \"Top 10 phần mềm thiết kế đồ họa chuyên nghiệp,\" nơi mà sự sáng tạo và chất lượng hình ảnh đạt đến đỉnh cao. Cùng GEARVN tìm hiểu những phần mềm chuyên nghiệp dân thiết kế, sáng tạo không thể bỏ qua này nhé!</strong></i></p><h2><strong>Adobe Photoshop&nbsp;</strong></h2><p><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/photoshop-phan-mem-thiet-ke-do-hoa-hang-dau-hien-nay\">Adobe Photoshop</a> là một phần mềm hàng đầu trong lĩnh vực chỉnh sửa ảnh và đồ họa, đặc biệt được thiết kế để mang lại trải nghiệm sáng tạo tối ưu cho người dùng. Được phát triển bởi Adobe Systems, Photoshop đã trở thành một tiêu chuẩn ngành trong việc xử lý và tạo ra hình ảnh chất lượng cao.</p><p>Adobe Photoshop chủ yếu được sử dụng để chỉnh sửa, cải thiện và tối ưu hóa hình ảnh số. Công cụ này cung cấp một loạt các tính năng mạnh mẽ bao gồm điều chỉnh màu sắc, độ tương phản, làm mịn da, và nhiều hiệu ứng đặc biệt khác. Nó không chỉ dành cho ảnh tĩnh mà còn hỗ trợ chỉnh sửa video và tạo hiệu ứng chuyển động.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-2_28a6464d33e84894a5f86f783d32bb51_1024x1024.jpg\" alt=\"GEARVN - Adobe Photoshop&nbsp;phần mềm thiết kế độ họa chuyên nghiệp\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Layers và Masking: </strong>Photoshop cho phép người dùng làm việc với các lớp (layers), giúp tổ chức và điều chỉnh từng phần của hình ảnh một cách riêng biệt. Công cụ Masking giúp tạo ra hiệu ứng và sự chuyển động mượt mà.</p><p><strong>Tích Hợp 3D: </strong>Cung cấp khả năng làm việc với đối tượng 3D, làm phong phú thêm trải nghiệm sáng tạo.</p><p><strong>Adobe Creative Cloud: </strong>Photoshop tích hợp tốt với bộ công cụ đồ họa và thiết kế khác trong Adobe Creative Cloud như Illustrator, InDesign, giúp người dùng chuyển đổi dễ dàng giữa các ứng dụng.</p><h2><strong>Adobe Illustrator</strong></h2><p>Adobe Illustrator là một phần mềm thiết kế vector hàng đầu, được phát triển bởi Adobe Systems. Với sức mạnh và linh hoạt của nó, Illustrator đã trở thành công cụ không thể thiếu cho nhiều người làm việc trong lĩnh vực thiết kế đồ họa, đặc biệt là trong việc tạo và chỉnh sửa hình ảnh vector.</p><p>Illustrator chủ yếu tập trung vào việc tạo và chỉnh sửa đồ họa vector. Bạn có thể tạo ra các hình ảnh chất lượng cao mà không làm giảm độ phân giải, điều này làm cho nó trở thành công cụ ưa thích trong việc tạo biểu đồ, biểu đồ tuyến tính, logo, và các hình ảnh có đường nét sắc sảo.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-3_4c885bc1c20440c283e41911685c251d_1024x1024.png\" alt=\"GEARVN - Adobe Illustrator&nbsp;phần mềm thiết kế độ họa chuyên nghiệp\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Integrations with Creative Cloud: </strong>Illustrator tích hợp mượt mà với các ứng dụng khác trong bộ Adobe Creative Cloud, như Photoshop và InDesign, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Mobile Integration:</strong> Adobe đã phát triển ứng dụng Illustrator trên di động, giúp bạn có thể làm việc trên các thiết bị như iPad và iPhone.</p><p><strong>Performance Improvements: </strong>Phiên bản mới của Illustrator thường xuyên cập nhật với các cải tiến về hiệu suất và tính năng mới để đáp ứng nhu cầu ngày càng cao của người dùng.</p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/top-phan-mem-lam-video-tren-may-tinh\"><i><strong>Top 4 phần mềm làm video trên máy tính bạn không nên bỏ qua</strong></i></a><i><strong> &lt;&lt;&lt;</strong></i></p><h2><strong>Phần mềm thiết kế đồ họa Adobe InDesign</strong></h2><p>Adobe InDesign là một ứng dụng chuyên nghiệp trong lĩnh vực thiết kế bản in và đa phương tiện, phát triển bởi Adobe Systems. Nó là công cụ không thể thiếu cho những người làm việc trong ngành xuất bản, đặc biệt là trong việc tạo và biên tập các tài liệu như sách, tờ rơi, tạp chí, và các sản phẩm truyền thông khác.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-4_24685702162446a19f13cd1878d876f8_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa Adobe InDesign\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Integration with Adobe Creative Cloud:</strong> InDesign tích hợp tốt với các ứng dụng khác trong bộ Adobe Creative Cloud như Photoshop và Illustrator, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Interactive Documents:</strong> Bạn có thể tạo ra tài liệu tương tác, bao gồm cả các yếu tố như hyperlinks và nút điều hướng.</p><p><strong>Preflight and Packaging:</strong> Cung cấp tính năng Preflight để kiểm tra lỗi trước khi in ấn, và Packaging giúp tổ chức tất cả các tệp cần thiết cho dự án để chia sẻ hoặc in ấn.</p><h2><strong>CorelDraw - thiết kế hình ảnh chuyên nghiệp</strong></h2><p>CorelDRAW là một phần mềm thiết kế đồ họa vector và chỉnh sửa ảnh, phát triển bởi Corel Corporation. Đây là một ứng dụng mạnh mẽ được sử dụng rộng rãi trong lĩnh vực thiết kế đồ họa, từ tạo logo, biểu ngữ đến bảng quảng cáo và các vật liệu tiếp thị khác.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-5_38c4b4b757bb457fa4353c97e5f667ab_1024x1024.jpg\" alt=\"GEARVN - Phần mềm CorelDraw\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>CorelDRAW Graphics Suite:</strong> Bộ sản phẩm này không chỉ bao gồm CorelDRAW mà còn có các ứng dụng khác như Corel PHOTO-PAINT, Corel Font Manager, và Corel CONNECT, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Compatibility and Export Options: </strong>CorelDRAW hỗ trợ nhiều định dạng file, giúp người dùng chia sẻ và làm việc với các ứng dụng khác một cách thuận tiện.</p><p><strong>Community and Learning Resources: </strong>Cộng đồng người dùng CorelDRAW lớn mạnh, và Corel cung cấp nhiều tài nguyên học tập và hỗ trợ trực tuyến cho người sử dụng.</p><h2><strong>Sketchup - Thiết kế 3D</strong></h2><p>SketchUp là một phần mềm mô hình 3D được phát triển bởi Trimble Inc. Nó được sử dụng rộng rãi trong các lĩnh vực như kiến trúc, thiết kế nội thất, xây dựng, và nhiều lĩnh vực sáng tạo khác. SketchUp nổi tiếng với giao diện thân thiện, dễ sử dụng và khả năng tạo ra các mô hình 3D nhanh chóng.</p><p>SketchUp dành cho mọi người, từ những người mới bắt đầu đến các chuyên gia trong lĩnh vực thiết kế không gian. Điều này bởi vì giao diện đơn giản và tính năng mô hình hóa dễ sử dụng của nó làm cho nó trở thành một công cụ hữu ích cho người không có kinh nghiệm về thiết kế 3D.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-6_7095547383a4464dbdd32a3043acf799_1024x1024.png\" alt=\"GEARVN - Thiết kế 3D Sketchup\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Giao Diện Dễ Sử Dụng: </strong>SketchUp có giao diện thân thiện và dễ sử dụng, giúp người dùng tập trung vào quá trình sáng tạo thay vì phải đối mặt với quá trình học phức tạp.</p><p><strong>Plugin và Extensions: </strong>Cộng đồng người sử dụng SketchUp đã phát triển nhiều plugin và extensions để mở rộng tính năng của phần mềm, làm cho nó phù hợp với nhiều mục đích sử dụng.</p><p><strong>Community Support:</strong> SketchUp có một cộng đồng sôi động, nơi người dùng có thể chia sẻ kiến thức, mô hình và hỗ trợ lẫn nhau.</p><h2><strong>Blender - Phần mềm thiết kế đồ họa 3D</strong></h2><p>Blender là một phần mềm mô hình hóa 3D và làm phim nguồn mở, được phát triển bởi Blender Foundation. Nó là một công cụ đa nhiệm mạnh mẽ, hỗ trợ nhiều lĩnh vực sáng tạo như thiết kế đồ họa, mô hình 3D, animation, rendering, compositing, và làm phim.</p><p>Blender cung cấp các công cụ mô hình hóa mạnh mẽ cho việc tạo ra các đối tượng 3D phức tạp. Điều này bao gồm cả mô hình hóa đường, hình học, và mô hình hóa bề mặt, hỗ trợ animation và rigging, cho phép tạo các cảnh động phức tạp và kiểm soát các đối tượng 3D trong không gian.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-7_f0ed61a40eba4283bb3d58231060af15_1024x1024.png\" alt=\"GEARVN - Thiết kế 3D Blender\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Open Source:</strong> Blender là phần mềm nguồn mở, điều này có nghĩa là nó miễn phí và có sẵn cho cộng đồng để sửa lỗi và phát triển.</p><p><strong>Community Support:</strong> Có một cộng đồng lớn và tích cực xung quanh Blender, cung cấp tài nguyên học tập, video hướng dẫn, và sự giúp đỡ.</p><p><strong>Cross-Platform: </strong>Blender hỗ trợ nhiều hệ điều hành như Windows, macOS và Linux.</p><h2><strong>GIMP (GNU Image Manipulation Program)</strong></h2><p>GIMP (GNU Image Manipulation Program) là một phần mềm chỉnh sửa ảnh nguồn mở, được phát triển bởi dự án GNU. Nó là một công cụ mạnh mẽ và linh hoạt cho việc chỉnh sửa và xử lý hình ảnh, giúp người dùng tạo ra các tác phẩm nghệ thuật số chất lượng cao mà không phải trả phí chi phí cấp phép.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-8_374d134c7e9f48b4b6726c6fea95e4c6_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa GIMP (GNU Image Manipulation Program)\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Open Source:</strong> GIMP là một phần mềm nguồn mở, điều này có nghĩa là nó miễn phí và có sẵn cho cộng đồng để sửa lỗi và phát triển.</p><p><strong>Cross-Platform: </strong>GIMP hỗ trợ nhiều hệ điều hành như Windows, macOS, và Linux.</p><p><strong>Community Support: </strong>Có một cộng đồng người dùng đông đảo và tích cực, cung cấp tài nguyên, hướng dẫn, và hỗ trợ cho người dùng GIMP.</p><h2><strong>Autocad&nbsp;</strong></h2><p>AutoCAD là một phần mềm thiết kế và đồ họa kỹ thuật được phát triển bởi Autodesk. Nó là một trong những ứng dụng phổ biến nhất trong lĩnh vực thiết kế kỹ thuật, kiến trúc, và xây dựng.</p><p>AutoCAD cung cấp một loạt các công cụ vẽ và chỉnh sửa để tạo ra các bản vẽ kỹ thuật và bản vẽ 2D chi tiết. Ngoài ra, AutoCAD hỗ trợ mô hình hóa 3D, cho phép người dùng tạo ra các mô hình 3D phức tạp của các đối tượng kỹ thuật. Có các công cụ để thêm chú thích và kích thước vào bản vẽ, giúp mô tả chi tiết và kích thước của các thành phần kỹ thuật. Hỗ trợ tính năng collaboration, cho phép nhiều người dùng làm việc trên cùng một dự án và chia sẻ thông tin một cách dễ dàng. Nó cho phép người dùng tùy chỉnh các menu, công cụ, và lệnh để đáp ứng nhu cầu cụ thể của họ.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-9_30e26e8a0c0a4172ba8de1ddaf48fd17_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa Autocad\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Versatility:</strong> AutoCAD có thể được sử dụng cho nhiều mục đích, từ tạo bản vẽ chi tiết 2D đến mô hình hóa 3D phức tạp.</p><p><strong>Large User Community:</strong> Với một cộng đồng người dùng lớn, người dùng có thể dễ dàng tìm thấy hỗ trợ, tài nguyên, và chia sẻ thông tin.</p><p><strong>Integration with Other Autodesk Products:</strong> AutoCAD tích hợp tốt với các sản phẩm khác của Autodesk, như Revit và Inventor, để tối ưu hóa quy trình làm việc.</p><h2><strong>3ds Max</strong></h2><p>Autodesk 3ds Max, thường được gọi là 3ds Max, là một phần mềm mô hình hóa, animation và render 3D phát triển bởi Autodesk. Nó được sử dụng rộng rãi trong ngành công nghiệp truyền thông và giải trí, bao gồm việc tạo ra đồ họa chuyển động, game, và hiệu ứng đặc biệt trong các sản phẩm đa phương tiện.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-10_1c048a0f5d17433da16033d9d36499f2_1024x1024.png\" alt=\"GEARVN - Phần mềm thiết kế đồ họa 3ds Max chuyên nghiệp\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Versatile 3D Modeling: </strong>3ds Max cung cấp nhiều công cụ và kỹ thuật mô hình hóa 3D, từ poly-modeling đến spline-based modeling, giúp đáp ứng nhu cầu đa dạng của người dùng.</p><p><strong>Scripting và Customization: </strong>Cho phép người dùng tùy chỉnh và mở rộng chức năng của phần mềm thông qua scripting, giúp tối ưu hóa quy trình làm việc.</p><p><strong>Integration with Other Autodesk Products: </strong>3ds Max tích hợp tốt với các sản phẩm khác của Autodesk, như AutoCAD và Revit, để tối ưu hóa quy trình làm việc trong toàn bộ quá trình thiết kế và kỹ thuật.</p><p><i><strong>&gt;&gt;&gt; Xem thêm:&nbsp;</strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-tai-canva-ve-may-tinh-laptop\"><i><strong>Canva là gì? Cách tải Canva về máy tính, điện thoại miễn ph</strong></i></a><i><strong>í &lt;&lt;&lt;</strong></i></p><h2><strong>Phần mềm thiết kế Revit&nbsp;</strong></h2><p>Autodesk Revit là một phần mềm thiết kế và xây dựng thông minh, được phát triển bởi Autodesk. Revit được thiết kế đặc biệt cho ngành kiến trúc, xây dựng, và quản lý dự án xây dựng, mang lại tính tích hợp cao và khả năng làm việc chung giữa các chuyên gia khác nhau trong quá trình phát triển dự án.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-top-10-phan-mem-thiet-ke-do-hoa-chuyen-nghiep-11_180447f4393b4f579f52170c81a017ad_1024x1024.jpg\" alt=\"GEARVN - Phần mềm thiết kế Revit\"></p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>Parametric Components: </strong>Có khả năng tạo và sử dụng các thành phần có thể thay đổi (parametric components), giúp linh hoạt trong quá trình thiết kế và thay đổi.</p><p><strong>Interoperability:</strong> Revit có khả năng tương thích với nhiều phần mềm khác, giúp tối ưu hóa quy trình làm việc và chia sẻ thông tin dự án.</p><p><strong>Cloud Collaboration:</strong> Autodesk cung cấp tính năng cloud collaboration giúp người dùng làm việc chung một cách linh hoạt, ngay cả khi ở xa nhau.</p><p>Những phần mềm thiết kế đồ họa chuyên nghiệp này không chỉ là những công cụ mạnh mẽ cho sự sáng tạo mà còn là nguồn động viên cho việc định hình và biến ý tưởng thành hiện thực trong thế giới số ngày nay. Dù bạn là một nghệ sĩ đồ họa, kiến trúc sư, hay chuyên gia xây dựng, danh sách này mang lại sự đa dạng và linh hoạt để đáp ứng mọi nhu cầu và thách thức của người sáng tạo. Theo dõi <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap\"><i><strong>GEARVN - Thủ Thuật Giải Đáp</strong></i></a> để xem thêm nhiều bài viết hay nhé!</p>', 1, 2, '2025-08-29 15:10:17', '2025-08-29 15:10:17'),
(21, 'Game thủ có nên nâng cấp màn hình gaming OLED không?', 'news/jovvqoylkupxqsrzik4r', '<p>Màn hình OLED đã không còn là khái niệm xa lạ so với người dùng. Sử dụng công nghệ hiện đại để tái tạo hình ảnh, màn hình OLED không những giây ấn tượng mạnh với giới mộ điệu vì chất lượng hình ảnh hiển thị ấn tượng, mà còn làm cho game thủ đứng ngồi không yên với chất lượng đồ họa màn hình máy tính này mang lại. Tuy nhiên, việc trang bị tấm nền OLED cho màn hình gaming liệu có thực sự cần thiết?</p><p>Màn hình OLED là gì?</p><p>OLED là viết tắt của Organic Light Emitting Diode, là công nghệ sử dụng tấm nền diode hữu cơ để tạo ra ánh sáng. Mỗi điểm ảnh trong màn hình OLED có thể tự phát sáng khi có dòng điện chạy qua, không cần đèn nền như các công nghệ LED hoặc LCD truyền thống. Màn hình OLED không chỉ làm tăng độ sáng, cho phép mỗi điểm ảnh trên màn hình hoạt động độc lập và cải thiện khả năng hiển thị sắc đen và độ tương phản mà còn giảm đáng kể độ dày của màn hình.</p><p>GEARVN - Màn hình OLED là gì?</p><p>Ưu và nhược điểm của màn hình OLED</p><p>Ưu điểm:</p><p>Độ tương phản cao: Màn hình OLED có khả năng hiển thị màu đen chuẩn và có độ sâu hơn, vì mỗi điểm ảnh có thể tắt đèn khi cần, tạo ra độ tương phản cao và tiết kiệm năng lượng đáng kể.</p><p>Màu sắc sống động: Màn hình OLED tạo ra màu sắc sống động và chân thực, vì nó có khả năng tái tạo màu rất tốt.</p><p>Độ mỏng và linh hoạt: Cấu trúc mỏng của OLED cho phép tạo ra màn hình mỏng và linh hoạt, thích hợp cho nhiều ứng dụng và thiết bị.</p><p>Độ phản ứng nhanh: Màn hình OLED có thời gian phản ứng nhanh, giảm hiện tượng mờ khi chuyển động.</p><p>GEARVN - Ưu và nhược điểm của màn hình OLED</p><p>Nhược điểm:</p><p>Suy giảm tuổi thọ: Các điểm ảnh trên màn hình OLED có thể suy giảm độ sáng và tuổi thọ theo thời gian, đặc biệt ở các điểm ảnh sáng.</p><p>Giá thành cao: Quy trình màn hình OLED tương đối đắt đỏ nên giá thành của màn hình OLED cũng vì thế mà cao hơn so với nhiều tấm nền màn hình khác.</p><p>Bị đốm sáng: Có nguy cơ hình thành đốm cháy (burn-in) khi một hình ảnh được hiển thị liên tục trên màn hình, dẫn đến việc một số khu vực trên màn hình bị đốm sáng.</p><p>So sánh màn hình OLED và LCD</p><p>Tiêu chí</p><p>Màn hình OLED</p><p>Màn hình LCD</p><p>Nguyên lý hoạt động</p><p>Sử dụng các hợp chất hữu cơ phát sáng khi có điện áp. Mỗi điểm ảnh có thể tự phát sáng và tắt đèn khi cần.</p><p>Sử dụng tinh thể lỏng để kiểm soát ánh sáng từ nguồn nền chiếu, và đèn LED ở phía sau màn hình máy tính.</p><p>Độ tương phản</p><p>Có độ tương phản vô cùng cao, vì mỗi điểm ảnh có thể đạt màu đen chuẩn. Do đó sắc đen được tái tạo có độ sâu và cuốn hút hơn.</p><p>Độ tương phản thấp hơn vì khó có thể đạt được màu đen hoàn toàn.</p><p>Cấu trúc thiết kế</p><p>Cấu trúc màn hình mỏng và linh hoạt, cho phép tạo ra các màn hình cong và linh hoạt.</p><p>Thường có kích thước lớn hơn và không linh hoạt như OLED.</p><p>Góc nhìn màn hình</p><p>Góc nhìn rộng, giữ nguyên chất lượng hình ảnh từ nhiều góc độ.</p><p>Chất lượng hình ảnh không đảm bảo từ nhiều góc nhìn khác nhau.</p><p>Thời gian phản hồi</p><p>Thời gian phản ứng nhanh, giảm tình trạng nhòe khi chuyển động.</p><p>Phụ thuộc vào từng model màn hình và công nghệ đi kèm trên màn hình.</p><p>Tuổi thọ</p><p>Tuổi thọ trung bình khoảng từ 20,000 giờ tới 50,000 giờ</p><p>Khoảng 50,000 giờ</p><p>Năng lượng tiêu thụ</p><p>Tiêu thụ ít năng lượng khi hiển thị màu đen.</p><p>Tiêu thụ năng lượng không đổi không phụ thuộc vào nội dung hiển thị.</p><p>Game thủ có nên nâng cấp màn hình gaming OLED?</p><p>Việc nâng cấp màn hình OLED cho màn hình gaming có thể phụ thuộc vào một số yếu tố cụ thể và sở thích cá nhân của người chơi. Nếu bạn là game thủ đòi hỏi hình ảnh hiển thị chất lượng cao, màu sắc sặc sỡ đẹp mắt thì màn hình OLED sẽ không khiến bạn thất vọng. Hơn nữa, màn hình OLED tiêu tốn ít năng lượng hơn khi phải tái tạo sắc đen trên màn hình.</p><p>GEARVN - Game thủ có nên nâng cấp màn hình gaming OLED?</p><p>Ngoài ra màn hình OLED còn sở hữu một vài đặc điểm nổi bật khác, phải kể đến như:</p><p>Độ tương phản màu sắc cao: Màn hình OLED cung cấp độ tương phản vô cùng cao, giúp hiển thị các màu sắc sắc nét và đậm đặc, đặc biệt là màu đen thực sự.</p><p>Góc nhìn màn hình rộng: Góc nhìn rộng của màn hình OLED giúp duy trì chất lượng hình ảnh từ nhiều góc độ, điều này cực kỳ quan trọng với game thủ khi bạn có thể bao trọn mọi góc nhìn, nắm bắt mọi chi tiết trên khung hình.</p><p>Thời gian phản ứng nhanh: Màn hình OLED có thời gian phản ứng nhanh, giảm hiện tượng nhòe khi chuyển động trong các trò chơi nhanh.</p><p>Thiết kế mỏng, tinh tế và linh hoạt: Màn hình OLED cũng có thiết kế mỏng và linh hoạt và game thủ có thể tận dụng điểm mạnh này để có được trải nghiệm chơi game độc đáo.</p><p>Màn hình gaming OLED bạn không nên bỏ qua</p><p>Màn hình LG 45GR95QE-B UltraGear 45\" OLED 2K 240Hz G-Sync</p><p>Màn hình LG 45GR95QE-B UltraGear 45</p><p>Màn hình LG 45GR95QE-B UltraGear 45\" OLED 2K 240Hz G-Sync</p><p>41.290.000₫</p><p>33.290.000₫-19%</p><p>0.0(0 đánh giá)</p><p>XEM CHI TIẾT</p><p>Màn hình OLED LG 45GR95QE-B UltraGear, một trong những sản phẩm đặc biệt của LG, được thiết kế với sự cầu kỳ và hiện đại. Khả năng tái tạo màu sắc chân thực của màn hình này đạt đến 98.5% DCI-P3 (CIE1976), làm nổi bật sự sống động của đồ họa và độ phân giải 2K cao cấp phục vụ nhu cầu chơi game. Với tỷ lệ 21:9 mới nhất, màn hình siêu rộng LG 45GR95QE-B UltraGear không bị hạn chế về chiều rộng, mang đến trải nghiệm tuyệt vời cho người dùng.</p><p>GEARVN - Màn hình LG 45GR95QE-B UltraGear 45</p><p>Tối ưu với tần số quét 240Hz và thời gian phản hồi 0.03ms GtG, màn hình cong này hướng đến trải nghiệm chơi game tối ưu. Khả năng tương thích với Nvidia G-sync và AMD FreeSync, cùng công nghệ chống xé màn hình, lỗi giật hình, và chống lóa, tạo ra hiệu ứng hình ảnh trôi chảy, mượt mà hơn khi chơi game.</p><p>Thiết kế không chỉ bắt mắt với hệ thống đèn chiếu sáng Hexagon và viền màn hình siêu mỏng tựa như không, mà còn linh hoạt với chân đế có thể điều chỉnh độ nghiêng, độ cao. Điểm cong màn hình 800R chuẩn giúp mọi chi tiết hiển thị trong tầm nhìn, giúp bạn thật sự đắm chìm vào thế giới game.</p><p>Màn hình LG 27GR95QE-B UltraGear 27\" OLED 2K 240Hz G-Sync</p><p>Màn hình LG 27GR95QE-B UltraGear 27</p><p>Màn hình LG 27GR95QE-B UltraGear 27\" OLED 2K 240Hz G-Sync</p><p>24.490.000₫</p><p>16.990.000₫-31%</p><p>0.0(0 đánh giá)</p><p>XEM CHI TIẾT</p><p>Nếu bạn ưa chuộng một mô hình nhỏ gọn và tiêu chuẩn hơn để sử dụng dễ dàng hoặc cài đặt đa màn hình, màn hình LG 27GR95QE-B UltraGear OLED sẽ là lựa chọn không thể bỏ qua. Màn hình LG luôn gây ấn tượng với thiết kế hiện đại và tinh tế, LG 27GR95QE-B UltraGear cũng không ngoại lệ. Không những thế, màn hình gaming này còn sở hữu khả năng tái tạo màu sắc chân thực lên đến 98.5% DCI-P3 (CIE 1976) và độ phân giải 2K cao cấp, là lựa chọn lý tưởng cho game thủ. Tỷ lệ màn hình tiêu chuẩn 16:9 đáp ứng mọi nhu cầu đồ họa trên màn hình kết hợp với tần số quét 240Hz, thời gian phản hồi 0.03ms GtG và công nghệ đồng bộ hóa thích ứng hứa hẹn mang đến trải nghiệm chơi game tuyệt vời.</p><p>GEARVN - Màn hình LG 27GR95QE-B UltraGear 27</p><p>Tổng kết lại, trên đây là những thông tin bạn cần biết về màn hình OLED và những lưu ý nếu bạn muốn nâng cấp màn hình gaming OLED. Màn hình OLED hiện nay đang được xem là tiêu chuẩn màn hình mới do mang đến chất lượng hình ảnh đẹp mắt cho người dùng. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại GEARVN - Blog Thủ Thuật Giải Đáp.</p>', 1, 2, '2025-08-30 02:04:39', '2025-08-30 02:04:39');
INSERT INTO `news` (`id`, `title`, `image`, `content`, `status`, `users_id`, `created_at`, `updated_at`) VALUES
(22, 'Livestream chuyên nghiệp cùng Streamlabs', 'news/uaey4ltlnwgci2ff6duz', '<p><i><strong>Livestream đã không còn là một khái niệm xa lạ với người dùng công nghệ. Thời gian gần đây, livestream đã và đang trở thành một trào lưu và đáp ứng nhiều mục đích sử dụng. Tuy nhiên việc livestream chuyên nghiệp hay livestream đa nền tảng thì chưa chắc ai cũng biết. Hôm nay hãy cùng GEARVN tìm hiểu cách livestream đa nền tảng và sang xịn mịn như streamer chuyên nghiệp trên Streamlabs&nbsp;nhé!</strong></i></p><h2><strong>Streamlabs là gì?</strong></h2><p><strong>Streamlabs </strong>là một nền tảng giúp người dùng tạo và quản lý nội dung video trực tuyến thu hút nhiều người dùng, đặc biệt là trong lĩnh vực livestream. Nền tảng này cung cấp nhiều công cụ và tính năng hỗ trợ người dùng tạo ra các buổi phát sóng chuyên nghiệp trên các nền tảng như Twitch, YouTube, Facebook, và nhiều nền tảng khác.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-12_9e9f1d61216f454ca1b3dacc75022d41_1024x1024.jpg\" alt=\"GEARVN - Streamlabs là gì?\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-a-z-cach-live-tren-tiktok\"><i><strong>Hướng dẫn A-Z cách live trên TikTok</strong></i></a><i><strong>.</strong></i></p><h2><strong>Các tính năng nổi bật của Streamlabs</strong></h2><p><strong>Streamlabs OBS (SLOBS):</strong> Một ứng dụng quay phim và phát sóng trực tuyến dựa trên mã nguồn mở OBS (Open Broadcaster Software) với thêm vào nhiều tính năng và giao diện người dùng thân thiện.</p><p><strong>Alerts và Overlays:</strong> Cung cấp các hiệu ứng và thông báo tự động để thông báo cho người xem về các sự kiện như quyên góp, đăng ký, hoặc lời nhắc từ khán giả.</p><p><strong>Widgets:</strong> Bao gồm các công cụ như chatbox, tạo đồng hồ đếm ngược, hiển thị danh sách quyên góp, và nhiều tính năng khác để tương tác với khán giả.</p><p><strong>Donate:</strong> Hỗ trợ việc quản lý thu nhập từ quyên góp của khán giả thông qua các tính năng tích hợp.</p><p><strong>Tích hợp với nhiều nền tảng phát sóng trực tiếp: </strong>Cho phép người dùng kết nối nhanh chóng với các nền tảng phát sóng phổ biến.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-11_a40905192567491097664e6b7a925c7d_1024x1024.jpg\" alt=\"GEARVN - Các tính năng nổi bật của Streamlabs\"></p><h2><strong>Hướng dẫn tải Streamlabs về máy tính</strong></h2><p>Để tải phần mềm về máy tính, bạn có thể thực hiện theo những bước sau:</p><p><strong>Bước 1: </strong>Tìm kiếm Streamlabs và tải ứng dụng về máy tính. Hoặc bạn có thể tải trực tiếp <a href=\"https://streamlabs.com/streamlabs-desktop/download?sdb=0\"><strong>TẠI ĐÂY</strong></a>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-1_edb88b367d7341999ea6bc936c75649b_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn tải Streamlabs về máy tính\"></p><p><strong>Bước 2:</strong> Quá trình tải ứng dụng sẽ mất một ít thời gian. Sau khi đã tải ứng dụng, bạn hãy tiến hành cài đặt ứng dụng theo từng bước hướng dẫn trên máy tính.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-2_60d871929e424a898ea9b9cf301f02d2_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn tải Streamlabs về máy tính\"></p><h2><strong>Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp</strong></h2><p><strong>Bước 1: </strong>Khi mở Streamlabs, bạn sẽ thấy hai tính năng “<strong>Livestream</strong>” và “<strong>Recording Only</strong>” &gt; chọn mục “<strong>Livestream</strong>” &gt; \"<strong>Continue</strong>\" để tiếp tục.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-3_1faaf4c1bbe04e699a140edd6599a7a4_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-chi-tiet-cach-quay-man-hinh-may-tinh-don-gian-nhat\"><i><strong>Hướng dẫn chi tiết cách quay màn hình máy tính đơn giản nhất</strong></i></a><i><strong>.</strong></i></p><p><strong>Bước 2: </strong>Tiếp tục chọn nền tảng để livestream. Ví dụ nhấn chọn biểu tượng Facebook sử dụng Streamlabs livestream trên Facebook.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-4_2d2006ef9389418aa4b354c3cec1cdc4_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/2fa-la-gi\"><i><strong>2FA là gì? Hướng dẫn cách sử dụng 2FA trên Facebook</strong></i></a><i><strong>.</strong></i></p><p><strong>Bước 3: </strong>Tiếp theo đăng nhập tài khoản Facebook bạn muốn livestream &gt; click chọn “<strong>Tiếp tục dưới tên…</strong>” để chính thức livestream trên tài khoản Facebook của mình.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-5_550e9f9e420f4700a008f5094460711f_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 4: </strong>Chỉnh sửa đối tượng người xem livestream trên Streamlabs &gt; nhấn chọn “<strong>Tiếp tục dưới tên…</strong>”</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-6_9ed2572e5f3842a2a620e694c5d03a78_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 5:</strong> Sau đó bạn sẽ được chuyển sang <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> cài đặt <a href=\"https://gearvn.com/collections/microphone\">microphone</a> và <a href=\"https://gearvn.com/collections/webcam\">webcam</a> khi livestream trên Streamlabs &gt; nhấn “<strong>Continue</strong>” để tiếp tục.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-10_53d53de86bc44c0dae51f3da0a17e740_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 6:</strong> Tiếp đến là thay đổi “<strong>Theme</strong>” giao diện livestream &gt; nếu không nâng cấp tài khoản Ultra thì tất nhiên bạn chỉ được dùng những giao diện miễn phí thôi nhé. Hãy chọn theme phù hợp với bạn để bắt đầu chuyển sang những bước cài đặt tiếp theo.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-7_0fdf3199e9084f6485607dc912fc81f4_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 7: </strong>Streamlabs cung cấp cho bạn hai chức năng livestream miễn phí và có phí. Bạn cũng có thể chọn gói Ultra để sở hữu nhiều tính năng nâng cao hơn như không giới hạn theme, livestream trên nhiều nền tảng cùng một lúc,...giúp việc phát trực tiếp của bạn trở nên tiện lợi và dễ dàng hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-8_ea36a58e55534606b11c4c562a069bba_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p><strong>Bước 8: </strong>Chọn chế độ livestream như hình bên dưới và nhấn chọn “<strong>Go Live</strong>” để bắt đầu buổi livestream.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-streamlabs-9_c82fbee0c3984d8e9a41b0e071fd4ce2_1024x1024.jpg\" alt=\"GEARVN - Hướng dẫn sử dụng Streamlabs để livestream chuyên nghiệp\"></p><p>Như vậy bạn đã thiết lập livestream cùng <a href=\"http://streamlabs/\">Streamlabs</a> một cách dễ dàng rồi. Chỉ bằng một vài thao tác đơn giản, bạn đã có thể sử dụng Streamlabs và livestream đa nền tảng một cách nhanh chóng rồi. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật Giải Đáp</strong></a>.</p>', 1, 2, '2025-09-02 07:45:57', '2025-09-02 07:45:57'),
(23, 'ASUS ROG Strix G16/G18', 'news/ysohsnetadnmpv0ztx6p', '<p><i><strong>Là một trong những thương hiệu nổi tiếng trong dòng laptop gaming cao cấp, ASUS luôn trau chuốt trong từng sản phẩm của mình nhằm đem đến trải nghiệm sử dụng tốt nhất. Và trong năm nay, chúng ta đã được chào đón 2 “chiến binh” mới và vô cùng mạnh mẽ ASUS với series ROG Strix G16 và G18.</strong></i></p><h2><strong>Unbox ASUS ROG Strix G16/G18</strong></h2><p>Đặt ngay vào mắt người dùng là phần hộp được thiết kế đẹp mắt về mặt thẩm mỹ, giữ vững những “tha thu” đậm nét đã có trên sản phẩm thuộc series <a href=\"https://gearvn.com/collections/laptop-gaming-asus-rog-strix-g\">ROG Strix&nbsp;G</a> để tạo vẻ ngoài cuốn hút và mạnh mẽ. Ngoài ra, phần hộp của của ROG Strix G16/G18 được thiết kế dạng dọc mới, độc và lạ. Vì thế, bạn cũng nên lưu ý trong cách mở hộp khi muốn lấy sản phẩm ra.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-1_512edc0d761844fdb6e4500c54f893a4_1024x1024.jpg\" alt=\"Unbox ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-2_be0ee6cf9658457daa5d91c2df96f40e_1024x1024.jpg\" alt=\"Unbox ASUS ROG Strix G16/G18 - GEARVN\"></p><h2><strong>Cấu hình của ASUS ROG Strix G16/G18</strong></h2><p>ASUS ROG Strix G16 và G18 ra mắt người dùng với danh xưng là những chiếc <a href=\"https://gearvn.com/pages/laptop-gaming\">laptop gaming</a> cao cấp hàng đầu hiện nay. Cho nên, ASUS đã trang bị cho “chiến binh” của mình những nguồn sức mạnh đỉnh cao nhất hiện tại của laptop. Chi tiết cấu hình của 2 chiếc laptop sẽ được đề cập trong hình ảnh dưới đây:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-3_d4501161414e492eacd5535a38d58bd2_1024x1024.jpg\" alt=\"Cấu hình của ASUS ROG Strix G16/G18 - GEARVN\"></p><h2><strong>Đánh giá chi tiết về ASUS ROG Strix G16/G18</strong></h2><h3><strong>Sức mạnh tối thượng</strong></h3><p>Để xứng tầm với vị thế hàng đầu trong dòng laptop gaming cao cấp, phiên bản cao nhất của ROG Strix G16/G18 sẽ được sở hữu cho mình nguồn sức mạnh xử lý với phiên bản cao cấp nhất là Intel® Core™ i9-13980HX Processor. Là một chiếc CPU <a href=\"https://gearvn.com/collections/cpu-intel-13th-gen\">Intel Gen 13</a> đứng đầu trong dòng mobile, sức mạnh của dòng vi xử lý này được sánh ngang với i7-13700K dành cho <a href=\"https://gearvn.com/pages/pc-gvn\">PC Gaming</a>. TDP tối đa có thể đạt 175W (trong chế độ ép xung Manual Mode) đảm bảo nguồn năng lượng thích hợp quá trình vận hành của cả bộ máy.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-4_4018d080130b463eabef5db244d6cef1_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Là một chiếc laptop phục vụ cho gaming, chúng ta không thể thiếu sự hỗ trợ từ phía GPU và cả ASUS ROG Strix G16/G18 đều sẽ nhận được khả năng phục vụ từ GPU <a href=\"https://gearvn.com/collections/vga-rtx-4070\">RTX 4070</a>. Khả năng xử lý hình ảnh, đồ họa đều được chiếc <a href=\"https://gearvn.com/collections/vga-card-man-hinh\">card màn hình</a>&nbsp;thuộc thế hệ RTX 40 Series đảm bảo trong từng tác vụ. Qua đó, đảm bảo hiệu suất gaming tốt nhất cho mọi game thủ, cân tất mọi tựa game hot nhất hiện nay trên thị trường, từ eSport đến AAA. Cùng với đó là những công việc liên quan đến đồ họa cũng được RTX 4070 xử lý mượt mà và tốt nhất. Biến ASUS ROG Strix G16/G18 trở thành chiếc laptop chơi game RTX 40 Series mạnh nhất tại Việt Nam hiện tại và được chính NVIDIA chứng nhận.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-5_6547161d21924c01ba76f77247278f0f_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Nhằm đáp ứng nhu cầu và khả năng làm việc tốt nhất, ASUS đã sử dụng keo tản nhiệt kim loại lỏng thế hệ mới (Liquid Metal Conductonaut Extreme) trên 2 khu vực hoạt động nặng nhất, là <a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">CPU</a> và GPU. Điều này đã giúp nhiệt độ của 2 phân khu được giảm tới 15°C mang lại tuổi thọ cùng hiệu suất hoạt động ổn định hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-6_d7516737beb445ff98b1268555478184_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Đến với không gian trình chiếu, cả 2 phiên bản cao cấp nhất của&nbsp; ASUS ROG Strix G16/G18 đều sở hữu những độ phân giải khác nhau. Với G16, đó là chiếc màn hình kích thước 16 inch với độ phân giải WQHD; đạt những tiêu chuẩn hiển thị uy tín như DCI-P3: 100%, độ sáng đạt 500nits, G-Sync, chứng nhận Pantone và Dolby Vision HDR. Đến với G18, bạn sẽ sở hữu cho mình chiếc màn hình 18 inch ở độ phân giải 2K cùng tất cả tiêu chuẩn tuyệt vời có trên G16. Cộng hưởng vào đó là tần số quét 240Hz cho một trải nghiệm mượt mà trên từng pha hành động trên tỷ lệ màn hình 16:10 bắt trọng mọi sự vật trong khùng hình.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-7_5cbfda47d513491e95e8b44c1f0bb781_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Đặc biệt, khi ASUS đã mang tới tiêu chuẩn mới với tên ROG Nebula Display trên cả 2 chiếc dòng ROG Strix G16 và G18. Đó là sự kết hợp giữa 3 yếu tố đã có mặt trên sản phẩm của ASUS: viền mỏng, G-Sync và Dolby Vision-Atmos; tất cả tinh hoa quan trọng nhất cho khả năng hiển thị đều được hội tụ trên 2 chiếc laptop gaming này.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-8_faec7d28331c4dfab7d6ed58db5a665d_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Nguồn sức mạnh khổng lồ trên ROG Strix G16/G18 sẽ được tận dụng và tối ưu thông qua 2 công nghệ MUX Switch và NVIDIA Advanced Optimus. Cả hai đều sở hữu cho mình công nghệ tùy biến tự động chuyển luồng xuất từ iGPU hoặc GPU rời sang <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> dựa trên ứng dụng đồ họa. Điều này giúp cho tài nguyên sẽ được tận dụng tốt cho mọi quy trình trên <a href=\"https://gearvn.com/collections/laptop\">laptop</a>.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-9_6eb636bc059b4c3eafd0831a229c772b_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Ở trên ROG Strix G16/G18 không chỉ có thể giải trí, ASUS còn trang bị cho sản phẩm của mình khả năng làm việc đa tác vụ mạnh mẽ đến từ kit <a href=\"https://gearvn.com/collections/ram-pc\">RAM</a> DDR5-4800. Tốc độ đọc, ghi và copy dữ liệu đều được nâng cấp hoàn toàn so với thế hệ RAM trước đây. Bộ nhớ trong <a href=\"https://gearvn.com/collections/ram-pc-ddr5\">RAM DDR5</a> giúp cải thiện thêm những khung hình, điều này được thể hiện qua bài test trên tựa game Rainbow Six Siege ở mức đồ họa Ultra High với số FPS tăng lên khoảng 24%.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-10_5344de0ba76a49b89128368e58dfc604_1024x1024.jpg\" alt=\"Cấu hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Dưới đây sẽ là sức mạnh của CPU và GPU trên ASUS ROG Strix G16/G18 được test trên Benchmark:</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-11_9cc316b98a7e4980bc6001ae094e4d9e_1024x1024.jpg\" alt=\"Test benchmark ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-12_2684a5f284cb4dedaa82e2b2db936568_1024x1024.jpg\" alt=\"Test benchmark ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Tản nhiệt cao cấp, giữ vững hiệu năng</strong></h3><p>Sức mạnh càng lớn, tản nhiệt càng “xịn” - đó chính là điều mà ASUS cung cấp cho ROG Strix G16/G18 để duy trì sức mạnh tốt nhất. Không thể bắn tơ từ 2 tay như người nhện nhưng cả ROG Strix G16/G18 đều có thể cho không khi thoát ra từ khắp mọi các khe thoát nhiệt của laptop (trái, phải, sau) để tối ưu được nhiệt độ bên trong. Mọi luồng khí sẽ được công nghệ tản nhiệt 3 quạt (Tri-Fan) xử lý kết hợp với những chiếc ống đồng tản nhiệt bao phủ linh kiện (Strix G18 là 33%, Strix G16 là 32%). Tất cả phối hợp với nhau để mang lại không gian mát mẻ nhất cho phần cứng trong laptop.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-13_8aaaac412af14543b207ad686698b725_1024x1024.jpg\" alt=\"Tản nhiệt ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Vẻ ngoài đẹp mắt với những chi tiết hoàn toàn mới</strong></h3><p>Một nét đẹp đậm chất gaming vẫn được ASUS trình bày trên ROG Strix G16/G18. Vẫn sẽ là logo mắt cú vọ, biểu tượng đặc trưng cho dòng ROG đặt ở mặt A gây nhung nhớ bao game thủ nằm trên bề mặt được gia công trơn và mượt mà. Đi cùng với đó là một dòng chữ Republic Of Gamers nhỏ cắt ngang qua mặt A và mặt C. Mọi góc cạnh được hoàn thiện trở nên mượt mà và nhẹ nhàng hơn rất nhiều, tạo độ thân thiện nhất định cho mọi người dùng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-14_7763661f9c124a4781d07ec47ce3ade9_1024x1024.jpg\" alt=\"Ngoại hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Sau khi mở mặt A của ROG Strix G16/G18, đặt ngay vào mắt chúng ta đó là phần bàn phím RGB rực rỡ. Từng phím được tỏa sáng với hiệu ứng <a href=\"https://gearvn.com/collections/fan-led-trang-tri\">LED RGB</a> tạo nên buổi tiệc ánh sáng thực sự ngay trên chiếc laptop gaming. Ngoài ra phần gầm chữ U mặt trước cũng có cho mình khả năng phát sáng từ hiệu ứng ánh sáng này.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-15_c854f6334f494b6c813222d3e1a486b4_1024x1024.jpg\" alt=\"Ngoại hình ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Cụm phím điều hướng của series ROG Strix G năm ngoái khiến cho game thủ bao phần khó khăn thì đến với phiên bản 2023, ASUS đã quyết định cải tiến và tối ưu diện tích 4 chiếc phím lên - xuống - trái - phải. Qua đó đem lại khu vực nhấn phím tốt hơn và dễ dàng hơn. Phần touchpad của ROG Strix G16/G18 cũng được gia tăng về diện tích tiếp xúc giúp mọi thao tác trở nên mượt mà hơn. Đặc biệt hơn đó là cụm số numpad đã được xuất hiện ở chỗ touchpad với tính năng bật/tắt, cho phép bạn thoải mái sử dụng trong công việc.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-16_1e68b5ecb0c845e09ac307345187ce50_1024x1024.jpg\" alt=\"Bàn phím ASUS ROG Strix G16/G18 - GEARVN\"></p><h3><strong>Quy tụ mọi kết nối tốc độ nhất</strong></h3><p>ASUS ROG Strix G16/G18 mang đến những công nghệ kết nối tuyệt vời nhất hiện nay. Mở đầu, đó là chính là kết nối Internet siêu tốc độ cùng cổng Ethernet RJ-45 và chuẩn WiFi 6E.</p><p>Cổng LAN được hỗ trợ tốc độ lên đến 2.5 Gbps, gấp 2.5 lần so với cổng LAN Gigabit thông thường, đem lại sự ổn định khi khi chơi game online và download tài liệu. Còn đến với khả năng kết nối mạng không dây thông qua WiFi 6E, ASUS ROG Strix G16/G18 nâng cấp hoàn toàn khả năng truy cập mạng từ mọi khía cạnh như tốc độ, dung lượng, độ trễ và băng thông.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-17_7df31c26fc714aafba9c594957938be8_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-18_673834cdfb05489c8b02b29289eb0177_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Tiếp đến là những cổng kết nối phục vụ cho hiệu quả sử dụng từ ASUS ROG Strix G16/G18. Nhằm phục vụ cho mọi nhu cầu công việc và giải trí, cổng Thunderbolt 4 được trang bị cho chúng ta. Tốc độ lên đến 40 Gb/s, hỗ trợ cho khả năng sạc từ USB Type-C và xuất hình độ phân giải 4K UHD, chiếc cổng kết nối đa năng này sẽ phục vụ cho bạn từ A đến Á.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-19_1e3ae5ee1f724d60b0137ffb52f8978f_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Phục vụ cho nhu cầu xuất hình ảnh chất lượng cao với ASUS ROG Strix G16/G18, chúng ta sẽ được sở hữu cho mình cổng HDMI 2.0. Là chuẩn mới nhất của cổng HDMI, hỗ trợ cho bạn xuất hình, trình chiếu cùng độ phân giải 4K 120Hz hoặc 8K 60Hz cùng công nghệ HDR10+ và eARC. Đảm bảo phục vụ tốt cho mọi tệp khách hàng đang muốn sở hữu cho mình một chiếc laptop gaming.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-20_319639783c5c435eaf8f111c11ea4ffb_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Và để đáp ứng cho nhu cầu sử dụng di động của chúng ta, ASUS ROG Strix G16/G18 vẫn trang bị cho mình viên pin 4 Cell 90WHrs cho thời lượng sử dụng lên đến 12 tiếng khi lướt web. Không chỉ sử dụng lâu, ASUS ROG Strix G16/G18 có thể trở lại cuộc chơi cực nhanh cùng công nghệ sạc nhanh khi cung cấp cho cho bạn tốc độ sạc từ 0% lên 50% trong 30 phút để quay trở lại tác vụ bằng cục sạc Type-C PD có công suất lên đến 100W.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-21_35c5d24be76349d4af220898a3753e1f_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Cuối cùng sẽ là những cổng kết nối phục vụ cho nhu cầu sử dụng tất yếu của mọi người dùng trên ASUS ROG Strix G16/G18 gồm combo jack audio nhằm kết nối cùng những thiết bị âm thanh và cổng nguồn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-review-asus-rog-strix-g16-g18-22_77289a5bebdc48d1911f96c094c9d3ba_1024x1024.jpg\" alt=\"Kết nối trên ASUS ROG Strix G16/G18 - GEARVN\"></p><p>Trên đây là bài review về <strong>ROG Strix G16</strong> và <strong>G18</strong> - 2 siêu chiến binh mới đến từ ASUS. Và nếu bạn quan tâm sản phẩm về 2 dòng laptop gaming này thì hãy đến ngay với showroom <a href=\"https://gearvn.com/\"><strong>GEARVN</strong></a> hoặc có thể mua online thông qua đường dẫn dưới đây. Cảm ơn các bạn đã dành thời gian cho chúng mình và hẹn gặp lại trong những bài review tiếp theo !</p><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g16-1_4e7f9733d1304459a2bf6503bbbbfa3f_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G16 G614JV N4261W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G16 G614JV N4261W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 16 inch QHD+ IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i9-13980HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4060</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;&nbsp;&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g16-g614jv-n4261w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g16-1_4e7f9733d1304459a2bf6503bbbbfa3f_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G16 G614JI N4084W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G16 G614JI N4084W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 16 inch WQHD&nbsp;IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i7-13650HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4070</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs&nbsp;</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g16-g614ji-n4084w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-laptop-gaming-asus-rog-strix-g18_68fc31e57cc743168d3884660b0c17ac_medium.jpg\" alt=\"Laptop gaming ASUS ROG Strix G18 G814JI N6063W - GEARVN\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><p><strong>Laptop gaming ASUS ROG Strix G18 G814JI N6063W</strong></p><p><strong>Đặc điểm nổi bật</strong></p><ul><li>✔&nbsp;<strong>Màn hình:</strong> 18&nbsp;inch QHD+ IPS&nbsp;240Hz</li><li>✔&nbsp;<strong>CPU:</strong> Intel Core i9-13980HX</li><li>✔&nbsp;<strong>GPU:</strong> RTX 4070</li><li>✔&nbsp;<strong>RAM:</strong> 16GB DDR5</li><li>✔&nbsp;<strong>Bộ nhớ:</strong> 1TB SSD&nbsp;</li><li>✔&nbsp;<strong>Pin:</strong>&nbsp;4&nbsp;Cell 90WHrs&nbsp;</li></ul><p><a href=\"https://gearvn.com/products/laptop-gaming-asus-rog-strix-g18-g814ji-n6063w\"><strong>XEM CHI TIẾT</strong></a></p></td></tr></tbody></table></figure>', 1, 2, '2025-12-11 16:54:12', '2025-12-11 16:54:12'),
(24, 'Picture in Picture là gì?', 'news/lxambvjljft7aineakk2', '<p><i><strong>Mong muốn&nbsp;bấy lâu của chúng ta đã trở thành hiện thực khi TikTok được chính thức cho ra mắt tính năng Picture in Picture. Tức là cho phép bạn lướt video song song với nhiều tác vụ khác trên thiết bị di động mà không cần phải vuốt để chuyển video. Hãy cùng GEARVN tìm hiểu về tính năng hay ho này ngay sau đây nhé!</strong></i></p><h2><strong>Picture in Picture là gì?</strong></h2><p><strong>Picture in Picture </strong>(<strong>PiP</strong>) là tính năng cho phép một video hay hình ảnh nhỏ xuất hiện trên màn hình và chồng lên trên các ứng dụng khác hoặc trên nền <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> chính. Điều này cho phép người dùng theo dõi một phần của nội dung multimedia trong khi tiếp tục làm việc trên các ứng dụng khác. Tính năng này thường được sử dụng trong các ứng dụng video, hội nghị trực tuyến, và các ứng dụng giải trí khác để cải thiện đồng thời hiệu suất làm việc và trải nghiệm giải trí.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-1_d698f4e40cb14aee96fb6825ad1c5fd3_1024x1024.jpg\" alt=\"GEARVN - Picture in Picture là gì?\"></p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/huong-dan-su-dung-tinh-nang-picture-in-picture-tren-google-chrome\"><i><strong>Hướng dẫn sử dụng tính năng Picture in Picture trên Google Chrome</strong></i></a><i><strong>.</strong></i></p><p>Đây là một tính năng phổ biến trên nhiều nền tảng phát video ăn khách như Youtube hay Google Chrome. Cũng tương tự như nhiều nền tảng khác, bạn sẽ được cùng lúc xem video TikTok yêu thích và sử dụng nhiều ứng dụng khác cùng một lúc. Vậy làm sao để sử dụng tính năng hay ho này?</p><h2><strong>Cách sử dụng tính năng Picture in Picture trên TikTok</strong></h2><p><strong>Bước 1: </strong>Mở ứng dụng TikTok trên thiết bị của bạn &gt; nhấn giữ vào một vị trí bất kỳ trên màn hình cho đến khi xuất hiện menu tùy chỉnh.</p><p><strong>Bước 2:</strong> Lướt tùy chọn cho đến cuối tùy chọn &gt; chọn “<strong>Picture-in-Picture</strong>”.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-2_851939aca68a441f90990ce95976da54_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Bước 3: Một thông báo sẽ hiển thị ngay sau đó &gt; nhấn chọn “OK”. Vậy là bạn đã có thể xem video TikTok Picture in Picture được rồi.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-3_2a03cbeec66d418080768c86135cb8bf_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Trong trường hợp thiết bị của bạn chưa được phép hiển thị trên các ứng dụng khác, bạn cần phải cấp quyền này. Hệ thống sẽ tự động chuyển bạn đến màn hình cấp quyền. Bạn chỉ cần chọn TikTok và tìm mục \"<strong>Cho phép hiển thị trên các ứng dụng khác</strong>\" và bật công tắc để kích hoạt.&nbsp;</p><p><i><strong>&gt;&gt;Xem thêm: </strong></i><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-xem-youtube-ngoai-man-hinh\"><i><strong>Cách xem youtube ngoài màn hình trên điện thoại, máy tính</strong></i></a><i><strong>.</strong></i></p><p>Khi bạn còn quay về \'<i>Màn hình chính</i>\' hoặc chuyển sang ứng dụng khác, video TikTok sẽ hiển thị dưới dạng một hình nhỏ ở góc trên bên phải màn hình như hình bên dưới. Nó cũng sẽ tự động chuyển sang video khác mà không cần bạn vuốt thủ công để chuyển video.</p><p>Để&nbsp;trở lại chế độ toàn màn hình, bạn chỉ cần nhấn vào biểu tượng như hình bên dưới là xong.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-picture-in-picture-tren-tiktok-4_0b3cd1e2764140e8b9fdf821d4bc5fce_1024x1024.jpg\" alt=\"GEARVN - Cách sử dụng tính năng Picture in Picture trên TikTok\"></p><p>Tổng kết lại, trên đây là những cách sử dụng tính năng <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/picture-in-picture-tren-tiktok\">Picture in Picture</a> trên TikTok. Tuy không phải một tính năng mới mẻ nhưng chắc chắn thứ bạn mong chờ bấy lâu nay sẽ nâng cao trải nghiệm sử dụng ứng dụng của bạn. Hy vọng bài viết có thể giúp ích cho bạn. Hẹn gặp lại bạn trong những bài viết sau tại <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/\"><strong>GEARVN - Blog Thủ Thuật &amp; Giải Đáp</strong></a>.</p>', 1, 2, '2025-12-11 17:10:14', '2025-12-11 17:10:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `tax` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `discount` bigint(20) DEFAULT NULL,
  `lastname_sender` varchar(255) DEFAULT NULL,
  `firstname_sender` varchar(255) DEFAULT NULL,
  `phone_sender` varchar(12) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `hold` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `lastname`, `firstname`, `email`, `phone`, `address`, `district`, `city`, `content`, `tax`, `subtotal`, `total`, `discount`, `lastname_sender`, `firstname_sender`, `phone_sender`, `status`, `hold`, `created_at`, `updated_at`) VALUES
(155, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 5264700, 175490000, 57911700, 122843000, NULL, NULL, NULL, 1, 0, '2024-01-02 15:59:50', '2025-10-14 04:21:12'),
(156, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 1980000, 66000000, 21780000, 46200000, NULL, NULL, NULL, 1, 0, '2024-01-03 04:08:27', '2025-10-14 04:21:12'),
(157, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 1980000, 66000000, 21780000, 46200000, NULL, NULL, NULL, 2, 0, '2024-01-03 04:10:45', '2025-10-03 06:43:54'),
(158, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 4400000, 44000000, 48400000, 0, NULL, NULL, NULL, 1, 0, '2024-01-03 04:12:45', '2025-10-16 03:15:41'),
(159, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 100000, 1000000, 1100000, 0, NULL, NULL, NULL, 1, 0, '2024-01-03 04:13:54', '2025-10-14 04:21:11'),
(160, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 2200000, 22000000, 24200000, 0, NULL, NULL, NULL, 4, 0, '2024-01-03 04:16:44', '2025-10-16 03:45:06'),
(161, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'hcm', NULL, 4400000, 44000000, 48400000, 0, NULL, NULL, NULL, 1, 0, '2024-01-03 04:25:53', '2025-10-07 12:22:51'),
(162, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 6600000, 66000000, 72600000, 0, NULL, NULL, NULL, 2, 0, '2024-01-04 06:33:04', '2025-10-03 06:38:03'),
(163, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8800000, 88000000, 96800000, 0, 'test', 'test', '1233123213', 4, 0, '2024-01-04 06:44:09', '2025-10-16 03:45:09'),
(164, 5, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567895', '1', '456', 'Cần Thơ', NULL, 0, 46980000, 46980000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 03:34:50', '2025-10-14 04:21:02'),
(167, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 4590000, 45900000, 50490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:17:51', '2025-10-07 12:22:47'),
(169, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 4590000, 45900000, 50490000, 0, NULL, NULL, NULL, 2, 0, '2024-01-05 17:32:43', '2025-10-03 06:37:56'),
(170, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:34:29', '2025-10-14 04:21:01'),
(171, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 2, 0, '2024-01-05 17:43:49', '2025-10-03 06:37:54'),
(172, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:44:36', '2025-10-14 04:21:01'),
(173, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 1, 0, '2024-01-05 17:49:18', '2025-10-07 12:25:45'),
(175, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 5590000, 55900000, 61490000, 0, NULL, NULL, NULL, 4, 0, '2024-01-05 17:51:41', '2025-10-16 09:18:49'),
(176, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 2, 0, '2024-01-06 01:50:11', '2025-10-14 04:20:59'),
(182, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 2, 0, '2024-01-06 01:58:45', '2025-10-14 04:20:57'),
(183, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 01:59:42', '2025-10-14 04:20:55'),
(185, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 4, 0, '2024-01-06 02:01:43', '2025-10-16 09:18:50'),
(187, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 1, 0, '2024-01-06 02:06:09', '2025-10-14 04:20:54'),
(188, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 2, 0, '2024-01-06 02:07:21', '2025-10-03 06:37:20'),
(193, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 7385000, 147700000, 81235000, 73850000, NULL, NULL, NULL, 0, 0, '2024-01-06 02:42:05', '2025-08-31 12:54:21'),
(194, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 11180000, 111800000, 122980000, 0, NULL, NULL, NULL, 0, 0, '2024-01-06 02:48:22', '2025-10-14 04:20:52'),
(195, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 10180000, 101800000, 111980000, 0, NULL, NULL, NULL, 0, 0, '2024-01-06 02:53:50', '2025-10-14 04:09:45'),
(196, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 1250000, 25000000, 13750000, 12500000, NULL, NULL, NULL, 2, 0, '2024-01-06 03:35:54', '2025-10-14 04:09:58'),
(197, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 2999000, 29990000, 32989000, 0, NULL, NULL, NULL, 1, 0, '2024-01-06 04:52:16', '2025-10-14 04:09:59'),
(198, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', 'test', 4590000, 45900000, 50490000, NULL, 'test', 'test', 'test', 1, 0, '2024-01-09 12:36:16', '2025-10-14 04:10:01'),
(199, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 4590000, 45900000, 50490000, NULL, NULL, NULL, NULL, 3, 0, '2024-01-09 12:42:37', '2025-10-03 06:37:06'),
(200, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 80990000, 89089000, NULL, NULL, NULL, NULL, 2, 0, '2024-01-10 12:27:14', '2025-10-14 04:10:06'),
(202, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 161980000, 89089000, 80990000, NULL, NULL, NULL, 3, 0, '2024-01-11 09:20:11', '2025-10-03 06:37:04'),
(203, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 161980000, 89089000, 80990000, NULL, NULL, NULL, 2, 0, '2024-01-11 09:22:41', '2025-10-15 05:59:14'),
(205, 2, 'Đặng', 'Phúc Hữu', 'phuchuu0120@gmail.com', '1234567890', '1231', '122', 'Hồ Chí Minh', NULL, 8099000, 161980000, 89089000, 80990000, NULL, NULL, NULL, 2, 0, '2024-01-11 09:26:48', '2025-10-14 04:42:05'),
(211, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-08-30 04:29:51', '2025-08-30 04:31:39'),
(214, 10, 'da', 'dat', 'quynguyentien14@gmail.com', '0396959786', 'ba dinh', 'o dua', 'Hà Nội', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-09-05 09:09:22', '2025-09-25 14:23:49'),
(215, 11, 'An', 'Nguyễn', 'quynt14092003@gmail.com', '0374868545', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Thanh Xuân', 'Đà Nẵng', 'Giao trong giờ hành chính', 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-09-25 13:17:16', '2025-09-25 13:23:52'),
(216, 2, 'hưng', 'anh', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'láng', 'Hà Nội', NULL, 4859000, 48590000, 53449000, 0, NULL, NULL, NULL, 1, 0, '2025-09-25 13:26:29', '2025-10-03 06:54:43'),
(217, 2, 'hải', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 5128000, 51280000, 56408000, 0, NULL, NULL, NULL, 3, 0, '2025-09-25 13:28:24', '2025-09-25 13:31:50'),
(218, 2, 'Huy', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Hải Phòng', 'Hà Nội', NULL, 74900, 749000, 823900, 0, NULL, NULL, NULL, 3, 0, '2025-09-25 13:30:52', '2025-10-13 14:48:30'),
(219, 2, 'Nguyễn Tiến', 'trung', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'hà đông', 'Cần Thơ', NULL, 2049000, 20490000, 22539000, 0, NULL, NULL, NULL, 3, 0, '2025-09-25 13:32:59', '2025-09-25 13:35:47'),
(220, 2, 'Nguyễn Tiến', 'Hoàng', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Thanh hóa', 'Hà Nội', NULL, 2599000, 25990000, 28589000, 0, NULL, NULL, NULL, 3, 0, '2025-09-25 13:37:28', '2025-10-03 06:54:36'),
(221, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 149800, 1498000, 1647800, 0, NULL, NULL, NULL, 3, 0, '2025-09-25 14:20:13', '2025-10-08 16:47:24'),
(222, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 149800, 1498000, 1647800, 0, NULL, NULL, NULL, 4, 0, '2025-09-25 14:50:48', '2025-10-03 06:42:16'),
(223, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 200000, 2000000, 2200000, 0, NULL, NULL, NULL, 3, 0, '2025-09-30 03:26:40', '2025-10-07 12:21:46'),
(224, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', 'Giao trong giờ hành chính', 7190000, 71900000, 79090000, 0, NULL, NULL, NULL, 2, 0, '2025-10-03 04:06:23', '2025-10-14 04:20:19'),
(225, 2, 'Nguyễn Tiến', 'đạt', 'nguyentienquy09@gmail.com', '+84396959709', 'Tân Lập', 'Đan Phượng', 'Hải Phòng', NULL, 4859000, 48590000, 53449000, 0, NULL, NULL, NULL, 3, 0, '2025-10-04 08:09:06', '2025-10-07 12:21:42'),
(228, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959708', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 959000, 9590000, 10549000, 0, NULL, NULL, NULL, 3, 0, '2025-10-06 10:58:06', '2025-10-07 12:21:40'),
(229, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 74900, 749000, 823900, 0, NULL, NULL, NULL, 3, 0, '2025-10-07 12:18:11', '2025-10-07 12:21:38'),
(230, 11, 'Ánh', 'Nguyễn', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Hà tây', 'Thái Bình', 'Giao trong giờ hành chính', 4398000, 43980000, 48378000, 0, NULL, NULL, NULL, 3, 0, '2025-10-07 12:58:41', '2025-10-08 16:47:15'),
(231, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 6197000, 61970000, 68167000, 0, NULL, NULL, NULL, 3, 0, '2025-10-07 13:09:34', '2025-10-08 16:47:12'),
(232, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 4500000, 45000000, 49500000, 0, NULL, NULL, NULL, 3, 0, '2025-10-07 13:25:34', '2025-10-07 15:22:03'),
(233, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 900000, 9000000, 9900000, 0, NULL, NULL, NULL, 3, 0, '2025-10-08 16:47:47', '2025-10-08 16:48:27'),
(234, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1799000, 17990000, 19789000, 0, NULL, NULL, NULL, 3, 0, '2025-10-09 07:52:12', '2025-10-13 14:48:18'),
(235, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 2049000, 20490000, 22539000, 0, NULL, NULL, NULL, 3, 0, '2025-10-14 04:00:22', '2025-10-14 04:01:35'),
(236, 2, 'Anh', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Đắk Lắk', NULL, 900000, 9000000, 9900000, 0, NULL, NULL, NULL, 3, 0, '2025-10-14 04:05:24', '2025-10-14 04:06:15'),
(237, 2, 'Nguyễn Tiến', 'trí', 'nguyentienquy14@gmail.com', '+84396959790', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 959000, 9590000, 10549000, 0, NULL, NULL, NULL, 3, 0, '2025-10-14 04:27:15', '2025-10-14 04:28:22'),
(239, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 269000, 2690000, 2959000, 0, NULL, NULL, NULL, 1, 0, '2025-10-14 04:37:58', '2025-10-14 04:38:20'),
(240, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 2097900, 20979000, 23076900, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 05:51:07', '2025-10-15 05:52:33'),
(241, 2, 'Nguyễn Tiến', 'huy', 'nguyentienquy24@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Bạc Liêu', NULL, 2600000, 25999999, 28599999, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 05:55:31', '2025-10-15 05:56:10'),
(242, 2, 'Nguyễn Vân', 'Anh', 'nguyenvananh@gmail.com', '+84396959709', 'hà nội', 'Đan Phượng', 'Tuyên Quang', NULL, 2199000, 21990000, 24189000, 0, NULL, NULL, NULL, 1, 0, '2025-10-15 05:57:21', '2025-10-15 05:57:41'),
(243, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 600000, 5999999, 6599999, 0, NULL, NULL, NULL, 1, 0, '2025-10-15 09:49:16', '2025-10-15 09:49:39'),
(244, 2, 'Nguyễn Tiến', 'độ', 'nguyentienquy14@gmail.com', '+84396959774', 'Tân Lập', 'Đan Phượng', 'Cần Thơ', NULL, 1429900, 14298999, 15728899, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 10:20:11', '2025-10-15 10:21:05'),
(245, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 829900, 8299000, 9128900, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 17:32:47', '2025-10-15 17:33:30'),
(246, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 909700, 9097000, 10006700, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 18:07:56', '2025-10-15 18:08:43'),
(247, 2, 'Nguyễn Tiến', 'Thành', 'nguyentienquy14@gmail.com', '+84396959546', 'Tân Lập', 'Đan Phượng', 'Bà Rịa - Vũng Tàu', NULL, 1500000, 15000000, 16500000, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 18:10:11', '2025-10-15 18:10:52'),
(248, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 18:33:52', '2025-10-15 18:35:17'),
(249, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 269000, 2690000, 2959000, 0, NULL, NULL, NULL, 3, 0, '2025-10-15 19:05:57', '2025-10-15 19:06:32'),
(250, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 99900, 999000, 1098900, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 01:55:22', '2025-10-16 01:56:10'),
(251, 2, 'Nguyễn Tiến', 'phong', 'nguyentienquy14@gmail.com', '+84396959734', 'Tân Lập', 'Đan Phượng', 'Hà Giang', NULL, 96900, 969000, 1065900, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 02:30:12', '2025-10-16 02:30:53'),
(252, 2, 'Trần', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Vĩnh Phúc', NULL, 1140, 11400, 12540, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 03:09:07', '2025-10-16 03:10:58'),
(253, 2, 'Nguyễn Tiến', 'Vinh', 'nguyentienquy89@gmail.com', '+84396959719', 'Tân Lập', 'Đan Phượng', 'Cà Mau', NULL, 100000, 10000000, 1100000, 9000000, NULL, NULL, NULL, 1, 0, '2025-10-16 04:28:50', '2025-10-16 04:29:26'),
(254, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 04:30:33', '2025-10-16 07:32:49'),
(255, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 3800, 38000, 41800, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 07:32:03', '2025-10-16 07:32:53'),
(256, 2, 'Nguyễn Tiến', 'TRang', 'nguyentienquy14@gmail.com', '+84396959775', 'Tân Lập', 'Đan Phượng', 'Ninh Thuận', NULL, 7790, 77900, 85690, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 08:17:50', '2025-10-16 08:18:57'),
(257, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 300000, 3000000, 3300000, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 09:03:36', '2025-10-16 09:09:15'),
(258, 2, 'Nguyễn Tiến', 'B', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Đồng Tháp', NULL, 38000, 380000, 418000, 0, NULL, NULL, NULL, 4, 0, '2025-10-16 09:38:19', '2025-10-16 09:39:54'),
(259, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 38000, 380000, 418000, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 09:38:52', '2025-10-16 09:39:50'),
(261, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 1710, 17100, 18810, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 09:41:48', '2025-10-16 09:42:22'),
(262, 2, 'Nguyễn Tiến', 'C', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 100000, 1000000, 1100000, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 09:43:10', '2025-10-16 09:43:49'),
(263, 2, 'Nguyễn Tiến', 'Q', 'nguyentienquy09@gmail.com', '+84996959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', 'Giao trong giờ hành chính', 99900, 999000, 1098900, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 10:11:40', '2025-10-16 10:12:17'),
(264, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 99900, 999000, 1098900, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 10:12:45', '2025-10-16 10:13:19'),
(265, 2, 'Nguyễn Tiến', 'Hưng', 'nguyentien@gmail.com', '+84396959747', 'Tân Lập', 'Đan Phượng', 'Sóc Trăng', NULL, 306900, 3069000, 3375900, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 10:16:03', '2025-10-16 10:18:01'),
(266, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 306900, 3069000, 3375900, 0, NULL, NULL, NULL, 2, 0, '2025-10-16 10:18:25', '2025-10-16 10:19:00'),
(267, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 396000, 3960000, 4356000, 0, NULL, NULL, NULL, 3, 0, '2025-10-16 15:50:34', '2025-10-16 15:51:19'),
(268, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 198000, 1980000, 2178000, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 01:57:37', '2025-10-17 01:59:11'),
(269, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 100000, 1000000, 1100000, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 02:01:19', '2025-10-17 02:01:54'),
(270, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 119000, 1190000, 1309000, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 02:15:33', '2025-10-17 02:52:11'),
(271, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'láng', 'Hà Nội', NULL, 299800, 2998000, 3297800, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 02:43:41', '2025-10-17 02:52:06'),
(272, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 600760, 6007599, 6608359, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 07:16:16', '2025-10-17 07:17:54'),
(274, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 396000, 3960000, 4356000, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 07:19:50', '2025-10-17 07:20:24'),
(275, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 792000, 7920000, 8712000, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 07:23:53', '2025-10-17 07:24:57'),
(276, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 201998, 2019980, 2221978, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 10:27:52', '2025-10-17 10:28:41'),
(277, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 201998, 2019980, 2221978, 0, NULL, NULL, NULL, 3, 0, '2025-10-17 10:29:32', '2025-10-17 10:30:03'),
(278, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 219955, 2199554, 2419509, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 02:07:57', '2025-10-18 02:11:13'),
(279, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 219955, 2199554, 2419509, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 02:09:32', '2025-10-18 02:11:17'),
(280, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 623951, 6239514, 6863465, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 02:10:37', '2025-10-18 02:11:15'),
(281, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 299000, 2990000, 3289000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 03:40:02', '2025-10-18 03:42:21'),
(282, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 299000, 2990000, 3289000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 03:40:48', '2025-10-18 03:42:19'),
(283, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 299000, 2990000, 3289000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 03:41:20', '2025-10-18 03:42:17'),
(284, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 658000, 6580000, 7238000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 03:43:11', '2025-10-18 03:43:55'),
(285, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 658000, 6580000, 7238000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 04:44:43', '2025-10-18 04:45:39'),
(286, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 758000, 7580000, 8338000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 06:35:44', '2025-10-18 06:36:24'),
(287, 17, 'Tien', 'QUy', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', NULL, 399000, 3990000, 4389000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 06:36:42', '2025-10-18 06:37:11'),
(288, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 500000, 5000000, 5500000, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 06:44:34', '2025-10-18 06:45:06'),
(289, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 399999, 3999990, 4399989, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 09:23:02', '2025-10-18 09:26:01'),
(290, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 399999, 3999990, 4399989, 0, NULL, NULL, NULL, 3, 0, '2025-10-18 09:25:18', '2025-10-18 09:26:00'),
(292, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 540000, 5400000, 5940000, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 07:46:13', '2025-10-21 07:48:49'),
(293, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 240000, 2400000, 2640000, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 07:47:13', '2025-10-21 07:48:50'),
(294, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 199500, 1995000, 2194500, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 07:48:11', '2025-10-21 07:48:53'),
(295, 2, 'Nguyễn Tiến', 'anh', 'nguyentienquy14@gmail.com', '+84396959123', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 378000, 3780000, 4158000, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 07:49:52', '2025-10-21 07:50:53'),
(296, 2, 'Nguyễn Tiến', 'hải', 'nguyentienquy14@gmail.com', '+84396959780', 'Tân Lập', 'hai phong', 'Ninh Thuận', NULL, 878000, 8780000, 9658000, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 07:57:34', '2025-10-21 07:58:12'),
(298, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 878000, 8780000, 9658000, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 08:25:33', '2025-10-21 08:26:50'),
(299, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 428000, 4280000, 4708000, 0, NULL, NULL, NULL, 3, 0, '2025-10-21 08:35:29', '2025-10-21 08:36:07'),
(300, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 150000, 1500000, 1650000, 0, NULL, NULL, NULL, 3, 0, '2025-10-23 03:45:04', '2025-10-23 03:45:34'),
(301, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 399500, 3995000, 4394500, 0, NULL, NULL, NULL, 3, 0, '2025-10-23 03:45:56', '2025-10-23 03:46:52'),
(302, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 799500, 7995000, 8794500, 0, NULL, NULL, NULL, 3, 0, '2025-10-23 03:47:28', '2025-10-23 03:47:52'),
(303, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 1249500, 12495000, 13744500, 0, NULL, NULL, NULL, 3, 0, '2025-10-23 07:07:22', '2025-10-23 07:08:36'),
(304, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 2300000, 23000000, 25300000, 0, NULL, NULL, NULL, 3, 0, '2025-10-23 07:59:52', '2025-10-23 08:00:26'),
(305, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 900000, 9000000, 9900000, 0, NULL, NULL, NULL, 3, 0, '2025-10-23 08:59:56', '2025-10-28 15:33:21'),
(306, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 729500, 7295000, 8024500, 0, NULL, NULL, NULL, 1, 0, '2025-11-04 07:21:36', '2025-11-04 07:54:10'),
(308, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 150000, 15000000, 1650000, 13500000, NULL, NULL, NULL, 3, 0, '2025-11-04 07:44:34', '2025-11-05 07:48:34'),
(309, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 1000000, 10000000, 11000000, 0, NULL, NULL, NULL, 3, 0, '2025-11-05 07:47:17', '2025-11-05 07:48:36'),
(310, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 799500, 7995000, 8794500, 0, NULL, NULL, NULL, 3, 0, '2025-11-05 09:09:49', '2025-11-05 09:10:28'),
(311, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 400000, 4000000, 4400000, 0, NULL, NULL, NULL, 3, 0, '2025-11-05 15:27:45', '2025-11-05 15:29:06'),
(312, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà nội', 'Hà Nội', NULL, 400000, 4000000, 4400000, 0, NULL, NULL, NULL, 1, 0, '2025-11-05 15:29:32', '2025-11-05 15:29:52'),
(313, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 1476000, 14760000, 16236000, 0, NULL, NULL, NULL, 2, 0, '2025-11-05 15:30:46', '2025-11-05 15:32:12'),
(314, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 1476000, 14760000, 16236000, 0, NULL, NULL, NULL, 4, 0, '2025-11-05 15:32:59', '2025-11-05 15:33:29'),
(315, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 494895, 4948951, 5443846, 0, NULL, NULL, NULL, 3, 0, '2025-11-05 16:37:04', '2025-11-05 16:37:39'),
(316, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 494895, 4948951, 5443846, 0, NULL, NULL, NULL, 3, 0, '2025-11-05 18:15:59', '2025-11-05 18:16:39'),
(317, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 494895, 4948951, 5443846, 0, NULL, NULL, NULL, 3, 0, '2025-11-05 18:27:02', '2025-11-05 18:28:05'),
(318, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 1400000, 13999999, 15399999, 0, NULL, NULL, NULL, 3, 0, '2025-11-06 07:44:31', '2025-11-06 07:49:00'),
(319, 12, 'Vân', 'huy', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 111099, 1110989, 1222088, 0, NULL, NULL, NULL, 3, 0, '2025-11-06 08:02:57', '2025-11-06 08:03:29'),
(320, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 500000, 5000000, 5500000, 0, NULL, NULL, NULL, 3, 0, '2025-11-06 09:01:54', '2025-11-06 09:02:59'),
(321, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 500000, 5000000, 5500000, 0, NULL, NULL, NULL, 3, 0, '2025-11-06 09:54:12', '2025-11-06 09:55:20'),
(322, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 500000, 5000000, 5500000, 0, NULL, NULL, NULL, 3, 0, '2025-11-06 10:03:11', '2025-11-06 10:03:45'),
(323, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 2049000, 20490000, 22539000, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 00:32:28', '2025-11-08 00:33:03'),
(324, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 2318000, 23180000, 25498000, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 01:32:15', '2025-11-08 01:33:10'),
(325, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 269000, 2690000, 2959000, 0, NULL, NULL, NULL, 1, 0, '2025-11-08 02:53:47', '2025-11-08 02:54:16'),
(326, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 668000, 6680000, 7348000, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 02:57:14', '2025-11-08 02:58:05'),
(327, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà nội', 'Hà Nội', NULL, 549500, 5495000, 6044500, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 03:47:52', '2025-11-08 03:49:35'),
(328, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 219800, 2198000, 2417800, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 03:50:24', '2025-11-08 03:51:09'),
(329, 12, 'Vân', 'huy', 'quyntqp@gmail.com', '0396959932', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 410000, 4100000, 4510000, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 06:12:12', '2025-11-08 06:13:50'),
(330, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 820000, 8200000, 9020000, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 14:39:03', '2025-11-08 14:40:39'),
(331, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 410000, 4100000, 4510000, 0, NULL, NULL, NULL, 3, 0, '2025-11-08 17:47:13', '2025-11-08 17:47:51'),
(332, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 1000000, 10000000, 11000000, 0, NULL, NULL, NULL, 3, 0, '2025-11-09 05:41:47', '2025-11-09 05:42:31'),
(333, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 200000, 2000000, 2200000, 0, NULL, NULL, NULL, 1, 0, '2025-11-09 05:43:05', '2025-11-09 05:43:40'),
(334, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 359900, 3599000, 3958900, 0, NULL, NULL, NULL, 2, 0, '2025-11-09 05:44:39', '2025-11-09 05:45:23'),
(335, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 1200000, 12000000, 13200000, 0, NULL, NULL, NULL, 3, 0, '2025-11-09 10:15:50', '2025-11-09 10:16:25'),
(336, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 197800, 1978000, 2175800, 0, NULL, NULL, NULL, 3, 0, '2025-11-09 10:17:28', '2025-11-09 10:18:09'),
(337, 12, 'Vân', 'Quý', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 109900, 1099000, 1208900, 0, NULL, NULL, NULL, 3, 0, '2025-11-10 15:56:52', '2025-11-10 15:58:57'),
(338, 12, 'á', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 269800, 2698000, 2967800, 0, NULL, NULL, NULL, 3, 0, '2025-11-10 16:00:00', '2025-11-10 16:00:33'),
(339, 12, 'Vân', 'dưqdq', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 269800, 2698000, 2967800, 0, NULL, NULL, NULL, 3, 0, '2025-11-10 16:00:51', '2025-11-10 16:01:32'),
(340, 12, 'Vân', 'hải', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 269800, 2698000, 2967800, 0, NULL, NULL, NULL, 1, 0, '2025-11-10 16:02:26', '2025-11-10 16:02:49'),
(341, 12, 'Huy', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'HCM', 'Hà Nội', NULL, 688400, 6884000, 7572400, 0, NULL, NULL, NULL, 2, 0, '2025-11-10 16:05:36', '2025-11-10 16:06:25'),
(342, 12, 'Vân', 'phuong', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Đan Phượng', 'Hà Nội', NULL, 2737400, 27374000, 30111400, 0, NULL, NULL, NULL, 4, 0, '2025-11-10 16:17:41', '2025-11-10 16:18:26'),
(343, 12, 'hai', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', 'Giao trong giờ hành chính', 2737400, 27374000, 30111400, 0, NULL, NULL, NULL, 4, 0, '2025-11-10 16:18:43', '2025-11-10 16:19:36'),
(344, 12, 'quy', 'beo', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 2737400, 27374000, 30111400, 0, NULL, NULL, NULL, 1, 0, '2025-11-10 16:27:33', '2025-11-10 16:27:55'),
(345, 12, 'annh', 'văn', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà nội', 'Hà Nội', NULL, 2737400, 27374000, 30111400, 0, NULL, NULL, NULL, 1, 0, '2025-11-10 16:29:05', '2025-11-10 16:29:33'),
(347, 12, 'Hà', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 7596400, 75964000, 83560400, 0, NULL, NULL, NULL, 2, 0, '2025-11-10 16:30:38', '2025-11-10 16:31:31'),
(348, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 269800, 2698000, 2967800, 0, NULL, NULL, NULL, 3, 0, '2025-11-10 16:32:21', '2025-11-10 16:33:19'),
(349, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 269800, 2698000, 2967800, 0, NULL, NULL, NULL, 1, 0, '2025-11-10 17:24:38', '2025-11-10 17:25:04'),
(350, 12, 'HUy', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dà nẵng', 'Hà Nội', NULL, 299000, 2990000, 3289000, 0, NULL, NULL, NULL, 2, 0, '2025-11-11 09:42:19', '2025-11-11 09:48:20'),
(351, 12, 'Vân', 'Hải', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'cao bằng', 'Hà Nội', NULL, 458900, 4589000, 5047900, 0, NULL, NULL, NULL, 3, 0, '2025-11-11 09:44:14', '2025-11-11 09:50:18'),
(352, 12, 'thu', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'lào', 'Hà Nội', NULL, 359500, 3595000, 3954500, 0, NULL, NULL, NULL, 3, 0, '2025-11-11 09:45:23', '2025-11-11 09:48:12'),
(353, 12, 'cường', 'huy', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 359500, 3595000, 3954500, 0, NULL, NULL, NULL, 4, 0, '2025-11-11 09:46:40', '2025-11-11 09:48:29'),
(354, 12, 'Vân', 'hải', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'đống đa', 'Hà Nội', NULL, 489500, 4894999, 5384499, 0, NULL, NULL, NULL, 1, 0, '2025-11-11 09:49:47', '2025-11-11 09:50:04'),
(355, 12, 'Hà', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'thái bình', 'Kiên Giang', NULL, 389700, 3896999, 4286699, 0, NULL, NULL, NULL, 3, 0, '2025-11-11 09:56:28', '2025-11-11 09:58:57'),
(356, 12, 'Vân', 'huy', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'lai châu', 'Lai Châu', NULL, 689699, 6896989, 7586688, 0, NULL, NULL, NULL, 2, 0, '2025-11-11 09:58:16', '2025-11-11 09:59:10'),
(357, 12, 'Vân', 'canh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 130000, 1299999, 1429999, 0, NULL, NULL, NULL, 3, 0, '2025-11-11 10:19:24', '2025-11-12 08:51:40'),
(358, 12, 'hải', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'yên sở', 'Hà Nội', NULL, 269999, 2699991, 2969990, 0, NULL, NULL, NULL, 1, 0, '2025-11-11 16:43:40', '2025-11-11 16:44:30'),
(359, 12, 'tú', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 269999, 2699991, 2969990, 0, NULL, NULL, NULL, 1, 0, '2025-11-11 16:44:49', '2025-11-11 16:45:09'),
(360, 12, 'hải', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'đống da', 'Hà Nội', NULL, 719000, 7190000, 7909000, 0, NULL, NULL, NULL, 4, 0, '2025-11-12 08:46:35', '2025-11-12 08:51:50'),
(361, 12, 'hữu', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'hà đông', 'Hà Nội', NULL, 519400, 5194000, 5713400, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 08:47:41', '2025-11-12 08:48:16'),
(362, 12, 'khánh', 'duy', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Thanh Xuân', 'Hà Nội', NULL, 519400, 5194000, 5713400, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 08:48:33', '2025-11-12 08:49:04'),
(363, 12, 'Vân', 'hải', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'hà tây', 'Hà Nội', NULL, 2424600, 24246000, 26670600, 0, NULL, NULL, NULL, 2, 0, '2025-11-12 08:49:34', '2025-11-12 08:51:43'),
(364, 12, 'huy', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'quảng ninh', 'Hà Nội', NULL, 2424600, 24246000, 26670600, 0, NULL, NULL, NULL, 2, 0, '2025-11-12 08:50:22', '2025-11-12 08:51:45'),
(365, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'cần thơ', 'Vĩnh Phúc', NULL, 2424600, 24246000, 26670600, 0, NULL, NULL, NULL, 4, 0, '2025-11-12 08:50:58', '2025-11-12 08:51:58'),
(366, 12, 'Vân', 'huy', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'thái bình', 'Kiên Giang', NULL, 7283600, 72836000, 80119600, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 08:57:38', '2025-11-12 08:57:58'),
(367, 12, 'ddad', 'ưaa', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 2504600, 25045999, 27550599, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 09:16:37', '2025-11-12 09:16:58'),
(368, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'bạc liêu', 'Hà Nội', NULL, 2504600, 25045999, 27550599, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 09:17:20', '2025-11-12 09:17:47'),
(369, 12, 'bắc', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Huế', 'Hà Nội', NULL, 455600, 4555999, 5011599, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 09:18:13', '2025-11-12 09:19:52'),
(370, 12, 'Vân', 'Hải', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Cà Mau', 'Hà Nội', NULL, 239900, 2398999, 2638899, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 09:19:19', '2025-11-12 09:19:50'),
(371, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Hà Nội', NULL, 300000, 3000000, 3300000, 0, NULL, NULL, NULL, 2, 0, '2025-11-12 16:43:30', '2025-11-12 16:44:30'),
(372, 12, 'Vân', 'hiệp', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'o dua', 'Hà Nội', NULL, 300000, 3000000, 3300000, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 16:45:10', '2025-11-12 16:45:50'),
(373, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hải Phòng', 'Hà Nội', NULL, 198900, 1989000, 2187900, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 16:46:20', '2025-11-12 16:46:47'),
(374, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'vĩnh hy', 'Vĩnh Phúc', NULL, 558500, 5585000, 6143500, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 16:47:25', '2025-11-12 16:48:02'),
(375, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'hạ long', 'Thừa Thiên Huế', NULL, 558500, 5585000, 6143500, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 16:49:12', '2025-11-12 16:49:30'),
(376, 12, 'Vân', 'fadasd', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'gggg', 'Bình Định', NULL, 5417500, 54175000, 59592500, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 16:50:33', '2025-11-12 16:50:50'),
(377, 12, 'da', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'đức thượng', 'Hà Nội', NULL, 5417500, 54175000, 59592500, 0, NULL, NULL, NULL, 1, 0, '2025-11-12 16:53:19', '2025-11-12 16:53:34'),
(378, 12, 'Vân', 'so', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'dan phuong', 'Bình Phước', NULL, 198900, 1989000, 2187900, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 16:55:30', '2025-11-12 16:55:57'),
(379, 12, 'Vân', 'sa', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Mỹ đức', 'Đồng Nai', NULL, 680100, 6801000, 7481100, 0, NULL, NULL, NULL, 3, 0, '2025-11-12 17:20:25', '2025-11-12 17:21:04'),
(380, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'fesfsd', 'Hà Nội', NULL, 680100, 6801000, 7481100, 0, NULL, NULL, NULL, 4, 0, '2025-11-12 17:51:49', '2025-11-12 17:52:42'),
(381, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 100000, 1000000, 1100000, 0, NULL, NULL, NULL, 1, 0, '2025-11-13 07:24:45', '2025-11-13 07:25:05'),
(382, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 245900, 2459000, 2704900, 0, NULL, NULL, NULL, 1, 0, '2025-11-13 07:25:27', '2025-11-13 07:25:40'),
(383, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 375800, 3758000, 4133800, 0, NULL, NULL, NULL, 1, 0, '2025-11-13 07:26:19', '2025-11-13 07:26:36'),
(384, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 375800, 3758000, 4133800, 0, NULL, NULL, NULL, 3, 0, '2025-11-13 08:15:59', '2025-11-13 08:17:34'),
(385, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 421700, 4217000, 4638700, 0, NULL, NULL, NULL, 2, 0, '2025-11-13 08:16:36', '2025-11-13 08:17:36'),
(386, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 329400, 3294000, 3623400, 0, NULL, NULL, NULL, 1, 0, '2025-11-13 08:18:28', '2025-11-13 08:19:04'),
(387, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Cà Mau', NULL, 329400, 3294000, 3623400, 0, NULL, NULL, NULL, 1, 0, '2025-11-13 08:33:32', '2025-11-13 08:33:50'),
(388, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 498500, 4985000, 5483500, 0, NULL, NULL, NULL, 2, 0, '2025-11-13 09:18:04', '2025-11-13 09:19:03'),
(389, 12, 'Quý', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Điện Biên', NULL, 299000, 2990000, 3289000, 0, NULL, NULL, NULL, 3, 0, '2025-11-13 09:18:34', '2025-11-13 09:19:01'),
(390, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Hà Giang', NULL, 59800, 598000, 657800, 0, NULL, NULL, NULL, 3, 0, '2025-11-13 09:46:08', '2025-11-13 09:46:41'),
(391, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Lai Châu', NULL, 2300000, 23000000, 25300000, 0, NULL, NULL, NULL, 4, 0, '2025-11-13 09:47:23', '2025-11-13 09:47:52'),
(392, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Bến Tre', NULL, 2430000, 24299999, 26729999, 0, NULL, NULL, NULL, 1, 0, '2025-11-13 10:18:43', '2025-11-13 10:18:59'),
(393, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Cao Bằng', NULL, 2430000, 24299999, 26729999, 0, NULL, NULL, NULL, 2, 0, '2025-11-13 10:19:12', '2025-11-13 10:20:24'),
(394, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'Vĩnh Long', NULL, 130000, 1299999, 1429999, 0, NULL, NULL, NULL, 3, 0, '2025-11-13 10:19:42', '2025-11-13 10:20:21'),
(401, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 79900, 799000, 878900, 0, NULL, NULL, NULL, 3, 0, '2025-11-14 16:25:57', '2025-11-14 16:27:44'),
(402, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 238900, 2389000, 2627900, 0, NULL, NULL, NULL, 3, 0, '2025-11-14 16:26:58', '2025-11-14 16:27:40'),
(403, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Kiên Giang', NULL, 378800, 3788000, 4166800, 0, NULL, NULL, NULL, 2, 0, '2025-11-14 16:28:09', '2025-11-14 16:28:49'),
(404, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 438700, 4387000, 4825700, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:33:41', '2025-11-14 16:33:59'),
(405, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 3, 0, '2025-11-14 16:34:22', '2025-11-14 16:34:46'),
(406, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'An Giang', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:35:17', '2025-11-14 16:35:33'),
(407, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Long An', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 2, 0, '2025-11-14 16:35:45', '2025-11-14 16:39:28'),
(408, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:36:29', '2025-11-14 16:36:52'),
(409, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hồ Chí Minh', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:37:06', '2025-11-14 16:37:26'),
(410, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:37:45', '2025-11-14 16:38:01'),
(411, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 478600, 4786000, 5264600, 0, NULL, NULL, NULL, 2, 0, '2025-11-14 16:38:09', '2025-11-14 16:40:22'),
(412, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Thừa Thiên Huế', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:38:58', '2025-11-14 16:39:14'),
(413, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 279900, 2798999, 3078899, 0, NULL, NULL, NULL, 3, 0, '2025-11-14 16:39:58', '2025-11-14 16:41:24'),
(414, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Hà nội', 'Hà Nội', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 3, 0, '2025-11-14 16:40:58', '2025-11-14 16:42:13'),
(415, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Phước', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 2, 0, '2025-11-14 16:41:40', '2025-11-14 16:43:07'),
(416, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Đắk Nông', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 1, 0, '2025-11-14 16:42:41', '2025-11-14 16:42:55'),
(417, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 3, 0, '2025-11-14 16:46:39', '2025-11-14 16:48:01'),
(418, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 4, 0, '2025-11-14 16:47:06', '2025-11-14 16:48:54'),
(419, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 2, 0, '2025-11-14 16:47:28', '2025-11-14 16:48:19'),
(420, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 139700, 1397000, 1536700, 0, NULL, NULL, NULL, 2, 0, '2025-11-14 16:48:27', '2025-11-14 16:48:56'),
(421, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 145900, 1459000, 1604900, 0, NULL, NULL, NULL, 1, 0, '2025-11-15 16:41:27', '2025-11-15 16:41:45'),
(422, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 145900, 1459000, 1604900, 0, NULL, NULL, NULL, 3, 0, '2025-11-15 16:41:58', '2025-11-15 16:43:13'),
(423, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 145900, 1459000, 1604900, 0, NULL, NULL, NULL, 3, 0, '2025-11-15 16:42:25', '2025-11-15 16:43:12'),
(424, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 645900, 6458999, 7104899, 0, NULL, NULL, NULL, 2, 0, '2025-11-15 16:43:36', '2025-11-15 16:44:57'),
(425, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 645900, 6458999, 7104899, 0, NULL, NULL, NULL, 3, 0, '2025-11-15 16:43:58', '2025-11-15 16:45:04'),
(426, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 291800, 2918000, 3209800, 0, NULL, NULL, NULL, 2, 0, '2025-11-15 16:44:29', '2025-11-15 16:44:55'),
(427, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 35900, 359000, 394900, 0, NULL, NULL, NULL, 1, 0, '2025-11-16 05:34:22', '2025-11-16 05:34:42'),
(428, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hồ Chí Minh', NULL, 165800, 1658000, 1823800, 0, NULL, NULL, NULL, 3, 0, '2025-11-16 05:35:32', '2025-11-16 05:38:50'),
(429, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Phước', NULL, 311700, 3117000, 3428700, 0, NULL, NULL, NULL, 2, 0, '2025-11-16 05:36:19', '2025-11-16 05:38:56');
INSERT INTO `orders` (`id`, `users_id`, `lastname`, `firstname`, `email`, `phone`, `address`, `district`, `city`, `content`, `tax`, `subtotal`, `total`, `discount`, `lastname_sender`, `firstname_sender`, `phone_sender`, `status`, `hold`, `created_at`, `updated_at`) VALUES
(430, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 311700, 3117000, 3428700, 0, NULL, NULL, NULL, 1, 0, '2025-11-16 05:36:49', '2025-11-16 05:37:04'),
(431, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 341600, 3416000, 3757600, 0, NULL, NULL, NULL, 1, 0, '2025-11-16 05:37:31', '2025-11-16 05:37:47'),
(432, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Định', NULL, 540500, 5405000, 5945500, 0, NULL, NULL, NULL, 3, 0, '2025-11-16 05:38:15', '2025-11-16 05:38:44'),
(433, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Nam Định', NULL, 2564700, 25647000, 28211700, 0, NULL, NULL, NULL, 4, 0, '2025-11-16 05:39:18', '2025-11-16 05:39:42'),
(434, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 2564700, 25647000, 28211700, 0, NULL, NULL, NULL, 2, 0, '2025-11-16 05:39:48', '2025-11-16 05:40:12'),
(435, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-11-16 05:44:18', '2025-11-16 05:45:23'),
(436, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 39900, 399000, 438900, 0, NULL, NULL, NULL, 3, 0, '2025-11-16 05:44:50', '2025-11-16 05:45:21'),
(439, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 119700, 1197000, 1316700, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 03:37:17', '2025-11-20 03:40:26'),
(440, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 119700, 1197000, 1316700, 0, NULL, NULL, NULL, 1, 0, '2025-11-20 03:38:09', '2025-11-20 03:38:26'),
(441, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 119700, 1197000, 1316700, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 03:38:39', '2025-11-20 03:40:23'),
(442, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 119700, 1197000, 1316700, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 03:39:03', '2025-11-20 03:40:21'),
(443, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 400000, 4000000, 4400000, 0, NULL, NULL, NULL, 1, 0, '2025-11-20 07:03:29', '2025-11-20 07:03:44'),
(444, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 200000, 2000000, 2200000, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 07:03:54', '2025-11-20 07:04:52'),
(445, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Đà Nẵng', NULL, 200000, 2000000, 2200000, 0, NULL, NULL, NULL, 1, 0, '2025-11-20 07:04:22', '2025-11-20 07:04:39'),
(446, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Kon Tum', NULL, 519200, 5192000, 5711200, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 07:34:42', '2025-11-20 07:36:02'),
(447, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 709100, 7091000, 7800100, 0, NULL, NULL, NULL, 4, 0, '2025-11-20 07:35:31', '2025-11-20 07:35:54'),
(448, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Thái Nguyên', NULL, 828800, 8288000, 9116800, 0, NULL, NULL, NULL, 2, 0, '2025-11-20 08:02:11', '2025-11-20 08:02:37'),
(449, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 828800, 8288000, 9116800, 0, NULL, NULL, NULL, 2, 0, '2025-11-20 08:02:50', '2025-11-20 08:03:14'),
(450, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bạc Liêu', NULL, 549500, 5495000, 6044500, 0, NULL, NULL, NULL, 1, 0, '2025-11-20 08:31:04', '2025-11-20 08:31:37'),
(451, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hà Nội', NULL, 549500, 5495000, 6044500, 0, NULL, NULL, NULL, 1, 0, '2025-11-20 09:10:25', '2025-11-20 09:10:53'),
(452, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Lâm Đồng', NULL, 549500, 5495000, 6044500, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 09:11:37', '2025-11-20 09:13:49'),
(453, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 549500, 5495000, 6044500, 0, NULL, NULL, NULL, 1, 0, '2025-11-20 09:11:58', '2025-11-20 09:12:21'),
(454, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 549500, 5495000, 6044500, 0, NULL, NULL, NULL, 3, 0, '2025-11-20 09:12:50', '2025-11-20 09:13:51'),
(458, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 40000, 400000, 440000, 0, NULL, NULL, NULL, 3, 0, '2025-11-22 02:32:47', '2025-11-22 02:34:34'),
(459, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 80000, 800000, 880000, 0, NULL, NULL, NULL, 3, 0, '2025-11-22 02:33:39', '2025-11-22 02:34:36'),
(460, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 169900, 1699000, 1868900, 0, NULL, NULL, NULL, 4, 0, '2025-11-22 02:34:58', '2025-11-22 02:36:35'),
(461, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 169900, 1699000, 1868900, 0, NULL, NULL, NULL, 2, 0, '2025-11-22 02:35:56', '2025-11-22 02:36:30'),
(462, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 169900, 1699000, 1868900, 0, NULL, NULL, NULL, 2, 0, '2025-11-22 02:36:46', '2025-11-22 02:37:58'),
(463, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 169900, 1699000, 1868900, 0, NULL, NULL, NULL, 1, 0, '2025-11-22 02:37:23', '2025-11-22 02:37:42'),
(464, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 219890, 2198900, 2418790, 0, NULL, NULL, NULL, 1, 0, '2025-11-22 02:38:33', '2025-11-22 02:39:00'),
(465, 2, 'Nguyễn Tiến', 'Quý', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', NULL, 219890, 2198900, 2418790, 0, NULL, NULL, NULL, 3, 0, '2025-11-22 02:51:03', '2025-11-22 02:51:40'),
(466, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Dan phượng', 'Bình Định', NULL, 99980, 999800, 1099780, 0, NULL, NULL, NULL, 1, 0, '2025-11-22 06:42:16', '2025-11-22 06:42:34'),
(467, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 149970, 1499700, 1649670, 0, NULL, NULL, NULL, 3, 0, '2025-11-22 06:43:06', '2025-11-22 06:47:35'),
(468, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 252470, 2524700, 2777170, 0, NULL, NULL, NULL, 3, 0, '2025-11-22 06:43:49', '2025-11-22 06:47:10'),
(469, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 252470, 2524700, 2777170, 0, NULL, NULL, NULL, 1, 0, '2025-11-22 06:45:00', '2025-11-22 06:45:21'),
(470, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 252470, 2524700, 2777170, 0, NULL, NULL, NULL, 3, 0, '2025-11-22 06:46:28', '2025-11-22 06:47:12'),
(471, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Đồng Nai', NULL, 1798000, 17980000, 19778000, 0, NULL, NULL, NULL, 1, 0, '2025-11-23 15:31:54', '2025-11-23 15:32:19'),
(472, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Dương', NULL, 1997500, 19975000, 21972500, 0, NULL, NULL, NULL, 3, 0, '2025-11-23 15:33:13', '2025-11-23 15:34:29'),
(473, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Phú Yên', NULL, 1997500, 19975000, 21972500, 0, NULL, NULL, NULL, 3, 0, '2025-11-23 15:33:55', '2025-11-23 15:34:31'),
(474, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 438900, 4389000, 4827900, 0, NULL, NULL, NULL, 1, 0, '2025-11-23 15:35:41', '2025-11-23 15:36:06'),
(475, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 438900, 4389000, 4827900, 0, NULL, NULL, NULL, 3, 0, '2025-11-23 15:36:23', '2025-11-23 15:37:19'),
(476, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Cao Bằng', NULL, 438900, 4389000, 4827900, 0, NULL, NULL, NULL, 1, 0, '2025-11-23 15:37:31', '2025-11-23 15:38:01'),
(477, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Vĩnh Phúc', NULL, 568900, 5688999, 6257899, 0, NULL, NULL, NULL, 2, 0, '2025-11-23 15:38:42', '2025-11-23 15:39:22'),
(478, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Phú Thọ', NULL, 379500, 3794999, 4174499, 0, NULL, NULL, NULL, 2, 0, '2025-11-23 15:40:37', '2025-11-23 15:43:23'),
(479, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Đắk Lắk', NULL, 379500, 3794999, 4174499, 0, NULL, NULL, NULL, 2, 0, '2025-11-23 15:41:34', '2025-11-23 15:43:21'),
(480, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 429400, 4293999, 4723399, 0, NULL, NULL, NULL, 2, 0, '2025-11-23 15:42:34', '2025-11-23 15:43:19'),
(481, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 400000, 4000000, 4400000, 0, NULL, NULL, NULL, 1, 0, '2025-11-24 16:56:25', '2025-11-24 16:56:41'),
(482, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1199000, 11990000, 13189000, 0, NULL, NULL, NULL, 3, 0, '2025-11-24 16:57:00', '2025-11-24 16:58:15'),
(483, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1199000, 11990000, 13189000, 0, NULL, NULL, NULL, 3, 0, '2025-11-24 16:57:43', '2025-11-24 16:58:30'),
(484, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1199000, 11990000, 13189000, 0, NULL, NULL, NULL, 2, 0, '2025-11-24 16:58:49', '2025-11-24 16:59:19'),
(485, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1199000, 11990000, 13189000, 0, NULL, NULL, NULL, 3, 0, '2025-11-24 16:59:14', '2025-11-24 16:59:48'),
(486, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 5940000, 59400000, 65340000, 0, NULL, NULL, NULL, 3, 0, '2025-11-26 02:09:37', '2025-11-26 02:10:33'),
(487, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Phước', NULL, 10000, 99999, 109999, 0, NULL, NULL, NULL, 3, 0, '2025-11-26 03:53:04', '2025-11-26 03:53:33'),
(488, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Quảng Nam', NULL, 3509965, 35099649, 38609614, 0, NULL, NULL, NULL, 3, 0, '2025-11-26 03:54:42', '2025-11-26 03:55:19'),
(489, 11, 'Huy', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Hoa Binh', 'Ninh Thuận', NULL, 260000, 2599998, 2859998, 0, 'Tien', 'Quy', '0396959786', 2, 0, '2025-11-26 06:44:14', '2025-11-26 06:45:02'),
(490, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Lâm Đồng', NULL, 260000, 2599998, 2859998, 0, NULL, NULL, NULL, 1, 0, '2025-11-26 07:58:48', '2025-11-26 07:59:06'),
(491, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Lâm Đồng', NULL, 260000, 2599998, 2859998, 0, NULL, NULL, NULL, 3, 0, '2025-11-26 08:26:09', '2025-11-26 08:28:19'),
(492, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Phú Yên', NULL, 260000, 2599998, 2859998, 0, NULL, NULL, NULL, 1, 0, '2025-11-26 08:26:44', '2025-11-26 08:27:07'),
(493, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 260000, 2599998, 2859998, 0, NULL, NULL, NULL, 1, 0, '2025-11-26 08:27:21', '2025-11-26 08:27:34'),
(494, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 390000, 3899997, 4289997, 0, NULL, NULL, NULL, 2, 0, '2025-11-26 08:27:46', '2025-11-26 08:28:26'),
(495, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Phước', NULL, 789000, 7889997, 8678997, 0, NULL, NULL, NULL, 4, 0, '2025-11-26 09:03:42', '2025-11-26 09:06:59'),
(496, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 789000, 7889997, 8678997, 0, NULL, NULL, NULL, 4, 0, '2025-11-26 09:04:25', '2025-11-26 09:06:57'),
(497, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Bac Tu Liem', 'Long An', NULL, 789000, 7889997, 8678997, 0, NULL, NULL, NULL, 1, 0, '2025-11-26 09:05:18', '2025-11-26 09:05:38'),
(498, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'thanh xuan', 'Bắc Kạn', NULL, 1189000, 11889997, 13078997, 0, NULL, NULL, NULL, 3, 0, '2025-11-26 09:06:14', '2025-11-26 09:06:51'),
(499, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bắc Ninh', NULL, 1189000, 11889997, 13078997, 0, NULL, NULL, NULL, 1, 0, '2025-11-26 10:16:31', '2025-11-26 10:17:12'),
(500, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1189000, 11889997, 13078997, 0, NULL, NULL, NULL, 2, 0, '2025-11-26 10:17:42', '2025-11-26 10:21:18'),
(501, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Lai Châu', NULL, 1189000, 11889997, 13078997, 0, NULL, NULL, NULL, 3, 0, '2025-11-26 10:19:20', '2025-11-26 10:21:21'),
(502, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Ha dong', 'Bạc Liêu', NULL, 499900, 4999000, 5498900, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 04:46:52', '2025-11-27 04:47:14'),
(503, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 499900, 4999000, 5498900, 0, NULL, NULL, NULL, 2, 0, '2025-11-27 04:50:13', '2025-11-27 04:52:41'),
(504, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 499900, 4999000, 5498900, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 04:50:49', '2025-11-27 04:51:11'),
(505, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Kon Tum', NULL, 499900, 4999000, 5498900, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 04:51:23', '2025-11-27 04:52:35'),
(506, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 499900, 4999000, 5498900, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 04:51:51', '2025-11-27 04:52:09'),
(507, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Lâm Đồng', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 04:54:27', '2025-11-27 04:55:41'),
(508, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Hoàn kiếm', 'Phú Yên', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 04:55:06', '2025-11-27 04:55:19'),
(509, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 05:58:37', '2025-11-27 05:58:58'),
(510, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 05:59:09', '2025-11-27 05:59:27'),
(511, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 05:59:44', '2025-11-27 05:59:59'),
(512, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Đắk Lắk', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 4, 0, '2025-11-27 06:00:24', '2025-11-27 06:44:51'),
(513, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 599900, 5998999, 6598899, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 06:00:56', '2025-11-27 06:01:14'),
(514, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Dương', NULL, 849400, 8493999, 9343399, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 06:42:18', '2025-11-27 06:44:45'),
(515, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 849400, 8493999, 9343399, 0, NULL, NULL, NULL, 2, 0, '2025-11-27 06:43:18', '2025-11-27 06:45:04'),
(516, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 849400, 8493999, 9343399, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 06:43:50', '2025-11-27 06:45:32'),
(517, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Long An', NULL, 999000, 9990000, 10989000, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 08:53:29', '2025-11-27 08:53:46'),
(518, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bắc Ninh', NULL, 999000, 9990000, 10989000, 0, NULL, NULL, NULL, 2, 0, '2025-11-27 08:54:18', '2025-11-27 08:55:38'),
(519, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 999000, 9990000, 10989000, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 08:54:47', '2025-11-27 08:55:33'),
(520, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1499000, 14989995, 16488995, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 08:59:17', '2025-11-27 08:59:48'),
(521, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hồ Chí Minh', NULL, 2899000, 28989995, 31888995, 0, NULL, NULL, NULL, 4, 0, '2025-11-27 09:06:37', '2025-11-27 09:07:54'),
(522, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hà Nội', NULL, 2899000, 28989995, 31888995, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 09:07:10', '2025-11-27 09:07:51'),
(523, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Thanh Hóa', NULL, 3798000, 37979995, 41777995, 0, NULL, NULL, NULL, 2, 0, '2025-11-27 09:53:16', '2025-11-27 09:55:25'),
(524, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 2799000, 27989995, 30788995, 0, NULL, NULL, NULL, 4, 0, '2025-11-27 09:53:47', '2025-11-27 09:55:18'),
(525, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 2299000, 22990000, 25289000, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 09:54:22', '2025-11-27 09:54:39'),
(526, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 2299000, 22990000, 25289000, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 09:54:48', '2025-11-27 09:55:21'),
(527, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 2399000, 23990000, 26389000, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 10:05:05', '2025-11-27 10:05:22'),
(528, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 2399000, 23990000, 26389000, 0, NULL, NULL, NULL, 4, 0, '2025-11-27 10:05:33', '2025-11-27 10:07:56'),
(529, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 999000, 9990000, 10989000, 0, NULL, NULL, NULL, 2, 0, '2025-11-27 10:06:00', '2025-11-27 10:08:02'),
(530, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 999000, 9990000, 10989000, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 10:07:09', '2025-11-27 10:07:25'),
(531, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Lâm Đồng', NULL, 1199800, 11998000, 13197800, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 16:02:49', '2025-11-27 16:03:18'),
(532, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Đắk Lắk', NULL, 1199800, 11998000, 13197800, 0, NULL, NULL, NULL, 3, 0, '2025-11-27 16:04:07', '2025-11-27 16:05:13'),
(533, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1199800, 11998000, 13197800, 0, NULL, NULL, NULL, 1, 0, '2025-11-27 16:05:22', '2025-11-27 16:05:37'),
(535, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1912900, 38258000, 21041900, 19129000, NULL, NULL, NULL, 3, 0, '2025-11-27 17:00:19', '2025-11-27 17:01:16'),
(536, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1400000, 14000000, 15400000, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 00:33:58', '2025-11-28 00:34:23'),
(537, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Bình Phước', NULL, 1400000, 14000000, 15400000, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 00:36:21', '2025-11-28 00:36:39'),
(538, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Nghệ An', NULL, 319600, 3196000, 3515600, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 01:19:23', '2025-11-28 01:19:46'),
(539, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Cần Thơ', NULL, 319600, 3196000, 3515600, 0, NULL, NULL, NULL, 2, 0, '2025-11-28 01:20:01', '2025-11-28 01:21:34'),
(540, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 319600, 3196000, 3515600, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 01:20:36', '2025-11-28 01:21:31'),
(541, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 1500000, 15000000, 16500000, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 03:08:33', '2025-11-28 03:10:46'),
(542, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 750000, 15000000, 8250000, 7500000, NULL, NULL, NULL, 2, 0, '2025-11-28 03:16:11', '2025-11-28 03:17:15'),
(544, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 3296700, 32967000, 36263700, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 03:33:24', '2025-11-28 03:34:16'),
(552, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 49900, 499000, 548900, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 07:45:01', '2025-11-28 07:45:42'),
(554, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 26000, 260000, 286000, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 07:54:35', '2025-11-28 07:57:06'),
(557, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 699000, 699000, 0, NULL, NULL, NULL, 2, 0, '2025-11-28 08:16:05', '2025-11-28 08:19:41'),
(558, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 999000, 999000, 0, NULL, NULL, NULL, 4, 0, '2025-11-28 08:31:19', '2025-11-28 08:32:14'),
(559, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 260000, 260000, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 09:17:53', '2025-11-28 09:18:13'),
(560, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 4990900, 4990900, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 09:37:40', '2025-11-28 09:37:40'),
(561, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 12000999, 12000999, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 09:38:17', '2025-11-28 09:38:42'),
(562, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 12000999, 12000999, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 09:41:49', '2025-11-28 09:41:49'),
(563, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 399000, 399000, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 09:46:22', '2025-11-28 09:46:22'),
(564, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', 'COD order', 0, 1199999, 1199999, 0, NULL, NULL, NULL, 2, 0, '2025-11-28 09:50:34', '2025-11-28 09:51:06'),
(565, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 899000, 899000, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 09:51:54', '2025-11-28 09:52:15'),
(566, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 899000, 899000, 0, NULL, NULL, NULL, 1, 0, '2025-11-28 09:53:29', '2025-11-28 09:53:29'),
(567, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 699000, 699000, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 09:58:40', '2025-11-28 09:59:00'),
(568, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Bạc Liêu', NULL, 0, 260000, 260000, 0, NULL, NULL, NULL, 3, 0, '2025-11-28 09:59:37', '2025-11-28 10:00:22'),
(569, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 2000000, 2000000, 0, NULL, NULL, NULL, 1, 0, '2025-11-30 15:57:45', '2025-11-30 15:57:45'),
(570, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', NULL, 0, 599000, 599000, 0, NULL, NULL, NULL, 1, 0, '2025-11-30 15:58:19', '2025-11-30 15:58:47'),
(571, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 999000, 999000, 0, NULL, NULL, NULL, 3, 0, '2025-11-30 16:12:16', '2025-11-30 16:12:35'),
(572, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 14000000, 14000000, 0, NULL, NULL, NULL, 3, 0, '2025-11-30 16:14:42', '2025-11-30 16:17:23'),
(573, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 1299999, 1299999, 0, NULL, NULL, NULL, 1, 0, '2025-11-30 16:16:42', '2025-11-30 16:16:42'),
(574, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 4990900, 4990900, 0, NULL, NULL, NULL, 2, 0, '2025-11-30 16:18:46', '2025-11-30 16:19:08'),
(575, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', NULL, 'COD order', 0, 12000999, 12000999, 0, NULL, NULL, NULL, 1, 0, '2025-11-30 16:26:12', '2025-11-30 16:26:12'),
(576, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 499000, 499000, 0, NULL, NULL, NULL, 2, 0, '2025-11-30 16:31:43', '2025-11-30 16:33:49'),
(577, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 260000, 260000, 0, NULL, NULL, NULL, 3, 0, '2025-11-30 17:20:37', '2025-11-30 17:28:55'),
(578, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', 'COD order', 0, 899000, 899000, 0, NULL, NULL, NULL, 3, 0, '2025-12-02 15:34:08', '2025-12-02 15:38:17'),
(579, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', NULL, 0, 999999, 999999, 0, NULL, NULL, NULL, 1, 0, '2025-12-02 15:35:44', '2025-12-02 15:36:23'),
(580, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', 'COD order', 0, 199000, 199000, 0, NULL, NULL, NULL, 3, 0, '2025-12-02 15:42:56', '2025-12-02 15:43:19'),
(581, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', 'COD order', 0, 4990900, 4990900, 0, NULL, NULL, NULL, 3, 0, '2025-12-02 15:43:58', '2025-12-02 15:44:13'),
(582, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Ninh Thuận', 'COD order', 0, 24001998, 24001998, 0, NULL, NULL, NULL, 3, 0, '2025-12-02 15:45:40', '2025-12-02 15:45:58'),
(583, 28, 'Hai', 'Long', 'hailong233@gmail.com', '0990612765', 'My Dinh', 'Dong Anh', 'Hưng Yên', NULL, 0, 5990000, 5990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-02 15:47:08', '2025-12-02 15:49:27'),
(584, 28, 'Hai', 'Long', 'hailong233@gmail.com', '0990612765', 'My Dinh', 'Dong Anh', 'Hưng Yên', NULL, 0, 3495000, 3495000, 0, NULL, NULL, NULL, 3, 0, '2025-12-02 16:19:18', '2025-12-02 16:21:30'),
(585, 28, 'Hai', 'Long', 'hailong233@gmail.com', '0990612765', 'My Dinh', 'Dong Anh', 'Hưng Yên', 'COD order', 0, 999000, 999000, 0, NULL, NULL, NULL, 2, 0, '2025-12-02 16:21:52', '2025-12-02 16:22:09'),
(586, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 1299999, 1299999, 0, NULL, NULL, NULL, 4, 0, '2025-12-03 16:48:18', '2025-12-03 16:57:51'),
(587, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 24001998, 24001998, 0, NULL, NULL, NULL, 3, 0, '2025-12-03 16:48:39', '2025-12-03 16:57:41'),
(588, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 9980000, 9980000, 0, NULL, NULL, NULL, 3, 0, '2025-12-03 16:54:53', '2025-12-03 16:57:42'),
(589, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 1198000, 1198000, 0, NULL, NULL, NULL, 2, 0, '2025-12-03 16:56:46', '2025-12-03 16:57:46'),
(590, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 799000, 799000, 0, NULL, NULL, NULL, 1, 0, '2025-12-03 20:03:46', '2025-12-03 20:03:46'),
(591, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 205000, 205000, 0, NULL, NULL, NULL, 1, 0, '2025-12-03 20:04:05', '2025-12-03 20:04:05'),
(592, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 9981800, 9981800, 0, NULL, NULL, NULL, 1, 0, '2025-12-03 20:04:28', '2025-12-03 20:04:28'),
(593, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 998000, 998000, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 01:41:18', '2025-12-04 01:41:18'),
(594, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 1199999, 1199999, 0, NULL, NULL, NULL, 3, 0, '2025-12-04 02:24:05', '2025-12-04 02:24:57'),
(595, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 51870000, 51870000, 0, NULL, NULL, NULL, 3, 0, '2025-12-04 02:40:43', '2025-12-04 02:41:21'),
(596, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 12000999, 12000999, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 03:25:36', '2025-12-04 03:25:36'),
(597, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 800000, 800000, 0, NULL, NULL, NULL, 2, 0, '2025-12-04 03:26:08', '2025-12-04 03:26:54'),
(598, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 899000, 899000, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 03:28:08', '2025-12-04 03:28:08'),
(599, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 699000, 699000, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 03:31:14', '2025-12-04 03:31:14'),
(600, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', 'COD order', 0, 899000, 899000, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 03:45:11', '2025-12-04 03:45:11'),
(601, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 799000, 719100, 79900, NULL, NULL, NULL, 3, 0, '2025-12-04 03:58:04', '2025-12-04 04:02:58'),
(603, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1298000, 1168200, 129800, NULL, NULL, NULL, 3, 0, '2025-12-04 04:03:14', '2025-12-04 04:03:31'),
(604, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 5990000, 5990000, 0, NULL, NULL, NULL, 2, 0, '2025-12-04 06:48:51', '2025-12-04 06:52:02'),
(605, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 599000, 599000, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 07:26:00', '2025-12-04 07:26:29'),
(606, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 6990000, 6990000, 0, NULL, NULL, NULL, 3, 0, '2025-12-04 09:19:07', '2025-12-04 09:20:13'),
(607, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 7990000, 7990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-04 09:23:38', '2025-12-04 09:23:38'),
(608, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 0, 2050000, 2050000, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 01:29:14', '2025-12-05 01:29:30'),
(609, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 0, 12999990, 12999990, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 01:30:22', '2025-12-05 01:30:39'),
(610, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', 'COD order', 0, 23999980, 23999980, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 01:31:20', '2025-12-05 01:31:20'),
(611, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', 'COD order', 0, 2995000, 2995000, 0, NULL, NULL, NULL, 3, 0, '2025-12-05 02:07:18', '2025-12-05 02:07:59'),
(612, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 0, 14972700, 14972700, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 03:42:43', '2025-12-05 03:43:13'),
(613, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', NULL, 0, 5990000, 5990000, 0, NULL, NULL, NULL, 3, 0, '2025-12-05 04:08:56', '2025-12-05 04:10:24'),
(614, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 1199000, 1199000, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 07:45:03', '2025-12-05 07:45:03'),
(615, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 11000000, 11000000, 0, NULL, NULL, NULL, 2, 0, '2025-12-05 08:25:02', '2025-12-05 08:28:22'),
(616, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', NULL, 0, 1590000, 1590000, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 08:26:43', '2025-12-05 08:27:04'),
(617, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 14970000, 14970000, 0, NULL, NULL, NULL, 3, 0, '2025-12-05 08:58:37', '2025-12-05 08:59:11'),
(618, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 9998000, 9998000, 0, NULL, NULL, NULL, 3, 0, '2025-12-05 09:24:29', '2025-12-05 09:24:50'),
(619, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 499000, 499000, 0, NULL, NULL, NULL, 1, 0, '2025-12-05 10:40:18', '2025-12-05 10:40:18'),
(620, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1978000, 1978000, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 08:45:32', '2025-12-06 08:45:32'),
(621, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 19000000, 19000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-06 08:46:03', '2025-12-06 08:46:41'),
(622, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 999000, 999000, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 08:46:28', '2025-12-06 08:46:28'),
(623, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', 'COD order', 0, 6360000, 6360000, 0, NULL, NULL, NULL, 3, 0, '2025-12-06 08:59:19', '2025-12-06 08:59:40'),
(624, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 0, 3400777, 3400777, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 09:04:04', '2025-12-06 09:04:49'),
(625, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 0, 998000, 998000, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 09:06:00', '2025-12-06 09:06:27'),
(626, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', 'COD order', 0, 15900000, 15900000, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 10:21:18', '2025-12-06 10:21:18'),
(627, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', 'COD order', 0, 9999990, 9999990, 0, NULL, NULL, NULL, 3, 0, '2025-12-06 10:22:04', '2025-12-06 10:23:10'),
(628, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', 'COD order', 0, 3400777, 3400777, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 10:22:35', '2025-12-06 10:22:35'),
(629, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 1999998, 1999998, 0, NULL, NULL, NULL, 1, 0, '2025-12-06 16:25:12', '2025-12-06 16:25:38'),
(630, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 4590000, 4590000, 0, NULL, NULL, NULL, 3, 0, '2025-12-06 16:26:02', '2025-12-06 16:27:03'),
(631, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 9980000, 9980000, 0, NULL, NULL, NULL, 2, 0, '2025-12-06 16:26:42', '2025-12-06 16:27:05'),
(632, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 799000, 799000, 0, NULL, NULL, NULL, 4, 0, '2025-12-06 16:39:25', '2025-12-06 16:40:44'),
(633, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 20200000, 20200000, 0, NULL, NULL, NULL, 4, 0, '2025-12-06 16:40:20', '2025-12-06 16:40:37'),
(634, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 11999990, 11999990, 0, NULL, NULL, NULL, 1, 0, '2025-12-07 05:13:27', '2025-12-07 05:13:27'),
(635, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 7581000, 7581000, 0, NULL, NULL, NULL, 3, 0, '2025-12-07 15:13:07', '2025-12-07 15:13:35'),
(636, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 3995000, 3995000, 0, NULL, NULL, NULL, 3, 0, '2025-12-07 15:13:51', '2025-12-07 15:14:18'),
(637, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 12000999, 12000999, 0, NULL, NULL, NULL, 1, 0, '2025-12-08 01:37:40', '2025-12-08 01:37:40'),
(638, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1596000, 1596000, 0, NULL, NULL, NULL, 1, 0, '2025-12-08 16:46:52', '2025-12-08 16:46:52'),
(639, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 2999997, 2999997, 0, NULL, NULL, NULL, 1, 0, '2025-12-08 16:47:18', '2025-12-08 16:47:18'),
(640, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1999998, 1999998, 0, NULL, NULL, NULL, 1, 0, '2025-12-08 16:47:46', '2025-12-08 16:47:46'),
(641, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', 'COD order', 0, 6000000, 6000000, 0, NULL, NULL, NULL, 1, 0, '2025-12-09 16:48:43', '2025-12-09 16:48:43'),
(642, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 0, 1497000, 1497000, 0, NULL, NULL, NULL, 3, 0, '2025-12-09 16:50:10', '2025-12-09 16:50:57'),
(643, 11, 'Quý', 'Nguyễn Tiến', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', NULL, 0, 239800, 239800, 0, NULL, NULL, NULL, 1, 0, '2025-12-09 16:51:34', '2025-12-09 16:52:09'),
(644, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 14000000, 14000000, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 08:03:04', '2025-12-10 08:03:04'),
(645, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 11999990, 11999990, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 08:06:37', '2025-12-10 08:06:37'),
(646, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 9540000, 9540000, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 08:07:34', '2025-12-10 08:08:08'),
(647, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 2599998, 2599998, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 08:56:28', '2025-12-10 08:56:28'),
(648, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 798000, 798000, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 10:04:34', '2025-12-10 10:04:34'),
(649, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 1999998, 1999998, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 10:08:35', '2025-12-10 10:08:35'),
(650, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 3990000, 3990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 14:52:47', '2025-12-10 14:52:47'),
(651, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 3999996, 3999996, 0, NULL, NULL, NULL, 3, 0, '2025-12-10 14:55:06', '2025-12-10 14:56:23'),
(652, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 2397000, 2397000, 0, NULL, NULL, NULL, 1, 0, '2025-12-10 16:03:23', '2025-12-10 16:03:55'),
(653, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 6999000, 6999000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 09:59:17', '2025-12-11 09:59:17'),
(654, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1199000, 1199000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 09:59:51', '2025-12-11 09:59:51'),
(655, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 20970000, 20970000, 0, NULL, NULL, NULL, 3, 0, '2025-12-11 10:00:37', '2025-12-11 10:02:08'),
(656, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 1485000, 1485000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 10:05:11', '2025-12-11 10:05:38'),
(657, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 22000000, 22000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-11 10:06:50', '2025-12-11 10:07:44'),
(658, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 1590000, 1590000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 10:09:22', '2025-12-11 10:09:22'),
(659, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 1299999, 1299999, 0, NULL, NULL, NULL, 2, 0, '2025-12-11 10:10:11', '2025-12-11 10:11:14'),
(660, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', NULL, 0, 1596000, 1596000, 0, NULL, NULL, NULL, 2, 0, '2025-12-11 10:10:35', '2025-12-11 10:11:20'),
(661, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 22000000, 22000000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 10:15:08', '2025-12-11 10:15:08'),
(662, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 33000000, 33000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-11 16:32:16', '2025-12-11 16:33:38'),
(663, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 15980000, 15980000, 0, NULL, NULL, NULL, 3, 0, '2025-12-11 16:34:28', '2025-12-11 16:35:52'),
(664, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 2697000, 2697000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 16:44:32', '2025-12-11 16:44:32'),
(667, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 1197000, 1197000, 0, NULL, NULL, NULL, 4, 0, '2025-12-11 16:45:47', '2025-12-11 16:49:28'),
(668, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 24001998, 24001998, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 17:11:13', '2025-12-11 17:11:13'),
(669, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 3180000, 3180000, 0, NULL, NULL, NULL, 2, 0, '2025-12-11 17:12:14', '2025-12-11 17:13:29'),
(670, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 41495000, 41495000, 0, NULL, NULL, NULL, 2, 0, '2025-12-11 17:14:32', '2025-12-11 17:15:07'),
(671, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 5990000, 5990000, 0, NULL, NULL, NULL, 4, 0, '2025-12-11 17:15:50', '2025-12-11 17:16:21'),
(672, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 7990000, 7990000, 0, NULL, NULL, NULL, 4, 0, '2025-12-11 17:17:19', '2025-12-11 17:18:30'),
(673, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 6495000, 6495000, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 18:33:53', '2025-12-11 18:33:53'),
(674, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 6999993, 6999993, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 19:08:13', '2025-12-11 19:08:13'),
(675, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 3999776, 3999776, 0, NULL, NULL, NULL, 1, 0, '2025-12-11 19:13:13', '2025-12-11 19:13:59');
INSERT INTO `orders` (`id`, `users_id`, `lastname`, `firstname`, `email`, `phone`, `address`, `district`, `city`, `content`, `tax`, `subtotal`, `total`, `discount`, `lastname_sender`, `firstname_sender`, `phone_sender`, `status`, `hold`, `created_at`, `updated_at`) VALUES
(676, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 24001998, 24001998, 0, NULL, NULL, NULL, 1, 0, '2025-12-12 03:56:52', '2025-12-12 03:56:52'),
(677, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 5394000, 5394000, 0, NULL, NULL, NULL, 1, 0, '2025-12-12 03:57:37', '2025-12-12 03:57:37'),
(678, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 2995000, 2995000, 0, NULL, NULL, NULL, 1, 0, '2025-12-12 04:01:49', '2025-12-12 04:01:49'),
(679, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 989000, 989000, 0, NULL, NULL, NULL, 1, 0, '2025-12-12 04:03:53', '2025-12-12 04:03:53'),
(680, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', NULL, 0, 4990900, 4990900, 0, NULL, NULL, NULL, 3, 0, '2025-12-12 15:35:05', '2025-12-12 15:37:38'),
(681, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tram Troi', 'Duc Thuong', 'Bạc Liêu', 'COD order', 0, 46000000, 46000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-12 15:36:21', '2025-12-12 15:37:34'),
(682, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1990000, 1990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-12 18:12:29', '2025-12-12 18:12:29'),
(683, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 11999000, 11999000, 0, NULL, NULL, NULL, 1, 0, '2025-12-12 18:12:52', '2025-12-12 18:12:52'),
(684, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 3999996, 3999996, 0, NULL, NULL, NULL, 1, 0, '2025-12-13 01:46:52', '2025-12-13 01:46:52'),
(685, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 3990000, 3990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-13 04:47:21', '2025-12-13 04:48:00'),
(686, 33, 'Ngoc', 'Anh', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', 'COD order', 0, 45000000, 45000000, 0, NULL, NULL, NULL, 1, 0, '2025-12-13 09:09:40', '2025-12-13 09:09:40'),
(687, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 'COD order', 0, 2598000, 2598000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 03:25:45', '2025-12-14 03:25:45'),
(688, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', NULL, 0, 1025000, 1025000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 04:02:05', '2025-12-14 04:02:57'),
(689, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 'COD order', 0, 9000000, 9000000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 04:04:31', '2025-12-14 04:04:31'),
(690, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', NULL, 0, 19000000, 19000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 04:05:46', '2025-12-14 04:07:32'),
(691, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 'COD order', 0, 4495000, 4495000, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 04:07:07', '2025-12-14 04:07:34'),
(692, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 'COD order', 0, 23000000, 23000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 04:08:01', '2025-12-14 04:09:34'),
(693, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 'COD order', 0, 36000000, 36000000, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 04:09:09', '2025-12-14 04:09:32'),
(694, 37, 'Huyen', 'Trang', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 'COD order', 0, 1299000, 1299000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 05:59:50', '2025-12-14 05:59:50'),
(695, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 24001998, 24001998, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 06:02:28', '2025-12-14 06:02:58'),
(696, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 1598000, 1598000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 06:59:00', '2025-12-14 06:59:00'),
(697, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 119900, 119900, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 06:59:37', '2025-12-14 09:42:53'),
(698, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 17490000, 17490000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 07:54:20', '2025-12-14 07:54:54'),
(699, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 7799994, 7799994, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 08:39:45', '2025-12-14 08:39:45'),
(700, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 'COD order', 0, 3400777, 3400777, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 09:42:21', '2025-12-14 09:42:42'),
(701, 45, 'Ngọc', 'Ánh', 'ngocanh2208@gmail.com', '0987789654', '20 Thái hà', 'Nam Từ Liêm', 'Nam Định', 'COD order', 0, 23000000, 23000000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 09:58:53', '2025-12-14 09:58:53'),
(702, 45, 'Ngọc', 'Ánh', 'ngocanh2208@gmail.com', '0987789654', '20 Thái hà 21', 'Nam Từ Liêm', 'Nam Định', 'COD order', 0, 7960000, 7960000, 0, NULL, NULL, NULL, 2, 0, '2025-12-14 11:04:35', '2025-12-14 11:05:26'),
(703, 45, 'Ngọc', 'Ánh', 'ngocanh2208@gmail.com', '0987789654', '20 Thái hà 21', 'Nam Từ Liêm', 'Nam Định', 'COD order', 0, 29900000, 29900000, 0, NULL, NULL, NULL, 2, 0, '2025-12-14 11:05:08', '2025-12-14 11:05:24'),
(704, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 999000, 999000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 15:10:08', '2025-12-14 15:10:08'),
(705, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 5999664, 5999664, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 15:10:51', '2025-12-14 15:11:09'),
(706, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 16598000, 16598000, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 15:33:53', '2025-12-14 15:34:25'),
(707, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 31800000, 31800000, 0, NULL, NULL, NULL, 4, 0, '2025-12-14 16:40:52', '2025-12-14 16:41:40'),
(708, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 6801554, 6801554, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 23:40:42', '2025-12-14 23:41:01'),
(709, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 2796000, 2796000, 0, NULL, NULL, NULL, 1, 0, '2025-12-14 23:41:45', '2025-12-14 23:41:45'),
(710, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 1598000, 1598000, 0, NULL, NULL, NULL, 3, 0, '2025-12-14 23:42:17', '2025-12-14 23:43:35'),
(711, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 2990000, 2990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 00:58:02', '2025-12-15 00:58:02'),
(712, 45, 'Ngọc', 'Ánh', 'ngocanh2208@gmail.com', '0987789654', '20 Thái hà 21', 'Nam Từ Liêm', 'Nam Định', NULL, 0, 2999997, 2999997, 0, NULL, NULL, NULL, 3, 0, '2025-12-15 07:23:41', '2025-12-15 07:25:07'),
(713, 45, 'Ngọc', 'Ánh', 'ngocanh2208@gmail.com', '0987789654', '20 Thái hà 21', 'Nam Từ Liêm', 'Nam Định', 'COD order', 0, 1999999, 1999999, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 07:37:35', '2025-12-15 07:37:35'),
(714, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', NULL, 0, 29900000, 29900000, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 07:41:42', '2025-12-15 07:41:59'),
(715, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 11960000, 11960000, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 07:44:08', '2025-12-15 07:44:08'),
(716, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 3999998, 3999998, 0, NULL, NULL, NULL, 2, 0, '2025-12-15 07:45:35', '2025-12-15 07:45:54'),
(717, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 9999995, 9999995, 0, NULL, NULL, NULL, 2, 0, '2025-12-15 07:52:43', '2025-12-15 07:53:21'),
(718, 36, 'Quy', 'Ninh', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', NULL, 0, 1999999, 1999999, 0, NULL, NULL, NULL, 3, 0, '2025-12-15 12:06:17', '2025-12-15 12:07:42'),
(719, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 5999997, 5999997, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 16:11:47', '2026-04-22 10:18:24'),
(720, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 499000, 499000, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 16:15:17', '2025-12-15 16:15:17'),
(721, 12, 'Vân', 'Anh', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', 'COD order', 0, 3594000, 3594000, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 21:39:29', '2025-12-15 21:39:29'),
(722, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 1999999, 1999999, 0, NULL, NULL, NULL, 3, 0, '2025-12-15 23:34:33', '2025-12-15 23:36:22'),
(723, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 'COD order', 0, 3999998, 3999998, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 23:49:32', '2026-04-22 10:18:12'),
(724, 38, 'Ngo', 'Hoa', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', NULL, 0, 17999991, 17999991, 0, NULL, NULL, NULL, 1, 0, '2025-12-15 23:57:52', '2026-04-22 10:18:09'),
(725, 40, 'Van', 'Anh', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 'COD order', 0, 4990000, 4990000, 0, NULL, NULL, NULL, 1, 0, '2025-12-16 00:49:21', '2026-04-22 10:18:02'),
(726, 60, 'Tiến', 'Quý', 'tienquy480@gmail.com', '0396952999', '59, 83 cụm', 'Mỹ đình', 'Bắc Kạn', 'COD order', 0, 2600000, 2600000, 0, NULL, NULL, NULL, 1, 0, '2025-12-16 02:00:11', '2026-04-22 10:13:53'),
(728, 62, 'KIÊN', 'NGUYỄN', '2121050725@student.humg.edu.vn', '0972912212', 'ha noi', '0123456789', 'cao_bang', 'COD order', 0, 8970000, 8970000, 0, NULL, NULL, NULL, 2, 0, '2026-04-17 05:21:01', '2026-04-22 10:18:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders__details`
--

CREATE TABLE `orders__details` (
  `orders_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders__details`
--

INSERT INTO `orders__details` (`orders_id`, `products_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 4, 4, '2023-11-14 21:42:59', '2023-11-14 21:42:59'),
(1, 2, 4, '2023-11-14 21:42:59', '2023-11-14 21:42:59'),
(3, 1, 3, '2023-11-14 22:09:25', '2023-11-14 22:09:25'),
(3, 4, 1, '2023-11-14 22:09:25', '2023-11-14 22:09:25'),
(5, 2, 2, NULL, NULL),
(8, 2, 2, NULL, NULL),
(8, 10, 3, NULL, NULL),
(9, 4, 5, NULL, NULL),
(9, 10, 7, NULL, NULL),
(10, 3, 1, NULL, NULL),
(10, 1, 2, NULL, NULL),
(11, 4, 4, NULL, NULL),
(12, 10, 3, NULL, NULL),
(13, 1, 1, NULL, NULL),
(13, 2, 1, NULL, NULL),
(13, 3, 1, NULL, NULL),
(13, 10, 3, NULL, NULL),
(13, 4, 1, NULL, NULL),
(14, 2, 1, NULL, NULL),
(14, 4, 1, NULL, NULL),
(14, 1, 1, NULL, NULL),
(14, 10, 1, NULL, NULL),
(15, 3, 1, NULL, NULL),
(15, 4, 1, NULL, NULL),
(16, 3, 1, NULL, NULL),
(16, 4, 1, NULL, NULL),
(19, 3, 1, NULL, NULL),
(19, 4, 1, NULL, NULL),
(20, 3, 2, NULL, NULL),
(21, 3, 1, NULL, NULL),
(21, 4, 1, NULL, NULL),
(22, 3, 1, NULL, NULL),
(22, 4, 1, NULL, NULL),
(23, 3, 1, NULL, NULL),
(23, 4, 1, NULL, NULL),
(30, 4, 1, NULL, NULL),
(32, 3, 1, NULL, NULL),
(32, 4, 1, NULL, NULL),
(33, 3, 1, NULL, NULL),
(33, 4, 1, NULL, NULL),
(34, 3, 1, NULL, NULL),
(34, 4, 1, NULL, NULL),
(35, 3, 1, NULL, NULL),
(35, 4, 1, NULL, NULL),
(36, 3, 1, NULL, NULL),
(36, 4, 1, NULL, NULL),
(37, 3, 1, NULL, NULL),
(37, 4, 1, NULL, NULL),
(38, 3, 1, NULL, NULL),
(38, 10, 1, NULL, NULL),
(39, 3, 1, NULL, NULL),
(39, 10, 1, NULL, NULL),
(40, 3, 1, NULL, NULL),
(40, 10, 1, NULL, NULL),
(41, 4, 1, NULL, NULL),
(41, 2, 1, NULL, NULL),
(42, 4, 1, NULL, NULL),
(42, 10, 1, NULL, NULL),
(43, 4, 1, NULL, NULL),
(43, 10, 1, NULL, NULL),
(44, 4, 1, NULL, NULL),
(44, 10, 1, NULL, NULL),
(45, 4, 1, NULL, NULL),
(45, 10, 1, NULL, NULL),
(46, 3, 1, NULL, NULL),
(46, 4, 1, NULL, NULL),
(47, 10, 1, NULL, NULL),
(47, 4, 1, NULL, NULL),
(48, 4, 1, NULL, NULL),
(48, 3, 1, NULL, NULL),
(49, 3, 1, NULL, NULL),
(49, 4, 1, NULL, NULL),
(50, 3, 1, NULL, NULL),
(50, 4, 1, NULL, NULL),
(51, 10, 1, NULL, NULL),
(51, 1, 1, NULL, NULL),
(52, 3, 1, NULL, NULL),
(52, 4, 1, NULL, NULL),
(53, 3, 3, NULL, NULL),
(53, 4, 1, NULL, NULL),
(54, 3, 3, NULL, NULL),
(54, 4, 2, NULL, NULL),
(55, 3, 1, NULL, NULL),
(55, 4, 1, NULL, NULL),
(56, 4, 3, NULL, NULL),
(56, 3, 2, NULL, NULL),
(57, 4, 1, NULL, NULL),
(57, 3, 1, NULL, NULL),
(58, 10, 1, NULL, NULL),
(58, 3, 1, NULL, NULL),
(59, 3, 6, NULL, NULL),
(59, 4, 1, NULL, NULL),
(60, 3, 1, NULL, NULL),
(60, 4, 1, NULL, NULL),
(61, 3, 1, NULL, NULL),
(61, 4, 1, NULL, NULL),
(62, 3, 1, NULL, NULL),
(62, 2, 1, NULL, NULL),
(63, 3, 1, NULL, NULL),
(63, 2, 1, NULL, NULL),
(64, 1, 1, NULL, NULL),
(64, 10, 1, NULL, NULL),
(65, 3, 2, NULL, NULL),
(65, 4, 3, NULL, NULL),
(66, 4, 1, NULL, NULL),
(66, 10, 1, NULL, NULL),
(67, 4, 1, NULL, NULL),
(68, 2, 1, NULL, NULL),
(68, 3, 1, NULL, NULL),
(69, 3, 1, NULL, NULL),
(69, 10, 1, NULL, NULL),
(70, 10, 1, NULL, NULL),
(71, 2, 1, NULL, NULL),
(71, 1, 5, NULL, NULL),
(71, 3, 1, NULL, NULL),
(71, 4, 1, NULL, NULL),
(72, 1, 1, NULL, NULL),
(72, 2, 1, NULL, NULL),
(73, 3, 1, NULL, NULL),
(73, 4, 1, NULL, NULL),
(74, 3, 1, NULL, NULL),
(74, 4, 1, NULL, NULL),
(75, 4, 1, NULL, NULL),
(75, 3, 1, NULL, NULL),
(76, 10, 1, NULL, NULL),
(76, 4, 1, NULL, NULL),
(76, 3, 1, NULL, NULL),
(77, 2, 1, NULL, NULL),
(77, 1, 1, NULL, NULL),
(78, 1, 1, NULL, NULL),
(78, 2, 1, NULL, NULL),
(79, 4, 1, NULL, NULL),
(79, 3, 1, NULL, NULL),
(80, 3, 1, NULL, NULL),
(80, 4, 1, NULL, NULL),
(81, 10, 1, NULL, NULL),
(81, 4, 1, NULL, NULL),
(82, 4, 1, NULL, NULL),
(82, 10, 1, NULL, NULL),
(83, 3, 1, NULL, NULL),
(83, 4, 1, NULL, NULL),
(84, 10, 1, NULL, NULL),
(84, 1, 1, NULL, NULL),
(85, 1, 1, NULL, NULL),
(85, 2, 1, NULL, NULL),
(86, 3, 1, NULL, NULL),
(86, 4, 1, NULL, NULL),
(87, 2, 1, NULL, NULL),
(88, 2, 1, NULL, NULL),
(89, 2, 1, NULL, NULL),
(90, 2, 1, NULL, NULL),
(91, 3, 2, NULL, NULL),
(92, 3, 3, NULL, NULL),
(93, 1, 1, NULL, NULL),
(93, 4, 1, NULL, NULL),
(93, 10, 1, NULL, NULL),
(93, 2, 1, NULL, NULL),
(94, 2, 1, NULL, NULL),
(94, 1, 1, NULL, NULL),
(94, 3, 1, NULL, NULL),
(95, 3, 9, NULL, NULL),
(95, 2, 13, NULL, NULL),
(96, 1, 1, NULL, NULL),
(96, 4, 1, NULL, NULL),
(96, 3, 2, NULL, NULL),
(97, 13, 1, NULL, NULL),
(98, 13, 1, NULL, NULL),
(99, 2, 1, NULL, NULL),
(100, 13, 1, NULL, NULL),
(101, 13, 2, NULL, NULL),
(4294967295, 13, 4, NULL, NULL),
(4294967295, 2, 3, NULL, NULL),
(101, 13, 4, NULL, NULL),
(102, 2, 12, NULL, NULL),
(103, 13, 2, NULL, NULL),
(104, 13, 1, NULL, NULL),
(105, 13, 1, NULL, NULL),
(106, 13, 2, NULL, NULL),
(107, 13, 3, NULL, NULL),
(107, 2, 1, NULL, NULL),
(108, 13, 1, NULL, NULL),
(108, 2, 1, NULL, NULL),
(109, 13, 1, NULL, NULL),
(109, 2, 1, NULL, NULL),
(110, 13, 1, NULL, NULL),
(111, 13, 2, NULL, NULL),
(112, 13, 2, NULL, NULL),
(113, 13, 2, NULL, NULL),
(114, 13, 2, NULL, NULL),
(115, 13, 2, NULL, NULL),
(116, 13, 2, NULL, NULL),
(117, 13, 3, NULL, NULL),
(118, 13, 3, NULL, NULL),
(119, 13, 3, NULL, NULL),
(120, 13, 3, NULL, NULL),
(121, 13, 3, NULL, NULL),
(121, 2, 3, NULL, NULL),
(122, 13, 1, NULL, NULL),
(123, 13, 1, NULL, NULL),
(124, 13, 2, NULL, NULL),
(125, 13, 2, NULL, NULL),
(126, 13, 2, NULL, NULL),
(127, 13, 3, NULL, NULL),
(128, 13, 1, NULL, NULL),
(129, 13, 1, NULL, NULL),
(130, 13, 1, NULL, NULL),
(131, 13, 1, NULL, NULL),
(132, 13, 1, NULL, NULL),
(133, 13, 1, NULL, NULL),
(134, 13, 1, NULL, NULL),
(135, 13, 2, NULL, NULL),
(136, 13, 1, NULL, NULL),
(137, 13, 1, NULL, NULL),
(137, 2, 1, NULL, NULL),
(137, 1, 1, NULL, NULL),
(138, 13, 1, NULL, NULL),
(139, 13, 2, NULL, NULL),
(140, 13, 1, NULL, NULL),
(140, 1, 1, NULL, NULL),
(140, 16, 1, NULL, NULL),
(141, 13, 3, NULL, NULL),
(142, 13, 4, NULL, NULL),
(143, 13, 1, NULL, NULL),
(143, 2, 1, NULL, NULL),
(144, 13, 1, NULL, NULL),
(144, 1, 1, NULL, NULL),
(144, 18, 10, NULL, NULL),
(145, 13, 1, NULL, NULL),
(145, 17, 1, NULL, NULL),
(145, 18, 3, NULL, NULL),
(146, 13, 1, NULL, NULL),
(146, 17, 1, NULL, NULL),
(146, 18, 3, NULL, NULL),
(147, 13, 2, NULL, NULL),
(147, 17, 1, NULL, NULL),
(147, 18, 3, NULL, NULL),
(148, 13, 3, NULL, NULL),
(148, 17, 1, NULL, NULL),
(148, 18, 3, NULL, NULL),
(149, 13, 4, NULL, NULL),
(149, 17, 1, NULL, NULL),
(149, 18, 3, NULL, NULL),
(149, 2, 1, NULL, NULL),
(150, 13, 4, NULL, NULL),
(150, 17, 1, NULL, NULL),
(150, 18, 3, NULL, NULL),
(150, 2, 1, NULL, NULL),
(151, 13, 4, NULL, NULL),
(151, 17, 1, NULL, NULL),
(151, 18, 3, NULL, NULL),
(151, 2, 2, NULL, NULL),
(152, 13, 5, NULL, NULL),
(152, 17, 1, NULL, NULL),
(152, 18, 3, NULL, NULL),
(152, 2, 2, NULL, NULL),
(153, 13, 6, NULL, NULL),
(153, 17, 1, NULL, NULL),
(153, 18, 3, NULL, NULL),
(153, 2, 2, NULL, NULL),
(154, 13, 6, NULL, NULL),
(154, 17, 1, NULL, NULL),
(154, 18, 3, NULL, NULL),
(154, 2, 2, NULL, NULL),
(155, 13, 6, NULL, NULL),
(155, 17, 1, NULL, NULL),
(155, 18, 3, NULL, NULL),
(155, 2, 2, NULL, NULL),
(156, 13, 3, NULL, NULL),
(157, 13, 3, NULL, NULL),
(158, 13, 2, NULL, NULL),
(159, 2, 1, NULL, NULL),
(160, 13, 1, NULL, NULL),
(161, 13, 2, NULL, NULL),
(162, 13, 3, NULL, NULL),
(163, 13, 4, NULL, NULL),
(164, 13, 1, NULL, NULL),
(164, 16, 1, NULL, NULL),
(165, 1, 1, NULL, NULL),
(165, 2, 1, NULL, NULL),
(166, 1, 5, NULL, NULL),
(167, 1, 1, NULL, NULL),
(168, 1, 2, NULL, NULL),
(169, 1, 1, NULL, NULL),
(170, 17, 1, NULL, NULL),
(170, 1, 1, NULL, NULL),
(171, 1, 1, NULL, NULL),
(171, 17, 1, NULL, NULL),
(172, 1, 1, NULL, NULL),
(172, 17, 1, NULL, NULL),
(173, 1, 1, NULL, NULL),
(173, 17, 1, NULL, NULL),
(174, 1, 1, NULL, NULL),
(174, 17, 1, NULL, NULL),
(175, 1, 1, NULL, NULL),
(175, 17, 1, NULL, NULL),
(176, 1, 3, NULL, NULL),
(176, 17, 1, NULL, NULL),
(182, 1, 3, NULL, NULL),
(182, 17, 1, NULL, NULL),
(183, 1, 3, NULL, NULL),
(183, 17, 1, NULL, NULL),
(185, 1, 3, NULL, NULL),
(185, 17, 1, NULL, NULL),
(187, 1, 3, NULL, NULL),
(187, 17, 1, NULL, NULL),
(188, 1, 3, NULL, NULL),
(188, 17, 1, NULL, NULL),
(189, 1, 3, NULL, NULL),
(189, 17, 1, NULL, NULL),
(193, 1, 3, NULL, NULL),
(193, 17, 1, NULL, NULL),
(193, 1, 3, NULL, NULL),
(193, 17, 1, NULL, NULL),
(194, 1, 2, NULL, NULL),
(194, 17, 2, NULL, NULL),
(194, 1, 2, NULL, NULL),
(194, 17, 2, NULL, NULL),
(195, 1, 2, NULL, NULL),
(195, 17, 1, NULL, NULL),
(196, 17, 1, NULL, NULL),
(196, 13, 1, NULL, NULL),
(196, 17, 2, NULL, NULL),
(196, 13, 1, NULL, NULL),
(197, 16, 1, NULL, NULL),
(198, 1, 1, NULL, NULL),
(199, 1, 1, NULL, NULL),
(200, 2, 1, NULL, NULL),
(205, 2, 2, NULL, NULL),
(211, 45, 1, NULL, NULL),
(211, 45, 1, NULL, NULL),
(214, 45, 1, NULL, NULL),
(215, 45, 1, NULL, NULL),
(216, 48, 1, NULL, NULL),
(217, 48, 1, NULL, NULL),
(217, 46, 1, NULL, NULL),
(218, 52, 1, NULL, NULL),
(219, 47, 1, NULL, NULL),
(220, 50, 1, NULL, NULL),
(221, 52, 2, NULL, NULL),
(221, 52, 2, NULL, NULL),
(222, 52, 2, NULL, NULL),
(223, 53, 1, NULL, NULL),
(224, 49, 100, NULL, NULL),
(225, 48, 1, NULL, NULL),
(225, 48, 1, NULL, NULL),
(228, 54, 1, NULL, NULL),
(229, 52, 1, NULL, NULL),
(230, 57, 2, NULL, NULL),
(231, 57, 2, NULL, NULL),
(231, 58, 1, NULL, NULL),
(232, 60, 9, NULL, NULL),
(233, 59, 1, NULL, NULL),
(234, 58, 1, NULL, NULL),
(235, 47, 1, NULL, NULL),
(236, 59, 1, NULL, NULL),
(237, 54, 1, NULL, NULL),
(239, 46, 1, NULL, NULL),
(239, 46, 1, NULL, NULL),
(239, 46, 1, NULL, NULL),
(240, 69, 21, NULL, NULL),
(241, 66, 1, NULL, NULL),
(242, 57, 1, NULL, NULL),
(243, 70, 1, NULL, NULL),
(244, 70, 1, NULL, NULL),
(244, 68, 1, NULL, NULL),
(245, 68, 1, NULL, NULL),
(246, 68, 1, NULL, NULL),
(246, 45, 2, NULL, NULL),
(247, 63, 1, NULL, NULL),
(248, 45, 1, NULL, NULL),
(249, 46, 1, NULL, NULL),
(250, 69, 1, NULL, NULL),
(251, 71, 51, NULL, NULL),
(252, 72, 60, NULL, NULL),
(253, 73, 10, NULL, NULL),
(254, 45, 1, NULL, NULL),
(254, 45, 1, NULL, NULL),
(254, 45, 1, NULL, NULL),
(255, 71, 2, NULL, NULL),
(256, 71, 4, NULL, NULL),
(256, 72, 10, NULL, NULL),
(257, 73, 3, NULL, NULL),
(258, 71, 20, NULL, NULL),
(259, 71, 20, NULL, NULL),
(261, 72, 90, NULL, NULL),
(262, 73, 1, NULL, NULL),
(262, 73, 1, NULL, NULL),
(263, 74, 1, NULL, NULL),
(264, 74, 1, NULL, NULL),
(265, 74, 31, NULL, NULL),
(266, 74, 31, NULL, NULL),
(267, 74, 40, NULL, NULL),
(268, 74, 20, NULL, NULL),
(269, 73, 1, NULL, NULL),
(270, 73, 1, NULL, NULL),
(270, 71, 10, NULL, NULL),
(271, 73, 1, NULL, NULL),
(271, 69, 2, NULL, NULL),
(272, 70, 1, NULL, NULL),
(272, 72, 40, NULL, NULL),
(274, 74, 40, NULL, NULL),
(275, 74, 80, NULL, NULL),
(276, 82, 20, NULL, NULL),
(277, 82, 20, NULL, NULL),
(278, 84, 2, NULL, NULL),
(279, 84, 2, NULL, NULL),
(280, 84, 2, NULL, NULL),
(280, 82, 40, NULL, NULL),
(281, 122, 10, NULL, NULL),
(282, 122, 10, NULL, NULL),
(283, 122, 10, NULL, NULL),
(284, 122, 10, NULL, NULL),
(284, 132, 10, NULL, NULL),
(285, 122, 10, NULL, NULL),
(285, 132, 10, NULL, NULL),
(286, 132, 10, NULL, NULL),
(286, 136, 10, NULL, NULL),
(287, 136, 10, NULL, NULL),
(288, 78, 100, NULL, NULL),
(289, 135, 10, NULL, NULL),
(290, 135, 10, NULL, NULL),
(292, 79, 6, NULL, NULL),
(292, 77, 20, NULL, NULL),
(293, 79, 6, NULL, NULL),
(294, 136, 5, NULL, NULL),
(295, 89, 20, NULL, NULL),
(296, 89, 20, NULL, NULL),
(296, 78, 100, NULL, NULL),
(298, 89, 20, NULL, NULL),
(298, 78, 100, NULL, NULL),
(299, 89, 20, NULL, NULL),
(299, 78, 10, NULL, NULL),
(300, 77, 10, NULL, NULL),
(301, 77, 10, NULL, NULL),
(301, 134, 5, NULL, NULL),
(302, 77, 10, NULL, NULL),
(302, 134, 5, NULL, NULL),
(302, 79, 10, NULL, NULL),
(303, 77, 10, NULL, NULL),
(303, 134, 5, NULL, NULL),
(303, 79, 10, NULL, NULL),
(303, 78, 90, NULL, NULL),
(304, 199, 1, NULL, NULL),
(305, 77, 60, NULL, NULL),
(306, 119, 5, NULL, NULL),
(308, 63, 1, NULL, NULL),
(309, 81, 10, NULL, NULL),
(310, 80, 5, NULL, NULL),
(311, 79, 10, NULL, NULL),
(312, 79, 10, NULL, NULL),
(313, 79, 10, NULL, NULL),
(313, 46, 4, NULL, NULL),
(314, 79, 10, NULL, NULL),
(314, 46, 4, NULL, NULL),
(315, 82, 49, NULL, NULL),
(316, 82, 49, NULL, NULL),
(317, 82, 49, NULL, NULL),
(318, 200, 1, NULL, NULL),
(319, 82, 11, NULL, NULL),
(320, 81, 5, NULL, NULL),
(321, 81, 5, NULL, NULL),
(322, 81, 5, NULL, NULL),
(323, 47, 1, NULL, NULL),
(324, 47, 1, NULL, NULL),
(324, 46, 1, NULL, NULL),
(325, 46, 1, NULL, NULL),
(326, 46, 1, NULL, NULL),
(326, 45, 10, NULL, NULL),
(327, 83, 5, NULL, NULL),
(328, 83, 2, NULL, NULL),
(329, 160, 20, NULL, NULL),
(330, 160, 40, NULL, NULL),
(331, 160, 20, NULL, NULL),
(332, 81, 10, NULL, NULL),
(333, 81, 2, NULL, NULL),
(334, 81, 2, NULL, NULL),
(334, 110, 1, NULL, NULL),
(335, 198, 1, NULL, NULL),
(336, 105, 2, NULL, NULL),
(337, 83, 1, NULL, NULL),
(338, 83, 1, NULL, NULL),
(338, 110, 1, NULL, NULL),
(339, 83, 1, NULL, NULL),
(339, 110, 1, NULL, NULL),
(340, 83, 1, NULL, NULL),
(340, 110, 1, NULL, NULL),
(341, 83, 1, NULL, NULL),
(341, 110, 1, NULL, NULL),
(341, 106, 14, NULL, NULL),
(342, 83, 1, NULL, NULL),
(342, 110, 1, NULL, NULL),
(342, 106, 14, NULL, NULL),
(342, 47, 1, NULL, NULL),
(343, 83, 1, NULL, NULL),
(343, 110, 1, NULL, NULL),
(343, 106, 14, NULL, NULL),
(343, 47, 1, NULL, NULL),
(344, 83, 1, NULL, NULL),
(344, 110, 1, NULL, NULL),
(344, 106, 14, NULL, NULL),
(344, 47, 1, NULL, NULL),
(345, 83, 1, NULL, NULL),
(345, 110, 1, NULL, NULL),
(345, 106, 14, NULL, NULL),
(345, 47, 1, NULL, NULL),
(347, 83, 1, NULL, NULL),
(347, 110, 1, NULL, NULL),
(347, 106, 14, NULL, NULL),
(347, 47, 1, NULL, NULL),
(347, 48, 1, NULL, NULL),
(348, 83, 1, NULL, NULL),
(348, 110, 1, NULL, NULL),
(349, 83, 1, NULL, NULL),
(349, 110, 1, NULL, NULL),
(349, 83, 1, NULL, NULL),
(349, 110, 1, NULL, NULL),
(350, 108, 10, NULL, NULL),
(351, 108, 10, NULL, NULL),
(351, 80, 1, NULL, NULL),
(352, 80, 1, NULL, NULL),
(352, 134, 4, NULL, NULL),
(353, 80, 1, NULL, NULL),
(353, 134, 4, NULL, NULL),
(354, 80, 1, NULL, NULL),
(354, 134, 4, NULL, NULL),
(354, 128, 1, NULL, NULL),
(355, 80, 1, NULL, NULL),
(355, 134, 2, NULL, NULL),
(355, 128, 1, NULL, NULL),
(356, 80, 1, NULL, NULL),
(356, 134, 2, NULL, NULL),
(356, 128, 1, NULL, NULL),
(356, 164, 10, NULL, NULL),
(357, 157, 1, NULL, NULL),
(358, 139, 9, NULL, NULL),
(359, 139, 9, NULL, NULL),
(360, 49, 10, NULL, NULL),
(361, 49, 5, NULL, NULL),
(361, 80, 1, NULL, NULL),
(362, 49, 5, NULL, NULL),
(362, 80, 1, NULL, NULL),
(363, 49, 3, NULL, NULL),
(363, 80, 1, NULL, NULL),
(363, 47, 1, NULL, NULL),
(364, 49, 3, NULL, NULL),
(364, 80, 1, NULL, NULL),
(364, 47, 1, NULL, NULL),
(365, 49, 3, NULL, NULL),
(365, 80, 1, NULL, NULL),
(365, 47, 1, NULL, NULL),
(366, 49, 3, NULL, NULL),
(366, 80, 1, NULL, NULL),
(366, 47, 1, NULL, NULL),
(366, 48, 1, NULL, NULL),
(367, 49, 3, NULL, NULL),
(367, 80, 1, NULL, NULL),
(367, 47, 1, NULL, NULL),
(367, 109, 1, NULL, NULL),
(368, 49, 3, NULL, NULL),
(368, 80, 1, NULL, NULL),
(368, 47, 1, NULL, NULL),
(368, 109, 1, NULL, NULL),
(369, 49, 3, NULL, NULL),
(369, 80, 1, NULL, NULL),
(369, 109, 1, NULL, NULL),
(370, 80, 1, NULL, NULL),
(370, 109, 1, NULL, NULL),
(371, 124, 3, NULL, NULL),
(372, 124, 3, NULL, NULL),
(373, 124, 1, NULL, NULL),
(373, 105, 1, NULL, NULL),
(374, 124, 1, NULL, NULL),
(374, 105, 1, NULL, NULL),
(374, 156, 4, NULL, NULL),
(375, 124, 1, NULL, NULL),
(375, 105, 1, NULL, NULL),
(375, 156, 4, NULL, NULL),
(376, 124, 1, NULL, NULL),
(376, 105, 1, NULL, NULL),
(376, 156, 4, NULL, NULL),
(376, 48, 1, NULL, NULL),
(377, 124, 1, NULL, NULL),
(377, 105, 1, NULL, NULL),
(377, 156, 4, NULL, NULL),
(377, 48, 1, NULL, NULL),
(378, 124, 1, NULL, NULL),
(378, 105, 1, NULL, NULL),
(379, 124, 1, NULL, NULL),
(379, 105, 1, NULL, NULL),
(379, 185, 401, NULL, NULL),
(380, 124, 1, NULL, NULL),
(380, 105, 1, NULL, NULL),
(380, 185, 401, NULL, NULL),
(381, 124, 1, NULL, NULL),
(382, 124, 1, NULL, NULL),
(382, 119, 1, NULL, NULL),
(383, 124, 1, NULL, NULL),
(383, 119, 1, NULL, NULL),
(383, 117, 1, NULL, NULL),
(384, 124, 1, NULL, NULL),
(384, 119, 1, NULL, NULL),
(384, 117, 1, NULL, NULL),
(385, 119, 2, NULL, NULL),
(385, 117, 1, NULL, NULL),
(386, 117, 1, NULL, NULL),
(386, 129, 5, NULL, NULL),
(387, 117, 1, NULL, NULL),
(387, 129, 5, NULL, NULL),
(388, 129, 5, NULL, NULL),
(388, 122, 10, NULL, NULL),
(389, 122, 10, NULL, NULL),
(390, 122, 2, NULL, NULL),
(391, 199, 1, NULL, NULL),
(392, 199, 1, NULL, NULL),
(392, 128, 1, NULL, NULL),
(393, 199, 1, NULL, NULL),
(393, 128, 1, NULL, NULL),
(394, 128, 1, NULL, NULL),
(401, 130, 1, NULL, NULL),
(402, 130, 1, NULL, NULL),
(402, 120, 1, NULL, NULL),
(403, 130, 1, NULL, NULL),
(403, 120, 1, NULL, NULL),
(403, 127, 1, NULL, NULL),
(404, 130, 1, NULL, NULL),
(404, 120, 1, NULL, NULL),
(404, 127, 1, NULL, NULL),
(404, 131, 1, NULL, NULL),
(405, 130, 1, NULL, NULL),
(405, 120, 1, NULL, NULL),
(405, 127, 1, NULL, NULL),
(405, 131, 1, NULL, NULL),
(405, 129, 1, NULL, NULL),
(406, 130, 1, NULL, NULL),
(406, 120, 1, NULL, NULL),
(406, 127, 1, NULL, NULL),
(406, 131, 1, NULL, NULL),
(406, 129, 1, NULL, NULL),
(407, 130, 1, NULL, NULL),
(407, 120, 1, NULL, NULL),
(407, 127, 1, NULL, NULL),
(407, 131, 1, NULL, NULL),
(407, 129, 1, NULL, NULL),
(408, 130, 1, NULL, NULL),
(408, 120, 1, NULL, NULL),
(408, 127, 1, NULL, NULL),
(408, 131, 1, NULL, NULL),
(408, 129, 1, NULL, NULL),
(409, 130, 1, NULL, NULL),
(409, 120, 1, NULL, NULL),
(409, 127, 1, NULL, NULL),
(409, 131, 1, NULL, NULL),
(409, 129, 1, NULL, NULL),
(410, 130, 1, NULL, NULL),
(410, 120, 1, NULL, NULL),
(410, 127, 1, NULL, NULL),
(410, 131, 1, NULL, NULL),
(410, 129, 1, NULL, NULL),
(411, 130, 1, NULL, NULL),
(411, 120, 1, NULL, NULL),
(411, 127, 1, NULL, NULL),
(411, 131, 1, NULL, NULL),
(411, 129, 1, NULL, NULL),
(412, 129, 1, NULL, NULL),
(413, 129, 1, NULL, NULL),
(413, 126, 1, NULL, NULL),
(414, 129, 1, NULL, NULL),
(414, 134, 2, NULL, NULL),
(415, 129, 1, NULL, NULL),
(415, 134, 2, NULL, NULL),
(416, 129, 1, NULL, NULL),
(416, 134, 2, NULL, NULL),
(417, 129, 1, NULL, NULL),
(417, 134, 2, NULL, NULL),
(418, 129, 1, NULL, NULL),
(418, 134, 2, NULL, NULL),
(419, 129, 1, NULL, NULL),
(419, 134, 2, NULL, NULL),
(420, 129, 1, NULL, NULL),
(420, 134, 2, NULL, NULL),
(421, 119, 1, NULL, NULL),
(422, 119, 1, NULL, NULL),
(423, 119, 1, NULL, NULL),
(424, 119, 1, NULL, NULL),
(424, 125, 1, NULL, NULL),
(425, 119, 1, NULL, NULL),
(425, 125, 1, NULL, NULL),
(426, 119, 2, NULL, NULL),
(427, 132, 1, NULL, NULL),
(428, 132, 1, NULL, NULL),
(428, 117, 1, NULL, NULL),
(429, 132, 1, NULL, NULL),
(429, 117, 1, NULL, NULL),
(429, 119, 1, NULL, NULL),
(430, 132, 1, NULL, NULL),
(430, 117, 1, NULL, NULL),
(430, 119, 1, NULL, NULL),
(431, 132, 1, NULL, NULL),
(431, 117, 1, NULL, NULL),
(431, 119, 1, NULL, NULL),
(431, 122, 1, NULL, NULL),
(432, 132, 1, NULL, NULL),
(432, 117, 1, NULL, NULL),
(432, 119, 1, NULL, NULL),
(432, 122, 1, NULL, NULL),
(432, 120, 1, NULL, NULL),
(432, 129, 1, NULL, NULL),
(433, 132, 1, NULL, NULL),
(433, 122, 1, NULL, NULL),
(433, 120, 1, NULL, NULL),
(433, 129, 1, NULL, NULL),
(433, 199, 1, NULL, NULL),
(434, 132, 1, NULL, NULL),
(434, 122, 1, NULL, NULL),
(434, 120, 1, NULL, NULL),
(434, 129, 1, NULL, NULL),
(434, 199, 1, NULL, NULL),
(434, 132, 1, NULL, NULL),
(434, 122, 1, NULL, NULL),
(434, 120, 1, NULL, NULL),
(434, 129, 1, NULL, NULL),
(434, 199, 1, NULL, NULL),
(435, 136, 1, NULL, NULL),
(436, 136, 1, NULL, NULL),
(439, 129, 3, NULL, NULL),
(440, 129, 3, NULL, NULL),
(441, 129, 3, NULL, NULL),
(442, 129, 3, NULL, NULL),
(443, 204, 10, NULL, NULL),
(444, 204, 5, NULL, NULL),
(445, 204, 5, NULL, NULL),
(446, 204, 5, NULL, NULL),
(446, 244, 8, NULL, NULL),
(447, 204, 5, NULL, NULL),
(447, 244, 8, NULL, NULL),
(447, 242, 1, NULL, NULL),
(448, 204, 5, NULL, NULL),
(448, 244, 8, NULL, NULL),
(448, 242, 1, NULL, NULL),
(448, 209, 3, NULL, NULL),
(449, 204, 5, NULL, NULL),
(449, 244, 8, NULL, NULL),
(449, 242, 1, NULL, NULL),
(449, 209, 3, NULL, NULL),
(450, 204, 5, NULL, NULL),
(450, 244, 1, NULL, NULL),
(450, 242, 1, NULL, NULL),
(450, 209, 3, NULL, NULL),
(451, 204, 5, NULL, NULL),
(451, 244, 1, NULL, NULL),
(451, 242, 1, NULL, NULL),
(451, 209, 3, NULL, NULL),
(452, 204, 5, NULL, NULL),
(452, 244, 1, NULL, NULL),
(452, 242, 1, NULL, NULL),
(452, 209, 3, NULL, NULL),
(453, 204, 5, NULL, NULL),
(453, 244, 1, NULL, NULL),
(453, 242, 1, NULL, NULL),
(453, 209, 3, NULL, NULL),
(454, 204, 5, NULL, NULL),
(454, 244, 1, NULL, NULL),
(454, 242, 1, NULL, NULL),
(454, 209, 3, NULL, NULL),
(458, 204, 1, NULL, NULL),
(459, 204, 2, NULL, NULL),
(460, 204, 2, NULL, NULL),
(460, 252, 1, NULL, NULL),
(461, 204, 2, NULL, NULL),
(461, 252, 1, NULL, NULL),
(462, 204, 2, NULL, NULL),
(462, 252, 1, NULL, NULL),
(463, 204, 2, NULL, NULL),
(463, 252, 1, NULL, NULL),
(464, 204, 2, NULL, NULL),
(464, 252, 1, NULL, NULL),
(464, 255, 1, NULL, NULL),
(465, 204, 2, NULL, NULL),
(465, 252, 1, NULL, NULL),
(465, 255, 1, NULL, NULL),
(466, 255, 2, NULL, NULL),
(467, 255, 3, NULL, NULL),
(468, 255, 3, NULL, NULL),
(468, 160, 5, NULL, NULL),
(469, 255, 3, NULL, NULL),
(469, 160, 5, NULL, NULL),
(470, 255, 3, NULL, NULL),
(470, 160, 5, NULL, NULL),
(471, 252, 20, NULL, NULL),
(472, 252, 20, NULL, NULL),
(472, 244, 5, NULL, NULL),
(473, 252, 20, NULL, NULL),
(473, 244, 5, NULL, NULL),
(474, 244, 5, NULL, NULL),
(474, 209, 6, NULL, NULL),
(475, 244, 5, NULL, NULL),
(475, 209, 6, NULL, NULL),
(476, 244, 5, NULL, NULL),
(476, 209, 6, NULL, NULL),
(477, 244, 5, NULL, NULL),
(477, 209, 6, NULL, NULL),
(477, 128, 1, NULL, NULL),
(478, 128, 1, NULL, NULL),
(478, 254, 5, NULL, NULL),
(479, 128, 1, NULL, NULL),
(479, 254, 5, NULL, NULL),
(480, 128, 1, NULL, NULL),
(480, 254, 5, NULL, NULL),
(480, 253, 1, NULL, NULL),
(481, 204, 10, NULL, NULL),
(482, 204, 10, NULL, NULL),
(482, 96, 10, NULL, NULL),
(483, 204, 10, NULL, NULL),
(483, 96, 10, NULL, NULL),
(484, 204, 10, NULL, NULL),
(484, 96, 10, NULL, NULL),
(485, 204, 10, NULL, NULL),
(485, 96, 10, NULL, NULL),
(486, 203, 600, NULL, NULL),
(487, 153, 1, NULL, NULL),
(488, 153, 351, NULL, NULL),
(489, 128, 2, NULL, NULL),
(490, 128, 2, NULL, NULL),
(491, 128, 2, NULL, NULL),
(492, 128, 2, NULL, NULL),
(493, 128, 2, NULL, NULL),
(494, 128, 3, NULL, NULL),
(495, 128, 3, NULL, NULL),
(495, 244, 10, NULL, NULL),
(496, 128, 3, NULL, NULL),
(496, 244, 10, NULL, NULL),
(497, 128, 3, NULL, NULL),
(497, 244, 10, NULL, NULL),
(498, 128, 3, NULL, NULL),
(498, 244, 10, NULL, NULL),
(498, 204, 10, NULL, NULL),
(499, 128, 3, NULL, NULL),
(499, 244, 10, NULL, NULL),
(499, 204, 10, NULL, NULL),
(500, 128, 3, NULL, NULL),
(500, 244, 10, NULL, NULL),
(500, 204, 10, NULL, NULL),
(501, 128, 3, NULL, NULL),
(501, 244, 10, NULL, NULL),
(501, 204, 10, NULL, NULL),
(502, 255, 10, NULL, NULL),
(503, 255, 10, NULL, NULL),
(504, 255, 10, NULL, NULL),
(505, 255, 10, NULL, NULL),
(506, 255, 10, NULL, NULL),
(507, 255, 10, NULL, NULL),
(507, 99, 1, NULL, NULL),
(508, 255, 10, NULL, NULL),
(508, 99, 1, NULL, NULL),
(509, 255, 10, NULL, NULL),
(509, 99, 1, NULL, NULL),
(510, 255, 10, NULL, NULL),
(510, 99, 1, NULL, NULL),
(511, 255, 10, NULL, NULL),
(511, 99, 1, NULL, NULL),
(512, 255, 10, NULL, NULL),
(512, 99, 1, NULL, NULL),
(513, 255, 10, NULL, NULL),
(513, 99, 1, NULL, NULL),
(514, 255, 10, NULL, NULL),
(514, 99, 1, NULL, NULL),
(514, 253, 5, NULL, NULL),
(515, 255, 10, NULL, NULL),
(515, 99, 1, NULL, NULL),
(515, 253, 5, NULL, NULL),
(516, 255, 10, NULL, NULL),
(516, 99, 1, NULL, NULL),
(516, 253, 5, NULL, NULL),
(517, 250, 10, NULL, NULL),
(518, 250, 10, NULL, NULL),
(519, 250, 10, NULL, NULL),
(520, 250, 10, NULL, NULL),
(520, 99, 5, NULL, NULL),
(521, 250, 10, NULL, NULL),
(521, 99, 5, NULL, NULL),
(521, 187, 1, NULL, NULL),
(522, 250, 10, NULL, NULL),
(522, 99, 5, NULL, NULL),
(522, 187, 1, NULL, NULL),
(523, 250, 10, NULL, NULL),
(523, 99, 5, NULL, NULL),
(523, 187, 1, NULL, NULL),
(523, 252, 10, NULL, NULL),
(524, 99, 5, NULL, NULL),
(524, 187, 1, NULL, NULL),
(524, 252, 10, NULL, NULL),
(525, 187, 1, NULL, NULL),
(525, 252, 10, NULL, NULL),
(526, 187, 1, NULL, NULL),
(526, 252, 10, NULL, NULL),
(527, 187, 1, NULL, NULL),
(527, 257, 10, NULL, NULL),
(528, 187, 1, NULL, NULL),
(528, 257, 10, NULL, NULL),
(529, 257, 10, NULL, NULL),
(530, 257, 10, NULL, NULL),
(531, 265, 2, NULL, NULL),
(532, 265, 2, NULL, NULL),
(533, 265, 2, NULL, NULL),
(535, 265, 2, NULL, NULL),
(535, 284, 101, NULL, NULL),
(536, 187, 1, NULL, NULL),
(537, 187, 1, NULL, NULL),
(538, 249, 4, NULL, NULL),
(539, 249, 4, NULL, NULL),
(540, 249, 4, NULL, NULL),
(541, 63, 1, NULL, NULL),
(542, 63, 1, NULL, NULL),
(544, 285, 333, NULL, NULL),
(546, 187, 1, NULL, NULL),
(547, 252, 1, NULL, NULL),
(552, 254, 1, NULL, NULL),
(553, 254, 1, NULL, NULL),
(554, 284, 1, NULL, NULL),
(555, 284, 1, NULL, NULL),
(556, 96, 1, NULL, NULL),
(557, 275, 1, NULL, NULL),
(558, 257, 1, NULL, NULL),
(559, 284, 1, NULL, NULL),
(560, 266, 1, NULL, NULL),
(561, 191, 1, NULL, NULL),
(562, 191, 1, NULL, NULL),
(563, 244, 1, NULL, NULL),
(564, 153, 1, NULL, NULL),
(565, 252, 1, NULL, NULL),
(566, 252, 1, NULL, NULL),
(567, 275, 1, NULL, NULL),
(568, 284, 1, NULL, NULL),
(569, 78, 1, NULL, NULL),
(570, 245, 1, NULL, NULL),
(571, 257, 1, NULL, NULL),
(572, 187, 1, NULL, NULL),
(573, 128, 1, NULL, NULL),
(574, 266, 1, NULL, NULL),
(575, 191, 1, NULL, NULL),
(576, 253, 1, NULL, NULL),
(577, 284, 1, NULL, NULL),
(578, 252, 1, NULL, NULL),
(579, 99, 1, NULL, NULL),
(580, 203, 1, NULL, NULL),
(581, 266, 1, NULL, NULL),
(582, 191, 2, NULL, NULL),
(583, 283, 10, NULL, NULL),
(584, 275, 5, NULL, NULL),
(585, 257, 1, NULL, NULL),
(586, 128, 1, NULL, NULL),
(587, 191, 2, NULL, NULL),
(588, 282, 20, NULL, NULL),
(589, 245, 2, NULL, NULL),
(590, 249, 1, NULL, NULL),
(591, 160, 1, NULL, NULL),
(592, 266, 2, NULL, NULL),
(593, 254, 2, NULL, NULL),
(594, 153, 1, NULL, NULL),
(595, 244, 130, NULL, NULL),
(596, 191, 1, NULL, NULL),
(597, 204, 2, NULL, NULL),
(598, 252, 1, NULL, NULL),
(599, 275, 1, NULL, NULL),
(600, 252, 1, NULL, NULL),
(601, 96, 1, NULL, NULL),
(603, 282, 1, NULL, NULL),
(603, 96, 1, NULL, NULL),
(604, 131, 10, NULL, NULL),
(605, 283, 1, NULL, NULL),
(606, 275, 10, NULL, NULL),
(607, 249, 10, NULL, NULL),
(608, 160, 10, NULL, NULL),
(609, 128, 10, NULL, NULL),
(610, 153, 20, NULL, NULL),
(611, 245, 5, NULL, NULL),
(612, 266, 3, NULL, NULL),
(613, 283, 10, NULL, NULL),
(614, 246, 10, NULL, NULL),
(615, 183, 1, NULL, NULL),
(616, 120, 1, NULL, NULL),
(617, 254, 30, NULL, NULL),
(618, 255, 20, NULL, NULL),
(619, 282, 1, NULL, NULL),
(620, 105, 2, NULL, NULL),
(621, 176, 1, NULL, NULL),
(622, 257, 1, NULL, NULL),
(623, 120, 4, NULL, NULL),
(624, 180, 1, NULL, NULL),
(625, 254, 2, NULL, NULL),
(626, 120, 10, NULL, NULL),
(627, 99, 10, NULL, NULL),
(628, 180, 1, NULL, NULL),
(629, 99, 2, NULL, NULL),
(630, 278, 10, NULL, NULL),
(631, 253, 20, NULL, NULL),
(632, 249, 1, NULL, NULL),
(633, 185, 1, NULL, NULL),
(633, 176, 1, NULL, NULL),
(634, 153, 10, NULL, NULL),
(635, 209, 19, NULL, NULL),
(636, 249, 5, NULL, NULL),
(637, 191, 1, NULL, NULL),
(638, 244, 4, NULL, NULL),
(639, 99, 3, NULL, NULL),
(640, 220, 2, NULL, NULL),
(641, 185, 5, NULL, NULL),
(642, 254, 3, NULL, NULL),
(643, 246, 2, NULL, NULL),
(644, 187, 1, NULL, NULL),
(645, 153, 10, NULL, NULL),
(646, 120, 6, NULL, NULL),
(647, 128, 2, NULL, NULL),
(648, 244, 2, NULL, NULL),
(649, 99, 2, NULL, NULL),
(650, 244, 10, NULL, NULL),
(651, 220, 4, NULL, NULL),
(652, 249, 3, NULL, NULL),
(653, 247, 10, NULL, NULL),
(654, 246, 10, NULL, NULL),
(655, 275, 30, NULL, NULL),
(656, 285, 15, NULL, NULL),
(657, 183, 2, NULL, NULL),
(658, 120, 1, NULL, NULL),
(659, 128, 1, NULL, NULL),
(660, 244, 4, NULL, NULL),
(661, 183, 2, NULL, NULL),
(662, 183, 3, NULL, NULL),
(663, 249, 20, NULL, NULL),
(664, 252, 3, NULL, NULL),
(667, 209, 3, NULL, NULL),
(668, 191, 2, NULL, NULL),
(669, 120, 2, NULL, NULL),
(670, 68, 5, NULL, NULL),
(671, 283, 10, NULL, NULL),
(672, 248, 10, NULL, NULL),
(673, 117, 5, NULL, NULL),
(674, 220, 7, NULL, NULL),
(675, 104, 2, NULL, NULL),
(676, 191, 2, NULL, NULL),
(677, 252, 6, NULL, NULL),
(678, 283, 5, NULL, NULL),
(679, 105, 1, NULL, NULL),
(680, 266, 1, NULL, NULL),
(681, 199, 2, NULL, NULL),
(682, 203, 1, NULL, NULL),
(683, 196, 1, NULL, NULL),
(684, 99, 4, NULL, NULL),
(685, 244, 10, NULL, NULL),
(686, 59, 5, NULL, NULL),
(687, 117, 2, NULL, NULL),
(688, 160, 5, NULL, NULL),
(689, 59, 1, NULL, NULL),
(690, 176, 1, NULL, NULL),
(691, 252, 5, NULL, NULL),
(692, 199, 1, NULL, NULL),
(693, 59, 4, NULL, NULL),
(694, 117, 1, NULL, NULL),
(695, 191, 2, NULL, NULL),
(696, 248, 2, NULL, NULL),
(697, 246, 1, NULL, NULL),
(698, 120, 11, NULL, NULL),
(699, 128, 6, NULL, NULL),
(700, 180, 1, NULL, NULL),
(701, 199, 1, NULL, NULL),
(702, 203, 4, NULL, NULL),
(703, 285, 10, NULL, NULL),
(704, 257, 1, NULL, NULL),
(705, 104, 3, NULL, NULL),
(706, 68, 2, NULL, NULL),
(707, 120, 20, NULL, NULL),
(708, 180, 2, NULL, NULL),
(709, 275, 4, NULL, NULL),
(710, 96, 2, NULL, NULL),
(711, 285, 1, NULL, NULL),
(712, 220, 3, NULL, NULL),
(713, 287, 1, NULL, NULL),
(714, 285, 10, NULL, NULL),
(715, 285, 4, NULL, NULL),
(716, 287, 2, NULL, NULL),
(717, 287, 5, NULL, NULL),
(718, 287, 1, NULL, NULL),
(719, 287, 3, NULL, NULL),
(720, 282, 1, NULL, NULL),
(721, 283, 6, NULL, NULL),
(722, 287, 1, NULL, NULL),
(723, 287, 2, NULL, NULL),
(724, 287, 9, NULL, NULL),
(725, 254, 10, NULL, NULL),
(726, 284, 10, NULL, NULL),
(728, 285, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `brands_id` bigint(20) UNSIGNED NOT NULL,
  `sub_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `youtube_path` varchar(191) DEFAULT NULL,
  `price` double DEFAULT 0,
  `price_new` double DEFAULT 0,
  `quantity` int(11) DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `featured_product` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(45, 20, 2, 9, 38, 'Chuột Logitech G102 Gen2 LightSync', 'https://www.anphatpc.com.vn/chuot-logitech-g102-lightsync.html', 449000, 399000, 80, '<ul><li>Chuột Logitech G102 Gen2 LightSync</li><li>Bộ xử lý ARM 32 bit bên trong</li><li>DPI từ 200 - 8000Thiết kế đối xứng cơ bản</li><li>LED RGB 16.8 triệu màu đồng bộ LightSync</li></ul>', 1, 1, '2025-08-30 02:36:44', '2026-04-17 08:15:40'),
(46, 1, 2, 3, 44, 'Màn hình Acer KG240Y-X1 24\" IPS 200Hz Gsync chuyên game', NULL, 3790000, 2690000, 4, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Đánh giá chi tiết sản phẩm&nbsp;màn hình Acer KG240Y-X1 24\" IPS 200Hz Gsync chuyên game</strong></h2><p>Acer KG240Y-X1 là một màn hình chơi game tầm trung đáng chú ý, được trang bị tấm nền IPS, tần số quét 200Hz và công nghệ G-Sync. Với mức giá phải chăng, chiếc màn hình này hứa hẹn mang đến trải nghiệm chơi game mượt mà, hình ảnh sắc nét và màu sắc sống động cho game thủ.</p><h3><strong>Ngoại hình mạnh mẽ, thiết kế linh hoạt</strong></h3><p><a href=\"https://gearvn.com/collections/man-hinh-acer\">Màn hình Acer</a> KG240Y-X1 được thiết kế với màn hình mỏng nhẹ với màu đen làm chủ đạo, chân đế của màn hình được thiết kế chữ V mang lại cảm giác vững chắc cho sản phẩm. Đặc biệt, với màn hình Acer KG240Y-X1, người dùng có thể điều chỉnh độ nghiêng linh hoạt để tìm góc phù hợp với tư thế ngồi cũng như các nhu cầu sử dụng khác như chơi game, xem phim,... Màn hình sở hữu kích thước <a href=\"https://gearvn.com/collections/man-hinh-24-inch\">24 inch</a> nhưng trọng lượng chỉ khoảng 2.9kg, rất dễ dàng để bạn có thể di chuyển và bố trí ở các vị trí khác nhau.</p><p><img src=\"https://product.hstatic.net/200000722513/product/acer_nitro_kg0_-_kg240y_x1_-_1_703b0169ed814b0598ea731baee2450b_1024x1024.png\" alt=\"Màn hình Acer KG240Y-X1 24\"></p><h3><strong>Tần số quét lên đến 200Hz</strong></h3><p><a href=\"https://gearvn.com/pages/man-hinh\">Màn hình</a> Acer Nitro KG240Y X1 được trang bị tần số quét 200Hz và thời gian phản hồi 1ms (GtG), với sự kết hợp này, màn hình sẽ cung cấp cho người chơi những trỉa nghiệm hình ảnh mượt mà, không bị giật lag. Tốc độ làm mới cực nhanh này cho phép bạn phản ứng ngay lập tức với mọi diễn biến trong game, giúp bạn luôn dẫn đầu trong các trận chiến căng thẳng.</p><p><img src=\"https://product.hstatic.net/200000722513/product/acer_nitro_kg0_-_kg240y_x1_-_3_3a944853c4ed48e59d8ace2d49ccc7e5_1024x1024.png\" alt=\"Màn hình Acer KG240Y-X1 24\"></p><h3><strong>Tấm nền IPS cho góc rộng đến 178 độ</strong></h3><p>Được trang bị tấm nền IPS tiên tiến, màn hình này mang đến độ phân giải Full HD (1920x1080) ấn tượng, tái hiện mọi chi tiết với độ rõ nét đáng kinh ngạc. Từ những dòng chữ nhỏ nhất trong công việc hàng ngày đến những hiệu ứng đồ họa phức tạp trong game, tất cả đều được hiển thị một cách sắc nét và chân thực.&nbsp;</p><p>Được trang bị tấm nền IPS tiên tiến, màn hình này mang đến độ phân giải <a href=\"https://gearvn.com/collections/do-phan-giai-full-hd-1080p\">Full HD</a> (1920x1080) ấn tượng, tái hiện mọi chi tiết với độ rõ nét đáng kinh ngạc. Từ những dòng chữ nhỏ nhất trong công việc hàng ngày đến những hiệu ứng đồ họa phức tạp trong game, tất cả đều được hiển thị một cách sắc nét và chân thực.&nbsp;</p><p>Song song đó với độ phủ màu sRGB lên đến 99%, màn hình này mang đến dải màu chân thực và sống động, đáp ứng mọi nhu cầu của những người dùng khó tính nhất. Từ những gam màu tươi tắn trong phim ảnh đến những sắc thái tinh tế trong thiết kế đồ họa, tất cả đều được tái hiện một cách chính xác và tự nhiên.</p><p><img src=\"https://product.hstatic.net/200000722513/product/acer_nitro_kg0_-_kg240y_x1_-_4_531894a3fb4547ffb0d10a51383705ae_1024x1024.png\" alt=\"Màn hình Acer KG240Y-X1 24\"></p><h3><strong>Tích hợp công nghệ hiện đại thân thiện với mắt</strong></h3><p>Bên cạnh cung cấp hình ảnh chất lượng, màn hình Acer Nitro KG240Y X1 còn đặc biệt quan tâm đến sức khỏe của người dùng, nhất là đôi mắt. Công nghệ Acer VisionCare được tích hợp trong màn hình này là minh chứng rõ ràng cho điều đó.&nbsp;</p><p>Hệ thống công nghệ Acer VisionCare bao gồm bốn công nghệ chính là Flicker-less - loại bỏ hiện tượng chống nhấp nháy, BlueLightShield giúp giảm thiểu lượng ánh sáng xanh phát ra, ComfyView - giúp giảm độ chói và phản xạ ánh sáng, giúp hình ảnh hiển thị rõ ràng hơn và giảm thiểu căng thẳng cho mắt và cuối cùng là Low Dimming tự động điều chỉnh mức độ ánh sáng xuống mức thấp hơn bình thường giúp giảm thiểu lượng ánh sáng mà mắt bạn phải tiếp xúc, đặc biệt trong điều kiện ánh sáng yếu.</p><p><img src=\"https://product.hstatic.net/200000722513/product/0._kg240y_x1_-_frame_9894e0f9aca046c286d03ffb35ad1277_1024x1024.png\" alt=\"Màn hình Acer KG240Y-X1 24\"></p><h3><strong>Đa dạng các cổng kết nối</strong></h3><p>Màn hình này được trang bị một loạt các cổng kết nối đa dạng, cho phép bạn dễ dàng kết nối với nhiều loại thiết bị khác nhau, từ <a href=\"https://gearvn.com/pages/pc-gvn\">máy tính</a>, <a href=\"https://gearvn.com/pages/laptop-gaming\">laptop</a>, console chơi game cho đến tai nghe. Cụ thể, màn hình cung cấp các cổng kết nối như hai cổng HDMI, cổng DisplayPort và cổng âm thanh 3.5mm.</p><p><img src=\"https://product.hstatic.net/200000722513/product/acer_nitro_kg0_-_kg240y_x1_-_7_978b1846844a4fc498ebda3b557841c4_1024x1024.png\" alt=\"Màn hình Acer KG240Y-X1 24\"></p><p>Acer KG240Y-X1 là một chiếc màn hình chơi game tầm trung đáng giá, mang đến nhiều ưu điểm vượt trội. Nếu bạn đang tìm kiếm một chiếc màn hình gaming chất lượng thì chắc chắn không thể bỏ lỡ sản phẩm này.&nbsp;Hãy liên hệ với GearVN hoặc đến trực tiếp cửa hàng để được nhân viên tư vấn chi tiết về sản phầm này.</p>', 1, 1, '2025-08-30 02:43:58', '2026-04-17 08:15:42'),
(47, 17, 2, 8, 52, 'Laptop Asus Vivobook 16 K3607VJ-RP092W (Intel Core 5 210H | 16GB | 512GB | RTX 3050 | 16 inch WUXGA 144Hz | Win 11 | Đen)', NULL, 22999000, 20490000, 35, '<p>CPU: Intel Core 5 210H 2.2 GHz (12MB Cache, up to 4.8 GHz, 8 cores, 12 Threads)VGA: NVIDIA GeForce RTX 3050 6GB GDDR6Màn hình: 16.0-inch, WUXGA (1920 x 1200) 16:10 LED Backlit 144Hz Anti-glare displayRAM: 16GBx1 DDR5 SO-DIMM (2 khe)Ổ cứng: 512GB M.2 NVMe™ PCIe® 4.0 SSDPin: 63WHrs, 3S1P, 3-cell Li-ionCân nặng: 1.95 kgMàu sắc: ĐenOS: Windows 11 Home</p>', 0, 1, '2025-09-02 07:06:14', '2025-11-12 09:17:47'),
(48, 17, 2, 5, 53, 'Macbook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A', NULL, 52990000, 48590000, 92, '<figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>M2 PRO 10CPU 16GPU</td></tr><tr><td><a href=\"https://gearvn.com/pages/man-hinh\"><strong>Màn hình</strong></a></td><td>14-inch Liquid Retina XDR display</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td>16GB</td></tr><tr><td><strong>Dung lượng pin</strong></td><td>Longer battery life, up to 18 hours</td></tr><tr><td><strong>Bộ nhớ</strong></td><td><a href=\"https://gearvn.com/collections/ram-pc\">SSD</a>&nbsp;512GB</td></tr><tr><td><strong>Cổng kết nối</strong></td><td>MagSafe 3, 3x Thunderbolt 4, HDMI, SDXC Card, Jack 3.5mm</td></tr><tr><td><strong>Bàn phím</strong></td><td>Magic Keyboard &amp; Touch ID</td></tr><tr><td><strong>Kết nối không dây</strong></td><td>Bluetooth 5.3, Wi-Fi 6 (802.11ax)</td></tr><tr><td><strong>Camera</strong></td><td>1080p FaceTime HD camera</td></tr><tr><td><strong>Audio</strong></td><td>3 micro studio. 6 loa</td></tr><tr><td><strong>Hệ điều hành</strong></td><td>MacOS</td></tr><tr><td><strong>Kích thước</strong></td><td>31.26 cm x 22.12 cm x 1.55 cm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>1.60 kg</td></tr></tbody></table></figure>', 0, 1, '2025-09-02 07:13:22', '2025-11-12 16:53:34'),
(49, 20, 2, 9, 38, 'Chuột Logitech G304 LIGHTSPEED Wireless', NULL, 899000, 719000, 49, '<p>Chuột Logitech G304 LIGHTSPEED Wireless</p><p>Chuột chơi game không dây thế hệ mới nhất của Logitech</p><p>Thiết kế đối xứng</p><p>Công nghệ không dây tiên tiến nhất Lightspeed</p><p>Độp phân giải: 12000DPIGia tốc tối đa: 40G</p><p>Tốc độ tối đa: 400IPS</p>', 0, 1, '2025-09-02 07:17:44', '2025-11-12 09:18:28'),
(50, 26, 2, 5, 54, 'iPad Pro 11 inch M4 2024 Wifi 256GB', NULL, 28490000, 25990000, 19, '<p>Thông tin hàng hóa</p><p>Xuất xứ</p><p>Việt Nam / Trung Quốc</p><p>Thời điểm ra mắt</p><p>05/2024</p><p>Thời gian bảo hành</p><p>12 tháng</p><p>Hướng dẫn bảo quản</p><p>Để nơi khô ráo, nhẹ tay, dễ vỡ.</p><p>Hướng dẫn sử dụng</p><p>Xem trong sách hướng dẫn sử dụng</p><p>Thiết kế &amp; Trọng lượng</p><p>Kích thước</p><p>249.7 x 177.5 x 5.3 mm</p><p>Trọng lượng sản phẩm</p><p>444 g</p><p>Chất liệu</p><p>Vỏ máy: Nhôm tái chế</p><p>Bộ xử lý</p><p>CPU Model</p><p>Apple M4</p><p>Loại CPU</p><p>10 - Core</p><p>CPU</p><p>Apple M4 10 nhân</p><p>Số nhân</p><p>10</p><p>RAM</p><p>Dung lượng RAM</p><p>Hãng không công bố</p><p>Màn hình</p><p>Kích thước màn hình</p><p>11 inch</p><p>Công nghệ màn hình</p><p>OLED</p><p>Độ phân giải</p><p>2420 x 1668 Pixel</p><p>Chuẩn màn hình</p><p>Ultra Liquid Retina XDR</p><p>Độ sáng</p><p>1000 nits</p><p>Độ tương phản</p><p>2.000.000:1</p><p>Đồ họa</p><p>Chip đồ hoạ (GPU)</p><p>Apple GPU 10 nhân</p><p>Lưu trữ</p><p>Dung lượng (ROM)</p><p>256 GB</p><p>Camera sau</p><p>Số camera sau</p><p>Double rear camera</p><p>Camera 1</p><p>Ultra&nbsp;Wide</p><p>Độ phân giải</p><p>12.0 MP</p><p>Camera 2</p><p>Wide</p><p>Độ phân giải</p><p>12.0 MP</p><p>Khẩu độ</p><p>ƒ/1.8</p><p>Quay phim camera sau</p><p>4K 2160p@30fps</p><p>HD 720p@30fps</p><p>FullHD 1080p@60fps</p><p>FullHD 1080p@30fps</p><p>FullHD 1080p@25fps</p><p>4K 2160p@60fps</p><p>4K 2160p@25fps</p><p>4K 2160p@24fps</p><p>Camera Selfie</p><p>Số Camera Selfie</p><p>Single selfie camera</p><p>Quay phim camera seflie</p><p>Quay phim FullHD</p><p>Tính năng</p><p>Trôi nhanh thời gian (Time lapse)</p><p>Chụp góc rộng (Wide)</p><p>Xóa phông</p><p>Cảm biến</p><p>Cảm biến</p><p>Face ID</p><p>LiDAR Scanner</p><p>Con quay hồi chuyển</p><p>Cảm biến gia tốc kế</p><p>Cảm biến khí áp kế</p><p>Cảm biến ánh sáng</p><p>Bảo mật</p><p>Bảo mật</p><p>Mật khẩu</p><p>Giao tiếp và kết nối</p><p>Cổng giao tiếp</p><p>Type C</p><p>Wifi</p><p>Wifi 6E</p><p>Bluetooth</p><p>v5.3</p><p>Thông tin pin &amp; sạc</p><p>Loại PIN</p><p>Lithium polymer</p><p>Dung lượng pin</p><p>36.59 Wh</p><p>Hệ điều hành</p><p>OS</p><p>iPadOS</p><p>Version</p><p>iPadOS&nbsp;17</p><p>Phụ kiện trong hộp</p><p>Phụ kiện trong hộp</p><p>Dây cáp sạc</p><p>Củ sạc iPad</p><p>Khăn lau</p>', 0, 1, '2025-09-02 07:27:34', '2025-09-25 13:37:53'),
(52, 18, 2, 9, 57, 'Bàn phím cơ DarkFlash DF98 Interstellar Wireless Yellow switch', 'https://www.anphatpc.com.vn/ban-phim-co-darkflash-df98-interstellar-wireless-yellow-switch.html', 1599000, 749000, 192, '<p>Bàn phím cơ DarkFlash DF98 Interstellar Wireless Yellow switch</p><p>3 chế độ kết nối: Wireless 2.4Ghz, Bluetooth và có dây USB</p><p>Cấu trúc Gasket mount cao cấp nhất</p><p>Mạch Hotswap 5 pin, có flex cut cho cảm giác bấm mềm mại</p><p>Plate PC cực kỳ flex</p><p>Đầy đủ foam tiêu âmLED RGB 16.8 triệu màu</p><p>Stabilizer được cân chỉnh và lube sẵn</p><p>Keycap PBT Doubleshot siêu bền</p><p>Pin dung lượng cao: 4000mAh</p>', 0, 1, '2025-09-02 07:40:01', '2025-10-15 03:49:55'),
(54, 26, 2, 5, 54, 'iPad A16 WiFi 128GB', 'https://www.youtube.com/shorts/eBL6-2hviCY', 9790000, 9590000, 0, '<p>ipad a16 wifi 128gb 2025&nbsp;</p><p><a href=\"https://fptshop.com.vn/may-tinh-bang/ipad-a16-wifi\"><strong>iPad Gen 11</strong></a><strong> đánh dấu bước tiến lớn trong dòng </strong><a href=\"https://fptshop.com.vn/may-tinh-bang/ipad-gen\"><strong>iPad</strong></a><strong> của Apple. Sản phẩm sở hữu sức mạnh vượt trội nhờ chip A16 Bionic, có bộ nhớ khởi điểm 128GB và màn hình Liquid Retina 11 inch tuyệt đẹp. Những nâng cấp đáng giá này giúp người dùng làm việc hiệu quả hơn, đồng thời trở thành công cụ lý tưởng cho nhu cầu giải trí và sáng tạo nội dung.</strong></p><h2><strong>A16 Bionic: Hiệu suất vượt trội, đa nhiệm hiệu quả</strong></h2><p>Thế hệ iPad Gen 11 được trang bị chip A16 Bionic siêu mạnh, cung cấp hiệu suất vượt trội cho mọi tác vụ. Nhờ cải tiến Neural Engine và công nghệ máy học tiên tiến, iPad Gen 11 xử lý tốt các tác vụ nặng như chỉnh sửa video 4K, chơi game đồ họa cao hay trải nghiệm các ứng dụng AR (thực tế ảo tăng cường).</p><p>Năng lực đa nhiệm mạnh mẽ giúp người dùng dễ dàng chuyển đổi giữa các ứng dụng, thoải mái ghi chú khi đang xem tài liệu hoặc chỉnh sửa ảnh ngay trên màn hình. Với dung lượng pin dùng cả ngày, iPad Gen 11 đảm bảo bạn luôn sẵn sàng cho mọi công việc mà không gián đoạn. Chip A16 Bionic vận dụng năng lượng hiệu quả, giúp duy trì tuổi thọ pin lâu dài.</p><h2><strong>iPadOS 16 phát huy tiềm năng của chiếc iPad</strong></h2><p>Hệ điều hành iPadOS 16 cung cấp nhiều tính năng mới, giúp iPad Gen 11 linh hoạt hơn trong cơ chế vận hành. Khả năng hỗ trợ <a href=\"https://fptshop.com.vn/apple/pencil\">Apple Pencil</a> giúp bạn dễ dàng ghi chú để giải phương trình toán học phức tạp hoặc vẽ ra những bức tranh đầy sáng tạo. Ngoài ra, iPadOS 16 còn hỗ trợ làm việc nhóm hiệu quả và chia sẻ tài liệu cần cho công việc.</p><p>Một tính năng đáng chú ý trên iPadOS 16 là Stage Manager – cơ chế giúp tối ưu hóa trải nghiệm đa nhiệm trên iPad. Với tính năng này, người dùng có thể mở nhiều cửa sổ ứng dụng cùng lúc, thay đổi kích thước cửa sổ linh hoạt và sắp xếp công việc theo cách khoa học nhất.</p><p>&nbsp;</p><h2><strong>Màn hình Liquid Retina rộng mở đầy chân thực</strong></h2><p>Không gian hiển thị trên iPad Gen 11 cho chất lượng hình ảnh sắc nét, độ sáng cao và diễn đạt màu sắc chân thực. Công nghệ True Tone giúp điều chỉnh ánh sáng màn hình theo môi trường xung quanh, tạo cảm giác thoải mái khi sử dụng trong thời gian dài. Dù bạn đang xem phim, chơi game hay duyệt tài liệu, màn hình này đều hỗ trợ hiệu quả.</p><p>Với độ phân giải cao và khả năng hiển thị màu sắc chính xác, iPad Gen 11 sẽ là trợ thủ lý tưởng cho giới thiết kế đồ họa, nhiếp ảnh gia và những ai yêu thích sáng tạo. Bạn sẽ dễ dàng chỉnh sửa ảnh, vẽ tranh kỹ thuật số hoặc tạo video chuyên nghiệp ngay trên chiếc iPad này.</p><p>&nbsp;</p><h2><strong>Camera 12MP ghi lại mọi khoảnh khắc đắt giá</strong></h2><p>iPad Gen 11 được trang bị camera sau 12MP với khả năng chụp ảnh sắc nét và quay video chất lượng cao. Bạn có thể chỉnh sửa ảnh/video ngay trên iPad với các công cụ mạnh mẽ. Bên cạnh đó, camera trước 12MP với tính năng Center Stage giúp bạn luôn ở vị trí trung tâm khung hình khi gọi video, tham gia các cuộc họp trực tuyến hay quay vlog cá nhân.</p><p>Tính năng Smart HDR 4 trên iPad Gen 11 giúp cải thiện chất lượng hình ảnh bằng cách điều chỉnh độ sáng và độ tương phản tự động, để người dùng bắt được những khoảnh khắc đắt giá ngay cả trong điều kiện ánh sáng yếu.</p><p>&nbsp;</p><h2><strong>Hệ thống âm thanh và micro chất lượng cao</strong></h2><p>Với hệ thống loa stereo và micro tích hợp chất lượng cao, iPad Gen 11 cung cấp trải nghiệm âm thanh cực kỳ sống động. Bạn có thể dễ dàng thu âm, làm nhạc hoặc ghi âm bài giảng với chất lượng rõ nét.</p><p>Cặp loa kép được bố trí ở cạnh ngang mang lại âm thanh vòm ấn tượng khi xem phim hay chơi game. Đồng thời, micro tích hợp với khả năng lọc tạp âm giúp bạn thu âm giọng nói trong trẻo hơn, rất hữu ích khi tham gia các cuộc họp trực tuyến hoặc thu âm podcast.</p><p><br><strong>Kho ứng dụng đa dạng phục vụ mọi nhu cầu</strong></p><p>Ngay từ nhà máy, iPad Gen 11 đã được cài đặt sẵn loạt ứng dụng mạnh mẽ như Safari, Mail, Tin Nhắn, Bản Đồ, Ảnh,... Bạn cũng có thể tìm thấy hơn một triệu ứng dụng khác trên App Store. Nhờ đó, việc tận dụng iPad cho mọi nhu cầu từ học tập, làm việc, giải trí và sáng tạo nội dung cũng trở nên dễ dàng hơn.</p><p>Với sức mạnh của iPadOS 16, iPad Gen 11 có thể chạy tốt các phần mềm chỉnh sửa ảnh chuyên nghiệp như Adobe Photoshop, Lightroom hay các công cụ dựng phim như iMovie, LumaFusion. Ngoài ra, các ứng dụng học tập như Duolingo, Notability hay GoodNotes cũng được tối ưu hóa để mang lại trải nghiệm tốt nhất trên <a href=\"https://fptshop.com.vn/may-tinh-bang\">máy tính bảng</a>.<br>&nbsp;</p>', 0, 1, '2025-10-04 08:49:00', '2025-10-15 03:49:55'),
(55, 26, 2, 5, 54, 'iPad Mini 7 2024 Wifi 128GB', 'https://www.youtube.com/shorts/C0595nBlQ7Q', 13790000, 13590000, 50, '<h2>Mô tả sản phẩm</h2><p><strong>Cùng trải nghiệm sức mạnh tuyệt vời bên trong chiếc tablet nhỏ gọn đa năng, iPad Mini 2024 ghi điểm nhờ chip xử lý A17 Pro cực mạnh cùng bộ công cụ Apple Intelligence tiện lợi. Sản phẩm lên kệ với bốn màu sắc đẹp mắt và hoạt động tương thích với bút Apple Pencil Pro.</strong></p><h2><strong>Chiếc tablet gọn nhẹ với 4 lựa chọn màu sắc</strong></h2><p>Được thiết kế dành cho những ai yêu trải nghiệm gọn gàng, iPad Mini 2024 có kiểu dáng rất nhỏ nhắn, với cấu trúc khung vỏ hoàn thiện 100% từ nhôm tái chế thân thiện. Bạn sẽ dễ dàng cầm nắm và mang theo mẫu tablet này mọi lúc mọi nơi, xếp đặt gọn gàng trong balo, túi xách mỗi khi di chuyển. Sản phẩm lên kệ với 4 màu tuyệt đẹp gồm: Xám Không Gian, Xanh Dương, Tím và Ánh Sao.</p><h2><strong>Màn hình True Tone 8.3 inch sống động</strong></h2><p>Dù sở hữu thiết kế gọn nhẹ, iPad Mini 2024 vẫn mang lại trải nghiệm thị giác tốt qua màn hình Liquid Retina 8.3 inch. Công nghệ hiển thị True Tone và dải màu rộng P3 giúp sản phẩm hiển thị tốt dưới mọi điều kiện ánh sáng môi trường. Nhờ đó, bạn sẽ thoải mái xem phim, chơi game, duyệt web, lướt web và làm mọi điều mình muốn.</p><h2><strong>Sức mạnh đỉnh cao bên trong thân máy nhỏ gọn</strong></h2><p>Việc mang trong mình chip A17 Pro trở thành chìa khóa để iPad Mini 2024 có được hiệu năng vượt trội, xử lý mọi tác vụ nhanh như chớp. Bộ vi xử lý này gồm 6 lõi CPU, 5 lõi GPU và 16 lõi Neural Engine, được thiết kế nhằm hỗ trợ tối ưu cho trải nghiệm Apple Intelligence. Apple còn đưa lên công nghệ dò tia tốc độ cao bằng phần cứng nhằm giúp iPad Mini thế hệ mới chạy mượt các dòng game AAA đòi hỏi cao về đồ họa, đáp ứng trọn vẹn từ nhu cầu sáng tạo đến làm việc của người dùng.</p><h2><strong>Trải nghiệm mới mẻ với Apple Intelligence</strong></h2><p>Điểm nổi bật trong trải nghiệm người dùng của iPad Mini 2024 nằm ở bộ công cụ Apple Intelligence. Đây là hệ thống trí tuệ cá nhân được thiết kế nhằm mang lại sự hỗ trợ tối ưu khi sử dụng. Trong đó, công cụ <i>Viết&nbsp;</i>giúp bạn hiệu đính văn bản nhanh chóng, chuyển đổi văn phong dễ dàng và thay đổi cách bạn giao tiếp. Ngoài ra, Apple Intelligence còn hỗ trợ biến bản phác thảo của bạn thành những hình ảnh đẹp mắt qua cơ chế <i>Đũa Phép Hình Ảnh.</i></p><p><br>&nbsp;</p>', 0, 1, '2025-10-04 08:56:38', '2025-10-16 10:05:51'),
(56, 26, 2, 5, 54, 'iPad Pro 11 inch M4 2024 Wifi 256GB', 'https://www.youtube.com/watch?v=BMxU16eGrs8&pp=ygUjaVBhZCBQcm8gMTEgaW5jaCBNNCAyMDI0IFdpZmkgMjU2R0I%3D', 27390000, 25000000, 157, '<p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/7/ipad-pro-m4-2024-1.jpg\" alt=\"iPad Pro M4 2024 1\"></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/7/ipad-pro-m4-2024-2.jpg\" alt=\"iPad Pro M4 2024 2\"></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/7/ipad-pro-m4-2024-3.jpg\" alt=\"iPad Pro M4 2024 3\"></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/7/ipad-pro-m4-2024-4.jpg\" alt=\"iPad Pro M4 2024 5\"></p><p><strong>iPad Pro 11 inch M4 2024 gây ấn tượng với thiết kế mỏng 5,3 mm siêu gọn gàng. Sản phẩm được trang bị màn hình Ultra Retina XDR với độ tương phản cực cao, đồng thời đánh dấu bước nhảy vọt về hiệu năng xử lý, sức mạnh đồ họa và hiệu suất AI khi sở hữu chip M4 thế hệ mới.</strong></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-0.jpg\" alt=\"iPad Pro M4 2024\"></p><h3><strong>Gọn nhẹ, sang trọng, linh hoạt và chuyên nghiệp</strong></h3><p>Với chất liệu khung vỏ 100% làm từ nhôm tái chế, iPad Pro M4 ghi điểm nhờ vẻ đẹp thanh lịch, tinh tế, gọn gàng và rất thân thiện với môi trường. Sản phẩm được chế tác để đảm bảo tính linh hoạt, giúp người dùng dễ dàng mang theo để sử dụng mọi nơi, mọi lúc.</p><p>Với iPad Pro 11 inch M4 2024, bạn sẽ có hai lựa chọn màu sắc là Đen Không Gian và Bạc. Cả hai tone màu đều mang hơi hướng sang trọng, trung tính, phù hợp với gu thẩm mỹ của đối tượng người dùng và phong cách chuyên nghiệp đặc trưng của dòng iPad Pro.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-2.jpg\" alt=\"Thiết kế iPad Pro M4 2024\"></p><h3><strong>Màn hình Ultra Retina XDR đỉnh cao về mọi mặt</strong></h3><p>Phiên bản 11 inch của <strong>iPad Pro M4 2024</strong> sở hữu màn hình Ultra Retina XDR với công nghệ OLED hai lớp đột phá. Không gian hiển thị này gây ấn tượng bởi tỷ lệ tương phản lên đến 2.000.000:1 và có thể đẩy độ sáng lên mức 1.600 nit khi tái hiện các nội dung HDR.</p><p>Sự kết hợp giữa những công nghệ hiển thị độc quyền của Apple như True Tone và ProMotion giúp màn hình iPad Pro M4 diễn đạt các khuôn hình với trải nghiệm thị giác rất dễ chịu, thân thiện và mượt mà. <i>Chế Độ Tham Chiếu</i> sẽ đáp ứng những đòi hỏi khắt khe nhất về màu sắc của người làm công việc đặc thù như thiết kế, đồ họa, dựng phim...</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-3.jpg\" alt=\"Màn hình iPad Pro M4 2024\"></p><h3><strong>Chip M4 với hiệu năng thay đổi cuộc chơi</strong></h3><p>Với việc đưa chip M4 lên iPad Pro 11 inch 2024, Apple đã thành công gói gọn nguồn sức mạnh trong mơ vào một thiết bị siêu mỏng, gọn nhẹ. Con chip mới cung cấp hiệu năng CPU gấp 1.5 lần và hiệu năng kết xuất chuyên nghiệp gấp 4 lần so với chip M2.</p><p>Thêm vào đó, hệ thống lõi Neural Engine là chìa khóa giúp iPad Pro M4 2024 xử lý mọi tác vụ AI với tốc độ đáng kinh ngạc. Khả năng thực hiện tới 38 ngàn tỷ phép tính mỗi giây khiến M4 có thể phản hồi cực nhanh những tác vụ nặng, trở thành công cụ lý tưởng cho giới sáng tạo nội dung. Kiến trúc GPU thế hệ mới kết hợp cùng công nghệ dò tia tốc độ cao bằng phần cứng giúp sản phẩm chơi game cực mượt mà.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-5.jpg\" alt=\"Hiệu năng iPad Pro M4 2024\"></p><h3><strong>Làm mọi tác vụ chuyên nghiệp trên iPadOS</strong></h3><p>Hệ điều hành iPadOS sẽ không chỉ phát huy trọn vẹn hiệu năng của chip M4 mà còn sở hữu giao diện thông minh, đẹp mắt, giúp người dùng đa nhiệm nhiều cửa sổ dễ dàng trên màn hình 11 inch của iPad Pro M4 2024. Bạn có thể vừa chạy các ứng dụng chuyên nghiệp, vừa tra cứu thông tin tài liệu trong lúc họp online.</p><p>Ngoài ra, mọi ứng dụng mà bạn cần trong quá trình làm việc đều được Apple tối ưu hóa để vận hành tốt nhất trên iPadOS như: Final Cut Pro, Octane X, Logic Pro, Freeform, Morpholio, Shapr3D, Procreate Dreams...</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-6.jpg\" alt=\"Hệ điều hành của iPad Pro M4 2024\"></p><h3><strong>Trổ tài cùng Apple Pencil Pro và Magic Keyboard</strong></h3><p>Bút Apple Pencil Pro sẽ giúp người dùng trổ tài viết vẽ, chủ động sáng tạo trên màn hình sắc nét của iPad Pro M4 11 inch 2024. Chiếc bút được thiết kế để phản hồi nhiều thao tác thú vị, bạn có thể xoay thân bút để kiểm soát nét viết, bút sẽ rung nhẹ để phản hồi tác vụ, mô phỏng vị trí trước khi người dùng đặt bút xuống màn hình, chạm hai lần để chuyển giữa các công cụ viết/vẽ.</p><p>Trong trường hợp bạn thường xuyên soạn thảo văn bản, sự hỗ trợ của Magic Keyboard là cực kỳ cần thiết. Ở trạng thái đóng lại, phụ kiện này sẽ bảo vệ iPad Pro M4 như một chiếc ốp lưng gọn nhẹ. Nhưng khi mở ra, Magic Keyboard sẽ hóa thân thành bàn phím trang nhã gọn gàng với phần kê tay bằng nhôm, có dãy phím chức năng và tích hợp kèm bàn di chuyên dụng&nbsp;để người dùng thoải mái soạn thảo, thao tác.</p><p><i>Lưu ý: Apple Pencil Pro và Magic Keyboard là phụ kiện riêng lẻ, không đi kèm trong hộp đựng sản phẩm.</i></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-7.jpg\" alt=\"Tiện ích trên iPad Pro M4 2024\"></p><h3><strong>Hệ thống quay chụp, micro và âm thanh cao cấp</strong></h3><p>iPad Pro M4 2024 sở hữu camera 12MP trên mặt lưng với góc quay chụp rộng, đi kèm đèn flash True Tone thích ứng. Trên mặt trước, sản phẩm được trang bị camera 12MP góc siêu rộng ở cạnh ngang, hỗ trợ video call cực tốt thông qua tính năng Trung Tâm Màn Hình.</p><p>Hệ thống hỗ trợ nghe gọi với micro chuẩn phòng thu sẽ truyền đạt rõ nét giọng nói của bạn trong quá trình liên lạc. Trong khi đó, 4 loa ngoài cao cấp không chỉ hỗ trợ tốt khi liên lạc trực tuyến mà còn là giải pháp giải trí tuyệt vời khi chúng ta thưởng thức nhạc số và phim ảnh online.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-pro-11-inch-m4-2024-wi-fi-8.jpg\" alt=\"Quay phim và chụp hình trên iPad Pro M4 2024\"></p>', 0, 1, '2025-10-04 09:04:24', '2025-10-16 10:05:50'),
(57, 26, 2, 5, 54, 'iPad Air 11 inch M2 2024 Wifi 512GB', 'https://www.youtube.com/shorts/4fJt7EUfPp4', 24990000, 21990000, 0, '<h2>Mô tả sản phẩm</h2><p><strong>Với kích cỡ 11 inch gọn gàng, </strong><a href=\"https://fptshop.com.vn/may-tinh-bang/ipad-air-11-m2-2024-wifi-128gb\"><strong>iPad Air M2 2024</strong></a><strong> cung cấp trải nghiệm tuyệt vời nhờ chip M2 mạnh mẽ, công nghệ hiển thị Liquid Retina sắc nét, khả năng xử lý AI tốc độ cao và trải nghiệm đồ họa mượt mà. Phiên bản bạn đang theo dõi sử dụng kết nối Wi-Fi và có dung lượng bộ nhớ 128GB với giá thành cực hấp dẫn.</strong></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-1.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 1\"></p><h3><strong>Màn hình tuyệt vời cho mọi trải nghiệm</strong></h3><p>Màn hình 11 inch của iPad Air M2 sử dụng công nghệ Liquid Retina độc quyền của Apple, có độ phân giải 1.640 x 2.360 pixels. Cách thiết kế tối giản mà thanh lịch với viền bao quanh rất mỏng giúp sản phẩm đạt tỉ lệ màn hình trên thân máy xấp xỉ 80,9%.</p><p>Sản phẩm đem lại trải nghiệm hình ảnh sắc nét, dịu mắt ở mọi điều kiện ánh sáng khác nhau nhờ sử dụng lớp phủ chống chói kết hợp cùng công nghệ True Tone – tự hiệu chỉnh tone màu sao cho phù hợp với môi trường bên ngoài. Nhờ dải màu rộng P3, iPad Air M2 2024 trình diễn trước mắt người dùng những khuôn hình lộng lẫy và đầy tính nghệ thuật.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-2.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 2\"></p><h3><strong>Chip M2 cực nhanh với hiệu năng đột phá</strong></h3><p>Bộ vi xử lý M2 bên trong iPad Air 2024 nâng cấp tốc độ CPU thêm 15%, tốc độ GPU thêm 25%, đồng thời gia tăng thêm 50% băng thông bộ nhớ so với chip trên iPad Air thế hệ trước. Đây là chìa khóa giúp iPad Air M2 đạt hiệu suất ấn tượng cả về các tác vụ làm việc, sáng tạo, sản xuất nội dung cũng như chơi game đồ họa nặng.</p><p>Đặc biệt, iPad Air M2 đã hóa thân thành thiết bị AI chuyên dụng nhờ sở hữu cấu trúc lõi Neural Engine gia tăng 40% tốc độ. Sản phẩm thể hiện tốc độ xử lý các tác vụ học máy cực nhanh, góp phần tối ưu các trải nghiệm đặc thù như: Tra Cứu Hình Ảnh, Nhấc Chủ Thể và Chụp Văn Bản Trực Tiếp. Apple cho biết hệ thống Neural Engine của sản phẩm có thể xử lý tới 15,8 ngàn tỉ phép tính mỗi giây.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-3.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 3\"></p><h3><strong>Trải nghiệm chuyên sâu cùng nền tảng iPadOS</strong></h3><p>iPad Air 11 inch M2 2024 sử dụng hệ điều hành iPadOS – nền tảng được thiết kế chuyên dụng cho các dòng iPad của Apple nhằm phát huy tối đa lợi thế màn hình lớn trên loạt sản phẩm này.</p><p>Với iPadOS, người dùng iPad Air M2 có thể đa nhiệm nhiều ứng dụng song song trên cùng một màn hình, hóa thân thành thiết bị làm việc chuyên dụng khi kết hợp cùng Magic Keyboard hoặc Apple Pencil. Trên iPadOS, bạn sẽ tìm thấy loạt ứng dụng hữu ích hỗ trợ tuyệt vời cho trải nghiệm sáng tạo, kết nối, duyệt web, chỉnh sửa ảnh và video.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-5.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 5\"></p><h3><strong>Thiết kế camera mới hỗ trợ tác vụ video call</strong></h3><p>Trên thế hệ iPad Air M2 2024, camera trước đã được chuyển từ cạnh dọc sang cạnh ngang của thiết bị, hỗ trợ tốt hơn khi chúng ta xoay ngang máy để video call, họp hành online và học tập trực tuyến. Camera selfie của thiết bị có góc quay cực rộng, đạt độ phân giải 12MP, đồng thời hỗ trợ tính năng Trung Tâm Màn Hình – luôn đảm bảo chủ thể nằm ở trung tâm của khuôn hình.</p><p>Camera sau góc rộng 12MP có khả năng chụp ảnh chất lượng cao, được trang bị tính năng chụp HDR thông minh và quay video 4K cực sắc nét, đem lại sự hỗ trợ tuyệt vời cho người dùng khi scan tài liệu trong quá trình làm việc.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-6.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 8\"></p><h3><strong>Kết nối nhanh nhạy, dễ dàng và thuận tiện</strong></h3><p>Phiên bản iPad Air M2 bạn đang quan tâm sử dụng kết nối Wi-Fi 6E, cho tốc độ tương tác cực nhanh – gấp đôi so với thế hệ cũ. Nhờ vậy, bạn có thể theo dõi video và tải xuống các file dữ liệu lớn với tốc độ cực nhanh, tối ưu trải nghiệm khi giải trí và trong công việc.</p><p>Ngoài ra, iPad Air 11 inch M2 2024 còn sử dụng công nghệ Bluetooth 5.3 – duy trì kết nối rất ổn định với tai nghe True Wireless và các thiết bị thông minh khác. Cổng kết nối USB-C giúp sản phẩm kết nối dễ dàng với màn hình ngoài, dock, ổ đĩa và camera, cho phép đồng bộ dữ liệu cực nhanh.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-8.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 9\"></p><h3><strong>Mỏng nhẹ, bền bỉ, thanh lịch và khác biệt</strong></h3><p>Sở hữu ngôn ngữ thiết kế tối giản với bộ khung vỏ rất mỏng, gọn gàng, khỏe vẻ thanh lịch và cơ động, iPad Air phiên bản 2024 được chế tác 100% từ chất liệu nhôm tái chế, không chỉ đảm bảo độ bền bỉ mà còn cực kỳ thân thiện với môi trường.</p><p>Với nhiều sắc màu mới mẻ và trẻ trung của iPad Air M2 2024 như Xanh Dương, Tím, Vàng Ánh Sao, và Xám Không Gian, bạn sẽ dễ dàng lựa chọn được phiên bản màu sắc mình yêu thích.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-9.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 10\"></p><h3><strong>Tương thích Apple Pencil Pro và Magic Keyboard</strong></h3><p>Trang bị thêm cho iPad Air M2 2024 của bạn những phụ kiện chính hãng do Apple phân phối như Apple Pencil Pro và Magic Keyboard, bạn có thể tối ưu trải nghiệm thiết bị lên mức cực kỳ chuyên nghiệp. Trong đó, Apple Pencil Pro có thể viết vẽ, ghi chú chuyên nghiệp và hỗ trợ các thao tác cử chỉ độc đáo như bóp và xoay thân bút, chạm hai lần vào thân bút, hiển thị vị trí phản hồi trước khi đặt bút xuống màn hình.</p><p>Về phần Magic Keyboard, bộ ốp lưng kiêm bàn phím này sẽ hỗ trợ soạn thảo mọi lúc mọi nơi, giúp người dùng gõ văn bản tiện lợi, chỉnh sửa bảng tính dễ dàng ở bất cứ nơi nào. Thiết kế trục đỡ độc đáo của Magic Keyboard cho phép người dùng mở iPad Air M2 ở góc độ lý tưởng cho việc quan sát hình ảnh và gõ phím.</p><p><i>Lưu ý: Apple Pencil Pro và Magic Keyboard là phụ kiện riêng lẻ, không đi kèm trong hộp đựng sản phẩm.</i></p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/11/4/ipad-air-11-inch-m2-2024-wi-fi-128gb-a.jpg\" alt=\"iPad Air 11 inch M2 2024 Wi-Fi 128GB 39\"></p>', 0, 1, '2025-10-07 12:28:07', '2025-10-18 06:38:23'),
(58, 26, 2, 5, 54, 'iPad Mini 7 2024 Wifi + Cellular 128GB', 'https://www.youtube.com/shorts/4fJt7EUfPp4', 24990000, 17990000, 8, '<h2>Mô tả sản phẩm</h2><p><strong>iPad Mini 2024 là sự kết hợp hoàn hảo giữa hiệu năng mạnh mẽ, thiết kế gọn nhẹ cùng bộ tính năng vượt trội. Sản phẩm đem lại trải nghiệm tuyệt vời nhờ chip Apple A17 Pro xuất sắc và bộ công cụ Apple Intelligence. Phiên bản bạn đang theo dõi hỗ trợ đồng thời cả Wi-Fi tốc độ cao và 5G nhanh nhạy, giúp bạn có phương án kết nối hiệu quả mọi lúc mọi nơi.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_e_b73f8682d1.jpg\" alt=\"ipad-mini-2024-e.jpg\"></figure><h2><strong>Thiết kế nhỏ gọn, linh hoạt và tinh tế</strong></h2><p>Kế thừa thiết kế nhỏ gọn đặc trưng làm nên tên tuổi dòng iPad Mini, phiên bản iPad Mini 2024 sở hữu thân máy gọn nhẹ, thanh lịch, dễ dàng mang theo mọi lúc mọi nơi. Khung vỏ sản phẩm được chế tác từ nhôm tái chế thân thiện với môi trường, mang lại cảm giác cầm nắm chắc chắn. Sản phẩm lên kệ với bốn màu sắc tinh tế: Xám Không Gian, Xanh Dương, Tím và Ánh Sao. Với kích thước gọn nhẹ, iPad Mini 2024 dễ dàng nằm gọn trong túi xách hoặc balo, sẵn sàng đồng hành cùng bạn trong mọi chuyến đi.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_5_92568570b3.jpg\" alt=\"ipad-mini-2024-5.jpg\"></figure><h2><strong>Trải nghiệm màn hình True Tone thân thiện</strong></h2><p>Về trải nghiệm hình ảnh, iPad Mini 2024 ghi điểm nhờ màn hình Liquid Retina 8.3 inch sống động, cung cấp trải nghiệm thị giác tốt cho mọi nhu cầu sử dụng. Sự kết hợp giữa công nghệ True Tone và dải màu rộng P3 giúp không gian hiển thị này diễn đạt mọi khung hình thân thiện, sắc nét, hỗ trợ người dùng tối ưu trong quá trình xem phim, chơi game, duyệt web và trải nghiệm nhiều ứng dụng khác một cách thoải mái.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_2_5fc724b87f.jpg\" alt=\"ipad-mini-2024-2.jpg\"></figure><h2><strong>Sức mạnh đỉnh cao từ chip xử lý A17 Pro</strong></h2><p>Ẩn trong thân máy nhỏ gọn của iPad Mini 2024 là chip A17 Pro – bộ vi xử lý mạnh mẽ do Apple thiết kế và sản xuất cung cấp hiệu năng vượt trội cho thiết bị. Con chip này quy tụ 6 lõi CPU, 5 lõi GPU cùng 16 lõi Neural Engine, mang lại khả năng xử lý nhanh chóng trong mọi tác vụ, từ làm việc, sáng tạo đến giải trí. Nhờ sự hỗ trợ từ công nghệ dò tia phần cứng tốc độ cao, chiếc tablet nhỏ gọn này là lựa chọn thú vị để bạn chơi các tựa game AAA đỉnh cao với đồ họa chân thực, mượt mà.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_6_f7c1514e03.jpg\" alt=\"ipad-mini-2024-6.jpg\"></figure><h2><strong>Apple Intelligence với loạt trải nghiệm mới mẻ</strong></h2><p>Điểm nhấn quan trọng trong trải nghiệm của iPad Mini 2024 nằm ở Apple Intelligence - bộ công cụ giúp người dùng thao tác nhanh chóng và tiện lợi hơn. Apple Intelligence bao gồm nhiều tính năng thú vị như <i>Viết</i>, giúp bạn chỉnh sửa và thay đổi văn phong của một văn bản dễ dàng. Bên cạnh đó, tính năng <i>Đũa Phép Hình Ảnh</i> có thể hô biến các bản phác thảo thành hình ảnh đẹp mắt, hỗ trợ tối ưu cho những người yêu thích sáng tạo.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_f_1c96c8a436.jpg\" alt=\"ipad-mini-2024-f.jpg\"></figure><h2><strong>Tô vẽ mọi ý tưởng của bạn qua Apple Pencil Pro</strong></h2><p>Thế hệ iPad Mini 2024 được thiết kế tương thích với mọi tính năng của Apple Pencil Pro. Với độ trễ thấp cùng khả năng phản hồi nhanh, chiếc bút hỗ trợ rất tốt cho quá trình viết, vẽ, tô màu... có thể nhận diện độ nghiêng chính xác như đang sử dụng bút thật. Các công cụ trực quan trên giao diện giúp người dùng thoải mái hiện thực hóa mọi ý tưởng sáng tạo, từ ghi chú nhanh, phác họa cho đến tạo ra các tác phẩm nghệ thuật chuyên nghiệp.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_g_6205147534.jpg\" alt=\"ipad-mini-2024-g.jpg\"></figure><h2><strong>iPadOS – Hệ điều hành linh hoạt và tiện dụng</strong></h2><p>Với phiên bản iPadOS mới nhất, iPad Mini 2024 cho phép người dùng dễ dàng tùy chỉnh bố cục màn hình chính theo nhu cầu cá nhân. Tính năng <i>Soạn Thảo Thông Minh</i> giúp chúng ta ghi chép bằng bút hiệu quả hơn. Trong khi đó, công cụ hỗ trợ giải toán và vẽ đồ thị bằng Apple Pencil hỗ trợ rất tốt trong quá trình học tập. iPadOS còn cho phép bạn biến tấu biểu tượng ứng dụng linh hoạt, bảo vệ quyền riêng tư tốt hơn và sắp xếp thư viện ảnh theo cách của riêng mình.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_a_8dc3304c34.jpg\" alt=\"ipad-mini-2024-a.jpg\"></figure><h2><strong>Hỗ trợ kết nối 5G linh hoạt, nhanh nhạy</strong></h2><p>Nhằm đảm bảo người dùng luôn có trải nghiệm mượt mà, iPad Mini 2024 được Apple tích hợp công nghệ Wi-Fi siêu nhanh, giúp duyệt web, xem phim và chơi game online không gián đoạn. Phiên bản bạn đang theo dõi có trang bị kèm công nghệ 5G, giúp duy trì kết nối nhanh nhạy mọi lúc mọi nơi và không cần phụ thuộc vào nguồn phát Wi-Fi.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_h_2abf1848a4.jpg\" alt=\"ipad-mini-2024-h.jpg\"></figure><h2><strong>Thỏa sức họp hành nhờ camera selfie Ultra Wide</strong></h2><p>Được trang bị camera selfie 12MP Ultra Wide, iPad Mini 2024 sẽ hỗ trợ bạn video call và họp trực tuyến với góc nhìn rộng mở. Tính năng <i>Trung Tâm Màn Hình</i> sẽ tự động dịch chuyển góc nhìn theo chuyển động người dùng, giúp bạn luôn giữ vị trí trung tâm trong các cuộc gọi.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_c_89f3a4505b.jpg\" alt=\"ipad-mini-2024-c.jpg\"></figure><h2><strong>Quay video 4K với camera 12MP sắc nét</strong></h2><p>Trên mặt lưng, iPad Mini 2024 được trang bị camera 12MP góc rộng với khả năng quay video 4K và chụp ảnh rõ nét. Chip A17 Pro giúp xử lý dữ liệu hình ảnh rất tốt, nhờ đó tối ưu hóa chất lượng ảnh chụp và video thành phẩm sau cùng. Đèn Flash True Tone hỗ trợ quay chụp trong điều kiện thiếu sáng, mang lại những bức ảnh tự nhiên và chân thực hơn.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/ipad_mini_2024_d_9c5aea9d91.jpg\" alt=\"ipad-mini-2024-d.jpg\"></figure>', 0, 1, '2025-10-07 12:35:06', '2025-10-18 06:38:24'),
(59, 26, 2, 5, 54, 'iPad mini 6 2021 8.3 inch WiFi 256GB', NULL, 12000000, 9000000, 148, '<h2>Mô tả sản phẩm</h2><p><strong>Sức mạnh khủng khiếp trong một thiết kế nhỏ gọn đáng yêu, iPad Mini 6 2021 đánh dấu sự trở lại mạnh mẽ của dòng iPad mini luôn được người dùng yêu thích, nơi bạn được tận hưởng ma thuật bên trong chiếc máy tính bảng tuyệt đẹp, hiệu suất đỉnh cao và hỗ trợ bút cảm ứng Apple Pencil.</strong></p><p><strong><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-2.jpg\" alt=\"iPad mini 6 2021\"></strong></p><h3><strong>Thiết kế toàn màn hình, trải nghiệm hoàn toàn khác biệt</strong></h3><p>Vẻ đẹp của iPad mini 6 chắc chắn sẽ mê hoặc bạn ngay từ cái nhìn đầu tiên. Chiếc <a href=\"https://fptshop.com.vn/may-tinh-bang\">máy tính bảng</a> từ Apple giờ đây được thiết kế tràn cạnh với viền màn hình mỏng, các góc bo tròn thanh lịch và phần khung phẳng sang trọng.</p><p>Cảm biến vân tay Touch ID đã được tích hợp vào phím nguồn cạnh trên, giúp bạn xác thực nhanh chóng, dễ dàng và an toàn. Trên hết, iPad mini hoàn toàn vừa vặn trong tay, là một sản phẩm thực sự di động, đa năng và mạnh mẽ.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-13.jpg\" alt=\"thiết kế iPad mini 6 2021\"></p><h3><strong>4 màu thời thượng</strong></h3><p>Không chỉ thiết kế đẹp, iPad mini 6 còn mang tới cho bạn 4 lựa chọn màu sắc thời trang. Các phiên bản màu Xám, Hồng, Tím và Bạc cùng ngôn ngữ thiết kế phẳng tạo nên một sản phẩm công nghệ tuyệt vời mà ai cũng muốn sở hữu.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-16.jpg\" alt=\"màu sắc iPad mini 6 2021\"></p><h3><strong>Màn hình sắc nét, màu sắc chân thực</strong></h3><p>Màn hình Liquid Retina 8.3 inch trên iPad mini 6 2021 hiển thị nội dung sắc nét, sống động và chân thực. Công nghệ màu sắc thích ứng True Tone, dải màu rộng P3 giúp văn bản chi tiết, màu sắc chính xác dù bạn đang ở trong bất cứ môi trường nào.</p><p>Độ sáng tối đa của màn hình iPad mini 6 lên tới 500 nits, hiển thị rõ ngay cả khi sử dụng dưới trời nắng. Kích thước màn hình 8.3 inch cũng là lớn hơn các thế hệ iPad mini trước đây, cho bạn tận hưởng nhiều nội dung hơn trên một chiếc <a href=\"https://fptshop.com.vn/may-tinh-bang/apple-ipad\">iPad</a>&nbsp;nhỏ gọn.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-15.jpg\" alt=\"màn hình iPad mini 6 2021\"></p><h3><strong>Sức mạnh vượt xa trí tưởng tượng của bạn</strong></h3><p>Bộ vi xử lý <a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tong-hop-thong-tin-chip-apple-a15-bionic-cua-iphone-13-137039\">Apple A15 Bionic</a> mới nhất biến iPad mini 6 thành chiếc máy tính bảng mạnh mẽ hàng đầu hiện nay. Cho dù bạn đang chỉnh sửa ảnh, biên tập video hay chơi những game đồ họa đỉnh cao, iPad mini 6 cũng đều xử lý một cách mượt mà.</p><p>Thoải mái chạy những ứng dụng chuyên nghiệp, tự do sáng tạo, kể cả với các phần mềm thực tế tăng cường AR đòi hỏi CPU và GPU hiệu năng cao, iPad mini 6&nbsp;tập hợp những gì mạnh mẽ nhất trong một sản phẩm di động.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-6.jpg\" alt=\"hiệu năng iPad mini 6 2021\"></p><h3><strong>Thời lượng pin cả ngày</strong></h3><p>iPad mini 6 có thời gian sử dụng liên tục khoảng 10 giờ đồng hồ, nghĩa là chiếc máy tính bảng này có thể đồng hành cùng bạn trọn vẹn suốt cả ngày. Hãy làm việc, sáng tạo, chơi game giải trí hay làm bất cứ điều gì bạn thích, iPad mini 6 luôn tràn đầy năng lượng.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-9.jpg\" alt=\"dung lượng pin iPad mini 6 2021\"></p><h3><strong>Kết nối siêu tốc</strong></h3><p>Kết nối không dây tốc độ cao là yếu tố quan trọng để hoàn thành công việc nhanh chóng. Với chuẩn mạng <a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tat-tan-tat-ve-wi-fi-6-cong-nghe-mang-wi-fi-tien-tien-sap-duoc-su-dung-rong-rai-79110\">Wifi 6</a> mới nhất trên iPad mini 6, tốc độ mạng luôn đảm bảo nhanh và ổn định, phạm vi thu sóng rộng. Bên cạnh kết nối không dây, iPad mini 6 2021 còn sử dụng cổng kết nối USB-C phổ biến và đa năng, truyền dữ liệu siêu tốc cùng khả năng kết nối đa năng bậc nhất.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-19.jpg\" alt=\"kết nối iPad mini 6 2021\"></p><h3><strong>Camera FaceTime góc siêu rộng, chất lượng họp trực tuyến tối ưu</strong></h3><p>Những cuộc gọi video hay các buổi họp trực tuyến đang ngày càng diễn ra thường xuyên hơn. iPad mini 6 sở hữu camera trước độ phân giải lên tới 12MP, góc siêu rộng, cho hình ảnh sắc nét và khung hình xuất hiện nhiều nội dung hơn.</p><p>Đặc biệt, tính năng sân khấu trung tâm khiến trải nghiệm gọi video trở nên hấp dẫn hơn bao giờ hết. Khi bạn di chuyển, camera sẽ tự động điều chỉnh để bạn luôn đứng giữa khung hình; khi có thêm người tham gia cuộc gọi, chế độ xem tự động phóng to để ai cũng đều có mặt.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-20.jpg\" alt=\"camera iPad mini 6 2021\"></p><h3><strong>Chụp ảnh và quay video sắc nét</strong></h3><p>Camera sau iPad mini 6 có độ phân giải cao 12MP, khẩu độ lớn f/1.8 cùng bộ xử lý hình ảnh ISP mới trong chip A15 Bionic mang đến khả năng chụp ảnh và quay video tuyệt vời. Bạn có thể chụp ảnh Smart HDR 3, tái tạo màu sắc, ánh sáng, độ tương phản và màu da người chân thực đáng kinh ngạc.</p><p>Nếu cần lưu lại khoảnh khắc, những đoạn video 4K 60fps mượt mà đủ chất lượng để phát trên TV hay màn chiếu lớn mà hình ảnh vẫn đầy đủ chi tiết. iPad mini 6&nbsp;còn hỗ trợ đèn flash True Tone, có thể chụp ảnh hoặc quét tài liệu ngay cả trong điều kiện không có ánh sáng.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-7.jpg\" alt=\"chụp ảnh iPad mini 6 2021\"></p><h3><strong>Tương thích bút cảm ứng Apple Pencil</strong></h3><p>Khả năng sáng tạo không giới hạn khi bạn sử dụng bút cảm ứng Apple Pencil trên iPad mini 6. Với Apple Pencil, iPad mini 6&nbsp;có thể trở thành một cuốn sổ tay thông minh, để bạn phác thảo ý tưởng và ghi chú một cách dễ dàng.</p><p>Viết, vẽ, đánh dấu, chỉnh sửa và chia sẻ, tất cả đều trở nên vô cùng tiện lợi. Đặc biệt, Apple Pencil còn có thể gắn từ tính và sạc không dây ngay trên iPad mini rất gọn gàng.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-18.jpg\" alt=\"bút cảm ứng iPad mini 6 2021\"></p><p><i>Lưu ý: Apple Pencil là phụ kiện bán rời, không đi kèm iPad mini 6 8.3 inch 2021.</i></p><h3><strong>Kho ứng dụng phong phú trên hệ điều hành iPadOS</strong></h3><p>Hệ điều hành iPadOS dành riêng cho iPad mini 6 mang đến sự tương thích hoàn hảo, giúp bạn thực hiện nhiều việc cùng lúc một cách dễ dàng. Chia đôi màn hình, cử chỉ đa chạm, đa nhiệm trực quan và hơn thế nữa sẽ khiến bạn luôn cảm thấy thoải mái khi sử dụng iPad mini 6. Bạn có thể tìm thấy mọi ứng dụng mình cần trên kho ứng dụng Apple Store dành cho iPad.</p><p><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-12.jpg\" alt=\"hệ điều hành của iPad mini 6 2021\"></p>', 1, 1, '2025-10-07 12:37:59', '2025-12-14 04:09:09');
INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(60, 26, 2, 5, 54, 'iPad Mini 7 2024 Wifi + Cellular 128GB', 'https://www.youtube.com/shorts/4fJt7EUfPp4', 12000000, 5000000, 0, '<p>Mô tả sản phẩm<br>Sức mạnh khủng khiếp trong một thiết kế nhỏ gọn đáng yêu, iPad Mini 6 2021 đánh dấu sự trở lại mạnh mẽ của dòng iPad mini luôn được người dùng yêu thích, nơi bạn được tận hưởng ma thuật bên trong chiếc máy tính bảng tuyệt đẹp, hiệu suất đỉnh cao và hỗ trợ bút cảm ứng Apple Pencil.</p><p>iPad mini 6 2021</p><p>Thiết kế toàn màn hình, trải nghiệm hoàn toàn khác biệt<br>Vẻ đẹp của iPad mini 6 chắc chắn sẽ mê hoặc bạn ngay từ cái nhìn đầu tiên. Chiếc máy tính bảng từ Apple giờ đây được thiết kế tràn cạnh với viền màn hình mỏng, các góc bo tròn thanh lịch và phần khung phẳng sang trọng.</p><p>Cảm biến vân tay Touch ID đã được tích hợp vào phím nguồn cạnh trên, giúp bạn xác thực nhanh chóng, dễ dàng và an toàn. Trên hết, iPad mini hoàn toàn vừa vặn trong tay, là một sản phẩm thực sự di động, đa năng và mạnh mẽ.</p><p>thiết kế iPad mini 6 2021</p><p>4 màu thời thượng<br>Không chỉ thiết kế đẹp, iPad mini 6 còn mang tới cho bạn 4 lựa chọn màu sắc thời trang. Các phiên bản màu Xám, Hồng, Tím và Bạc cùng ngôn ngữ thiết kế phẳng tạo nên một sản phẩm công nghệ tuyệt vời mà ai cũng muốn sở hữu.</p><p>màu sắc iPad mini 6 2021</p><p>Màn hình sắc nét, màu sắc chân thực<br>Màn hình Liquid Retina 8.3 inch trên iPad mini 6 2021 hiển thị nội dung sắc nét, sống động và chân thực. Công nghệ màu sắc thích ứng True Tone, dải màu rộng P3 giúp văn bản chi tiết, màu sắc chính xác dù bạn đang ở trong bất cứ môi trường nào.</p><p>Độ sáng tối đa của màn hình iPad mini 6 lên tới 500 nits, hiển thị rõ ngay cả khi sử dụng dưới trời nắng. Kích thước màn hình 8.3 inch cũng là lớn hơn các thế hệ iPad mini trước đây, cho bạn tận hưởng nhiều nội dung hơn trên một chiếc iPad nhỏ gọn.</p><p>màn hình iPad mini 6 2021</p><p>Sức mạnh vượt xa trí tưởng tượng của bạn<br>Bộ vi xử lý Apple A15 Bionic mới nhất biến iPad mini 6 thành chiếc máy tính bảng mạnh mẽ hàng đầu hiện nay. Cho dù bạn đang chỉnh sửa ảnh, biên tập video hay chơi những game đồ họa đỉnh cao, iPad mini 6 cũng đều xử lý một cách mượt mà.</p><p>Thoải mái chạy những ứng dụng chuyên nghiệp, tự do sáng tạo, kể cả với các phần mềm thực tế tăng cường AR đòi hỏi CPU và GPU hiệu năng cao, iPad mini 6 tập hợp những gì mạnh mẽ nhất trong một sản phẩm di động.</p><p>hiệu năng iPad mini 6 2021</p><p>Thời lượng pin cả ngày<br>iPad mini 6 có thời gian sử dụng liên tục khoảng 10 giờ đồng hồ, nghĩa là chiếc máy tính bảng này có thể đồng hành cùng bạn trọn vẹn suốt cả ngày. Hãy làm việc, sáng tạo, chơi game giải trí hay làm bất cứ điều gì bạn thích, iPad mini 6 luôn tràn đầy năng lượng.</p><p>dung lượng pin iPad mini 6 2021</p><p>Kết nối siêu tốc<br>Kết nối không dây tốc độ cao là yếu tố quan trọng để hoàn thành công việc nhanh chóng. Với chuẩn mạng Wifi 6 mới nhất trên iPad mini 6, tốc độ mạng luôn đảm bảo nhanh và ổn định, phạm vi thu sóng rộng. Bên cạnh kết nối không dây, iPad mini 6 2021 còn sử dụng cổng kết nối USB-C phổ biến và đa năng, truyền dữ liệu siêu tốc cùng khả năng kết nối đa năng bậc nhất.</p><p>kết nối iPad mini 6 2021</p><p>Camera FaceTime góc siêu rộng, chất lượng họp trực tuyến tối ưu<br>Những cuộc gọi video hay các buổi họp trực tuyến đang ngày càng diễn ra thường xuyên hơn. iPad mini 6 sở hữu camera trước độ phân giải lên tới 12MP, góc siêu rộng, cho hình ảnh sắc nét và khung hình xuất hiện nhiều nội dung hơn.</p><p>Đặc biệt, tính năng sân khấu trung tâm khiến trải nghiệm gọi video trở nên hấp dẫn hơn bao giờ hết. Khi bạn di chuyển, camera sẽ tự động điều chỉnh để bạn luôn đứng giữa khung hình; khi có thêm người tham gia cuộc gọi, chế độ xem tự động phóng to để ai cũng đều có mặt.</p><p>camera iPad mini 6 2021</p><p>Chụp ảnh và quay video sắc nét<br>Camera sau iPad mini 6 có độ phân giải cao 12MP, khẩu độ lớn f/1.8 cùng bộ xử lý hình ảnh ISP mới trong chip A15 Bionic mang đến khả năng chụp ảnh và quay video tuyệt vời. Bạn có thể chụp ảnh Smart HDR 3, tái tạo màu sắc, ánh sáng, độ tương phản và màu da người chân thực đáng kinh ngạc.</p><p>Nếu cần lưu lại khoảnh khắc, những đoạn video 4K 60fps mượt mà đủ chất lượng để phát trên TV hay màn chiếu lớn mà hình ảnh vẫn đầy đủ chi tiết. iPad mini 6 còn hỗ trợ đèn flash True Tone, có thể chụp ảnh hoặc quét tài liệu ngay cả trong điều kiện không có ánh sáng.</p><p>chụp ảnh iPad mini 6 2021</p><p>Tương thích bút cảm ứng Apple Pencil<br>Khả năng sáng tạo không giới hạn khi bạn sử dụng bút cảm ứng Apple Pencil trên iPad mini 6. Với Apple Pencil, iPad mini 6 có thể trở thành một cuốn sổ tay thông minh, để bạn phác thảo ý tưởng và ghi chú một cách dễ dàng.</p><p>Viết, vẽ, đánh dấu, chỉnh sửa và chia sẻ, tất cả đều trở nên vô cùng tiện lợi. Đặc biệt, Apple Pencil còn có thể gắn từ tính và sạc không dây ngay trên iPad mini rất gọn gàng.</p><p>bút cảm ứng iPad mini 6 2021</p><p>Lưu ý: Apple Pencil là phụ kiện bán rời, không đi kèm iPad mini 6 8.3 inch 2021.</p><p>Kho ứng dụng phong phú trên hệ điều hành iPadOS<br>Hệ điều hành iPadOS dành riêng cho iPad mini 6 mang đến sự tương thích hoàn hảo, giúp bạn thực hiện nhiều việc cùng lúc một cách dễ dàng. Chia đôi màn hình, cử chỉ đa chạm, đa nhiệm trực quan và hơn thế nữa sẽ khiến bạn luôn cảm thấy thoải mái khi sử dụng iPad mini 6. Bạn có thể tìm thấy mọi ứng dụng mình cần trên kho ứng dụng Apple Store dành cho iPad.</p><p>hệ điều hành của iPad mini 6 2021</p>', 0, 1, '2025-10-07 13:23:16', '2025-10-18 06:38:25'),
(62, 1, 2, 7, 1, 'Màn Hình Gaming SAMSUNG Odyssey G9 G95C LS49CG954EEXXV (49 inch - VA - DQHD - 1ms - 240Hz - Cong)', 'https://www.anphatpc.com.vn/ban-phim-co-darkflash-df98-interstellar-wireless-yellow-switch.html', 29999999, 23999999, 21, '<p>Kiểu dáng màn hình: Cong (1000R)</p><p>Tỉ lệ khung hình: 32:9</p><p>Kích thước mặc định: 49 inch</p><p>Công nghệ tấm nền: VA</p><p>Phân giải điểm ảnh: DQHD - 5,120 x 1,440</p><p>Độ sáng hiển thị: 450cd/㎡</p><p>Tốc độ làm mới: Max 240Hz</p><p>Thời gian đáp ứng: 1ms(GTG)</p><p>Chỉ số màu sắc: Max 1.07B</p><p>Hỗ trợ tiêu chuẩn: DisplayHDR 1000, HDR10+ Gaming , Auto Source Switch+ , vesa 100x100mm</p><p>Cổng kết nối: 2x HDMI (2.1), 1x DisplayPort (1.4), 1 x Headphone, USB Hub 3.0Phụ kiện: Dây nguồn, Dây DP, Dây HDMI</p><p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2><strong>Màn Hình Gaming SAMSUNG Odyssey G9 G95C LS49CG954EEXXV: Trải Nghiệm Chơi Game Siêu Việt</strong></h2><p><a href=\"https://www.anphatpc.com.vn/man-hinh-gaming-samsung-odyssey-g9-g95c-ls49cg954eexxv.html\">Màn hình gaming SAMSUNG Odyssey G9 G95C</a>&nbsp;là lựa chọn hoàn hảo cho những game thủ chuyên nghiệp và người dùng yêu thích trải nghiệm giải trí đỉnh cao. Với thiết kế cong độc đáo và những công nghệ tiên tiến nhất,&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh.html-1\">màn hình</a> này mang đến trải nghiệm hình ảnh tuyệt vời, vượt xa mọi giới hạn. Hãy cùng khám phá những đặc điểm nổi bật và điểm nhấn của sản phẩm này:</p><h3><strong><img src=\"https://anphat.com.vn/media/lib/10-07-2024/manhinh3.png\" alt=\"\"></strong></h3><h3><strong>1. Màn Hình Siêu Rộng 49 Inch</strong></h3><ul><li><strong>Kích thước lớn 49 inch</strong>: Màn hình siêu rộng 49 inch với tỉ lệ 32:9 mang lại không gian hiển thị rộng rãi, giúp bạn đắm chìm trong thế giới game và giải trí.</li><li><strong>Độ cong ấn tượng</strong>: Thiết kế cong 1000R ôm sát tầm mắt, mang lại cảm giác bao trùm và tăng cường trải nghiệm thị giác, giúp bạn tập trung hơn và giảm mỏi mắt.</li></ul><h3><strong><img src=\"https://anphat.com.vn/media/lib/10-07-2024/manhinh2.png\" alt=\"\"></strong></h3><h3><strong>2. Chất Lượng Hình Ảnh Vượt Trội</strong></h3><ul><li><strong>Độ phân giải DQHD</strong>: Với độ phân giải DQHD (5120 x 1440), màn hình mang lại hình ảnh sắc nét và chi tiết, giúp bạn tận hưởng mọi khung hình với độ rõ nét cao nhất.</li><li><strong>Tấm nền VA cao cấp</strong>: Tấm nền VA chất lượng cao cho màu sắc chân thực, độ tương phản cao và góc nhìn rộng, giúp bạn có được trải nghiệm hình ảnh tốt nhất từ mọi góc độ.</li></ul><h3><strong>3. Hiệu Suất Chơi Game Tối Ưu</strong></h3><ul><li><strong>Tốc độ làm mới 240Hz</strong>: Tốc độ làm mới siêu nhanh 240Hz giảm thiểu hiện tượng giật lag và xé hình, mang lại trải nghiệm chơi game mượt mà và sắc nét.</li><li><strong>Thời gian phản hồi 1ms</strong>: Thời gian phản hồi nhanh chóng 1ms (GTG) giúp giảm thiểu độ trễ, đảm bảo mọi thao tác của bạn được thực hiện ngay lập tức.</li></ul><h3><strong>4. Công Nghệ Đồng Bộ Hóa Tối Ưu</strong></h3><ul><li><strong>NVIDIA G-SYNC</strong>: Hỗ trợ công nghệ NVIDIA G-SYNC, màn hình giúp loại bỏ hiện tượng xé hình, giảm thiểu giật lag và mang lại trải nghiệm chơi game mượt mà hơn.</li><li><strong>AMD FreeSync Premium Pro</strong>: Tương thích với AMD FreeSync Premium Pro, đảm bảo hình ảnh luôn mượt mà và không bị giật lag khi chơi game.</li></ul><h3><strong>5. Thiết Kế Hiện Đại Và Đa Dụng</strong></h3><ul><li><strong>Thiết kế đậm chất gaming</strong>: Màn hình có thiết kế mạnh mẽ, đậm chất gaming với các chi tiết tinh tế và đèn LED RGB phía sau, tạo nên không gian chơi game đầy phong cách.</li><li><strong>Chân đế linh hoạt</strong>: Chân đế có thể điều chỉnh độ cao, nghiêng và xoay, giúp bạn dễ dàng tùy chỉnh góc nhìn sao cho thoải mái nhất.</li></ul><h3><strong><img src=\"https://anphat.com.vn/media/lib/10-07-2024/manhinh1.png\" alt=\"\"></strong></h3><h3><strong>6. Kết Nối Đa Dạng Và Tiện Lợi</strong></h3><ul><li><strong>Cổng kết nối đa dạng</strong>: Được trang bị các cổng kết nối hiện đại như HDMI, DisplayPort và USB, giúp bạn dễ dàng kết nối với các thiết bị ngoại vi và máy tính.</li><li><strong>Hub USB</strong>: Tích hợp hub USB tiện lợi, giúp bạn dễ dàng kết nối và sạc các thiết bị ngoại vi như bàn phím, chuột và điện thoại.</li></ul><h3><strong>Kết Luận</strong></h3><p>Màn Hình Gaming SAMSUNG Odyssey G9 G95C LS49CG954EEXXV là sự kết hợp hoàn hảo giữa công nghệ tiên tiến và thiết kế đỉnh cao, mang lại trải nghiệm chơi game và giải trí tuyệt vời. Với kích thước siêu rộng, độ cong ấn tượng, chất lượng hình ảnh vượt trội và hiệu suất chơi game tối ưu, đây chính là màn hình lý tưởng cho những ai đam mê công nghệ và game.</p><p>Đặt hàng ngay hôm nay để trải nghiệm những công nghệ đỉnh cao mà màn hình SAMSUNG Odyssey G9 G95C mang lại!</p>', 0, 1, '2025-10-15 02:59:09', '2025-10-18 06:38:26'),
(63, 1, 2, 7, 1, 'Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV (34 inch - OLED - UWQHD - 175Hz - 0.03ms - Cong)', 'https://www.youtube.com/shorts/C0595nBlQ7Q', 3000000, 15000000, 96, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h3>Màn Hình Gaming</h3><h2>SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV</h2><p><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_1.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></p><p><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_2.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></p><p>SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV là màn hình gaming cao cấp kết hợp giữa công nghệ tấm nền OLED tiên tiến và thiết kế hiện đại. Với hiệu năng vượt trội, hình ảnh sắc nét và các tính năng tối ưu dành riêng cho game thủ, màn hình này là lựa chọn hoàn hảo cho cả chơi game lẫn giải trí.</p><p>&nbsp;</p><p><strong>Hình Ảnh Sắc Nét</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_3.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></strong></p><p>Màn hình 34 inch với độ phân giải Ultra WQHD (3440x1440) mang đến trải nghiệm hình ảnh chi tiết và sắc nét vượt trội. Công nghệ OLED không chỉ đảm bảo độ tương phản cao và màu đen sâu mà còn tái tạo màu sắc chân thực, rực rỡ ở mọi góc nhìn. Đây là lợi thế lớn cho các tựa game đồ họa cao hoặc các công việc sáng tạo nội dung.</p><p>&nbsp;</p><p><strong>Chống Chói Hiệu Quả</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_4.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></strong></p><p>Tấm nền OLED được trang bị lớp phủ chống chói, giúp giảm thiểu hiện tượng phản chiếu ánh sáng từ môi trường xung quanh. Điều này mang lại trải nghiệm thoải mái hơn khi chơi game hoặc làm việc dưới ánh sáng mạnh.</p><p>&nbsp;</p><p><strong>Đỉnh Cao Hiệu Suất</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_5.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></strong></p><p>Với tốc độ phản hồi cực nhanh chỉ 0.03ms (GtG) và tần số quét lên đến 175Hz, màn hình này mang lại trải nghiệm chơi game mượt mà, không bị bóng mờ hay giật hình. Đây là lợi thế lớn trong các tựa game yêu cầu phản xạ nhanh như FPS, MOBA hay đua xe, giúp bạn luôn chiếm ưu thế trong mọi trận đấu.</p><p>&nbsp;</p><p><strong>Chơi Không Xé Hình</strong></p><p>Màn hình hỗ trợ AMD FreeSync Premium Pro, giúp đồng bộ hóa tốc độ khung hình giữa GPU và màn hình, loại bỏ hiện tượng xé hình (screen tearing) và giật hình (stuttering). Công nghệ này đảm bảo trải nghiệm chơi game mượt mà, ổn định, đặc biệt là khi chơi các tựa game đồ họa cao.</p><p>&nbsp;</p><p><strong>Tất Cả Trong Một</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_6.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></strong></p><p>&nbsp;</p><p>Gaming Hub tích hợp trên màn hình cho phép bạn truy cập nhanh các nền tảng chơi game trực tuyến, ứng dụng streaming và nội dung giải trí mà không cần kết nối với PC hoặc console. Đây là tính năng tiện lợi, giúp bạn tận hưởng mọi nội dung yêu thích chỉ với vài thao tác đơn giản.</p><p>&nbsp;</p><p><strong>Âm Thanh Đỉnh Chóp</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_7.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></strong></p><p>Với công nghệ Active Voice Amplifier Pro, màn hình tự động điều chỉnh âm thanh để tăng cường giọng nói và giảm thiểu tiếng ồn xung quanh. Điều này mang lại trải nghiệm âm thanh rõ ràng hơn, đặc biệt hữu ích khi bạn chơi game, xem phim hoặc họp trực tuyến.</p><p>&nbsp;</p><p><strong>Kết Nối Đa Dạng</strong></p><p>Màn hình SAMSUNG Odyssey OLED G8 được trang bị đầy đủ các cổng kết nối hiện đại, bao gồm:</p><p><br>HDMI</p><p>DisplayPort (DP)</p><p>USB Downstream</p><p>USB Upstream</p><p>Điều này giúp bạn dễ dàng kết nối với các thiết bị ngoại vi như PC, laptop, console hoặc các thiết bị lưu trữ, mang lại sự linh hoạt tối đa trong quá trình sử dụng.</p><p>&nbsp;</p><p><strong>Kết Luận</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_8.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></strong></p><p><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_9.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></p><p><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_10.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></p><p><img src=\"https://anphat.com.vn/media/lib/26-12-2024/samsung_odyssey_oled_g8_g85sd_11.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV\"></p><p>SAMSUNG Odyssey OLED G8 G85SD LS34DG850SEXXV không chỉ là một màn hình gaming mà còn là một trung tâm giải trí cao cấp với hàng loạt công nghệ tiên tiến. Từ tấm nền OLED Ultra WQHD sắc nét, tốc độ phản hồi siêu nhanh, tần số quét cao cho đến các tính năng như Gaming Hub và Active Voice Amplifier Pro, màn hình này đáp ứng mọi nhu cầu từ chơi game chuyên nghiệp đến giải trí đa phương tiện. Hãy nâng tầm trải nghiệm của bạn với SAMSUNG Odyssey OLED G8 – sự lựa chọn hàng đầu cho game thủ và người dùng yêu công nghệ!</p>', 0, 1, '2025-10-15 03:16:29', '2025-11-28 03:16:53'),
(64, 1, 2, 7, 1, 'Màn Hình thông minh SAMSUNG M7 M70D LS43DM702UEXXV (43 inch - VA - 4K - 4ms - 60Hz)', 'https://www.youtube.com/shorts/eBL6-2hviCY', 13999999, 7999999, 30, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2><strong>Màn Hình SAMSUNG M7 M70D LS43DM702UEXXV</strong></h2><p><a href=\"https://www.anphatpc.com.vn/man-hinh-samsung-m7-m70d-ls43dm702uexxv.html\"><strong>Màn hình thông minh SAMSUNG M7 M70D LS43DM702UEXXV</strong></a>&nbsp;mang đến sự kết hợp hoàn hảo giữa giải trí và công việc với kích thước lớn 43 inch và độ phân giải 4K ấn tượng. Với thiết kế phẳng và công nghệ tiên tiến,&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh.html-1\">màn hình</a> này không chỉ phục vụ tốt cho nhu cầu làm việc mà còn nâng cao trải nghiệm giải trí với chất lượng hình ảnh tuyệt vời.</p><p><img src=\"https://anphat.com.vn/media/lib/14-08-2024/man-hinh-samsung-m7-m70d-ls43dm702uexxv-0.jpg\" alt=\"\"></p><h3><strong>Thiết Kế Tinh Tế Với Kích Thước Lớn 43 Inch</strong></h3><p><strong>Màn hình SAMSUNG M7 M70D LS43DM702UEXXV</strong> sở hữu thiết kế phẳng, kích thước lớn 43 inch và tỉ lệ khung hình 16:9, mang lại không gian hiển thị rộng rãi, lý tưởng cho các tác vụ đa nhiệm, làm việc với tài liệu lớn, hoặc trải nghiệm giải trí như xem phim và chơi game. Với kích thước lớn này, bạn có thể dễ dàng chia màn hình thành nhiều cửa sổ, giúp tối ưu hóa hiệu quả làm việc và giải trí.</p><p><img src=\"https://anphat.com.vn/media/lib/14-08-2024/man-hinh-samsung-m7-m70d-ls43dm702uexxv-3.jpg\" alt=\"\"></p><h3><strong>Chất Lượng Hình Ảnh 4K Sắc Nét</strong></h3><p>Được trang bị công nghệ tấm nền VA và độ phân giải 4K (3,840 x 2,160), màn hình <strong>SAMSUNG M7 M70D</strong> cung cấp chất lượng hình ảnh sắc nét, chi tiết đến từng điểm ảnh. Độ sáng 250 cd/㎡ kết hợp với khả năng hiển thị 1 tỷ màu sắc và độ phủ màu 72% NTSC giúp hình ảnh trở nên sống động và chân thực. Điều này đặc biệt hữu ích cho các công việc liên quan đến đồ họa và giải trí với chất lượng cao.</p><p><img src=\"https://anphat.com.vn/media/lib/14-08-2024/man-hinh-samsung-m7-m70d-ls43dm702uexxv-2.jpg\" alt=\"\"></p><h3><strong>Tính Năng HDR10 và Adaptive Picture</strong></h3><p>Với hỗ trợ HDR10, màn hình này mang lại dải màu rộng hơn và độ tương phản tốt hơn, giúp hiển thị các nội dung HDR với chất lượng tối ưu. Công nghệ Adaptive Picture tự động điều chỉnh độ sáng và độ tương phản dựa trên điều kiện ánh sáng xung quanh, giúp bảo vệ mắt và đảm bảo trải nghiệm xem tốt nhất trong mọi hoàn cảnh.</p><h3><strong>Kết Nối Linh Hoạt Và Tiện Lợi</strong></h3><p><strong>Màn hình SAMSUNG M7 M70D LS43DM702UEXXV</strong> được trang bị đa dạng các cổng kết nối, bao gồm 2 cổng HDMI 2.0, 1 cổng USB-C 65W hỗ trợ truyền dữ liệu và sạc nhanh, cùng với 3 cổng USB Hub 2.0, giúp bạn dễ dàng kết nối với nhiều thiết bị ngoại vi như máy tính, laptop, điện thoại di động và các thiết bị thông minh khác. Điều này mang đến sự tiện lợi vượt trội cho cả công việc và giải trí.</p><p><img src=\"https://anphat.com.vn/media/lib/14-08-2024/man-hinh-samsung-m7-m70d-ls43dm702uexxv-1.jpg\" alt=\"\"></p><h3><strong>Tính Năng Chơi Game Nâng Cao</strong></h3><p>Đối với các game thủ, màn hình này tích hợp tính năng Ultrawide Game View, giúp mở rộng góc nhìn trong các trò chơi, mang lại trải nghiệm chân thực và hấp dẫn hơn. Với tốc độ làm mới tối đa 60Hz và thời gian đáp ứng 4ms (GTG), màn hình này đảm bảo mọi chuyển động trong game đều mượt mà, không bị giật lag.</p><h3><strong>Tiện Ích Đa Năng Với Điều Khiển Từ Xa</strong></h3><p>Đi kèm với màn hình là các phụ kiện như dây nguồn, dây HDMI và điều khiển từ xa. Điều khiển này cho phép bạn dễ dàng thao tác với các tính năng thông minh của màn hình, truy cập các ứng dụng trực tiếp mà không cần sử dụng đến máy tính hay điện thoại.</p>', 0, 1, '2025-10-15 03:42:09', '2025-10-23 04:30:04'),
(65, 1, 2, 7, 1, 'Màn hình Gaming SAMSUNG Odyssey OLED G9 G93SD LS49DG930SEXXV (49 inch - OLED - DQHD - 240Hz - 0.03ms - Cong)', 'https://www.youtube.com/watch?v=BMxU16eGrs8&pp=ygUjaVBhZCBQcm8gMTEgaW5jaCBNNCAyMDI0IFdpZmkgMjU2R0I%3D', 34999999, 29999999, 12, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2>Màn hình Gaming SAMSUNG Odyssey OLED G9 G93SD LS49DG930SEXXV</h2><h3><strong>Thế giới qua tấm nền OLED siêu chi tiết hiển thị trên màn hình sống động và rộng lớn hơn.</strong></h3><p><strong>Tấm nền OLED ứng dụng công nghệ Dual QHD</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_1.jpg\" alt=\"\"></strong></p><p>Với công nghệ OLED, thỏa sức chiêm ngưỡng dải màu rộng hơn cùng hình ảnh sống động, cuốn hút và đưa trải nghiệm chiến game của bạn đến một tầm cao mới. Nội dung hiển thị chân thật như đời nhờ màn hình độ phân giải <strong>Dual QHD</strong> (5120 x 1440) cho độ chính xác và sắc nét vô song.</p><p>&nbsp;</p><h3><strong>Dễ dàng tập trung, Không lo sao nhãng</strong></h3><p><strong>Tấm nền OLED chống chói</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_2.jpg\" alt=\"\"></strong></p><p>Công nghệ chống chói làm giảm đáng kể độ chói từ các nguồn sáng bên ngoài, do đó, trải nghiệm màu sắc và sắc đen hoàn hảo của tấm nền OLED được tái hiện mà không gây xao nhãng. Với màn hình ít bóng hơn <strong>54%</strong> so với tấm phim Chống phản chiếu thông thường của Samsung, bạn có thể quan sát toàn bộ không gian trò chơi của mình và dễ dàng đột kích kẻ thù bất thình lình.</p><p>&nbsp;</p><h3><strong>Vượt mặt đối thủ nhờ tốc độ vượt bật</strong></h3><p><strong>Tần số quét 240Hz &amp; Tốc độ phản hồi (GtG) 0.03ms</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_3.jpg\" alt=\"\"></strong></p><p>Né tránh, phản đòn và giao chiến nhanh hơn tất thảy. Công nghệ tấm nền OLED đảm bảo thời gian phản hồi gần như tức thì với tốc độ phản hồi 0,03ms (GtG). Kết nối HDMI 2.1 và DisplayPort giúp bạn dẫn đầu đối thủ nhờ tần số quét <strong>240Hz</strong>. Một phần nghìn giây cũng là quan trọng khi giúp bạn giành lợi thế chiến thắng.</p><p>&nbsp;</p><h3><strong>Đắm chìm trong chuỗi hành động mượt mà, không gián đoạn</strong></h3><p><strong>Công nghệ AMD FreeSync Premium Pro</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_4.jpg\" alt=\"\"></strong></p><p><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_5.jpg\" alt=\"\"></p><p><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_6.jpg\" alt=\"\"></p><p>Những pha hành động kịch tính siêu mượt. Hỗ trợ tần số quét linh động (<strong>VRR</strong>) với công nghệ <strong>AMD FreeSync Premium Pro</strong> giúp đồng bộ hóa GPU và bảng điều khiển nhằm giảm hiện tượng giật, lag màn hình và xé hình. Các trận game với hành động nhanh và phức tạp diễn ra ổn định và ít giật hình hơn, mang lại lợi thế chiến đấu cho bạn.</p><p>&nbsp;</p><h3><strong>Tấm nền OLED tuyệt mỹ</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_7.jpg\" alt=\"\"></strong></p><p>&nbsp;</p><p>&nbsp;</p><h3><strong>Samsung OLED Safeguard</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_8.jpg\" alt=\"\"></strong></p><p>&nbsp;</p><h3><strong>Điều khiển đúng ý bạn</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_9.jpg\" alt=\"\"></strong></p><p>&nbsp;</p><p>&nbsp;</p><h3><strong>Thiết kế đột phá</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_10.jpg\" alt=\"\"></strong></p><p>&nbsp;</p><h3><strong>Cho bạn trải nghiệm đắm chìm vô hạn</strong></h3><h3><strong>CoreSync &amp; Core Lighting+</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/17-04-2025/samsung_odyssey_oled_g9_g93sd_11.jpg\" alt=\"\"></strong></p><p>Nâng tầm không gian xung quanh màn hình. Với công nghệ CoreSync tiên tiến, màu sắc trên màn hình được tái hiện chân thật cho trải nghiệm đắm chìm vượt trội. Tính năng <strong>Core Light+</strong> cho phép bạn thỏa sức thiết lập màu sắc cho không gian chơi game sống động như thật.</p>', 0, 1, '2025-10-15 03:49:10', '2025-10-23 04:30:04'),
(66, 1, 2, 7, 1, 'Màn hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV (49 inch - OLED - DualQHD - 240Hz - 0.03ms - Cong)', 'https://www.anphatpc.com.vn/ban-phim-co-darkflash-df98-interstellar-wireless-yellow-switch.html', 40000000, 25999999, 53, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2>Màn Hình Gaming</h2><h2>SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV</h2><h3><strong>Kỷ nguyên mới của gaming OLED</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_2.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>&nbsp;</p><p><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_1.jpg\" alt=\"\"></p><p>&nbsp;</p><h3><strong>3 tính năng nổi trội</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_3.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p><strong>Tấm nền OLED hiển thị vượt trội</strong></p><p>Hiệu suất tầm nền OLED đáng kinh ngạc mang đến thế giới trò chơi sống động với những gam màu rực rỡ và khả năng phát quang chưa từng có.</p><p><strong>Trải nghiệm nhập vai hoàn hảo</strong></p><p>Màn hình cong 49 inch với tỷ lệ 32:9 bao quanh bạn tạo nên không gian game đắm chìm chưa từng có.</p><p><strong>Tốc độ phản hồi tối thượng</strong></p><p>Nhanh như chớp với tốc độ phản hồi chỉ 0,03ms cùng tần số quét siêu tốc 240Hz cho phản công chuẩn xác theo từng bước di chuyển của đối thủ.</p><p>&nbsp;</p><h3><strong>Trải nghiệm OLED đỉnh cao</strong></h3><h3><strong>Chất lượng hình ảnh OLED</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_4.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>Cùng cảm nhận sự khác biệt của màn hình Samsung OLED. Màn hình sáng hơn cho phép truyền tải màu sắc, sắc độ và độ tương phản tốt hơn, kết hợp với công nghệ Quantum Dot giúp mang lại hình ảnh rực rỡ hơn bao giờ hết. Những khung cảnh sống động được truyền tải chân thực theo cách hoàn toàn mới.</p><p>&nbsp;</p><h3><strong>Thả mình trong tầm nhìn siêu rộng</strong></h3><h3><strong>Màn hình kép QHD 49 inch</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_5.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>Trước màn hình siêu rộng, bạn như được đắm chìm trong một thế giới khác. Độ rộng gấp hai lần màn hình QHD cho bạn thu hết vào tầm mắt những chi tiết thật sắc nét. Với độ cong 1800R bao trọn tầm nhìn, bạn dễ dàng hóa thân thành nhân vật trong trận game trước mắt.</p><p>&nbsp;</p><h3><strong>Mật độ điểm ảnh cao hơn, sắc nét hơn</strong></h3><h3><strong>110 PPI</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_6.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>Không bỏ sót bất kỳ chi tiết nào trên màn hình lớn. Mật độ điểm ảnh cao trong từng xăng-ti-mét, cho phép những chi tiết được hiển thị rõ nét trên màn hình 49 inch Odyssey OLED G9.</p><p>&nbsp;</p><h3><strong>Cực hút mắt với sắc đen sâu thẳm</strong></h3><h3><strong>DisplayHDR True Black 400 đen sâu thẳm</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_7.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>Khám phá mọi bí ẩn với khả năng hiển thị vô hạn. Tái hiện màu đen thuần khiết và những gam màu tối khác mà không bị lẫn điểm ảnh màu sáng nào, cho bạn tận hưởng màu sắc và độ sâu tối ưu trong từng cảnh game.</p><p>&nbsp;</p><h3><strong>Vượt mặt đối thủ với tốc độ siêu phàm</strong></h3><h3><strong>Thời gian phản hồi 0.03ms &amp; Tần số quét 240Hz</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_8.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>Né tránh, đối kháng và tương tác nhanh hơn bất kỳ ai. Công nghệ màn hình OLED cho phép phản ứng tức thời chỉ trong 0.03ms. Các cổng kết nối HDMI 2.1 và DisplayPort, cùng với tần số quét 240Hz giúp bạn dễ dàng dẫn đầu trận đấu. Khi đối mặt với những đối thủ hàng đầu, một phần nghìn giây cũng có thể làm nên kỳ tích.</p><p>&nbsp;</p><h3><strong>Đắm chìm trong chuỗi hành động mượt mà, không gián đoạn</strong></h3><h3><strong>AMD FreeSync Premium Pro</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/28-12-2024/samsung_odyssey_oled_g9_g93sc_9.jpg\" alt=\"Màn Hình Gaming SAMSUNG Odyssey OLED G9 G93SC LS49CG934SEXXV\"></strong></p><p>Những pha hành động kịch tính siêu mượt. Các cảnh trò chơi hành động nhanh và phức tạp được trình chiếu ổn định mà không hề giật hình nhờ AMD FreeSync Premium Pro cho bạn lợi thế cạnh tranh vượt trội.</p>', 0, 1, '2025-10-15 03:55:52', '2025-10-23 04:30:05'),
(67, 1, 2, 7, 1, 'Màn Hình SAMSUNG ViewFinity S9 5K LS27C900PAEXXV (27 inch - IPS - 5K - 60Hz - 5ms- Speaker - Webcam)', 'https://www.youtube.com/watch?v=BMxU16eGrs8&pp=ygUjaVBhZCBQcm8gMTEgaW5jaCBNNCAyMDI0IFdpZmkgMjU2R0I%3D', 29999999, 19999999, 54, '<h2>Màn Hình SAMSUNG ViewFinity S9 5K LS27C900PAEXXV</h2><p><strong>Khai Mở Không Gian Sáng Tạo Với Độ Phân Giải 5K</strong></p><p><br>&nbsp;</p><p><strong>Thêm Không Gian, Thêm Hiệu Suất Với Độ Phân Giải 5K</strong></p><p><strong>Độ Phân Giải 5K</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_1.jpg\" alt=\"\"></strong></p><p>Độ phân giải 5K mang đến số lượng điểm ảnh nhiều hơn so với 4K, tạo nên một bức tranh sắc nét đến từng chi tiết nhờ mật độ điểm ảnh lên đến 218 PPI. Lựa chọn dải màu mở rộng <strong>DCI-P3 99%</strong> mang lại độ bão hòa màu sắc giúp truyền tải những ý tưởng của bạn một cách sống động nhất, và độ chuẩn xác màu được hiệu chỉnh tại nhà máy (độ lệch màu <strong>ΔE &lt; 2</strong>) giúp hiển thị những màu sắc chân thực nhất ngay tức khắc.</p><p>&nbsp;</p><p><strong>Êm Dịu Đôi Mắt Với Công Nghệ Chống Chói</strong></p><p><strong>Tấm Nền Chống Phản Sáng</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_2.jpg\" alt=\"\"></strong></p><p>Bảo vệ đôi mắt ngay cả khi đang làm việc. Tấm nền chống phản sáng (màn hình công nghệ mới được phủ lớp chất liệu cán mờ) giúp triệt tiêu đáng kể lượng ánh sáng phản chiếu mà không làm nhòe đi tầm nhìn của bạn. Tính năng bảo vệ mắt thông minh tự động điều chỉnh độ sáng, hạn chế ánh sáng xanh và loại bỏ hiện tượng nhấp nháy màn hình, để bạn giữ tập trung hoàn thành công việc của mình.</p><p>&nbsp;</p><p><strong>Sắc Màu Sống Động Đúng Như Ý Muốn</strong></p><p><strong>Smart Calibration</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_3.jpg\" alt=\"\"></strong></p><p>Với ViewFinity S9, những sắc màu sống động lại càng thêm chân thực. Chỉ cần có Smart Calibration và một chiếc điện thoại thông minh, bạn đã có thể thỏa sức điều chỉnh màn hình cho, những trải nghiệm độc đáo. Dễ dàng chuyển đổi giữa DCI-P3 hoặc sRGB, hiệu chỉnh nhiệt độ màu, độ sáng và gamma mà không cần đến công cụ thứ ba hay quy trình phức tạp.</p><p>&nbsp;</p><p><strong>Màu Sắc Tinh Khiết Từ Chuyên Gia</strong></p><p><strong>Chứng Nhận Pantone ™</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_4.jpg\" alt=\"\"></strong></p><p>Thưởng thức mọi màu sắc chính xác, chân thật ở mọi sắc độ. Được hỗ trợ bởi công ty hàng đầu thế giới về phát triển màu sắc, S9 được Pantone Validated chứng nhận khả năng tái tạo lên đến hơn 2.000 màu Pantone và 100 sắc thái Pantone SkinTone™. Giờ đây, mọi tác phẩm của bạn được hiển thị chuẩn xác như thế giới thật.</p><p>&nbsp;</p><p><strong>Hiệu Suất Mạnh Mẽ.</strong></p><p><strong>Mở Rộng Kết Nối</strong></p><p><strong>Cổng Thunderbolt 4 &amp; DP</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_5.jpg\" alt=\"\"></strong></p><p>Được thiết kế với hiệu suất mạnh mẽ và linh hoạt, ViewFinity S9 với Thunderbolt 4 đem đến khả năng sạc lên tới 90W và truyền dữ liệu 40Gbps. Cùng với DisplayPort và ba cổng USB-C xuôi dòng đem đến kết nối liền mạch trên nhiều thiết bị.</p><p>&nbsp;</p><p><strong>Cuộc Gọi Video Sắc Nét Vượt Trội</strong></p><p><strong>4K SlimFit Camera</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_6.jpg\" alt=\"\"></strong></p><p>Luôn sẵn sàng bắt trọn những góc đẹp nhất của bạn. Độ phân giải 4K được tích hợp vào camera SlimFit mang đến những cuộc gọi video rõ nét, cho phép ghi lại mọi nội dung với độ phân giải cao chưa bao giờ dễ dàng đến thế.</p><p>&nbsp;</p><p><strong>Khai Mở Vạn Tiềm Năng Với Apple AirPlay</strong></p><p><strong>Apple AirPlay</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_7.jpg\" alt=\"\"></strong></p><p>Đôi khi, chỉ một màn hình là không đủ. Với Apple AirPlay, bạn có thể hoàn thành nhiều công việc hơn bằng cách phản chiếu hoặc mở rộng màn hình. Nhờ màn hình kép không dây, bạn dễ dàng tăng hiệu suất mà không cần thêm nhiều phích cắm cồng kềnh.</p><p>&nbsp;</p><p><strong>Linh Hoạt Đỉnh Cao</strong></p><p><strong>Thiết Kế Kim Loại Mỏng Và Công Thái Học</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_8.jpg\" alt=\"\"></strong></p><p>Thiết kế kim loại mỏng hòa hợp với mọi không gian, cùng với tính năng điều chỉnh độ cao màn hình cho bạn góc xem và sự tiện nghi lý tưởng nhất. Xoay màn hình 90 độ để xem hết những tài liệu dài . Không chỉ thế, với giá treo đạt chuẩn tương thích VESA, giúp bàn làm việc của bạn gọn gàng và sạch sẽ hơn.</p><p>&nbsp;</p><p><strong>Công Việc, Giải Trí Liền Mạch</strong></p><p><strong>Ứng dụng Smart TV</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_9.jpg\" alt=\"\"></strong></p><p>Chuyển đổi từ công việc sang giải trí trong nháy mắt. Tất cả nội dung mới nhất trong ngày đều có thể được tìm thấy trên các ứng dụng Smart TV, dễ dàng truy cập chỉ với một chiếc màn hình.</p><p>&nbsp;</p><p><strong>Nơi Mọi Trò Chơi Hội Tụ</strong></p><p><strong>Gaming Hub</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_10.jpg\" alt=\"\"></strong></p><p><img src=\"https://anphat.com.vn/media/lib/08-11-2023/samsung_viewinfinity_s9_5k_ls27c900paexxv_11.jpg\" alt=\"\"></p><p>Samsung Gaming Hub là nền tảng lý tưởng để chơi game. Nhanh chóng hòa mình vào những tựa game lớn nhất từ những nhà phát hành game hàng đầu mà không cần máy tính hay bảng điều khiển. Dù là khám phá một game mới hay chơi lại tựa game tủ, tất cả đều có thể tìm thấy ở Gaming Hub.</p>', 0, 1, '2025-10-15 04:32:12', '2025-10-18 06:38:36'),
(68, 1, 2, 7, 1, 'Màn Hình Đồ Họa SAMSUNG ViewFinity S8 LS32B800PXEXXV (32.0 inch - 4K - IPS - 60Hz - 5ms - USB TypeC - Network RJ45)', 'https://www.youtube.com/watch?v=BMxU16eGrs8&pp=ygUjaVBhZCBQcm8gMTEgaW5jaCBNNCAyMDI0IFdpZmkgMjU2R0I%3D', 15999999, 8299000, 13, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2><a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh-chuyen-thiet-ke_dm1695.html\">Màn Hình Đồ Họa</a>&nbsp;SAMSUNG ViewFinity S8</h2><h3>(LS32B800PXEXXV)</h3><p>&nbsp;</p><p><strong>Samsung ViewFinity - Một Chuẩn Mực Mới Cho Màn Hình Độ Phân Giải Cao</strong></p><p><strong>Hiệu Năng, Chuẩn Xác, Mạnh Mẽ</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_1.jpg\" alt=\"\"></strong></p><p>Màn hình Samsung ViewFinity mang đến những trải nghiệm vượt trội, mở khóa tiềm năng đa lĩnh vực từ kinh doanh chuyên nghiệp, sáng tạo nội dung đến thiết kế đồ họa, cùng công nghệ giúp hiện thực hóa ý tượng và tầm nhìn theo cách hoàn toàn mới.</p><p>&nbsp;</p><p><strong>Thỏa Sức Sáng Tạo Với Độ Sâu Chi Tiết Ấn Tượng</strong></p><p><strong>Độ Phân Giải UHD &amp; Tấm Nền IPS</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_2.jpg\" alt=\"\"></strong></p><p>Khám phá từng chi tiết chân thực với độ sắc nét cực đại. Độ phân giải UHD có số điểm ảnh cao gấp 4 lần so với Full HD thông thường cho phép bạn nhìn rõ mọi chi tiết với chiều sâu ấn tượng. Màn hình to hơn để không gian làm việc rộng hơn, cho trải nghiệm hoàn hảo khi sử dụng các ứng dụng, chương trình và công cụ. Tấm nền IPS chất lượng cao cho góc nhìn mở rộng đến 178 độ cùng khả năng hiển thị màu sắc chân thực chính xác.</p><p>&nbsp;</p><p><strong>Tái Hiện Màu Sắc Chuyên Nghiệp</strong></p><p><strong>Dải Màu Mở Rộng DCI-P3 98%</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_3.jpg\" alt=\"\"></strong></p><p>Hiển thị chuẩn xác đầy ấn tượng. Được trang bị dải màu mở rộng đến 98% DCI-P3, S8 mang đến màu sắc đa dạng, sống động hơn giúp cho những nhà sáng tạo hay thiết kế đồ họa tái hiện màu sắc một cách chuyên nghiệp với độ chính xác cao nhất.</p><p><i><strong>* DCI-P3 98% được hỗ trợ ở chế độ \'tùy chỉnh\'</strong></i></p><p>&nbsp;</p><p><strong>Màu Sắc Tinh Khiết Từ Chuyên Gia</strong></p><p><strong>Pantone Validated ™</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_4.jpg\" alt=\"\"></strong></p><p>Thưởng thức màu sắc chính xác, chân thật ở mọi sắc độ. Được hỗ trợ bởi công ty hàng đầu thế giới về phát triển màu sắc, S8 được chứng nhận khả năng tái tạo lên đến hơn 2.000 màu Pantone và 110 sắc thái Pantone SkinTone™ trên màn hình bởi Pantone Validated. Giờ đây, mọi tác phẩm của bạn được hiển thị chuẩn xác như ngoài thế giới thật.</p><p>&nbsp;</p><p><strong>Thưởng Thức Hình Ảnh Giàu Màu Sắc Với Nhiều Tầng Lớp</strong></p><p><strong>Hiển Thị HDR 600</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_5.jpg\" alt=\"\"></strong></p><p>Hình ảnh chân thực tới từng góc khuất. Công nghệ HDR 600 đỉnh cao cho khả năng truyền tải hoàn hảo từ sắc đen sâu thẳm đến sắc trắng tinh khiết. Vùng tối được thể hiện phong phú và sâu hơn, trong khi vùng sáng rực rỡ và tăng cường hơn, truyền tải chính xác trải nghiệm thị giác thú vị mà các nhà sáng tạo mong muốn.</p><p>&nbsp;</p><p><strong>Sáng Rõ Mà Không Chói Lóa</strong></p><p><strong>Tấm Nền Chống Phản Sáng</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_6.jpg\" alt=\"\"></strong></p><p>Dễ dàng chỉnh sửa và đánh giá nội dung với chất lượng hiển thị sáng rõ bất kể điều kiện sáng. Với màn hình đầu tiên trên thế giới đạt chứng nhận chống chói từ UL, tấm nền chống phản sáng giúp ổn định độ sáng hình ảnh mà không cần thêm phụ kiện hỗ trợ.</p><p>&nbsp;</p><p><strong>Tối Ưu Kết Nối Cho Công Năng Linh Hoạt</strong></p><p><strong>USB Type-C Với Cổng LAN</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_7.jpg\" alt=\"\"></strong></p><p>Giữ không gian luôn tinh gọn và thẩm mỹ. Sạc pin cho cả laptop và truyền dữ liệu chỉ với một dây cáp USB Type-C với công suất 90W. Sử dụng Ethernet dễ dàng cho laptop không có cổng LAN, nhờ cổng LAN tích hợp sẵn trên màn hình. Hạn chế tối đa dây cáp lộn xộn và kết nối liền mạch giữa các thiết bị.</p><p>&nbsp;</p><p><strong>Giảm Thiểu Căng Thẳng Cho Đôi Mắt Bạn</strong></p><p><strong>Chứng Nhận Bảo Vệ Mắt Thông Minh TUV</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_8.jpg\" alt=\"\"></strong></p><p><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_9.jpg\" alt=\"\"></p><p>Giữ cho đôi mắt không quá mệt mỏi và căng thẳng. Khi làm việc vào ban đêm, độ sáng và nhiệt độ màu của màn hình sẽ tự động được điều chỉnh nhằm tối ưu hóa trong mọi môi trường. Màn hình Samsung được TUV chứng nhận về khả năng bảo vệ mắt thông minh bằng cách giảm thiểu tác hại của ánh sáng xanh với chế độ Eye Saver và tính năng Flicker Free loại bỏ tình trạng nhấp nháy khó chịu.</p><p>&nbsp;</p><p><strong>Đa Nhiệm Tối Ưu</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_10.jpg\" alt=\"\"></strong></p><p><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_11.jpg\" alt=\"\"></p><p>Tăng hiệu suất dù làm việc, trò chuyện, giải trí. Tính năng PBP giúp kết nối, trình chiếu từ hai nguồn cùng lúc với độ phân giải gốc để chia nhỏ màn hình. Tính năng PIP điều chỉnh kích thước cửa sổ hiển thị từ nguồn thứ 2 về 25% màn hình, giúp bạn làm việc trong khi theo dõi tác vụ đang chạy khác.</p><p>&nbsp;</p><p><strong>Hạn Chế Xao Nhãng, Tối Ưu Trải Nghiệm</strong></p><p><strong>Thiết Kế Công Thái Học</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_12.jpg\" alt=\"\"></strong></p><p>Thoải mái điều chỉnh góc nhìn với màn hình linh hoạt. Bạn có thể điều chỉnh màn hình xoay dọc hay xoay ngang, lên hay xuống để đạt được chiều cao mong muốn. Dễ dàng nghiêng, xoay để có được góc nhìn tốt nhất. Chân đế kim loại mỏng với chiều sâu hẹp chiếm ít không gian trên bàn hơn, giúp thiết lập công việc gọn gàng, liền mạch.</p><p>&nbsp;</p><p><strong>Kiến Tạo Tương Lai Bền Vững, Tốt Đẹp Hơn</strong></p><p><strong>Bao Bì Sinh Thái &amp; Chế Độ Eco Saving Plus</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_13.jpg\" alt=\"\"></strong><br>&nbsp;</p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s8_ls32b800pxexxv_14.jpg\" alt=\"\"></strong></p><p>Dễ dàng chuyển đổi mục đích sử dụng thành những vật dụng cần thiết hoặc lựa chọn tái chế để bảo vệ môi trường. Chứng nhận toàn cầu về khả năng tiết kiệm năng lượng, <a href=\"https://www.anphatpc.com.vn/man-hinh-samsung_dm1318.html\"><strong>màn hình Samsung</strong></a> được trang bị chế độ Eco Saving Plus có thể tiết kiệm đến 10% lượng điện năng tiêu thụ.&nbsp;</p>', 1, 1, '2025-10-15 04:42:42', '2025-12-14 15:33:53'),
(69, 1, 2, 7, 1, 'Màn Hình Gaming UltraWide SAMSUNG Odyssey G5 LC34G55TWWEXXV (34.0 inch - WQHD - 165Hz - VA - 1ms - FreeSync - HDR10 - Curved)', 'https://www.youtube.com/shorts/eBL6-2hviCY', 2000000, 999000, 96, NULL, 0, 1, '2025-10-15 05:49:44', '2025-10-18 06:38:38'),
(70, 1, 2, 7, 1, 'Màn Hình Đồ Họa SAMSUNG ViewFinity S7 S70D LS27D700EAEXXV (27.0 inch - 4K - IPS - 60Hz - 5ms)', NULL, 8999999, 5999999, 103, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2><strong>Màn Hình SAMSUNG ViewFinity S7 S70D LS27D700EAEXXV</strong></h2><h3><strong>Thiết kế</strong></h3><p><a href=\"https://www.anphatpc.com.vn/man-hinh-samsung-viewfinity-s7-s70d-ls27d700eaexxv.html\"><strong>Màn hình SAMSUNG ViewFinity S7 S70D LS27D700EAEXXV</strong></a>&nbsp;có thiết kế phẳng với kích thước 27 inch và tỷ lệ khung hình 16:9, mang lại trải nghiệm hình ảnh rộng rãi và thoải mái. Thiết kế tinh tế và hiện đại, phù hợp với nhiều không gian làm việc và giải trí.</p><p><img src=\"https://anphat.com.vn/media/lib/08-07-2024/man-hinh-samsung-viewfinity-s7-s70d-ls27d700eaexxv.jpg\" alt=\"Màn Hình SAMSUNG ViewFinity S7 S70D LS27D700EAEXXV\"></p><h3><strong>Công nghệ và Hiệu suất</strong></h3><p>Trang bị công nghệ tấm nền IPS, màn hình này cung cấp chất lượng hình ảnh vượt trội với độ phân giải 4K (3840 x 2160), đảm bảo hình ảnh sắc nét và chi tiết. Tần số quét tối đa 60Hz và thời gian đáp ứng 5ms (GTG) mang lại trải nghiệm mượt mà và không bị gián đoạn. Chỉ số màu sắc tối đa 1.07 tỷ màu và độ phủ màu 99% sRGB đảm bảo màu sắc sống động và chính xác.</p><p><img src=\"https://anphat.com.vn/media/lib/08-07-2024/man-hinh-samsung-viewfinity-s7-s70d-ls27d700eaexxv-1.jpg\" alt=\"Màn Hình SAMSUNG ViewFinity S7 S70D LS27D700EAEXXV\"></p><p><strong>Hỗ trợ và Tiện ích</strong></p><p><a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh.html-1\"><strong>Màn hình máy tính</strong></a>&nbsp;hỗ trợ tiêu chuẩn VESA 100x100mm, Auto Source Switch+ và Adaptive Picture, giúp tối ưu hóa trải nghiệm sử dụng và điều chỉnh hình ảnh tự động. Các cổng kết nối bao gồm 1x Display Port và 1x HDMI, đáp ứng nhu cầu kết nối đa dạng.</p><p><img src=\"https://anphat.com.vn/media/lib/08-07-2024/man-hinh-samsung-viewfinity-s7-s70d-ls27d700eaexxv-2.jpg\" alt=\"Màn Hình SAMSUNG ViewFinity S7 S70D LS27D700EAEXXV\"></p><h3><strong>Phụ kiện</strong></h3><p>Trong hộp sản phẩm bao gồm dây nguồn và cáp HDMI, giúp bạn dễ dàng kết nối và sử dụng ngay khi mở hộp.</p><p><a href=\"https://www.anphatpc.com.vn/man-hinh-samsung_dm1318.html\"><strong>Màn hình SAMSUNG</strong></a>&nbsp;ViewFinity S7 S70D LS27D700EAEXXV là sự lựa chọn lý tưởng cho những ai cần một màn hình phẳng với chất lượng hình ảnh cao, kết nối đa dạng và thiết kế hiện đại. Phù hợp cho cả công việc và giải trí, đây chắc chắn là một sản phẩm đáng đầu tư.</p>', 0, 1, '2025-10-15 07:26:12', '2025-10-18 06:38:39'),
(71, 19, 2, 17, 58, 'Củ sạc nhanh USB-C 1 cổng PD 20W màu trắng Ugreen ( 60449)', NULL, 100000, 19000, 43, NULL, 0, 1, '2025-10-16 02:27:58', '2025-10-18 02:12:24');
INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(72, 1, 2, 7, 1, 'Màn Hình Gaming SAMSUNG Odyssey G5 G55C LS32CG552EEXXV (32.0 inch - 2K - VA - 165Hz - 1ms - FreeSync - HDR10 - Curved)', 'https://www.anphatpc.com.vn/chuot-logitech-g102-lightsync.html', 5000000, 190, 0, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2>Màn Hình Gaming SAMSUNG Odyssey G5 G55C LS32CG552EEXXV</h2><p><strong>Vươn Tầm Cao Mới</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_1.jpg\" alt=\"\"></strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Chân Thực Vượt Trội</strong></p><p><strong>Độ Phân Giải QHD</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_2.jpg\" alt=\"\"></strong></p><p>Đắm mình vào thế giới game chân thực chưa từng có. Với mật độ điểm ảnh gấp 1,7 lần Full HD thông thường, độ phân giải QHD mang lại hình ảnh chi tiết, sắc nét đầy ấn tượng. Trải nghiệm xem trọn vẹn hơn trong khung hình rộng dễ dàng thực hiện mọi hành động.</p><p><i>* Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Bao Trọn Mọi Giác Quan</strong></p><p><strong>Màn Hình Cong 1000R</strong></p><p><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_3.jpg\" alt=\"\"></p><p>Bao quanh bạn là những phân cảnh sống động như thật, đưa bạn đắm chìm vào trải nghiệm game kịch tính chưa từng có. Màn hình với độ cong 1000R hoàn hảo sẽ lấp đầy tầm nhìn của bạn với thế giới trong game, cho bạn tận hưởng cảm giác như được thực sự hóa thân thành nhân vật.</p><p>&nbsp;</p><p><strong>Phản Hồi Theo Thời Gian Thực</strong></p><p><strong>Tần Số Quét 165Hz Và Tốc Độ Phản Hồi 1ms (MPRT)</strong></p><p><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_4.jpg\" alt=\"\"></p><p>Tốc độ cực đỉnh trong từng cảnh game. Tần số quét siêu tốc 165Hz loại bỏ tình trạng giật lag, mang đến những pha hành động mượt mà cho trải nghiệm game thăng hoa tột độ. Tốc độ phản hồi 1ms, cùng với khung hình rõ nét, hầu như không tồn tại bóng mờ cho phép bạn tấn công đối thủ ngay khi vừa lộ diện.</p><p><i>* Hình ảnh chỉ nhằm mục đích minh họa * \"1 ms\" có nghĩa là khoảng một mili giây trung bình. Khi thời gian phản hồi nằm trong khoảng từ 1,00 đến 1,99ms, nó sẽ được làm tròn thành số nguyên.</i></p><p><i>Đây là thông số đo được dựa trên MPRT trong điều kiện thử nghiệm nội bộ. Kết quả có thể thay đổi tùy theo nội dung và cài đặt màn hình (cần chế độ \"Tối đa\").</i></p><p><i>MPRT (Thời gian phản hồi hình ảnh chuyển động) là thời gian cần thiết cho một pixel chuyển động từ khung hình này sang khung hình khác (đo độ nhòe chuyển động).</i></p><p>&nbsp;</p><p><strong>Đồng Bộ Trong Từng Chuyển Động</strong></p><p><strong>AMD FreeSync</strong></p><p><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_5.jpg\" alt=\"\"></p><p>Trải nghiệm giải trí mượt mà siêu mãn nhãn. Công nghệ AMD Radeon FreeSync™ giữ cho màn hình và tần số quét của thẻ đồ họa luôn đồng bộ với nhau, từ đó giảm được tình trạng xé hình. Những bộ phim và các trận game cũng diễn ra mượt mà chẳng lo gián đoạn. Ngay cả chuỗi phân cảnh chuyển động nhanh cũng nối tiếp nhau thật liền mạch và trôi chảy.</p><p><i>* Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Không Bỏ Lỡ Chi Tiết Nào</strong></p><p><strong>Công Nghệ HDR10</strong></p><p><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_6.jpg\" alt=\"\"></p><p>Trải nghiệm chất lượng đồ họa ngoạn mục với công nghệ HDR10. Từng màn game được tái hiện đầy chân thực và sống động dưới lăng kính vạn hoa đa màu sắc. Vén màn mọi bí mật ẩn sâu trong bóng tối với sắc đen sâu thẳm, sắc trắng thuần khiết, cùng độ phân giải chi tiết vượt trội.</p><p><i>* Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Chiến Thắng Thuộc Về Đôi Mắt Khỏe</strong></p><p><strong>Mắt Thêm Thoải Mái Với Chế Độ Bảo Vệ Mắt Và Giảm Nháy Màn Hình</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/23-02-2024/samsung_odyssey_g5_g55c_ls32cg552eexxv_7.jpg\" alt=\"\"></strong></p><p>Thỏa sức tận hưởng trận game lâu hơn nữa. Chế độ Bảo Vệ Mắt giúp hạn chế lượng ánh sáng xanh, giữ cho đôi mắt bạn luôn thoải mái suốt trận game dài. Với Odyssey G5, hiện tượng nháy màn hình đầy phiền phức cũng chẳng còn là vấn đề, nhờ đó bạn có thể tập trung lâu hơn vào trận game đang hồi gay cấn mà không lo bị xao nhãng hay mỏi mắt.</p>', 0, 1, '2025-10-16 03:07:40', '2025-10-18 06:38:41'),
(73, 1, 2, 7, 1, 'Màn Hình SAMSUNG ViewFinity S5 S50GC LS34C500GAEXXV (34.0 inch - WQHD - VA - 100Hz - 5ms - FreeSync - HDR10)', 'https://www.anphatpc.com.vn/chuot-logitech-g102-lightsync.html', 3000000, 1000000, 249, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h3><a href=\"https://www.anphatpc.com.vn/man-hinh-samsung_dm1318.html\">Màn Hình SAMSUNG</a>&nbsp;ViewFinity S5 S50GC</h3><h3>(LS34C500GAEXXV)</h3><h3><strong>Sức Mạnh Hoàn Hảo Cho Nhà Sáng Tạo</strong></h3><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_1.jpg\" alt=\"\"></strong></p><p><strong>Một Màn Hình, Vạn Trải Nghiệm</strong></p><p><strong>Tỉ Lệ Khung Hình 21:9 Với Độ Phân Giải Ultra WQHD</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_2.jpg\" alt=\"\"></strong></p><p>Khai phóng tầm nhìn trong một khung hình. Bắt trọn mọi chi tiết trong khung hình 21:9 siêu rộng, dù là một bộ phim yêu thích hay một dự án dang dở. Độ phân giải Ultra-WQHD giúp tối ưu không gian làm việc, mang đến trải nghiệm đa nhiệm liền mạch trên một màn hình duy nhất.</p><p><i>*Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Chìm Đắm Cùng Tỷ Sắc Màu Rực Rỡ Với Độ Sâu Ấn Tượng</strong></p><p><strong>HDR10</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_3.jpg\" alt=\"\"></strong></p><p>Tận hưởng mọi nội dung với độ chuẩn xác đáng kinh ngạc. Công nghệ HDR10 vượt trội, tái hiện hơn 1 tỉ màu sắc so với 16.7 triệu màu của công nghệ SDR thông thường, màu sáng thêm rực rỡ, màu tối thêm sắc nét. Giờ đây, mọi trải nghiệm thị giác sẽ được truyền tải chính xác theo ý đồ của nhà sáng tạo, mang đến nguồn cảm hứng vô tận khi thưởng thức.</p><p><i>*Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Bảo Vệ Đôi Mắt Bất Kể Đêm Ngày</strong></p><p><strong>Chứng Nhận Bảo Vệ Mắt Thông Minh TUV</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_4.jpg\" alt=\"\"></strong></p><p>Êm dịu cho đôi mắt bạn, nhờ tính năng cảm biến và tự động điều chỉnh độ sáng màn hình tương thích với ánh sáng từ môi trường xung quanh. Chế độ Eye Saver giúp hạn chế ánh sáng xanh, tính năng Flicker Free xoa dịu cơn mỏi mắt khi phải làm việc liên tục trên màn hình.</p><p><i>*Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Thêm Không Gian, Thêm Hiệu Suất</strong></p><p><strong>Tính Năng PBP/PIP</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_5.jpg\" alt=\"\"></strong></p><p>&nbsp;</p><p><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_6.jpg\" alt=\"\"></p><p>Tăng gấp đôi hiệu suất làm việc, trò chuyện hay giải trí. Tính năng PBP giúp kết nối, trình chiếu từ hai nguồn cùng lúc với độ phân giải gốc, cho phép bạn làm việc hoặc chạy đồng thời hai chương trình. Tính năng PIP điều chỉnh kích thước cửa sổ hiển thị từ nguồn thứ 2, cho phép bạn vừa làm việc, vừa.</p><p><i>*Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Mượt Mà Mọi Trải Nghiệm, Ngay Cả Chơi Game</strong></p><p><strong>Tần Số Quét 100Hz</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_7.jpg\" alt=\"\"></strong></p><p>Thưởng thức từng chuyển động êm ái, không ngại hình ảnh giật nhòe. Dù bạn đang giữa trận game hay đang xem đoạn phim hấp dẫn, tốc độ quét 100Hz đỉnh cao có khả năng làm mới nhiều hình ảnh hơn trong một giây, giúp hạn chế giật lag và mang đến trải nghiệm mượt mà tuyệt đỉnh.</p><p><i>*Hình ảnh nhằm mục đích minh họa.</i></p><p><i>*Thông số kỹ thuật thực tế có thể khác nhau tùy thuộc vào tình trạng máy tính hoặc các chương trình được sử dụng.</i></p><p>&nbsp;</p><p><strong>Đồng Bộ Trong Từng Phân Cảnh Chuyển Động</strong></p><p><strong>Công Nghệ AMD FreeSync</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_8.jpg\" alt=\"\"></strong></p><p>Tận hưởng trải nghiệm giải trí siêu mượt mà. Công nghệ AMD Radeon FreeSync™ đồng bộ tần số quét của&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh-100hz_dm1711.html\">màn hình 100Hz</a> và card đồ họa, giúp giảm thiểu tình trạng màn hình VA phân mảnh thường thấy. Cùng chiến thắng trận game gay cấn, tận hưởng những bộ phim bất tận với khung hình mượt mà và liền mạch, ngay cả ở những chuyển động cực nhanh.</p><p><i>*Hình ảnh nhằm mục đích minh họa</i></p><p>&nbsp;</p><p><strong>Khung Hình Không Viền, Thỏa Sức Đắm Chìm</strong></p><p><strong>Thiết Kế Không Viền</strong></p><p><strong><img src=\"https://anphat.com.vn/media/lib/20-03-2024/samsung_viewfinity_s5_s50gc_ls34c500gaexxv_9.jpg\" alt=\"\"></strong></p><p>Viền bezel tối giản cho khả năng tập trung tối đa. <a href=\"https://www.anphatpc.com.vn/man-hinh-34-inch.html\">Màn hình 34 inch</a>&nbsp;với viền bezel cực mỏng cho phép bạn nắm trọn khung hình trong tầm mắt. Viền ghép gần như không tồn tại trong thiết lập màn hình kép, giúp hạn chế xao nhãng trong lúc làm việc hay thưởng thức.</p>', 0, 1, '2025-10-16 04:18:07', '2025-10-18 06:38:42'),
(74, 1, 2, 7, 1, 'Màn hình Gaming Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV (49 inch - Cong - OLED - DQHD - 240 Hz - 0.03 ms)', 'https://www.anphatpc.com.vn/chuot-logitech-g102-lightsync.html', 3000000, 99000, 156, '<p><strong>MÔ TẢ SẢN PHẨM</strong></p><h2><strong>Màn hình Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV</strong></h2><p>Cái tiến công nghệ AI thế hệ mới, thời gian phản hồi siêu tốc cùng nhiều tính năng độc quyền từ nhà sản xuất,&nbsp;<strong>Samsung Odyssey OLED G9 G95SC</strong> chính là mẫu màn hình xuất sắc giành được&nbsp;Giải thưởng Sáng tạo Innovation Award tại Triển lãm công nghệ toàn cầu CES 2023 ở Las Vegas (Mỹ) hồi đầu năm 2023. Cùng xem mẫu màn hình đạt giải tại CES 2023 có điểm gì đặc biệt qua bài viết dưới đây.</p><p>&nbsp; <img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc.jpg\" alt=\"\"></p><h2><strong>Công nghệ OLED &amp; Neo Quantum Processor Pro</strong></h2><p>Với công nghệ Neo Quantum Processor Pro tiên tiến, mọi khung hình trên tấm nền OLED được phân tích và tối ưu hóa ngay lập tức đem đến chất lượng hình ảnh đỉnh cao. Màu sắc, độ sáng và tương phản kết hợp để mang tới hình tươi sáng và rực rỡ tạo nên sự khác biệt mà chỉ&nbsp;<strong>Samsung Odyssey OLED G9&nbsp;</strong> mới có.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc1.jpg\" alt=\"\"></p><h2><strong>Đắm chìm trong khung hình siêu rộng</strong></h2><p>Màn hình kích thước 49Inch - tương đương với 2 màn hình bình thường cùng với độ cong 1800R tạo ra không gian bao quanh giúp tái hiện chính xác góc nhìn của nhân vật, hòa mình vào thế giới ảo siêu chân thực. Độ phân giải&nbsp;&nbsp;DQHD (5120 x 1440) và bộ bao phủ màu&nbsp;99% CIE1976 mang đến trải nghiệm thị giác mãn nhãn qua những khung hình sắc nét và chân thực đáng kinh ngạc.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc2.jpg\" alt=\"\"></p><h2><strong>Sắc nét, nổi bật ngay cả trong bóng tối</strong></h2><p>Khả năng tái hiện màu đen cực sâu là một điểm đặc trưng của dòng màn hình OLED,&nbsp;<strong>Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV</strong> cũng có khả năng đó với chứng chỉ VESA DisplayHDR TrueBlack 400.&nbsp;Màu tối cho đến màu đen sâu thẳm được truyền tải hoàn hảo từng pixel khiến hình ảnh có chiều sâu hơn, màu sắc nổi bật và ấn tượng hơn.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc3.jpg\" alt=\"\"></p><h2><strong>Phàn hồi siêu tốc</strong></h2><p>Công nghệ OLED mang lại thời gian phản hồi gần như tức thì với tốc độ phản hồi chỉ 0,03ms cùng với tần số quét lên tới 240Hz, bạn sẽ luôn luôn là người nắm ưu thế trước đối thủ trong bất kỳ tình huống nào. <strong>Samsung Odyssey OLED G9</strong> bắt kịp từng khung hình để mang tới trải nghiệm hình ảnh mượt mà nhất trên từng chuyển động.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc4.jpg\" alt=\"\"></p><h2><strong>Công nghệ đồng bộ hiện đại</strong></h2><p>Tạm biệt tình trạng giật hình, xé hình gây khó chịu trong các cánh hành động tốc độ cao với công nghệ&nbsp;AMD FreeSync Premium Pro tiên tiến được tích hợp sẵn. Hình ảnh được đồng bộ, khớp hình để trở nên mượt mà, sắc nét nhất ngay cả khi chạy trên tần số quét màn hình 240Hz và tốc độ phản hồi 0.03ms.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc5.jpg\" alt=\"\"></p><h2><strong>Kho trò chơi đồ sộ</strong></h2><p>Gaming Hub cho phép truy cập tức thì các tựa game trực tuyến hàng đầu trong bảng điều khiển yêu thích. Tận hưởng hình ảnh mượt mà và thao tác nhanh &amp; nhạy nhờ công nghệ phát trực tuyến trò chơi tiên tiến của Samsung hỗ trợ, mà không cần tải xuống.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc6.jpg\" alt=\"\"></p><h2><strong>Thiết lập nhanh chóng</strong></h2><p>Với<strong>&nbsp;Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV</strong>,&nbsp;bạn có thể dễ dàng xem trạng thái của các cài đặt quan trọng nhất như FPS hoặc HDR, sửa đổi tỷ lệ màn hình, phóng to Bản đồ nhỏ hoặc thay đổi chế độ hình qua GameBar tiện lợi.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc7.jpg\" alt=\"\"></p><h2><strong>Âm thanh sống động</strong></h2><p>Không chỉ mang tới trải nghiệm hình ảnh ấn tượng,&nbsp;<strong>Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV</strong> còn mang tới âm thanh tuyệt đỉnh nhờ loa tích hợp trong màn hình. Bàn làm việc của bạn sẽ càng thêm gọn gàng hơn khi không cần tới loa ngoài mà vẫn đảm bảo&nbsp; chất âm tuyệt hảo cho trò chơi của mình.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95s8.jpg\" alt=\"\"></p><h2><strong>Kết nối toàn diện</strong></h2><p><strong>Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV</strong>&nbsp;cho phép kết nối đa cổng. Với HDMI 2.1, DisplayPort và USB HUB cho phép bạn kết nối với các thiết bị yêu thích dễ dàng để nâng tầm trò chơi lên tầm cao mới. Thêm vào đó, tính năng Auto Source Switch+ tự động tìm kiếm nguồn tín hiệu đầu vào, tự động chuyển sang tín hiệu của nguồn mới cực kỳ tiện dụng.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc8.jpg\" alt=\"\"></p><h2><strong>Thiết kế cá tính</strong></h2><p><strong>Samsung Odyssey OLED G9 G95SC LS49CG954SEXXV</strong>&nbsp;mang thiết kế Slim Metal cực sang trọng, nổi bật với lớp honaf thiện bằng kim loại cao cấp và hiện đại. Chỉ mỏng 4.5mm, chiếc Odyssey OLED thỏa mãn mọi gu thời trang của bạn.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc10.jpg\" alt=\"\"></p><p>Công nghệ lõi sáng CoreSync và CoreLighting+ mang tới nhiều chế độ đa sắc, đồng bộ hóa làm nổi bật không gian Gaming của bạn.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc9.jpg\" alt=\"\"></p><p>Bạn sẽ luôn ở trong tư thế thoải mái nhất nhờ giá đỡ công thái học hiện đại có thể tùy chỉnh tự do.</p><p><img src=\"https://anphat.com.vn/media/lib/31-07-2023/g95sc11.jpg\" alt=\"\"></p>', 0, 1, '2025-10-16 10:01:02', '2025-11-12 17:24:32'),
(75, 1, 2, 18, 2, 'Màn Hình LG UltraWide 29U531A-W (29 inch - IPS - WFHD - 100Hz - 5ms - USB TypeC - Speaker )', 'https://www.youtube.com/shorts/4fJt7EUfPp4', 1000000, 200000, 150, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-lg_dm1354.html\">Màn hình&nbsp;LG</a></td></tr><tr><td>Model</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-lg-ultrawide-29u531a-w.html\">Màn Hình LG UltraWide 29U531A-W</a></td></tr><tr><td>Kích thước màn hình</td><td>29 inch</td></tr><tr><td>Độ phân giải</td><td>2560 x 1080</td></tr><tr><td>Tỉ lệ</td><td>21:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>250 cd/m²</td></tr><tr><td>Màu sắc hiển thị</td><td><p>16.7M</p><p>Color Gamut (Typ.)</p><p>sRGB 99% (CIE1931)</p></td></tr><tr><td>Độ tương phản</td><td>1000:1</td></tr><tr><td>Tần số quét</td><td>100Hz</td></tr><tr><td>Cổng kết nối</td><td>1xDP 1.4, 1xHDMI , 1xUSB-C, Headphone out 3-pole (Sound Only)</td></tr><tr><td>Thời gian đáp ứng</td><td>5ms (GtG at Faster)</td></tr><tr><td>Góc nhìn</td><td>178º horizontal, 178º vertical</td></tr><tr><td>Tính năng</td><td><p>Auto Input Switch</p><p>Black Stabilizer</p><p>Color Calibrated in Factory</p><p>Color Weakness</p><p>Crosshair</p><p>Dynamic Action Sync</p><p>Flicker Safe</p><p>HDR 10</p><p>Motion Blur Reduction Tech.</p><p>Reader Mode</p><p>Smart Energy Saving</p><p>Super Resolution+</p></td></tr><tr><td>Điện năng tiêu thụ</td><td><p>AC Input</p><p>100~240V (50/60Hz)</p><p>Power Consumption (Sleep Mode)</p><p>Less than 0.5W</p></td></tr><tr><td>Kích thước</td><td><br><strong>Kích thước (mm):&nbsp;688.5 x 408.7 x 220 mm</strong><br><strong>Kích thước không có chân đế (mm):&nbsp;688.5 x 313.4 x 76.9 mm</strong></td></tr><tr><td>Cân nặng</td><td><strong>Khối lượng (kg):5.2 kg</strong><br><strong>Khối lượng tịnh không có chân đế (kg):&nbsp;4.1 kg</strong></td></tr><tr><td>Phụ kiện</td><td>Dây nguồn, Dây HDMI</td></tr></tbody></table></figure>', 0, 1, '2025-10-17 08:46:08', '2025-10-18 06:38:44'),
(76, 1, 2, 18, 2, 'Màn Hình Gaming LG UltraGear 27G850A-B (27 inch - IPS - 4K - 240Hz - 1ms)', 'https://www.youtube.com/shorts/4fJt7EUfPp4', 500000, 100000, 150, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>LG</td></tr><tr><td>Model</td><td>27G850A-B&nbsp;</td></tr><tr><td>Kích thước màn hình</td><td>27 inch</td></tr><tr><td>Độ phân giải</td><td>3840 x 2160</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS Black</td></tr><tr><td>Độ sáng</td><td>750cd/m²</td></tr><tr><td>Màu sắc hiển thị</td><td>1.07B,&nbsp;DCI-P3 99% (CIE1976),&nbsp;10bit</td></tr><tr><td>Độ tương phản</td><td>2000:1</td></tr><tr><td>Tần số quét</td><td>240Hz</td></tr><tr><td>Cổng kết nối</td><td>&nbsp;2x HDMI, 1x DisplayPort, Đầu ra tai nghe 4 đầu cắm (Âm thanh + Mic), Cổng USB Downstream, Cổng USB Upstream</td></tr><tr><td>Góc nhìn</td><td>178° (H) / 178° (V) (CR &gt; 10)</td></tr><tr><td>Điện năng tiêu thụ</td><td><p>Tiêu thụ điện năng (Chế độ ngủ):&nbsp;Ít hơn 0.5W</p><p>Đầu ra DC:&nbsp;19V,5.79A</p></td></tr><tr><td>Kích thước</td><td>614.7 x 581.8 x 249.1&nbsp;mm (gồm chân đế)</td></tr><tr><td>Cân nặng</td><td>9.4&nbsp;kg&nbsp;(gồm chân đế)</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn,&nbsp;Dây HDMI,&nbsp;USB A đến B</td></tr></tbody></table></figure>', 0, 1, '2025-10-17 08:48:02', '2025-10-18 06:38:45'),
(77, 1, 2, 18, 2, 'Màn hình LG 27GP750-B 27 inch UltraGear™ FHD 240Hz IPS', NULL, 600000, 150000, 0, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>LG&nbsp;&nbsp;</td></tr><tr><td>Model</td><td>27GP750-B</td></tr><tr><td>Kích thước màn hình</td><td>27 inch&nbsp;</td></tr><tr><td>Độ phân giải</td><td>FHD (1920 x 1080)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>320 cd/m²</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7M</td></tr><tr><td>Độ tương phản</td><td>700:1</td></tr><tr><td>Tần số quét</td><td>240Hz</td></tr><tr><td>Cổng kết nối</td><td>HDMI<br>DisplayPort<br>Headphone Out</td></tr><tr><td>Thời gian đáp ứng</td><td>1ms (GtG at Faster)</td></tr><tr><td>Góc nhìn</td><td>178º(R/L), 178º(U/D)</td></tr><tr><td>Tính năng</td><td>&nbsp;</td></tr><tr><td>Điện năng tiêu thụ</td><td>48W</td></tr><tr><td>Kích thước</td><td><p>614.2 x 364.8 x 56.3 mm&nbsp;(Không chân đế)</p><p>614.2 x 574.8 x 274.4 mm (Gồm chân đế)</p></td></tr><tr><td>Cân nặng</td><td><p>4.0kg&nbsp;(Không chân đế)</p><p>5.9kg&nbsp;(Gồm chân đế)</p></td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn, Cáp&nbsp;Display Port</td></tr></tbody></table></figure>', 0, 1, '2025-10-17 08:49:43', '2025-11-12 17:24:33'),
(78, 1, 2, 2, 1, 'Màn Hình Thông Minh Gaming LG UltraGear 34GX90SA-W (34 inch - OLED - WQHD - 240Hz - 0.03ms - Cong - Speaker)', NULL, 4000000, 2000000, 599, '<p>Kiểu dáng màn hình: Cong 800RTỉ lệ khung hình: 21:9Kích thước mặc định: 34 inchCông nghệ tấm nền: OLEDPhân giải điểm ảnh: 3440 x 1440Độ sáng hiển thị: 275cd/m²Tần số quét màn: 240HzThời gian đáp ứng: 0.03ms (GtG)Chỉ số màu sắc: 1.07 tỷ màu, DCI-P3 98.5% (CIE1976)Hỗ trợ tiêu chuẩn: NVIDIA G-SYNC® Compatible / AMD FreeSync Premium / VESA certified AdaptiveSync, Loa 7W x2, hệ điều hành : webOSCổng cắm kết nối: 2x HDMI, 1xDP, USB - C ( xuất hình, PD 65W), 2x USB Down-stream type A, Đầu ra tai nghe , 1x LAN (RJ-45)Phụ kiện trong hộp: Dây nguồn, dây HDMI, điều khiển</p>', 1, 1, '2025-10-17 08:51:04', '2025-12-11 16:38:55'),
(79, 1, 2, 18, 2, 'Màn Hình Đồ Họa LG UltraFine 27US500-W (27.0 inch - 4K - IPS - 60Hz - 5ms - HDR10 - Super Resolution+)', NULL, 999999, 400000, 127, '<p>Kiểu dáng màn hình: Phẳng (Màu Trắng)Tỉ lệ khung hình: 16:9Kích thước mặc định: 27.0 inchCông nghệ tấm nền: IPSPhân giải điểm ảnh: 4K - UHD - 3840 x 2160Độ sáng hiển thị: (Typ.) 300 cd/m² (Min.) 240 cd/m²Tần số quét màn: 60 Hz (Hertz)Thời gian đáp ứng: 5ms (GtG at Faster)Chỉ số màu sắc: 1.07 tỷ màu - 10 Bits (8 Bits + FRC) - DCI-P3 90% (CIE1976)Hỗ trợ tiêu chuẩn: VESA 100 x 100 mm, HDR10, Reader Mode and Flicker Safe, Black Stabilizer &amp; Dynamic Action SyncCổng cắm kết nối: 1x DisplayPort 1.4, 2x HDMI 2.0, 1x 3,5mm Audio OutPhụ kiện trong hộp: Dây nguồn, Dây HDMI to HDMI</p>', 0, 1, '2025-10-17 08:52:51', '2025-11-12 17:24:35'),
(80, 1, 2, 18, 2, 'Màn Hình LG 27UP600K-W (27 inch - IPS - 4K - 60Hz - 5ms)', NULL, 2000000, 1599000, 229, '<p>Kiểu dáng màn hình: PhẳngTỉ lệ khung hình:Kích thước mặc định: 27 inchCông nghệ tấm nền: IPSPhân giải điểm ảnh: 4K (3840 x 2160)Độ sáng hiển thị: 320 cd/m² 10bit (8bit+FRC)Tần số quét màn: 60 Hz</p>', 0, 1, '2025-10-17 08:54:38', '2025-11-16 05:46:56'),
(81, 1, 2, 18, 2, 'Màn Hình LG 27MR400-B (27 inch - IPS - FHD - 100Hz - 5ms - FreeSync)', NULL, 5000000, 1000000, 191, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-lg_dm1354.html\">Màn hình LG</a></td></tr><tr><td>Model</td><td><h3><a href=\"https://www.anphatpc.com.vn/man-hinh-lg-27mr400-b.html\">27MR400-B</a></h3></td></tr><tr><td>Kích thước màn hình</td><td>27 inch</td></tr><tr><td>Độ phân giải</td><td>Full HD (1920x1080)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>(Typ.) 250 cd/m² (Min.) 220 cd/m²</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 triệu màu</td></tr><tr><td>Độ tương phản</td><td>Typ. 1300:1 and Min 1000:1</td></tr><tr><td>Tần số quét</td><td>100Hz</td></tr><tr><td>Cổng kết nối</td><td><p>D-Sub</p><p>HDMI</p><p>Headphone Out</p></td></tr><tr><td>Thời gian đáp ứng</td><td>5ms (GtG at Faster)</td></tr><tr><td>Góc nhìn</td><td>178°/178°&nbsp;</td></tr><tr><td>Tính năng</td><td><p>Adaptive Sync</p><p>AMD FreeSync</p><p>Auto Input Switch</p><p>Yes</p><p>Black Stabilizer®</p><p>Yes</p><p>Color Weakness Mode</p><p>Yes</p><p>Dynamic Action Sync®</p><p>Yes</p><p>Flicker Safe</p><p>Yes</p><p>OnScreen Control (OSC)</p><p>Yes</p><p>Reader Mode</p><p>Yes</p><p>Smart Energy Saving</p><p>Yes</p><p>Super Resolution+</p><p>Yes</p></td></tr><tr><td>Điện năng tiêu thụ</td><td><p>DC Off (Max): Less than 0.3W</p><p>Input: 100~240V (50/60Hz)</p><p>Power Save/Sleep Mode (Max)L Less than 0.3W</p><p>Type: External Power (Adapter)</p></td></tr><tr><td>Kích thước</td><td><p>24.1\" x 14.3\" x 2.0\"&nbsp;(Không chân đế)</p><p>24 1\" x 18.0\" x 7.9\"&nbsp;(Gồm chân đế)</p></td></tr><tr><td>Cân nặng</td><td>3.85&nbsp;(Gồm chân đế)</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn, Cáp HDMI,</td></tr></tbody></table></figure>', 0, 1, '2025-10-17 08:56:22', '2025-11-12 17:24:37'),
(82, 1, 2, 18, 2, 'Màn Hình Gaming LG UltraGear 32GX870A-B (31.5 inch - OLED - 4K - 240Hz/FHD - 480Hz- 0.03ms - Speaker - USB TypeC )', NULL, 3400999, 100999, 400, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>LG</td></tr><tr><td>Model</td><td>32GX870A-B</td></tr><tr><td>Kích thước màn hình</td><td>31.5&nbsp;inch</td></tr><tr><td>Độ phân giải</td><td>4K UHD (3840 x 2160)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>OLED</td></tr><tr><td>Độ sáng</td><td>1300cd/m² (@hdr 1.5% APL)</td></tr><tr><td>Màu sắc hiển thị</td><td>1.07B, DCI-P3 98.5% (CIE1976)</td></tr><tr><td>Độ tương phản</td><td>1.5M:1 (Typ.)</td></tr><tr><td>Tần số quét</td><td>240Hz</td></tr><tr><td>Cổng kết nối</td><td>1 x DP 2.1, 1 x USB -C, 2x HDMI 2.1, Headphone Out</td></tr><tr><td>Góc nhìn</td><td>178º(R/L), 178º(U/D)</td></tr><tr><td>Điện năng tiêu thụ</td><td>56.3 W</td></tr><tr><td>Kích thước</td><td>28.1\" x 24.4\" x 9.8\" (UP) 28.1\" x 20.1\" x 9.8\" (Down)&nbsp;(gồm chân đế)</td></tr><tr><td>Cân nặng</td><td>21.6 lbs&nbsp;(gồm chân đế)</td></tr><tr><td>Phụ kiện</td><td>Dây nguồn, Dây HDMI, USB C, dây DP</td></tr></tbody></table></figure>', 0, 1, '2025-10-17 08:58:07', '2025-11-12 17:24:38'),
(83, 1, 2, 18, 2, 'Màn Hình Gaming LG UltraGear 32GS95UV-B (31.5 inch - OLED - 4K - 240Hz - 0.03ms)', NULL, 2999999, 1099000, 169, NULL, 0, 1, '2025-10-17 08:59:10', '2025-11-12 17:24:43'),
(84, 1, 2, 18, 2, 'Màn Hình LG 24QP550-B (23.8 inch - 2K - IPS - 75Hz - 5ms - FreeSync - HDR10 - GamingMode)', NULL, 5000000, 1099777, 161, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>LG&nbsp;</td></tr><tr><td>Model</td><td><h3>24QP550-B</h3></td></tr><tr><td>Kích thước màn hình</td><td>23.8&nbsp;inch</td></tr><tr><td>Độ phân giải</td><td>2560 x 1440&nbsp;</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td><strong>300 cd/m²</strong><br>&nbsp;</td></tr><tr><td>Màu sắc hiển thị</td><td>&nbsp;16.7M</td></tr><tr><td>Độ tương phản</td><td>&nbsp;1000:1</td></tr><tr><td>Tần số quét</td><td>75Hz</td></tr><tr><td>Cổng kết nối</td><td>HDMI x 2, H/P out , 1x DisplayPort</td></tr><tr><td>Thời gian đáp ứng</td><td>5ms GtG</td></tr><tr><td>Góc nhìn</td><td>&nbsp;178º(R/L), 178º(U/D)</td></tr><tr><td>Tính năng</td><td>HDR 10, Hiệu ứng HDR, Chống nháy, Chế độ đọc sách,&nbsp;Màu sắc yếu,&nbsp;Super Resolution+,&nbsp;AMD FreeSync™,&nbsp;Cân bằng tối,&nbsp;Đồng bộ hành động kép,&nbsp;Tiết kiệm năng lượng thông minh</td></tr><tr><td>Điện năng tiêu thụ</td><td><p>Mức tiêu thụ điện (Tối đa): 22.0W</p><p>Công suất tiêu thụ (Energy Star): 19W<br>Mức tiêu thụ điện (DC tắt)Dưới: 0,3W<br>Mức tiêu thụ điện (Chế độ ngủ): Dưới 0,5W</p></td></tr><tr><td>Kích thước</td><td>540.1 X 506 X 240 mm&nbsp;(Bao gồm chấn đế)<br>540.1 X 321.1 X 41.9 mm&nbsp;(Không bao gồm chân đế)</td></tr><tr><td>Cân nặng</td><td>5.5&nbsp;kg&nbsp;(Bao gồm chấn đế)<br>3.4 kg&nbsp;(Không bao gồm chân đế)</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn, cáp HDMI, cáp Display Port</td></tr></tbody></table></figure>', 0, 1, '2025-10-17 09:00:45', '2025-10-23 04:30:09'),
(85, 1, 2, 3, 44, 'Màn hình Acer EK221Q H 21.5 inch VA 100Hz', NULL, 1500000, 699000, 300, '<figure class=\"table\"><table><tbody><tr><td>Model number</td><td>EK221Q H</td></tr><tr><td>Color</td><td>Black</td></tr><tr><td>Display</td><td>21.5”</td></tr><tr><td>Active display area</td><td>479×260 mm</td></tr><tr><td>Maximum resolution<br>and refresh rate</td><td><p>VGA:1920×1080@75Hz</p><p>HDMI:1920×1080@100Hz</p></td></tr><tr><td>Glare</td><td>No</td></tr><tr><td>Panel type</td><td>VA</td></tr><tr><td>Response time</td><td>1ms (VRB)</td></tr><tr><td>Contrast Ratio Max (native)</td><td>100 million:1</td></tr><tr><td>Brightness</td><td>250&nbsp;cd/m2</td></tr><tr><td>Viewing angle (CR=10)</td><td>178°(H), 178°(V)</td></tr><tr><td>Colors</td><td>16.7M</td></tr><tr><td>Bits</td><td>6Bit+FRC</td></tr><tr><td>Color saturation</td><td>72% NTSC</td></tr><tr><td>Input signal</td><td><p>1VGA+1HDMI(1.4);</p><p>&nbsp;</p><p>1VGA+1HDMI(1.4)+SPK+Audio out+Audio in</p></td></tr><tr><td>Speaker</td><td>2Wx2</td></tr><tr><td>Tilt</td><td>-5°~&nbsp;20°</td></tr><tr><td>Power supply (100V-240V)</td><td>External</td></tr><tr><td>VESA Wall Mounting</td><td>100×100&nbsp;mm</td></tr></tbody></table></figure><p><br>&nbsp;</p>', 0, 1, '2025-10-18 02:23:58', '2025-10-23 04:30:10'),
(86, 1, 2, 3, 44, 'Màn hình ACER SA272U E UM.HS2SV.E02 (27 inch - 2K - IPS - 100Hz - 4ms - Speaker)', NULL, 999000, 490000, 325, NULL, 0, 1, '2025-10-18 02:24:58', '2025-10-23 04:30:11'),
(87, 1, 2, 3, 44, 'Màn Hình Acer EK241Y G UM.QE1SV.G01 (23.8 inch - IPS - FHD - 120Hz - 1ms)', NULL, 799000, 299000, 250, NULL, 0, 1, '2025-10-18 02:26:07', '2025-10-23 04:30:12'),
(88, 1, 2, 3, 44, 'Màn Hình Acer EK251Q G UM.KE1SV.G01 (24.5 inch - IPS - FHD - 120Hz -1ms)', NULL, 1299000, 859000, 137, NULL, 0, 1, '2025-10-18 02:27:06', '2025-10-23 04:30:13'),
(89, 1, 2, 3, 44, 'Màn Hình Acer KA242Y P6 (23.8 inch - IPS - FHD - 144Hz - 1ms)', NULL, 1090000, 189000, 320, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>Acer</td></tr><tr><td>Kích thước màn hình</td><td>23.8&nbsp;inch</td></tr><tr><td>Độ phân giải</td><td>FHD (1920x1080)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>250 nits</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 Million Colors,&nbsp;99% sRGB</td></tr><tr><td>Độ tương phản</td><td>100000000:1 Max(ACM)</td></tr><tr><td>Tần số quét</td><td>144Hz</td></tr><tr><td>Cổng kết nối</td><td>1VGA+1HDMI(1.4);</td></tr><tr><td>Thời gian đáp ứng</td><td>1ms(VRB)</td></tr><tr><td>Góc nhìn</td><td>178°(H)/178°(V)</td></tr><tr><td>Tính năng đặc biệt</td><td>FreeSync</td></tr><tr><td>Điện năng&nbsp;</td><td>22W</td></tr><tr><td>Kích thước</td><td>54.03x42.31x18.5cm</td></tr><tr><td>Cân nặng</td><td>3.1 kg</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn, cáp HDMI</td></tr></tbody></table></figure>', 0, 1, '2025-10-18 02:28:37', '2025-10-23 04:30:14'),
(90, 1, 2, 3, 44, 'Màn Hình Gaming Acer Nitro NITRO KG271U W3 (27 inch - IPS - 2K - 0.5 ms - 240Hz)', NULL, 1599000, 987000, 267, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>Acer</td></tr><tr><td>Kích thước màn hình</td><td>27 inch</td></tr><tr><td>Độ phân giải</td><td>QHD (2560x1440)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>250 nits</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 Million Colors,&nbsp;99% sRGB - 90% DCI-P3</td></tr><tr><td>Độ tương phản</td><td>100000000:1 Max(ACM) / 1000:1</td></tr><tr><td>Tần số quét</td><td>240Hz</td></tr><tr><td>Cổng kết nối</td><td>2xHDMI(2.0)+1xDisplayPort(1.4)+SPK+Audio out</td></tr><tr><td>Thời gian đáp ứng</td><td>1ms / 0.5ms (GTG, Min)</td></tr><tr><td>Góc nhìn</td><td>178°(H)/178°(V)</td></tr><tr><td>Tính năng đặc biệt</td><td>AMD FreeSync™ Premium technology (applying) - HDR10 support - Acer Display Widget - Acer VisionCare - Ergostand</td></tr><tr><td>Điện năng&nbsp;</td><td>-</td></tr><tr><td>Kích thước</td><td>-</td></tr><tr><td>Cân nặng</td><td>-</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn</td></tr></tbody></table></figure>', 0, 1, '2025-10-18 02:29:49', '2025-10-23 04:30:14'),
(91, 1, 2, 3, 44, 'Màn Hình Gaming Acer Nitro ED0 ED320Q X2 UM.JE0AA.201 (31.5 inch - VA - FHD - 240Hz - 1ms - Cong - Speaker )', NULL, 799000, 399000, 250, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td>Acer</td></tr><tr><td>Kích thước màn hình</td><td>31.5&nbsp;inches</td></tr><tr><td>Độ phân giải</td><td>1920x1080</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>VA</td></tr><tr><td>Độ sáng</td><td>250 Nit</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 Million Colors,&nbsp;8-bit</td></tr><tr><td>Độ tương phản</td><td><figure class=\"table\"><table><tbody><tr><td>3,000:1</td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><th>Dynamic Contrast Ratio</th><td>100,000,000:1</td></tr></tbody></table></figure></td></tr><tr><td>Tần số quét</td><td>240Hz</td></tr><tr><td>Cổng kết nối</td><td>&nbsp;2xHDMI (2.0) - 1xDisplayPort (1.4), Headphone, loa 2x2 W</td></tr><tr><td>Thời gian đáp ứng</td><td>1 ms</td></tr><tr><td>Góc nhìn</td><td>178°(H)/178°(V)</td></tr><tr><td>Điện năng&nbsp;</td><td>42 W</td></tr><tr><td>Kích thước</td><td>20.27\"x27.91\"x7.80\"&nbsp;(với chân đế)</td></tr><tr><td>Cân nặng</td><td>10.58 lb&nbsp;(với chân đế)</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn,&nbsp;cáp HDMI</td></tr></tbody></table></figure>', 0, 1, '2025-10-18 02:31:16', '2025-10-23 04:30:15'),
(92, 1, 2, 3, 44, 'Màn hình ACER Nitro VG1 VG271U M3 (27inch - 2K - IPS - 180Hz - 1ms)', NULL, 2990000, 1000000, 147, NULL, 0, 1, '2025-10-18 02:32:07', '2025-10-23 04:30:16'),
(93, 1, 2, 3, 44, 'Màn hình Acer Aopen Fire Legend 25XV2Q F UM.KX2SV.F01 (24.5 inch - FHD - IPS - 390Hz - 1ms)', NULL, 5984000, 1999999, 100, NULL, 0, 1, '2025-10-18 02:33:14', '2025-10-23 04:30:17'),
(94, 1, 2, 3, 44, 'Màn hình ACER V226HQL (21.5 inch - FHD - TN - 60Hz - 5ms)', NULL, 999000, 299000, 398, NULL, 0, 1, '2025-10-18 02:34:43', '2025-11-20 07:00:17'),
(95, 1, 2, 3, 44, 'Màn hình máy tính Acer XB271HU 27\'\' WQHD 144Hz Gaming (UM.HX1SV.001)', NULL, 5990000, 1990888, 112, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-acer_dm1433.html\">Acer</a></td></tr><tr><td>Model</td><td>XB271HU (UM.HX1SV.001)</td></tr><tr><td>Kích thước màn hình</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh_dm1052.html?filter=%2C428%2C\">27 inch&nbsp;</a></td></tr><tr><td>Độ phân giải</td><td>WQHD (2560 x 1440)&nbsp;</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>350 nits</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 triệu màu</td></tr><tr><td>Độ tương phản</td><td>100,000,000:1</td></tr><tr><td>Tần số quét</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh_dm1052.html?filter=%2C2532%2C\">144Hz</a></td></tr><tr><td>Cổng kết nối</td><td>HDMI, DisplayPort</td></tr><tr><td>Thời gian đáp ứng</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-may-tinh_dm1052.html?filter=%2C2108%2C\">4ms</a></td></tr><tr><td>Góc nhìn</td><td>178°/178°</td></tr><tr><td>Kích thước</td><td>365 mm x&nbsp;612 mm x&nbsp;60 mm (Không chân đế)</td></tr><tr><td>Cân nặng</td><td>&nbsp;5.8Kg</td></tr><tr><td>Phụ kiện</td><td>1 x Displayport Cable, 1 x HDMI Cable, 1 x USB 3.0 Cable</td></tr></tbody></table></figure><p><br>&nbsp;</p>', 0, 1, '2025-10-18 02:35:59', '2025-10-23 04:30:22'),
(96, 1, 2, 19, 45, 'Màn Hình EDRA EGM22F100H (21.5 inch - IPS - FHD - 5ms - 100Hz)', NULL, 3900000, 799000, 45, '<p>Kiểu dáng màn hình: PhẳngTỉ lệ khung hình: 16:9Kích thước mặc định: 21.5 inchCông nghệ tấm nền: IPSPhân giải điểm ảnh: FHD - 1920 x 1080Độ sáng hiển thị: 250cd/m2Tần số quét màn: Real 100HzThời gian đáp ứng: 5ms (MPRT)Hỗ trợ tiêu chuẩn: VESA: 75mmx75mm , LoaCổng cắm kết nối: 1xVGA + 1xHDMI + Audio outPhụ kiện trong hộp: Cáp nguồn, Cáp HDMI</p>', 1, 1, '2025-10-18 02:40:20', '2025-12-14 23:42:38'),
(97, 1, 2, 19, 45, 'Màn Hình EDRA EGM24F100H (23.8 inch - FHD - IPS - 100Hz - 1ms)', NULL, 999000, 499000, 123, '<p>Kiểu dáng màn hình: PhẳngTỉ lệ khung hình: 16:9Kích thước mặc định: 23.8 inchCông nghệ tấm nền: IPSPhân giải điểm ảnh: FHD - 1920 x 1080Chỉ số màu sắc: 16.7 triệu màu - 8 BitsĐộ sáng hiển thị: 250 Nits cd/m2Tần số quét màn: Real 100Hz (Hertz)Thời gian đáp ứng: 1ms (MPRT)Hỗ trợ tiêu chuẩn: VESA (75mm x 75mm)Cổng cắm kết nối: 1x D-sub (VGA), 1x HDMI (1.4), 1x 3.5mm Audio outPhụ kiện trong hộp: Dây nguồn, Dây HDMI to HDMI (1m8)</p>', 0, 1, '2025-10-18 02:41:59', '2025-10-23 04:30:25'),
(98, 1, 2, 19, 45, 'Màn Hình EDRA EGM27F100H (27 inch - IPS - FHD - 100Hz - 1ms)', NULL, 2390000, 999000, 54, '<p>Kiểu dáng màn hình: PhẳngTỉ lệ khung hình: 16:9Kích thước mặc định: 27 inchCông nghệ tấm nền: IPSPhân giải điểm ảnh: FHD - 1920 x 1080Độ sáng hiển thị: 250cd/m2Tần số quét màn: Real 100HzThời gian đáp ứng: 1ms (MPRT)Độ sáng tối đa: 250cd/m2Hỗ trợ tiêu chuẩn: VESA: 75mmx75mmCổng cắm kết nối: 1xVGA + 1xHDMI + Audio outPhụ kiện trong hộp: Cáp nguồn, Cáp HDMI</p>', 0, 1, '2025-10-18 02:43:27', '2025-10-23 04:30:27'),
(99, 1, 2, 19, 45, 'Màn hình Gaming EDRA EGM27F240P (27 inch - IPS - FHD - 240Hz - 0.5ms)', NULL, 2999000, 999999, 133, '<p>Kiểu dáng màn hình: PhẳngTỉ lệ khung hình: 16:9Kích thước mặc định: 27 inchCông nghệ tấm nền: Fast IPS A+Phân giải điểm ảnh: FHD (1920x1080)Tần số quét màn: 240HzThời gian đáp ứng: 0.5ms MPRTĐộ sáng tối đa: 250cd/m2; 99%sRGBCổng cắm kết nối: 1 x HDMIPhụ kiện trong hộp: Cáp nguồn, Cáp HDMI</p>', 1, 1, '2025-10-18 02:44:46', '2025-12-13 01:46:52'),
(100, 1, 2, 19, 45, 'Màn Hình EDRA EGM27Q100PR (27.0 inch - 2K - IPS - 100Hz - 1ms)', NULL, 3999000, 1499000, 98, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\">Mô tả&nbsp;chi tiết&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\">Màn hình vi tính</a></td></tr><tr><td>Hãng sản xuất</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-e-dra_dm2211.html\">Màn hình E-DRA</a></td></tr><tr><td>Model</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-e-dra-egm24f100p.html\">EGM27Q100PR</a></td></tr><tr><td>Kích thước màn hình</td><td>27 inch</td></tr><tr><td>Độ phân giải</td><td>QHD (2560 x 1440)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>250cd/m2&nbsp;</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 triệu màu</td></tr><tr><td>Độ tương phản</td><td>&nbsp;</td></tr><tr><td>Tần số quét</td><td>100Hz</td></tr><tr><td>Cổng kết nối</td><td>1xDisplay Port 1.2 + 1xHDMI 2.0 + 1xUSB</td></tr><tr><td>Thời gian đáp ứng</td><td>1ms (MPRT)</td></tr><tr><td>Góc nhìn</td><td>178°(H)/178°(V)</td></tr><tr><td>Tính năng</td><td>Chân xoay(Ajusable Stand) giúp màn hình trở nên linh hoạt hơn. Tối đa xoay 180 độ.<br>&nbsp;</td></tr><tr><td>VESA</td><td>75x75mm<br>&nbsp;</td></tr><tr><td>Dải màu</td><td>99%sRGB<br>&nbsp;</td></tr><tr><td>Kích thước</td><td><p>613.9*521*220.4mm (có chân)</p><p>613.9*363.1*52.8mm (không chân)<br>&nbsp;</p></td></tr><tr><td>Cân nặng</td><td>5.35kg. Cả thùng 6.9kg</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn, cáp HDMI</td></tr></tbody></table></figure>', 0, 1, '2025-10-18 02:46:06', '2025-10-23 04:30:29'),
(101, 1, 2, 19, 45, 'Màn Hình EDRA EGM27F120S (27 inch - IPS - FHD - 120Hz - 1ms)', NULL, 4999000, 1987000, 76, NULL, 0, 1, '2025-10-18 02:47:09', '2025-10-23 04:30:30'),
(102, 1, 2, 8, 46, 'Màn Hình Đồ Họa ASUS ProArt PA278QV (27.0 inch - 2K - IPS - 75Hz - 5ms - VRR - Speaker - CalmanVERIFIED)', NULL, 5999000, 1599000, 64, '<figure class=\"table\"><table><tbody><tr><td><strong>Model</strong></td><td><strong>ProArt Display PA278QV</strong></td></tr><tr><td><strong>Màn hình hiển thị</strong></td><td>Kích thước panel (inch) :27<br>Pixels Per Inch (PPI) : 109<br>Tỉ lệ khung hình :16:9<br>Khu vực Hiển thị (H x V) :596.74 x 335.66 mm<br>Bề mặt Hiển thị :Chống lóa<br>Loại đèn nền :LED<br>Kiểu Panel :IPS<br>Góc nhìn (CR≧10, H/V) :178°/ 178°<br>Pixel :0.233mm<br>Độ phân giải :2560x1440<br>Không gian màu (sRGB) :100%<br>Độ sáng (Typ.) :350cd/㎡<br>Tỷ lệ Tương phản (Typ.) :1000:1<br>Màu hiển thị :16.7M<br>Thời gian phản hồi :5ms(GTG)<br>Tần số quét (tối đa) :75Hz<br>Khử nhấp nháy :Có<br>Bảo hành LCD ZBD :Có(3 yr)</td></tr><tr><td><strong>Tính năng video</strong></td><td>Công nghệ không để lại dấu trace free :Có<br>ProArt Preset : Tiêu chuẩn<br>ProArt Preset : sRGB<br>ProArt Preset : Rec. 709<br>ProArt Preset : Cảnh vật<br>ProArt Preset : Đọc<br>ProArt Preset : Phòng tối<br>ProArt Preset : Dựng hình nhanh<br>ProArt Preset : Chế độ Người dùng 1<br>ProArt Preset : Chế độ Người dùng 2<br>Nhiệt độ màu. Lựa chọn :Có(4 chế độ)<br>Điều chỉnh màu sắc :6 trục điều chỉnh(R,G,B,C,M,Y)<br>Điều chỉnh thông số gamma :Có (Hỗ trợ Gamma 1.8/2.0/2.2/2.4/2.6 )<br>Hiển thị màu chính xác :△E&lt; 2<br>ProArt Palette : Có<br>QuickFit : Có<br>HDCP : Có<br>Công nghệ VRR :Có (Adaptive-Sync)<br>Đồng bộ hóa chuyển động :Có<br>Tiện ích ProArt :Có<br>Tần suất Ánh sáng Xanh Thấp :Có</td></tr><tr><td><strong>Tính năng âm thanh</strong></td><td>Loa :Có(2Wx2)</td></tr><tr><td><strong>Các cổng I /O</strong></td><td>DisplayPort 1.2 x 1<br>Mini DisplayPort x 1<br>HDMI(v1.4) x 1<br>Dual-Link DVI x 1<br>USB Hub : 4x USB 3.2 Gen 1 Type-A<br>Đầu cắm Tai nghe :Có<br>Đầu vào âm thanh PC :Có</td></tr><tr><td><strong>Tần số tín hiệu</strong></td><td>Tần số tín hiệu Digital :30~112 KHz (H) / 46~75 Hz (V)</td></tr><tr><td><strong>Điện năng tiêu thụ</strong></td><td>Điện năng tiêu thụ :12.5 W<br>Chế độ tiết kiệm điện :&lt;0.5W<br>Chế độ tắt nguồn :0W (tắt cứng)<br>Điện áp :100-240V, 50/60Hz</td></tr><tr><td><strong>Thiết kế cơ học</strong></td><td>Góc nghiêng :Có (+35° ~ -5°)<br>Xoay :Có (+90° ~ -90°)<br>Quay :Có (+90° ~ -90°)<br>Điều chỉnh Độ cao :0~150mm<br>Chuẩn VESA treo tường :100x100mm<br>Khoá Kensington :Có</td></tr><tr><td><strong>Kích thước</strong></td><td>Kích thước vật lý kèm với kệ (W x H x D) :615 x (382~532) x 226 mm<br>Kích thước vật lý không kèmkệ (W x H x D) :61.50 x 37.20 x 5.10 cm (24.21\" x 14.65\" x 2.01\")<br>Kích thước hộp (W x H x D) :73.50 x 46.40 x 21.60 cm (28.94\" x 18.27\" x 8.50\")</td></tr><tr><td><strong>Trọng lượng</strong></td><td>Trọng lượng tịnh với chân đế :7.56 kg (16.67 lbs)<br>Trọng lượng tịnh không có chân đế :4.83 kg (10.65 lbs)<br>Trọng lượng thô :10.74 kg (23.59 lbs)</td></tr><tr><td><strong>Phụ kiện</strong></td><td>Báo cáo hiệu chỉnh màu sắc<br>Cáp DisplayPort<br>Cáp HDMI<br>Dây điện<br>Hướng dẫn sử dụng<br>Cáp USB Type-B sang A<br>Thẻ bảo hành</td></tr><tr><td><strong>Tuân thủ và Tiêu chuẩn</strong></td><td>TÜV Không nhấp nháy<br>TÜV Giảm Ánh sáng Xanh<br>Chứng nhận từ Calman</td></tr></tbody></table></figure>', 0, 1, '2025-10-18 02:50:13', '2025-10-23 04:30:31'),
(103, 1, 2, 8, 46, 'Màn Hình ASUS VA27AQ (27 inch - IPS - 2K - 75Hz - 1ms - Speaker)', NULL, 4999000, 2199000, 156, NULL, 0, 1, '2025-10-18 02:51:15', '2025-10-23 04:30:31'),
(104, 1, 2, 8, 46, 'Màn Hình Gaming ASUS ROG Strix XG27ACS (27 inch - IPS - 2K - 1ms - 180Hz - USB TypeC)', NULL, 4999000, 1999888, 152, NULL, 1, 1, '2025-10-18 02:52:20', '2025-12-14 15:11:09'),
(105, 1, 2, 8, 46, 'Màn Hình Gaming ASUS TUF Gaming VG259Q5A (24.5 inch - IPS - FHD - 200Hz - 1ms)', NULL, 1999999, 989000, 177, NULL, 1, 1, '2025-10-18 02:53:33', '2025-12-12 04:03:53'),
(106, 1, 2, 8, 46, 'Màn Hình ASUS VA249HG (23.8 inch - IPS - FHD - 120Hz - 1ms)', 'https://www.youtube.com/shorts/eBL6-2hviCY', 7600000, 299000, 6, NULL, 0, 1, '2025-10-18 02:54:42', '2025-11-12 17:16:09'),
(107, 1, 2, 8, 46, 'Màn Hình Đồ Họa ASUS ProArt PA278QGV (27 inch - IPS - 2K - 120Hz - 5ms - Speaker)', NULL, 3980000, 1000999, 138, NULL, 0, 1, '2025-10-18 02:56:04', '2025-11-12 17:24:56'),
(108, 1, 2, 8, 46, 'Màn Hình ASUS VY279HGR (27 inch - IPS - FHD - 120Hz - 1ms)', NULL, 1450999, 299000, 300, NULL, 0, 1, '2025-10-18 02:57:09', '2025-11-12 17:24:57'),
(109, 1, 2, 8, 46, 'Màn Hình ASUS VA279QGS (27 inch - IPS - FHD - 120Hz - 1ms - Speaker)', 'https://www.anphatpc.com.vn/chuot-logitech-g102-lightsync.html', 1999999, 799999, 396, NULL, 0, 1, '2025-10-18 02:58:21', '2025-11-12 17:24:58'),
(110, 1, 2, 8, 46, 'Màn Hình Di Động ASUS ZenScreen MB169CK (15.6 inch - IPS - FHD - 60Hz - 5ms - USB Type-C - Chân đế 360°)', NULL, 3999000, 1599000, 170, NULL, 0, 1, '2025-10-18 02:59:22', '2025-11-12 17:24:59'),
(111, 1, 2, 8, 46, 'Màn Hình Gaming ASUS ROG Strix XG259QNS (24.5 inch - IPS - FHD - 380Hz - 1ms)', NULL, 7999000, 2999000, 98, NULL, 0, 1, '2025-10-18 03:00:46', '2025-11-12 17:24:59'),
(112, 1, 2, 8, 46, 'Màn Hình Gaming ASUS ROG Swift OLED PG34WCDM (33.94 inch - WQHD - WOLED - 0.03ms - 240Hz)', NULL, 3999999, 1299999, 89, NULL, 0, 1, '2025-10-18 03:02:51', '2025-11-12 17:25:00'),
(113, 1, 2, 8, 46, 'Màn Hình Gaming ASUS ROG Swift OLED PG27AQDM (26.5 inch - 2K - OLED - 240Hz - 0.03ms - FreeSync - GSync - HDR10)', NULL, 1299000, 499000, 300, NULL, 0, 1, '2025-10-18 03:03:55', '2025-11-12 17:25:03'),
(114, 1, 2, 8, 46, 'Màn hình Gaming ASUS ROG Strix XG49VQ (49 inch - Super ultrawide - Cong - 144Hz)', NULL, 9000000, 2990000, 70, NULL, 0, 1, '2025-10-18 03:04:58', '2025-11-12 17:25:04'),
(115, 1, 2, 6, 59, 'Màn hình Dell P2423DE (23.8 Inch - QHD - IPS - 60Hz - 8ms - USB TypeC)', NULL, 1299000, 699000, 200, '<figure class=\"table\"><table><tbody><tr><td colspan=\"2\"><strong>Mô tả&nbsp;chi tiết</strong>&nbsp;<a href=\"https://www.anphatpc.com.vn/man-hinh-vi-tinh_dm1052.html\"><strong>Màn hình vi tính</strong></a></td></tr><tr><td>Hãng sản xuất</td><td><a href=\"https://www.anphatpc.com.vn/man-hinh-dell_dm1317.html\">Màn hình Dell</a></td></tr><tr><td>Model</td><td>P2423DE</td></tr><tr><td>Kích thước màn hình</td><td>23.8&nbsp;inch</td></tr><tr><td>Độ phân giải</td><td>QHD (2560 x 1440)</td></tr><tr><td>Tỉ lệ</td><td>16:9</td></tr><tr><td>Tấm nền màn hình</td><td>IPS</td></tr><tr><td>Độ sáng</td><td>300 cd/m²</td></tr><tr><td>Màu sắc hiển thị</td><td>16.7 Million colors</td></tr><tr><td>Độ tương phản</td><td>1000:1 / 1000:1 (dynamic)</td></tr><tr><td>Tần số quét</td><td>60Hz</td></tr><tr><td>Cổng kết nối</td><td><p>HDMI (HDCP 1.4)</p><p>DisplayPort 1.4 (HDCP 1.4)</p><p>DisplayPort output (HDCP 1.4, MST)</p><p>USB-C upstream/DisplayPort 1.4 Alt Mode with Power Delivery (power up to 90W)</p><p>4 x USB 3.2 Gen 1 downstream</p><p>LAN (RJ-45)</p></td></tr><tr><td>Thời gian đáp ứng</td><td>8 ms (normal); 5 ms (fast)</td></tr><tr><td>Góc nhìn</td><td>178/178</td></tr><tr><td>Tính năng</td><td>&nbsp;</td></tr><tr><td>Điện năng tiêu thụ</td><td>170 Watt</td></tr><tr><td>Kích thước</td><td>538 x&nbsp;180 x 495mm</td></tr><tr><td>Cân nặng</td><td>&nbsp;5.4Kg</td></tr><tr><td>Phụ kiện</td><td>Cáp nguồn,</td></tr></tbody></table></figure>', 0, 1, '2025-10-18 03:09:08', '2025-11-12 17:25:04'),
(116, 1, 2, 6, 59, 'Màn Hình Dell P2425HE (23.8 inch - IPS - FHD - 100Hz - 5ms - USB-C - RJ45 )', NULL, 3999000, 1399000, 98, NULL, 0, 1, '2025-10-18 03:10:41', '2025-11-12 17:25:09'),
(117, 1, 2, 6, 59, 'Màn Hình Dell S2425H (23.8 inch - FHD - IPS - 100Hz - 4ms - Speaker10W - TUV EyeComfort4)', NULL, 3999000, 1299000, 32, NULL, 1, 1, '2025-10-18 03:11:44', '2025-12-14 05:59:50'),
(118, 1, 2, 6, 59, 'Màn Hình Dell UltraSharp U2424H (23.8 inch - FHD - IPS - 120Hz - 5ms - DRR - TMDS - USB TypeC)', NULL, 1399000, 299000, 456, NULL, 0, 1, '2025-10-18 03:12:36', '2025-11-20 07:00:04'),
(119, 1, 2, 6, 59, 'Màn Hình Dell Pro E2225HSM (21.5 inch - VA - FHD - 100Hz - 5ms - Speakers)', NULL, 2459999, 1459000, 233, NULL, 0, 1, '2025-10-18 03:13:36', '2025-11-20 07:00:05'),
(120, 1, 2, 6, 59, 'Màn Hình Dell Pro 24 Plus P2425D (23.8 inch - IPS - 2K - 100Hz - 5ms)', NULL, 3449999, 1590000, 63, NULL, 1, 1, '2025-10-18 03:14:54', '2025-12-14 16:41:12'),
(121, 1, 2, 6, 59, 'Màn Hình Dell S2725H (27.0 inch - FHD - IPS - 100Hz - 4ms - Speaker10W - TUV EyeComfort4)', NULL, 1799000, 489999, 300, NULL, 0, 1, '2025-10-18 03:16:24', '2025-11-20 07:00:07'),
(122, 1, 2, 6, 59, 'Màn hình Dell E2425HM (23.8 inch - IPS - FHD - 100Hz- 5ms)', NULL, 1299000, 299000, 323, NULL, 0, 1, '2025-10-18 03:17:49', '2025-11-20 07:00:08'),
(123, 1, 2, 6, 59, 'Màn hình Dell E2725HM (27 inch - IPS - FHD - 100Hz- 5ms)', NULL, 3999999, 1299000, 145, NULL, 0, 1, '2025-10-18 03:18:54', '2025-11-20 07:00:09'),
(124, 1, 2, 6, 59, 'Màn hình Dell P2725D (27 inch - IPS - QHD - 100Hz- 5ms)', NULL, 2999999, 1000000, 120, NULL, 0, 1, '2025-10-18 03:19:51', '2025-11-20 07:00:10'),
(125, 1, 2, 6, 59, 'Màn Hình Dell SE2225HM (21.5 inch - VA - FHD - 100Hz - 5ms)', NULL, 8090000, 4999999, 85, NULL, 0, 1, '2025-10-18 03:20:47', '2025-11-16 05:46:20');
INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(126, 1, 2, 6, 59, 'Màn Hình Dell PRO P3225QE (31.5 inch - 4K - IPS - 100Hz - 5ms)', NULL, 7099999, 2399999, 44, NULL, 0, 1, '2025-10-18 03:21:40', '2025-11-16 05:46:21'),
(127, 1, 2, 6, 59, 'Màn Hình Dell Ultrasharp U3223QE (31.5 inch - UHD - IPS Black - 60Hz - 5ms - USB TypeC - DisplayHDR400)', NULL, 2699000, 1399000, 113, NULL, 0, 1, '2025-10-18 03:23:40', '2025-11-20 07:00:11'),
(128, 1, 2, 6, 59, 'Màn Hình Gaming Dell Alienware 27 AW2725DM (27 inch - IPS - 2K - 180Hz - 1ms)', NULL, 3588000, 1299999, 25, NULL, 1, 1, '2025-10-18 03:25:01', '2025-12-14 08:39:45'),
(129, 2, 2, 9, 4, 'Tai nghe Logitech G Pro X 2 LightSpeed Wireless White', NULL, 790000, 399000, 453, '<p>Tai nghe Logitech G Pro X 2 LightSpeed Wireless WhiteTai nghe không dây gaming đỉnh caoHỗ trợ 3 kết nối: Không dây LightSpeed 2.4Ghz, Bluetooth và có dây (3.5mm)Sử dụng màng loa GRAPHENE 50 mm cao cấp nhất trong thế giới tai nghe gaming, cho chất lượng âm thanh ở đẳng cấp cao nhấtKết nối không dây LightSpeed với phạm vi hoạt động lên tới 30m và thời lượng pin tới 50 giờ, độ trễ gần như bằng 0Thiết kế cho game thủ chuyên nghiệp, cho cảm giác đeo cực kỳ thoải mái, cách âm tuyệt đốiMicro chất lượng cực cao, lọc tạp âm</p>', 0, 1, '2025-10-18 03:28:31', '2025-11-20 07:00:12'),
(130, 2, 2, 9, 4, 'Tai nghe Logitech G Pro X 2 LightSpeed Wireless', NULL, 1599000, 799000, 239, '<p>Tai nghe Logitech G Pro X 2 LightSpeed WirelessTai nghe không dây gaming đỉnh caoHỗ trợ 3 kết nối: Không dây LightSpeed 2.4Ghz, Bluetooth và có dây (3.5mm)Sử dụng màng loa GRAPHENE 50 mm cao cấp nhất trong thế giới tai nghe gaming, cho chất lượng âm thanh ở đẳng cấp cao nhấtKết nối không dây LightSpeed với phạm vi hoạt động lên tới 30m và thời lượng pin tới 50 giờ, độ trễ gần như bằng 0Thiết kế cho game thủ chuyên nghiệp, cho cảm giác đeo cực kỳ thoải mái, cách âm tuyệt đốiMicro chất lượng cực cao, lọc tạp âm</p>', 0, 1, '2025-10-18 03:29:58', '2025-11-16 05:46:28'),
(131, 2, 2, 9, 4, 'Tai nghe Logitech Zone 300 Bluetooth Black', NULL, 1200000, 599000, 472, NULL, 0, 1, '2025-10-18 03:32:32', '2025-12-04 06:49:15'),
(132, 2, 2, 9, 4, 'Tai nghe logitech H151', NULL, 759000, 359000, 461, NULL, 0, 1, '2025-10-18 03:33:48', '2025-11-16 05:46:24'),
(133, 2, 2, 9, 4, 'Tai nghe Logitech G733 LIGHTSPEED Wireless Black', NULL, 899000, 399000, 500, NULL, 0, 1, '2025-10-18 03:48:38', '2025-10-18 03:48:38'),
(134, 2, 2, 9, 4, 'Tai nghe Logitech G733 LIGHTSPEED Wireless White', NULL, 1090999, 499000, 355, NULL, 0, 1, '2025-10-18 03:50:13', '2025-11-20 07:00:01'),
(135, 2, 2, 9, 4, 'Tai nghe Logitech Stereo Headset H110 0981-000459', NULL, 999999, 399999, 580, NULL, 0, 1, '2025-10-18 03:52:19', '2025-11-08 06:10:22'),
(136, 2, 2, 9, 4, 'Tai nghe Logitech G321 LightSpeed White', NULL, 899000, 399000, 423, NULL, 0, 1, '2025-10-18 03:53:55', '2025-11-20 07:00:00'),
(137, 2, 2, 9, 4, 'Tai nghe Logitech G535 LIGHTSPEED Wireless Black', NULL, 1500000, 139000, 346, NULL, 0, 1, '2025-10-23 04:04:58', '2025-11-08 06:10:24'),
(138, 2, 2, 9, 4, 'Tai nghe Logitech Stereo H370 USB', NULL, 1000000, 399000, 500, NULL, 0, 1, '2025-10-23 04:06:10', '2025-11-08 06:10:25'),
(139, 2, 2, 9, 5, 'Tai nghe Razer Barracuda X 2022', NULL, 1500000, 299999, 471, NULL, 0, 1, '2025-10-23 04:09:02', '2025-11-20 07:00:00'),
(140, 2, 2, 9, 5, 'Tai nghe Razer Barracuda X 2022 Quart', NULL, 2999999, 590000, 200, NULL, 0, 1, '2025-10-23 04:09:57', '2025-11-16 05:46:14'),
(141, 2, 2, 9, 5, 'Tai nghe Razer Kraken Kitty V3 X White', NULL, 1499999, 388999, 409, NULL, 0, 1, '2025-10-23 04:10:54', '2025-11-08 06:10:30'),
(142, 2, 2, 9, 5, 'Tai nghe Razer Kraken Kitty V3 X Quartz', NULL, 1988000, 798000, 543, NULL, 0, 1, '2025-10-23 04:11:53', '2025-11-08 06:10:31'),
(143, 2, 2, 9, 5, 'Tai nghe Razer Kraken V3 X USB', NULL, 1000000, 299999, 600, NULL, 0, 1, '2025-10-23 04:13:49', '2025-11-08 06:10:35'),
(144, 2, 2, 9, 5, 'Tai nghe Razer Kraken Kitty V2 BT Black', NULL, 1900000, 899000, 25, NULL, 0, 1, '2025-10-23 04:14:56', '2025-11-08 06:10:36'),
(145, 2, 2, 9, 5, 'Tai nghe Razer Barracuda X Chroma Black', NULL, 1590000, 399999, 600, NULL, 0, 1, '2025-10-23 04:16:07', '2025-11-08 06:10:37'),
(146, 2, 2, 9, 5, 'Tai nghe Razer BlackShark V3 Pro White', NULL, 1299000, 399999, 500, NULL, 0, 1, '2025-10-23 04:17:02', '2025-11-08 06:10:39'),
(147, 2, 2, 9, 5, 'Tai nghe Razer Kraken V4 X - Minecraft Edition', NULL, 1230000, 298666, 500, NULL, 0, 1, '2025-10-23 04:18:39', '2025-11-08 06:10:40'),
(148, 2, 2, 9, 5, 'Tai nghe Razer Hammerhead V3 Wired Earbuds', NULL, 1980222, 599000, 100, NULL, 0, 1, '2025-10-23 04:20:21', '2025-11-08 06:10:41'),
(149, 2, 2, 9, 6, 'Tai nghe HyperX Cloud Earbuds II Black', NULL, 1000000, 299999, 300, NULL, 0, 1, '2025-10-23 04:23:23', '2025-11-08 06:10:42'),
(150, 2, 2, 9, 6, 'Tai nghe HyperX Cloud III Wireless Black', NULL, 3999999, 1999999, 50, NULL, 0, 1, '2025-10-23 04:24:14', '2025-11-08 06:10:43'),
(151, 2, 2, 9, 6, 'Tai nghe HyperX Cloud III Wireless Black Red', NULL, 599999, 259000, 700, NULL, 0, 1, '2025-10-23 04:26:18', '2025-11-08 06:10:44'),
(152, 2, 2, 9, 6, 'Tai nghe HyperX Cloud Alpha 2 Wireless', NULL, 299000, 199000, 600, NULL, 0, 1, '2025-10-23 04:27:55', '2025-11-08 06:10:45'),
(153, 2, 2, 9, 6, 'Tai nghe HP HyperX Cloud JET Blue Wireless', NULL, 5999990, 1199999, 311, NULL, 1, 1, '2025-10-23 04:29:23', '2025-12-10 08:06:37'),
(154, 2, 2, 9, 60, 'Tai nghe Corsair Void V2 Wireless White', NULL, 5099999, 1199888, 109, NULL, 0, 1, '2025-10-23 04:33:54', '2025-11-16 05:45:53'),
(155, 2, 2, 9, 60, 'Tai nghe Corsair HS80 MAX Wireless Steel Gray', NULL, 1499999, 599999, 600, NULL, 0, 1, '2025-10-23 04:35:10', '2025-11-20 06:59:58'),
(156, 2, 2, 9, 60, 'Tai nghe Corsair HS35 V2 Blue', NULL, 2000000, 899000, 289, NULL, 0, 1, '2025-10-23 04:36:04', '2025-11-20 06:59:57'),
(157, 2, 2, 9, 60, 'Tai nghe Corsair HS55 Stereo White', NULL, 3000000, 1299999, 497, NULL, 0, 1, '2025-10-23 04:37:05', '2025-11-16 05:45:55'),
(158, 2, 2, 9, 60, 'Tai nghe Corsair Virtuoso Wireless SE', NULL, 1500000, 399000, 399, NULL, 0, 1, '2025-10-23 04:38:08', '2025-11-20 06:59:56'),
(159, 2, 2, 9, 60, 'Tai nghe Corsair HS55 Surround White', NULL, 2999999, 1234000, 90, NULL, 0, 1, '2025-10-23 04:39:53', '2025-11-16 05:45:57'),
(160, 2, 2, 9, 60, 'Tai nghe Corsair Virtuoso RGB Wireless SE Espresso', NULL, 239000, 205000, 689, NULL, 1, 1, '2025-10-23 04:40:52', '2025-12-14 04:02:57'),
(161, 2, 2, 9, 60, 'Tai nghe Corsair HS55 Surround Carbon', NULL, 1299000, 799000, 299, NULL, 0, 1, '2025-10-23 04:42:08', '2025-11-20 06:59:54'),
(162, 2, 2, 9, 61, 'Tai nghe Fuhlen H200S 7.1', NULL, 699999, 299000, 743, NULL, 0, 1, '2025-10-23 04:47:54', '2025-11-16 05:46:03'),
(163, 2, 2, 9, 61, 'Tai nghe Fuhlen H300S 7.1', NULL, 999999, 599000, 643, NULL, 0, 1, '2025-10-23 04:49:58', '2025-10-23 04:49:58'),
(164, 2, 2, 9, 61, 'Tai nghe Fuhlen GH90S Wireless Black', NULL, 999999, 299999, 533, NULL, 0, 1, '2025-10-23 04:50:46', '2025-11-11 09:58:40'),
(165, 2, 2, 9, 61, 'Tai nghe Fuhlen GH90S Wireless White', NULL, 888889, 333333, 698, NULL, 0, 1, '2025-10-23 04:51:56', '2025-10-23 04:51:56'),
(166, 17, 2, 5, 31, 'Laptop Apple MacBook Air 13 inch M4 10CPU/10GPU/16GB/512GB - SkyBlue MC6U4SA/A', NULL, 30000000, 15000000, 30, NULL, 0, 1, '2025-10-23 04:57:24', '2025-10-23 04:57:24'),
(167, 17, 2, 5, 31, 'Laptop Apple MacBook Air 13 inch M4 10CPU/10GPU/16GB/512GB - Starlight MW103SA/A', NULL, 49000000, 29999000, 30, NULL, 0, 1, '2025-10-23 04:58:35', '2025-10-23 04:58:35'),
(168, 17, 2, 5, 31, 'Laptop Apple MacBook Air 13 inch M2 8CPU/8GPU/16GB/256GB - Midnight MC7X4SA/A - Chính Hãng Apple Việt Nam', NULL, 29999000, 15999000, 20, NULL, 0, 1, '2025-10-23 04:59:32', '2025-10-23 04:59:32'),
(169, 17, 2, 5, 31, 'Laptop Apple MacBook Air 13 inch M2 8CPU/8GPU/16GB/256GB - Starlight MC7W4SA/A - Chính Hãng Apple Việt Nam', NULL, 25999000, 18999000, 15, NULL, 0, 1, '2025-10-23 05:00:23', '2025-10-23 05:00:23'),
(170, 17, 2, 5, 31, 'Laptop Apple MacBook Air 13 inch M4 10CPU/10GPU/16GB/512GB - Midnight MW133SA/A', NULL, 29966000, 12999000, 40, NULL, 0, 1, '2025-10-23 05:01:31', '2025-10-23 05:01:31'),
(171, 17, 2, 5, 31, 'Macbook Air M2 8GPU 8GB 256GB - Space Gray', NULL, 17899999, 9000000, 50, NULL, 0, 1, '2025-10-23 05:03:10', '2025-10-23 05:03:10'),
(172, 17, 2, 5, 31, 'Macbook Air M2 10GPU 8GB 512GB - Silver', NULL, 49999999, 10000000, 44, NULL, 0, 1, '2025-10-23 05:04:28', '2025-10-23 05:04:28'),
(173, 17, 2, 5, 53, 'MacBook Pro 14 inch M4 (10CPU | 10GPU | 16GB | 512GB | SPACE BLACK) MW2U3SA/A - Chính Hãng Apple Việt Nam', NULL, 49999999, 25555999, 12, NULL, 0, 1, '2025-10-23 05:06:49', '2025-10-23 05:06:49'),
(174, 17, 2, 5, 53, 'MacBook Pro 16 inch M4 PRO (14CPU | 20GPU | 48GB | 512GB | SPACE BLACK) MX2Y3SA/A - Chính Hãng Apple Việt Nam', NULL, 45689000, 25555777, 9, NULL, 0, 1, '2025-10-23 05:07:37', '2025-10-23 05:07:37'),
(175, 17, 2, 5, 53, 'MacBook Pro 16 inch M4 PRO (16CPU | 20GPU | 48GB | 512GB | SPACE BLACK) MX2Y3SA/A - Chính Hãng Apple Việt Nam', NULL, 23000000, 12999999, 34, NULL, 0, 1, '2025-10-23 06:46:57', '2025-10-23 06:46:57'),
(176, 17, 2, 5, 53, 'MacBook Pro 16 inch M4 PRO (18CPU | 20GPU | 48GB | 512GB | SPACE BLACK) MX2Y3SA/A - Chính Hãng Apple Việt Nam', NULL, 49000000, 19000000, 20, NULL, 1, 1, '2025-10-23 06:48:54', '2025-12-14 04:06:07'),
(177, 17, 2, 4, 32, 'Laptop Lenovo Legion 5 15IRX10 83LY00HQVN (Intel Core i7-13650HX | RTX 5060 8GB | 15.3 inch WUXGA IPS | 16GB | 512GB | Win 11 | Office | Đen)', NULL, 23999000, 12990888, 34, NULL, 0, 1, '2025-10-23 06:53:50', '2025-10-23 06:53:50'),
(178, 17, 2, 4, 32, 'Laptop MSI Crosshair 16 HX AI D2XWGKG-071VN (Intel Core Ultra 9 275HX | RTX 5070 8GB | 16 inch QHD+ 240Hz | 32GB | 1TB | Win 11 | Xám)', NULL, 23999777, 12888999, 23, NULL, 0, 1, '2025-10-23 06:55:04', '2025-10-23 06:55:04'),
(179, 17, 2, 4, 32, 'Laptop Lenovo Yoga Pro 7 14IAH10 83KF002BVN (Intel Core Ultra 9 285H | Intel Arc 140T GPU | 14.5 inch 3K OLED 120Hz | Cảm ứng | 1TB | 32GB | Win 11 | Office | Xám)', NULL, 45000999, 23999000, 56, NULL, 0, 1, '2025-10-23 06:56:31', '2025-10-23 06:56:31'),
(180, 17, 2, 4, 32, 'LAPTOP LENOVO', NULL, 12999000, 3400777, 29, NULL, 1, 1, '2025-10-23 07:13:02', '2025-12-14 23:41:01'),
(181, 17, 2, 4, 32, 'Laptop Lenovo LOQ 15ARP9 83JC00LVVN ( AMD Ryzen 5 7235HS | RTX 3050 6GB | 15.6 inch FHD IPS | 16GB | 512GB | Win 11 | Xám)', NULL, 23555666, 12666777, 36, NULL, 0, 1, '2025-10-23 07:14:48', '2025-10-23 07:14:48'),
(182, 17, 2, 4, 32, 'Laptop Lenovo IdeaPad Slim 5 14IRH10R 83J0006EVN (Intel Core 5 210H | Integrated Intel Graphics | 14 inch WUXGA | 16GB | 512GB | Windows 11 Home | Xám)', NULL, 12000000, 5667888, 67, NULL, 0, 1, '2025-10-23 07:16:01', '2025-10-23 07:16:01'),
(183, 17, 2, 4, 32, 'Laptop Lenovo Yoga Slim 7 14ILL10 83JX0086VN (Intel Core Ultra 5 226V | 512GB | 16GB | Intel Arc | 14 inch 2.8K WQXGA+ OLED 120Hz | Win 11 | Office | Bạc)', NULL, 23000999, 11000000, 35, NULL, 1, 1, '2025-10-23 07:16:55', '2025-12-11 16:32:16'),
(184, 17, 2, 4, 32, 'Laptop Lenovo Yoga 9 2in1 14ILL10 83LC002LVN (Intel Core Ultra 7 258V | 1TB | 32GB | Intel Arc | 14 inch 4K 60Hz | Win 11 | Office | Xanh)', NULL, 23999000, 10999888, 99, NULL, 0, 1, '2025-10-23 07:18:05', '2025-10-23 07:18:05'),
(185, 17, 2, 4, 32, 'Laptop Lenovo IdeaPad Slim 5 OLED 15ARP10 83J3002SVN (AMD Ryzen 7 7735HS | 32GB | 512GB | AMD Radeon 680M | 15.1 inch WQXGA | Win 11 | Xám)', NULL, 2600000, 1200000, 80, NULL, 1, 1, '2025-10-23 07:22:33', '2025-12-09 16:48:43'),
(186, 17, 2, 8, 52, 'Laptop gaming ASUS Vivobook K3605VC RP431W', NULL, 21000000, 11000000, 34, NULL, 0, 1, '2025-10-23 07:28:47', '2025-10-23 07:28:47'),
(187, 17, 2, 8, 52, 'Laptop gaming ASUS V16 V3607VH RP024W', NULL, 23000000, 14000000, 10, NULL, 1, 1, '2025-10-23 07:30:38', '2025-12-10 08:03:04'),
(188, 17, 2, 8, 52, 'Laptop gaming ASUS ROG Strix SCAR 18 G835LW SA172W', NULL, 12999000, 6999999, 45, NULL, 0, 1, '2025-10-23 07:32:13', '2025-10-23 07:32:13'),
(189, 17, 2, 8, 52, 'Laptop ASUS Gaming Vivobook 16X K3605VC-RP431W (Intel Core i5-13420H | RTX 3050 4GB | 16 inch WUXGA IPS | 16GB | 512GB | Win 11 | Đen)', NULL, 34000000, 12000000, 25, NULL, 0, 1, '2025-10-23 07:33:31', '2025-10-23 07:33:31'),
(190, 17, 2, 8, 52, 'Laptop ASUS Vivobook S14 S3407CA-LY096WS (Intel Core Ultra 7 Processor 255H | 16GB | 512GB | Intel UHD | 14 inch WUXGA IPS | Win 11 | Office | Xám)', NULL, 14000000, 3999999, 54, NULL, 0, 1, '2025-10-23 07:34:41', '2025-10-23 07:34:41'),
(191, 17, 2, 8, 52, 'Laptop Asus Vivobook S 14 OLED M5406WA-PP071WS (AMD Ryzen AI 9 HX 370 | 32GB | 1TB | AMD Radeon | 14 inch 3K OLED 120Hz | Win 11 | Bạc)', NULL, 24000000, 12000999, 30, NULL, 1, 1, '2025-10-23 07:35:54', '2025-12-14 06:02:58'),
(192, 17, 2, 8, 52, 'Laptop Asus Vivobook S16 S3607CA-SH082WS (Intel Core Ultra 5 225H | 16GB | 512GB | Intel Arc | 16 inch FHD OLED 60Hz | Win 11 | Office | Xám)', NULL, 23000000, 12000000, 32, NULL, 0, 1, '2025-10-23 07:37:08', '2025-10-23 07:37:08'),
(193, 17, 2, 8, 52, 'Laptop Asus Vivobook 14 A1407CA-LY008WS (Intel Core Ultra 5 225H | 16GB | 512GB | Intel Arc | 14 inch WUXGA IPS | Win 11 | Office | Bạc)', NULL, 21099999, 14999999, 24, NULL, 0, 1, '2025-10-23 07:38:27', '2025-11-08 06:10:52'),
(194, 17, 2, 8, 52, 'Laptop Asus Vivobook S 14 Flip TP3402VA-LZ632W (Intel Core i5-13420H | 16GB | 512GB | Intel UHD | 14 inch WUXGA IPS | Win 11 | Bạc)', NULL, 34000999, 15500099, 54, NULL, 0, 1, '2025-10-23 07:41:48', '2025-11-12 17:25:51'),
(195, 17, 2, 20, 62, 'Laptop HP Pavilion 15-eg3094TU 8C5L5PA (Core i5-1335U | 8GB | 512GB | Intel Iris Xe | 15.6 inch FHD | Windows 11 | Vàng)', NULL, 35900999, 13999999, 56, NULL, 0, 1, '2025-10-23 07:44:51', '2025-11-12 17:25:49'),
(196, 17, 2, 20, 62, 'Laptop HP VICTUS 15-fa2731TX B85LNPA (Intel Core i5-13420H | RTX 3050 | 15.6 inch FHD 144Hz | 16GB | 512GB | Win 11 | Đen)', NULL, 43000000, 11999000, 61, NULL, 1, 1, '2025-10-23 07:45:51', '2025-12-12 18:12:52'),
(197, 17, 2, 20, 62, 'Laptop HP 15-fd1045TU 9Z2X1PA (Intel Core 5 120U | 16GB | 512GB | Intel Arc | 15.6 inch FHD | Win 11 | Bạc)', NULL, 12377999, 3000999, 34, NULL, 0, 1, '2025-10-23 07:47:32', '2025-11-12 17:25:43'),
(198, 17, 2, 20, 62, 'Laptop Gaming OMEN 14-fb0135TX AY8V1PA (Intel Core Ultra 7 155H | RTX 4060 8GB | 14 inch 2.8K OLED 120Hz | 16GB | 1TB | Win 11 )', NULL, 34000000, 12000000, 64, NULL, 0, 1, '2025-10-23 07:49:44', '2025-11-12 17:25:42'),
(199, 17, 2, 20, 62, 'Laptop HP VICTUS 16-r0228TX 9Q979PA (Intel Core i5-13500H | RTX 4050 6GB GDDR6 | 16.1 inch FHD | 32GB | 512GB | Windows 11 Home | Đen)', NULL, 56000000, 23000000, 54, NULL, 1, 1, '2025-10-23 07:53:03', '2025-12-14 09:58:53'),
(200, 17, 2, 20, 62, 'Laptop HP VICTUS 15-fb3115AX BX9C9PA (AMD Ryzen 7 7445H | RTX 4050 | 15.6 inch FHD 144Hz | 16GB | 512GB | Win 11 | Đen)', NULL, 34567999, 13999999, 31, NULL, 0, 1, '2025-10-23 07:54:50', '2025-11-12 17:25:40'),
(201, 17, 2, 20, 62, 'Laptop HP VICTUS 16-r0223TX 9Q974PA (Intel Core i7-13700H | RTX 4070 8GB GDDR6 | 16.1 inch FHD | 32GB | 512GB | Windows 11 Home | Bạc)', NULL, 32000999, 11999999, 65, NULL, 0, 1, '2025-10-23 07:55:48', '2025-11-12 17:25:39'),
(202, 17, 2, 20, 62, 'Laptop HP EliteBook 6 G1i 13 BQ9L8PT (Intel Core Ultra 5 225U | 16GB | 512GB | Intel Graphics | 13.3 inch WUXGA IPS | Win 11 | Bạc)', NULL, 76000000, 15999000, 38, NULL, 0, 1, '2025-10-23 07:57:05', '2025-11-12 17:25:38'),
(203, 18, 2, 19, 33, 'Bàn phím cơ không dây E-Dra EK398W (Light Gray + White + Dark Gray)', NULL, 2500000, 1990000, 394, '<p>&lt; Đang cập nhập &gt;</p>', 1, 1, '2025-11-20 02:32:39', '2025-12-14 11:04:35'),
(204, 18, 2, 19, 33, 'Bàn phím cơ không dây E-Dra EK398W (Black + White + Green)', NULL, 850000, 400000, 428, '<p>Keycap</p><p>PBT</p><p>RGB</p><p>Led RGB</p><p>Pin</p><p>4000 mAh</p><p>Trọng lượng</p><p>795g</p><p>Bảo hành</p><p>24 tháng</p><p>Tính năng</p><p>Hot-swap / Anti-ghosting</p><p>Layout</p><p>Fullsize (97 phím)</p><p>Kích thước</p><p>394 x 145 x 43 (mm)</p><p>Kết nối</p><p>Có dây / 2.4Ghz / Bluetooth</p><p>Switch</p><p>Blueberry Linear</p>', 1, 1, '2025-11-20 02:34:15', '2025-12-04 03:26:30'),
(205, 18, 2, 19, 33, 'Bàn phím cơ E-Dra không dây EK375 Pro Beta Red Switch', NULL, 1290000, 499000, 467, '<figure class=\"table\"><table><tbody><tr><td><strong>Loại kết nối</strong></td><td>Bluetooth | USB | 2.4Ghz</td></tr><tr><td><strong>Cấu trúc</strong></td><td>TKL (81 phím)</td></tr><tr><td><strong>Keycap</strong></td><td>PBT Double-Shot</td></tr><tr><td><strong>Switch</strong></td><td>E-Dra Red switch<br>Hotswap (5 pin mạch xuôi)</td></tr><tr><td><strong>Pin</strong></td><td>4000 mAh</td></tr><tr><td><strong>Tương thích hệ điều hành</strong></td><td>Windows</td></tr><tr><td><strong>LED&nbsp;</strong></td><td>RGB</td></tr><tr><td><strong>Màn hình</strong></td><td>Màn hình TFT điều chỉnh bằng software</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 02:37:00', '2025-11-20 07:01:41'),
(206, 18, 2, 19, 33, 'Bàn phím cơ gaming E-Dra EK375v2 Alpha Linear switch', NULL, 690000, 400000, 692, '<h2><strong>Thông tin sản phẩm</strong></h2><ul><li>Giao diện: USB</li><li>Cấu trúc Gasket – Tốt nhất cho phím cơ</li><li>Foam case silicon</li><li>Số lượng phím: 82 phím</li><li>Cáp bàn phím: Type-C</li><li>Keycaps: PBT Doubleshot</li><li>Led Rainbow</li><li>Antighosting: full antishosting keys</li><li>Tương thích hệ điều hành: Windows</li><li>Màu sắc: Case đen, keycap Xanh-Đen</li><li>Switch: E-DRA Linear Custom Switch</li><li>Bảo hành: 24 tháng</li></ul>', 0, 1, '2025-11-20 02:39:13', '2025-11-20 02:39:13'),
(207, 18, 2, 19, 33, 'Bàn phím chơi game cơ E-Dra EK384 Triple Mode Beta Brown Switch', NULL, 899000, 499000, 456, '<h2><strong>Bàn phím chơi game cơ E-Dra EK384 Triple Mode Beta Brown Switch</strong></h2><p><strong>Thông số kỹ thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td>E-Dra</td></tr><tr><td><strong>Mẫu bàn phím&nbsp;</strong></td><td>Bàn phím cơ E-DRA EK384&nbsp;Triple Mode</td></tr><tr><td><strong>Số lượng phím</strong></td><td>84 phím</td></tr><tr><td><strong>Pin:</strong></td><td>1200 mAh</td></tr><tr><td><strong>Switch</strong></td><td>Brown switch</td></tr><tr><td><strong>Keycaps</strong></td><td>ABS double injection</td></tr><tr><td><strong>Antishosting</strong></td><td>Full antishosting</td></tr><tr><td><strong>Cáp bàn phím</strong></td><td>Type-C</td></tr><tr><td><strong>LED</strong></td><td>RGB</td></tr><tr><td><strong>Cân nặng</strong></td><td>750G</td></tr><tr><td><strong>Tương thích:</strong></td><td>Win XP, Win7, Win8, Win10, hệ thống MAC.</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 02:41:41', '2025-11-20 07:01:40'),
(208, 18, 2, 19, 33, 'Bàn phím cơ E-Dra không dây EK375 Pro Alpha Blue Switch', NULL, 1299000, 599000, 435, '<p><strong>Thông số kỹ thuật</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Loại kết nối</strong></td><td>Bluetooth | USB | 2.4Ghz</td></tr><tr><td><strong>Cấu trúc</strong></td><td>TKL (81 phím)</td></tr><tr><td><strong>Keycap</strong></td><td>PBT Double-Shot</td></tr><tr><td><strong>Switch</strong></td><td>E-Dra Blue switch<br>Hotswap (5 pin mạch xuôi)</td></tr><tr><td><strong>Pin</strong></td><td>4000 mAh</td></tr><tr><td><strong>Tương thích hệ điều hành</strong></td><td>Windows</td></tr><tr><td><strong>LED&nbsp;</strong></td><td>RGB</td></tr><tr><td><strong>Màn hình</strong></td><td>Màn hình TFT điều chỉnh bằng software</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 02:46:48', '2025-11-20 02:46:48'),
(209, 18, 2, 19, 33, 'Bàn phím E-Dra EK375W White', NULL, 990000, 399000, 257, NULL, 1, 1, '2025-11-20 02:48:32', '2025-12-11 16:49:11'),
(210, 18, 2, 19, 33, 'Bàn phím E-Dra EK312 Beta Brown Switch', NULL, 1299000, 690999, 45, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>Thế giới của sự đam mê và hiệu suất với bàn phím chơi game cơ E-DRA EK312 - BETA. Một trải nghiệm&nbsp;hoàn toàn mới đối với các game thủ đích thực đòi hỏi độ chính xác cao và thời gian phản ứng nhanh nhạy. Lựa chọn &nbsp;Hãy cùng <a href=\"https://gearvn.com/\">GEARVN</a> khám phá&nbsp;Bàn phím E-Dra&nbsp;- công nghệ tiên tiến mang đến sự phản ứng tối ưu, giúp bạn chinh phục mọi thách thức trong thế giới game.</p><p><img src=\"https://product.hstatic.net/200000722513/product/478_z4737225268402_8c6b931cc6bc7_8038c8fd189c46569d08719cb0073477_grande.png\"></p><p><strong>Thiết kế chắc chắn, hiện đại</strong></p><p>Đảm bảo cảm giác gõ phím mượt mà và tăng độ bền cho sản phẩm, <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ </a>chơi game cơ E-Dra EK312 được thiết kế với chất liệu chắc chắn và cứng cáp. Bộ <a href=\"https://gearvn.com/collections/keycaps\">keycap</a> được sử dụng làm bằng nhựa ABS với công nghệ doubleshot (2 lớp), giúp tăng tính bền bỉ và độ chắc chắn.</p><p>Với layout chuẩn ANSI, việc thay thế keycap trở nên dễ dàng và linh hoạt hơn bao giờ hết, mang đến sự tiện lợi cho người dùng. Các chi tiết như stabilizer được điều chỉnh tỉ mỉ, giúp cảm giác gõ phím mạnh mẽ và không bị giật lên, giữ cho trải nghiệm gõ phím luôn ổn đỉnh.</p><p><img src=\"https://product.hstatic.net/200000722513/product/478_z4737225302566_50a04454547c3_3b4d636b43b2424da0fe411364b5667b_grande.png\"></p><p><strong>Thao tác linh hoạt, mượt mà</strong></p><p>Với mức giá chưa tới 1 triệu,<a href=\"https://gearvn.com/collections/ban-phim-e-dra\"> bàn phím E-Dra</a> EK312 mang lại cảm giác gõ phím tuyệt vời, với đèn <a href=\"https://gearvn.com/collections/fan-led-trang-tri\">LED </a>Rainbow dễ dàng phù hợp với túi tiền của người dùng. Mặc dù chỉ được trang bị với đèn LED Rainbow, nhưng độ sáng và đồng đều của ánh sáng trên các phím vẫn là điểm nổi bật. Đèn LED Rainbow được tích hợp trên bàn phím với màu đen phân màu theo vùng, tạo nên hiệu ứng mắt mắt đẹp mắt và thu hút.</p>', 0, 1, '2025-11-20 02:50:04', '2025-11-20 02:50:04'),
(211, 18, 2, 19, 33, 'Bàn phím chơi game cơ E-Dra EK398 Pro Triple Mode Brown Switch', NULL, 1299000, 490000, 65, NULL, 0, 1, '2025-11-20 02:51:34', '2025-11-20 02:51:34'),
(212, 18, 2, 19, 33, 'Bàn phím cơ E-Dra không dây EK375 Pro Alpha Brown Switch', NULL, 1990000, 599000, 20, '<p><strong>Thông số kỹ thuật</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Loại kết nối</strong></td><td>Bluetooth | USB | 2.4Ghz</td></tr><tr><td><strong>Cấu trúc</strong></td><td>TKL (81 phím)</td></tr><tr><td><strong>Keycap</strong></td><td>PBT Double-Shot</td></tr><tr><td><strong>Switch</strong></td><td>E-Dra Brown switch<br>Hotswap (5 pin mạch xuôi)</td></tr><tr><td><strong>Pin</strong></td><td>4000 mAh</td></tr><tr><td><strong>Tương thích hệ điều hành</strong></td><td>Windows</td></tr><tr><td><strong>LED&nbsp;</strong></td><td>RGB</td></tr><tr><td><strong>Màn hình</strong></td><td>Màn hình TFT điều chỉnh bằng software</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 02:53:30', '2025-11-20 02:53:30'),
(213, 18, 2, 9, 34, 'Bàn phím có dây Logitech G515 RAPID TKL RGB White', NULL, 4300000, 1299000, 150, '<h4><strong>Thông số kỹ thuật</strong></h4><p>Kích thước</p><p>354.75 x 146 x 22mm (Dài x Rộng x Cao)</p><p>Trọng lượng</p><p>800g</p><p>Kết nối</p><p>Có dây</p><p>Switch</p><p>Analog</p><p>Tính năng</p><p>Rapid trigger</p><p>Layout</p><p>TKL Low-profile</p><p>Keycap</p><p>PBT Double-shot</p><p>Bảo hành</p><p>24 tháng</p><p>RGB</p><p>LIGHTSYNC RGB</p>', 0, 1, '2025-11-20 02:56:47', '2025-11-20 02:56:47'),
(214, 18, 2, 9, 34, 'Bàn phím có dây Logitech G515 RAPID TKL RGB Black', NULL, 4299000, 2990000, 156, '<h2><strong>Cấu hình</strong></h2><p>Trọng lượng</p><p>800g</p><p>Kích thước</p><p>354.75 x 146 x 22mm (Dài x Rộng x Cao)</p><p>Bảo hành</p><p>24 tháng</p><p>Keycap</p><p>PBT Double-shot</p><p>RGB</p><p>LIGHTSYNC RGB</p>', 0, 1, '2025-11-20 02:58:15', '2025-11-20 02:58:15'),
(215, 18, 2, 9, 34, 'Bàn phím Logitech G515 TKL Lightspeed Wireless RGB Đen', NULL, 1299000, 699000, 333, NULL, 0, 1, '2025-11-20 03:01:45', '2025-11-20 03:01:45'),
(216, 18, 2, 9, 34, 'Bàn phím Logitech G512 GX RGB Tactile', NULL, 4999000, 1999000, 30, NULL, 0, 1, '2025-11-20 03:03:00', '2025-11-20 03:03:15'),
(217, 18, 2, 9, 34, 'Bàn phím Logitech G512 GX RGB Linear', NULL, 3999000, 1599000, 60, NULL, 0, 1, '2025-11-20 03:04:22', '2025-11-20 03:04:22'),
(218, 18, 2, 9, 34, 'Bàn phím không dây Logitech Alto Keys K98M Graphite', NULL, 3700000, 1299000, 199, '<h2><strong>Cấu hình</strong></h2><p>Bảo hành</p><p>12 tháng</p><p>RGB</p><p>Đèn nền (Trắng)</p><p>Switch</p><p>Marble linear</p><p>Pin</p><p>12 tháng (Tắt đèn)</p><p>Layout</p><p>Fullsize (98 phím)</p>', 0, 1, '2025-11-20 03:06:24', '2025-11-20 03:06:24'),
(219, 18, 2, 9, 34, 'Bàn phím Logitech Pebble Keys 2 K380S Graphite', NULL, 4990000, 2990000, 23, '<h2><strong>Thông số kỹ thuật :</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:</strong></td><td>Logitech</td></tr><tr><td><strong>Model:</strong></td><td>Bàn Phím Bluetooth Logitech K380S</td></tr><tr><td><strong>Màu sắc:</strong></td><td>Đen</td></tr><tr><td><strong>Loại kết nối:&nbsp;</strong></td><td><p>Không dây - Bluetooth</p><p>Ghép cặp với nhiều thiết bị (lên tới 3 thiết bị)</p></td></tr><tr><td><strong>Phạm vi không dây:&nbsp;</strong></td><td>10m</td></tr><tr><td><strong>Loại bàn phím:</strong></td><td>TKL</td></tr><tr><td><strong>Pin:</strong></td><td>2 x AAA</td></tr><tr><td><strong>Tuổi thọ pin:</strong></td><td>36 tháng</td></tr><tr><td><strong>Đèn chỉ báo (LED):</strong></td><td>LED pin, 3 LED kênh&nbsp;<i>Bluetooth</i></td></tr><tr><td><strong>Kết nối / Nguồn:&nbsp;</strong></td><td>Công tắc bật/tắt</td></tr><tr><td><strong>Kích thước:</strong></td><td><p><strong>Chiều cao</strong>: 124 mm</p><p><strong>Chiều rộng</strong>: 279 mm</p><p><strong>Chiều dày</strong>: 16 mm</p></td></tr><tr><td><strong>Trọng lượng:</strong></td><td>415&nbsp;g</td></tr><tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Tương thích:</strong></p></td><td><p>Yêu cầu: Bluetooth Low Energy</p><p>Windows® 10, 11 trở lên</p><p>macOS 11 trở lên</p><p>iPadOS 14 trở lên</p><p>iOS 14 trở lên</p><p>Android™ 9.0 trở lên</p><p>ChromeOS™</p><p>Linux®</p><p>Hoạt động với Chromebook</p><p>Tương thích với đầu thu USB Logi Bolt (không đi kèm).</p></td></tr></tbody></table></figure>', 0, 1, '2025-11-20 03:10:30', '2025-11-20 03:10:30'),
(220, 18, 2, 9, 34, 'Bàn phím Logitech G715 TKL Off White Linear (920-010693)', NULL, 2999999, 999999, 49, '<p><strong>Thông số kỹ thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td>Logitech</td></tr><tr><td><strong>Model</strong></td><td>Logitech G715 TKL Off White</td></tr><tr><td><strong>Màu</strong></td><td>Trắng</td></tr><tr><td><strong>Kết nối</strong></td><td>Công nghệ LIGHTSPEED không dây<br>Bluetooth</td></tr><tr><td><strong>Switch</strong></td><td>Linear</td></tr><tr><td><strong>Kích thước</strong></td><td>370,6 mm x 157 mm x 37,2 mm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>976 g</td></tr><tr><td><strong>Pin</strong></td><td><p>Pin lithium polyme<br>Có thể sạc lại với thời lượng sử dụng lên đến 30 giờ</p><p>(Cổng sạc USB-C, có dây đi kèm)</p></td></tr><tr><td><strong>Thiết kế</strong></td><td>TKL 87 phím</td></tr><tr><td><strong>Keycap&nbsp;</strong></td><td>PBT đúc 2 lớp</td></tr><tr><td><strong>Phím phương tiện</strong></td><td>Có,&nbsp;bao gồm núm xoay âm lượng</td></tr></tbody></table></figure>', 1, 1, '2025-11-20 03:11:45', '2025-12-15 07:24:01'),
(221, 18, 2, 9, 34, 'Bộ Bàn Phím và Chuột Logitech MK240 Wireless', NULL, 3999000, 1599000, 57, '<h2><strong>Bộ bàn phím và chuột Logitech MK240 Wireless</strong></h2><p><strong>Thông số sản phẩm:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:</strong></td><td>Logitech</td></tr><tr><td><strong>Chủng loại:</strong></td><td>Bộ bàn phím và chuột Logitech MK240 Wireless</td></tr><tr><td><strong>Chuẩn bàn phím:</strong></td><td>Không dây</td></tr><tr><td><strong>Chuẩn giao tiếp:</strong></td><td>USB 2.0</td></tr><tr><td><strong>Màu:</strong></td><td>Đen</td></tr><tr><td><strong>DPI chuột:</strong></td><td>1000 DPI</td></tr><tr><td><strong>Ngôn ngữ:</strong></td><td>Tiếng Anh</td></tr><tr><td><strong>Các chức năng đặc biệt:</strong></td><td><ul><li>Thiết kế nhỏ gọn</li><li>Tuổi thọ pin cao (khoảng 12 tháng)</li><li>Khả năng chống nước tốt</li></ul></td></tr><tr><td><strong>Phụ kiện đi kèm:</strong></td><td>Hộp</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 03:13:20', '2025-11-20 03:13:20'),
(222, 18, 2, 19, 34, 'Bàn phím Logitech G913 TKL Lightspeed Wireless Linear', NULL, 2999000, 1599000, 78, '<p><strong>Thông số kỹ thuật</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Switch</strong></td><td>GL (Clicky / Tactile / Linear)</td></tr><tr><td><strong>Lực nhấn</strong></td><td>50g</td></tr><tr><td><strong>Khoảng cách hành trình</strong></td><td>1.5mm</td></tr><tr><td><strong>Tổng khoảng cách hành trình</strong></td><td>2.7mm</td></tr><tr><td><strong>Kết nối</strong></td><td>Wireless / Bluetooth</td></tr><tr><td><strong>Pin</strong></td><td>40h (độ sáng led 100%)</td></tr><tr><td><strong>LED</strong></td><td>Lightsync RGB</td></tr><tr><td><strong>Số lượng phím</strong></td><td>87 phím + 9 phím chức năng</td></tr><tr><td><strong>Kích thước</strong></td><td>Dài 368 x Rộng 150 x Cao 22</td></tr><tr><td><strong>Trọng lượng</strong></td><td>810g</td></tr><tr><td><strong>Độ dài dây</strong></td><td>1.8m</td></tr><tr><td><strong>Bộ nhớ tích hợp</strong></td><td>2 cấu hình LED<br>3 cấu hình macro</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 03:14:26', '2025-11-20 03:14:26'),
(223, 18, 2, 9, 34, 'Bàn phím Logitech Pop Icon Keys Wireless White', NULL, 3899000, 1299000, 43, '<h4><strong>Thông số kỹ thuật</strong></h4><p>Loại bàn phím</p><p>Low-Profile không dây</p><p>Thương hiệu</p><p>Logitech</p><p>Bảo hành</p><p>12 tháng</p><p>Kết nối</p><p>Không dây / có dây</p><p>Trọng lượng</p><p>530g</p><p>Phần mềm</p><p>Logi Options+</p><p>Kích thước</p><p>136.96 x 324.51 x 22</p><p>Số phím</p><p>85</p><p>Layout</p><p>Minimalist</p><p>Loại pin</p><p>Pin sạc 2x AAA</p>', 0, 1, '2025-11-20 03:15:53', '2025-11-20 03:15:53'),
(224, 18, 2, 9, 47, 'Bàn phím cơ DareU EK75 Rapid Trigger Black', NULL, 899000, 899000, 487, '<h2><strong>Cấu hình</strong></h2><p>Kích thước</p><p>333 x 140 x 40mm</p><p>Trọng lượng</p><p>740g</p><p>Tính năng</p><p>Hot-swap</p><p>Keycap</p><p>Cherry profile / PBT Double-Shot</p><p>RGB</p><p>LED RGB</p>', 0, 1, '2025-11-20 03:25:33', '2025-11-20 03:25:33'),
(225, 18, 2, 9, 47, 'Bàn phím cơ Gaming DAREU EK87 v2 Gray Black Dream Switch', NULL, 999000, 499000, 45, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>&nbsp;</p><h2><strong>Đánh giá bàn phím cơ Gaming DAREU EK87 GRAY BLACK</strong></h2><p><i><strong>Bàn phím cơ Gaming DAREU EK87 v2 GRAY BLACK</strong></i> là sự kết hợp hoàn hảo giữa thiết kế sang trọng và hiệu năng mạnh mẽ. Với cảm giác gõ mượt mà và phản hồi nhanh nhạy đây hứa hẹn là sản phẩm tuyệt vời dành cho các game thủ trong quá trình chơi game của mình. Cùng <a href=\"https://gearvn.com/\">GEARVN</a> tìm hiểu chi tiết thông tin sản phẩm thông qua nội dung dưới đây nhé!</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-co-gaming-dareu-ek87-v2-gray-black-dream-switch-__1__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ Gaming DAREU EK87 v2 Gray Black Dream Switch\"></p><h3><strong>Thiết kế đẹp mắt, hiệu năng ấn tượng</strong></h3><p>DAREU EK87 v2 GRAY BLACK là một <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ</a>&nbsp;giá rẻ, sở hữu thiết kế đẹp mắt với hai tông màu xám đen và dải đèn LED RGB độc đáo ở hai bên. Với 87 phím tiêu chuẩn, bàn phím phù hợp với đa số người dùng, không quá cồng kềnh và tiện lợi cho việc di chuyển. Bàn phím sử dụng switch DareU DREAM (Linear) mang đến trải nghiệm gõ phím êm ái và nhẹ nhàng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-co-gaming-dareu-ek87-v2-gray-black-dream-switch-__10__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ Gaming DAREU EK87 v2 Gray Black Dream Switch\"></p><h3><strong>Chất lượng tốt, giá thành hấp dẫn</strong></h3><p>DAREU EK87 v2 GRAY BLACK được đánh giá là một trong những bàn phím cơ gaming giá rẻ nhưng chất lượng tốt. <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">Bàn phím máy tính</a>&nbsp;này sử dụng switch DareU DREAM được đánh giá cao về độ bền và phản hồi nhanh chóng. Hơn nữa, bàn phím còn hỗ trợ N-key rollover giúp người dùng có thể nhấn nhiều phím cùng lúc mà không bị lỗi nhập liệu.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-co-gaming-dareu-ek87-v2-gray-black-dream-switch-__8__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ Gaming DAREU EK87 v2 Gray Black Dream Switch\"></p><h3><strong>Tính năng đa dạng phù hợp với nhu cầu sử dụng</strong></h3><p>Bàn phím được trang bị dải đèn LED RGB độc đáo ở hai bên, cho phép người dùng tùy chỉnh hiệu ứng đèn theo ý muốn. Bàn phím còn hỗ trợ chức năng Multimedia giúp người dùng có thể điều chỉnh âm lượng, chuyển bài hát, dừng bài hát ngay trên bàn phím mà không cần thao tác nhiều bằng chuột.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-co-gaming-dareu-ek87-v2-gray-black-dream-switch-__20__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ Gaming DAREU EK87 v2 Gray Black Dream Switch\"></p>', 0, 1, '2025-11-20 03:27:42', '2025-11-20 03:27:42'),
(226, 18, 2, 9, 47, 'Bàn phím cơ DareU EK75 Pro Sakura Pink Dream switch', NULL, 1299000, 599000, 399, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>Nếu bạn đang tìm kiếm cho mình một mẫu <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím máy tính</a> vừa giải trí vừa làm việc những thiết kế phải thực sự bắt mắt thì đúng thật mẫu bàn phím cơ DareU EK75 Pro Sakura Pink Dream switch này sinh ra là để giành cho bạn. Với layout này chỉ cần được đặt vào đúng nơi đúng chỗ hứa hẹn góc làm việc của bạn sẽ rất ấn tượng đấy.&nbsp;</p><p><img src=\"https://product.hstatic.net/200000722513/product/2dbc5514ac26e90937471fb1c400c79_a6fbdb9923724da68adae2315cfdaf59_1024x1024.png\"></p><p>Nhìn bền ngoài với mầu sắc và kiểu dáng hồng pastel ngọt ngào phù hợp với rất nhiều đối tượng, đặc biệt là các bạn nữ với thiết kế 75% gọn ràng, tiết kiệm không gian những vẫn đảm bảo đầy đủ các phím chức năng cần thiết không ảnh hưởng đến trải nghiệm của bạn.&nbsp;</p><p><strong>Chất liệu sản phẩm</strong></p><p><img src=\"https://product.hstatic.net/200000722513/product/_0001_ek75pro_____0000_464097157b424769b3755bb585d91f4a_1024x1024.png\"></p><p>Với vỏ ngoài được làm bằng nhựa ABS bền bỉ các phím bấm sử dụng chất liệu PBT cao cấp, đảm bảo dùng một thời gian dài cũng không bị mòn,&nbsp;bóng mà vẫn đảm bảo gõ êm và chắc chắn.</p><p><strong>Cấu trúc và đèn led của&nbsp;DareU EK75 Pro Sakura Pink Dream switch</strong></p><p>Với hệ thống đèn nền RGB người dùng có thể tùy chỉnh ở mọi chế độ đèn theo đúng nhu cầu sử dụng của mình, có thể tùy chính on / off cho ban ngày hoặc ban đêm trong thời gian dụng mà không sợ bị ảnh hưởng. Song song với việc cấu trúc Gasket-Mount đảm bảo không phát tiếng ồn tạo cảm giác êm ái dễ chịu trong suốt thời gian sử dụng.&nbsp;</p><p><img src=\"https://product.hstatic.net/200000722513/product/_0006_ek75pro_____0000_9d28dfbc593d45f38d2d47bdd26316a1_1024x1024.png\"></p><p>Ngoài ra, mẫu <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ</a>&nbsp;DareU EK75 Pro Sakura Pink Dream switch còn rất nhiều ưu điểm như người dùng có thể tự custom lại bàn phím theo sở thích cá nhân hay lựa chọn kết nối linh hoạt theo đúng tnhs chất công việc của mình. Với mẫu bàn phím này bạn có thể có các thiết lập để trong quá trình sử dụng có thể thao tác nhanh hơn với các tổ hợp phím tắt do bạn thiết lập.&nbsp;</p><p>Cuối cùng là giá thành sản phẩm,&nbsp;DareU EK75 Pro Sakura Pink Dream switch nằm trong phân khúc có thể chấp nhận được với các hiệu năng, chất lượng cũng như layout thu hút như thế, bàn phím đang được bán tại GEARVN với nhiều chương trình khuyến mãi hấp dẫn, bạn có thể đặt online hoặc ghé trải nghiệm tại các showroom của GEARVN nhé.</p>', 0, 1, '2025-11-20 03:29:28', '2025-11-20 03:29:28'),
(227, 18, 2, 9, 47, 'Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch', NULL, 999000, 399000, 287, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>&nbsp;</p><h2><strong>Đánh giá chi tiết sản phẩm Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch</strong></h2><p><strong>Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch</strong> là một trong những sản phẩm nổi bật trong dòng <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím máy tính</a>&nbsp;gaming hiện nay. Với chất lượng hoàn thiện tốt và những tính năng nổi bật, bàn phím này hứa hẹn sẽ mang lại trải nghiệm tuyệt vời cho game thủ và những người làm việc văn phòng.</p><p><img src=\"https://product.hstatic.net/200000722513/product/black_golden__1__b1c67dc2c54c482_75ee9df3ec714b5ca50e189944dff104_1024x1024.png\" alt=\"Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch\"></p><h3><strong>Đặc tính nổi bật của Bàn phím cơ DareU EK106 Pro</strong></h3><p><a href=\"https://gearvn.com/collections/ban-phim-co\">Bàn phím cơ </a>DareU EK106 Pro được thiết kế với vẻ ngoài hiện đại và khỏe khoắn. Vỏ ngoài của bàn phím được làm từ nhựa cao cấp, giúp tăng độ bền và khả năng chống trầy xước. Đặc biệt, với công nghệ gia công sắc nét, bàn phím mang lại cảm giác sang trọng và chuyên nghiệp.</p><p>Một trong những điểm mạnh của sản phẩm chính là việc sử dụng switch Golden Cloud, cho phép cảm giác gõ mượt mà, với độ nảy tốt khi bấm. Hoạt động êm ái của switch này giảm thiểu tiếng ồn, đồng thời cung cấp phản hồi nhanh, phù hợp với nhu cầu chơi game hay làm việc liên tục.</p><p><img src=\"https://product.hstatic.net/200000722513/product/black_golden__8__602988f3c92e4f4_9ea81ef8a51745e396c3377c3d817c7c_1024x1024.png\" alt=\"Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch\"></p><h3><strong>LED RGB phong phú</strong></h3><p>DareU EK106 Pro được trang bị hệ thống LED RGB với nhiều chế độ ánh sáng khác nhau. Người dùng có thể tùy chỉnh màu sắc và các hiệu ứng ánh sáng theo phong cách cá nhân, tạo nên không gian chơi game sinh động và ấn tượng hơn với chiếc <a href=\"https://gearvn.com/collections/ban-phim-dare-u\">bàn phím&nbsp;DareU</a> này.</p><h3><strong>Kết nối USB có dây ổn định</strong></h3><p>Bàn phím này sử dụng cổng kết nối <a href=\"https://gearvn.com/collections/the-nho-usb\">USB</a>&nbsp;có dây, đảm bảo độ ổn định và tốc độ truyền tải dữ liệu cao. Đây là một yếu tố cực kỳ quan trọng trong môi trường game, khi mà thời gian phản hồi nhanh và không bị gián đoạn là điều cần thiết.</p><p><img src=\"https://product.hstatic.net/200000722513/product/black_golden__2__a6e44c936a8345b_da1bde2a87cf44a4afc9614a0558e8ed_1024x1024.png\" alt=\"Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch\"></p><p><strong>Thông số kỹ thuật ấn tượng</strong></p><p>Bàn phím DareU EK106 Pro sở hữu hàng loạt thông số ấn tượng, bao gồm kích thước nhỏ gọn, trọng lượng nhẹ, và thiết kế phím có thể tháo rời. Điều này giúp việc vận chuyển dễ dàng và thuận tiện hơn.</p><p>Bàn phím DareU EK106 Pro có khả năng tương thích tốt với nhiều hệ điều hành, từ <a href=\"https://gearvn.com/collections/window\">Windows</a> đến <a href=\"https://gearvn.com/collections/macbook\">MacOS</a>, giúp người dùng dễ dàng kết nối và sử dụng trên các thiết bị khác nhau mà không gặp bất kỳ rắc rối nào.</p><p><img src=\"https://product.hstatic.net/200000722513/product/black_golden__4__496d62e7e15c4d6_5bb57f4c5e414a87ae83aaf817fb86dd_1024x1024.png\" alt=\"Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch\"></p><h3><strong>Tính năng chống tràn nước</strong></h3><p>Một ưu điểm nổi bật khác của EK106 Pro là tính năng chống tràn nước, giúp bảo vệ bàn phím khỏi những sự cố không mong muốn trong quá trình sử dụng. Điều này mang lại sự an tâm cho người dùng, đặc biệt là trong những buổi chơi game kéo dài.</p><p><img src=\"https://product.hstatic.net/200000722513/product/black_golden__7__e53b04c983124e1_55c78b37f3ba48d68838422855fc4789_1024x1024.png\" alt=\"Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch\"></p><p>Với tất cả những đặc điểm vượt trội, <strong>Bàn phím cơ gaming DareU EK106 Pro Black Golden Cloud switch</strong> thực sự là một lựa chọn lý tưởng cho những ai đang tìm kiếm một sản phẩm bàn phím chất lượng cao, giá cả hợp lý. Dù bạn là một game thủ chuyên nghiệp hay chỉ đơn giản là người yêu thích công nghệ, sản phẩm này chắc chắn sẽ không làm bạn thất vọng.&nbsp;</p>', 0, 1, '2025-11-20 03:31:01', '2025-11-20 03:31:01'),
(228, 18, 2, 9, 47, 'Bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)', NULL, 999000, 699000, 266, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Đánh giá chi tiết&nbsp;bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)</strong></h2><p>DareU EK75 White Black dòng <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ</a> sở hữu thiết kế siêu nhỏ gọn với layout 75%, 80 nút bấm hỗ trợ tốt mọi nhu cầu sử dụng ở bất kỳ đâu khi cần. Đặc biệt, nhờ vào phối màu basic trắng đen được kết hợp hài hòa tạo điều kiện thuận lợi khi lựa chọn <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột máy tính</a>, tai nghe gaming để Setup các góc máy làm việc và chơi game đẹp mắt.&nbsp;Hứa hẹn đây sẽ là một trong những mẫu bàn phím DareU&nbsp; rất đáng trải nghiệm.</p><h3><strong>Phối màu độc đáo, đầy sáng tạo</strong></h3><p>DareU mang đến thị trường dòng sản phẩm <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím máy tính</a> chất lượng với thiết kế ấn tượng. Sự mix &amp; match giữa những gam màu basic đen trắng cùng các chi tiết góc cạnh đầy mạnh mẽ được gia công tỉ mỉ tạo nên tổng thể đầy sáng tạo, tăng thêm phấn khích khi sử dụng.&nbsp;</p><p>Nhờ vào thiết kế mang tính thẩm mỹ cao, DareU EK75 White Black có thể xem đây như là một trong những vật trang trí độc đáo khi kết hợp cùng nhiều thiết bị khác như chuột máy tính, <a href=\"https://gearvn.com/collections/tai-nghe-may-tinh\">tai nghe gaming</a>,...tăng thêm thẩm mỹ cho góc máy làm việc &amp; giải trí.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/-ban-phim-co-dareu-ek75-white-black-dareu-dream-switch-keycap-pbt-__1__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)\"></p><h3><strong>Layout 75%, 80 nút phím</strong></h3><p>Ngoài sở hữu vẻ ngoài vô cùng độc đáo đậm chất Gaming, DareU EK75 White Black còn sở hữu Layout 75% (80 phím bấm) cùng núm xoay tiện lợi, tinh tế và trọng lượng để người chơi có thể cất gọn trong balo cùng nhiều phụ kiện Gaming Gear như <a href=\"https://gearvn.com/collections/chuot-wireless\">chuột không dây</a>, <a href=\"https://gearvn.com/collections/tai-nghe-bluetooth-chinh-hang\">tai nghe Bluetooth</a>,..để bạn có thể sử dụng ở bất kỳ đâu khi cần.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/-ban-phim-co-dareu-ek75-white-black-dareu-dream-switch-keycap-pbt-__9__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)\"></p><h3><strong>Hệ thống led RGB</strong></h3><p>Để tăng thêm phần nổi bật cho dòng <a href=\"https://gearvn.com/collections/ban-phim-dare-u\">bàn phím máy tính DareU</a> EK75 White Black, hãng sản xuất đã tích hợp LED Rainbow cùng nhiều hiệu ứng chiếu sáng lấp lánh, độc đáo tạo ra không gian sống động. Đặc biệt là đối với một số không gian làm việc &amp; giải trí thiếu sáng sẽ tăng thêm hứng thú, động lực và sự thoải mái trong việc trải nghiệm game yêu thích.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/ban-phim-co-dareu-ek75-white-black-dareu-dream-switch-keycap-pbt-__18__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)\"></p><h3><strong>Trang bị switch DAREU customized Dream độc quyền</strong></h3><p>Trang bị bộ công tắc cơ học DAREU customized Dream độc quyền cho cảm giác gõ tốt, tốc độ phản hồi nhanh, âm thanh êm tai và hoạt động vô cùng ổn định ở tần suất cao. Nếu bạn thường xuyên gõ văn bản hoặc cần tìm một chiếc <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím</a> phát ra âm thanh quá ồn thì đây chính là dòng bàn phím máy tính bạn đang tìm kiếm.</p><p><img src=\"https://file.hstatic.net/200000722513/file/-ban-phim-co-dareu-ek75-white-black-dareu-dream-switch-keycap-pbt-__3__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)\"></p><h3><strong>Kết nối qua cáp USB rời siêu tiện lợi</strong></h3><p>Thêm một điểm cộng trên dòng bàn phím DareU EK75 White Black là khả năng kết nối vô cùng đa dạng. Người dùng có thể kết nối và sử dụng bàn phím cùng với máy tính sử dụng <a href=\"https://gearvn.com/collections/window\">hệ điều hành Windows</a> và MacOS vô cùng đơn giản qua cáp USB rời siêu tiện lợi, đảm bảo quá trình sử dụng không bị gián đoạn.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/-ban-phim-co-dareu-ek75-white-black-dareu-dream-switch-keycap-pbt-__4__1024x1024.jpg\" alt=\"GEARVN - Bàn phím cơ DareU EK75 White Black DareU Dream switch (keycap PBT)\"></p>', 0, 1, '2025-11-20 03:32:47', '2025-11-20 03:32:47'),
(229, 18, 2, 9, 33, 'Bàn phím cơ DareU A98 Pro TM Red Wave Dream switch', NULL, 1299000, 499000, 658, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>DareU A98 Pro TM Red Wave Dream switch một trong những sản phẩm nổi bật trong phân khúc <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím</a> cơ gaming tầm trung được nhà DareU giới thiệu đến người dùng, đặc biệt với thiết kế bề ngoài rất thu hút sự chú ý của các gamer và những ai yêu thích custom theo sở thích của mình thì có thể lựa&nbsp;DareU A98 Pro TM Red Wave Dream switch để có được những trải nghiệm rất ưng ý nhé.&nbsp;</p><p><img src=\"https://product.hstatic.net/200000722513/product/co-khong-day-dareu-a98-pro-red-w_ef02dd033db849d5bc85ff4f9b70463a_1024x1024.png\"></p><p><strong>Các điểm nổi bật trên mẫu bàn phím này như:&nbsp;</strong></p><ul><li>Thiết kế giảm tiếng ồn, tạo cảm giác êm ái khi sử dụng chơi game với tần suất lớn</li><li>Keycap PBT double-shot đảm bảo bền bỉ, chống mài mòn với những ai đã dùng qua các mẫu bàn phím cơ rồi thì với&nbsp;DareU A98 Pro TM Red Wave Dream switch hứa hẹn sẽ mang đến cho bạn trải nghiệm khác chút xíu như có cảm giá gõ êm, chắc chắn hơn.&nbsp;</li><li>Layout với <a href=\"https://gearvn.com/collections/ban-phim-tkl\">thiết kế TKL</a> mẫu bàn phím phù hợp với không gian tối giản, ngoài ra có thể mang theo bền mình đi cafe, làm việc bên ngoài mà không sợ mang nặng, công kềnh luôn nhé.&nbsp;</li></ul><p><img src=\"https://product.hstatic.net/200000722513/product/co-khong-day-dareu-a98-pro-red-w__1__f0cc55c4c43241e0b008b31949fd61cb_1024x1024.png\"></p><p>Như đã nói ở trên vì sao nhiều người yêu thích <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ</a> có thể lựa chọn ngay cho mình&nbsp;DareU A98 Pro TM Red Wave Dream switch, hãng cũng tinh ý khi cho người dùng có thể linh hoạt custom lại dựa theo mẫu layout đang có để lựa chọn cho mình các switch như linear, tactile theo sở thích của từng người. <a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/hot-swap-keyboard-la-gi\">Tính năng hotswap</a> cho phép bạn thay thế switch dễ dàng mà không phải chuyên gia cũng có thể làm được.</p><p>Có rất nhiều tính năng được tích hợp vào mẫu bàn phím&nbsp;DareU A98 Pro TM Red Wave Dream switch chỉ đến khi sử dụng bạn mới có thể biết rõ được sự tối ưu của phẩm. Như các mẫu bàn phím cơ khác&nbsp;DareU A98 Pro có dung lượng pin lớn lên đến 4000mAh đảm bảo thời gian sử dụng lâu dài không ảnh hưởng đến quá trình làm việc của bạn.</p><p><img src=\"https://product.hstatic.net/200000722513/product/co-khong-day-dareu-a98-pro-red-w__2__a1e43a44c575416cbf6e9534e93d739c_1024x1024.png\"></p><p>Ngoài ra đối với những ai hay chơi các game như FPS, MOBA, MMO, RPG... <a href=\"https://gearvn.com/collections/ban-phim-dare-u\">DareU</a> A98 Pro hoàn toàn đáp ứng được hết nhu cầu của bạn nhờ thời gian phản hồi nhanh, độ chính xác cao, cấu trúc bàn phím thuận lợi giúp bạn dễ dàng thao tác với các phím tắt rất nhanh lẹ.&nbsp;</p>', 0, 1, '2025-11-20 03:42:52', '2025-11-20 03:42:52');
INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(230, 18, 2, 9, 47, 'Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch', NULL, 2399000, 1999999, 70, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Đánh giá chi tiết&nbsp;bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch</strong></h2><p>Nếu bạn đang tìm kiếm một bàn phím máy tính chất lượng cao để nâng cấp <a href=\"https://gearvn.com/collections/ban-cong-thai-hoc\">bàn làm việc</a> của mình, thì <a href=\"https://gearvn.com/collections/ban-phim-dare-u\">bàn phím DareU</a> không dây EK98 Pro RGB Trắng Dream Switch này chính là sự lựa chọn hoàn hảo. Với thiết kế hiện đại, tính năng vượt trội và giá cả hợp lý, bàn phím này sẽ đáp ứng mọi nhu cầu của bạn, từ công việc văn phòng đến chơi game. Cùng <a href=\"https://gearvn.com/\">GEARVN</a> khám phá ngay những tính năng vượt trội mà chiếc bàn phím này mang lại.</p><p>&nbsp;</p><h3><strong>Thiết kế nhỏ gọn, tiện lợi</strong></h3><p>Với layout 81&nbsp;phím, bàn phím này mang lại sự gọn nhẹ mà không làm mất đi các phím chức năng cần thiết. Điều này giúp tối ưu không gian trên bàn làm việc của bạn, mang lại sự thoải mái và hiệu quả cao khi làm việc. Bàn phím này phù hợp với nhiều không gian làm việc khác nhau, từ văn phòng đến góc làm việc tại nhà.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-khong-day-ek98-pro-rgb-trang-dream-switch-__1__1024x1024.jpg\" alt=\"GEARVN - Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch\"></p><h3><strong>Keycap PBT Doubleshot bền bỉ, chống mài mòn</strong></h3><p>Chất liệu <a href=\"https://gearvn.com/collections/keycaps\">keycap</a> PBT Doubleshot nổi tiếng với độ bền cao và khả năng chống mài mòn. Điều này đảm bảo rằng các ký tự trên phím không bị mờ đi sau thời gian dài sử dụng. Cherry profile của keycap cũng mang lại cảm giác gõ phím thoải mái và chính xác hơn, giúp bạn làm việc hiệu quả hơn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-khong-day-ek98-pro-rgb-trang-dream-switch-__3__1024x1024.jpg\" alt=\"GEARVN - Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch\"></p><h3><strong>Hỗ trợ hotswap thay switch dễ dàng</strong></h3><p>Một trong những tính năng đáng giá nhất của bàn phím&nbsp;DareU Không dây EK98 Pro này là khả năng hotswap, cho phép bạn dễ dàng thay đổi switch mà không cần hàn. Không chỉ giúp bạn tùy chỉnh cảm giác gõ phím theo ý thích mà còn tiết kiệm thời gian và công sức khi cần thay thế switch bị hỏng.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-khong-day-ek98-pro-rgb-trang-dream-switch-__15__1024x1024.jpg\" alt=\"GEARVN - Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch\"></p><p>&nbsp;</p><p>&nbsp;</p><h3><strong>Kết nối đa dạng&nbsp;</strong></h3><p><a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">Bàn phím</a> này hỗ trợ nhiều phương thức kết nối khác nhau, bao gồm có dây USB-C, Bluetooth và Wireless 2.4GHz. Giúp bạn dễ dàng kết nối với nhiều thiết bị khác nhau, từ máy tính để bàn,<a href=\"https://gearvn.com/pages/laptop-van-phong\"> laptop</a> đến máy tính bảng. Sự linh hoạt trong kết nối giúp bạn chuyển đổi giữa các thiết bị một cách nhanh chóng và thuận tiện.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-khong-day-ek98-pro-rgb-trang-dream-switch-__10__1024x1024.jpg\" alt=\"GEARVN - Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch\"></p><h3><strong>Pin dung lượng lớn, sử dụng lâu dài</strong></h3><p>Với dung lượng pin lên đến 4000 mAh, bạn có thể yên tâm sử dụng bàn phím trong thời gian dài mà không lo hết pin. Đây là một điểm cộng lớn cho những người thường xuyên di chuyển hoặc làm việc ngoài văn phòng. Pin dung lượng lớn cũng giúp giảm tần suất sạc, mang lại sự tiện lợi và liên tục cho công việc của bạn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-khong-day-ek98-pro-rgb-trang-dream-switch-__18__1024x1024.jpg\" alt=\"GEARVN - Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch\"></p><h3><strong>Đèn nền RGB đẹp mắt</strong></h3><p>Đèn nền RGB không chỉ làm cho <a href=\"https://gearvn.com/collections/ban-phim-wireless\">bàn phím không dây</a>&nbsp;của bạn trở nên nổi bật mà còn giúp bạn làm việc hiệu quả hơn trong điều kiện ánh sáng yếu. Bạn có thể tùy chỉnh màu sắc và hiệu ứng đèn nền theo sở thích cá nhân, tạo nên một không gian làm việc sáng tạo và đầy cảm hứng. Đèn nền RGB cũng giúp tăng cường trải nghiệm chơi game của bạn, mang lại cảm giác thú vị và độc đáo.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-ban-phim-khong-day-ek98-pro-rgb-trang-dream-switch-__6__1024x1024.jpg\" alt=\"GEARVN - Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch\"></p>', 0, 1, '2025-11-20 03:44:17', '2025-11-20 03:44:17'),
(231, 18, 2, 9, 47, 'Bàn phím cơ DareU không dây EK75 Pro WBC RGB Dream switch', NULL, 899000, 499000, 400, '<p><strong>Thông số kỹ thuật</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Loại kết nối</strong></td><td>Bluetooth | Wireless| TypeC</td></tr><tr><td><strong>Cấu trúc</strong></td><td>Gasket-Mount</td></tr><tr><td><strong>Keycap</strong></td><td>OEM profile, PBT Double-Shot</td></tr><tr><td><strong>Switch</strong></td><td>DareU Dream<br>Hotswap</td></tr><tr><td><strong>Pin</strong></td><td>3750 mAh</td></tr><tr><td><strong>K ey Conflict</strong></td><td>N Phím Rollover &amp; Nút Knob</td></tr><tr><td><strong>LED&nbsp;</strong></td><td>RGB</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 03:45:18', '2025-11-20 03:45:18'),
(232, 18, 2, 9, 47, 'Bàn phím cơ DareU A98 Pro TM Clear Water Dream switch', NULL, 2999000, 999000, 100, NULL, 0, 1, '2025-11-20 03:46:17', '2025-11-20 03:46:17'),
(233, 18, 2, 9, 47, 'Bàn phím cơ DareU EK65s White Black PBT Dream Switch', NULL, 1299000, 499000, 500, NULL, 0, 1, '2025-11-20 03:47:25', '2025-11-20 03:47:25'),
(234, 18, 2, 9, 49, 'Bàn phím Razer BlackWidow V4 X Green Switch', NULL, 2599000, 999000, 200, '<h2><strong>Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td>Razer</td></tr><tr><td><strong>Model</strong></td><td>BlackWidow V4 X Green Switch</td></tr><tr><td><strong>Switch</strong></td><td>Razer Green Switch</td></tr><tr><td><strong>Keycaps</strong></td><td>Doubleshot ABS Keycaps</td></tr><tr><td><strong>Kích thước</strong></td><td>Fullsize</td></tr><tr><td><strong>LED</strong></td><td>Razer Chroma™ RGB</td></tr><tr><td><strong>Bộ nhớ tích hợp</strong></td><td>Con lăn media chuyên dụng với 4 nút media chuyên dụng</td></tr><tr><td><strong>Kết nối</strong></td><td>Có dây</td></tr><tr><td><p>&nbsp;</p><p><strong>Tính năng hỗ trợ</strong></p></td><td>Đã bật Razer™ Synapse<br>5052 Vỏ trên cùng hợp kim nhôm<br>6 phím macro chuyên dụng<br>Bao gồm bọt PCB<br>Chất ổn định bôi trơn<br>Underglow 2 mặt<br>Tốc độ bỏ phiếu lên đến 8.000Hz</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 07:16:13', '2025-11-20 07:16:13'),
(235, 18, 2, 9, 49, 'Bàn phím Razer Blackwidow V3 Tenkeyless Green Switch', NULL, 2499000, 899000, 120, NULL, 0, 1, '2025-11-20 07:17:07', '2025-11-20 07:17:07'),
(236, 18, 2, 2, 49, 'Bàn phím Razer BlackWidow V4 X - Zenless Zone Zero Edition', NULL, 2299000, 1899000, 110, '<p>Switch</p><p>Razer™ Green Mechanical Switches (Clicky)</p><p>Kết nối</p><p>Có dây</p><p>Keycap</p><p>Doubleshot ABS</p><p>Bảo hành</p><p>24 tháng</p><p>Tính năng</p><p>Razer™ Snap Tap / Razer™ Synapse</p>', 0, 1, '2025-11-20 07:18:06', '2025-11-20 07:18:06'),
(237, 18, 2, 9, 47, 'Bàn phím có dây Razer BlackWidow V4 75% Phantom White Edition', NULL, 2999000, 1090000, 117, NULL, 0, 1, '2025-11-20 07:18:53', '2025-11-20 07:18:53'),
(238, 18, 2, 9, 49, 'Bàn phím Razer Huntsman V3 Pro Mini', NULL, 1999000, 599000, 50, NULL, 0, 1, '2025-11-20 07:19:41', '2025-11-20 07:19:41'),
(239, 18, 2, 9, 49, 'Bàn phím Razer BlackWidow V4 X Green Switch - Minecraft Edition', NULL, 1299000, 799000, 287, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>&nbsp;</p><h2><strong>Đánh giá chi tiết Bàn phím Razer BlackWidow V4 X Green Switch - Minecraft Edition</strong></h2><p><a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">Bàn phím máy tính</a> Razer BlackWidow V4 X Green Switch - Minecraft Edition không chỉ là công cụ hỗ trợ hoàn hảo cho game thủ, mà còn mang đến trải nghiệm phong cách sống động cho những fan hâm mộ Minecraft. Với thiết kế độc đáo và tính năng vượt trội, sản phẩm này hứa hẹn sẽ là lựa chọn hoàn hảo cho cả game thủ lẫn những người yêu thích công nghệ. Cùng đánh giá chi tiết sản phẩm đến từ <a href=\"https://gearvn.com/collections/razer\">Razer</a> này dưới đây!</p><h3><strong>Thiết kế độc đáo lấy cảm hứng từ Minecraft</strong></h3><p>Bàn phím Razer BlackWidow V4 X được thiết kế với hình ảnh và gam màu từ thế giới <a href=\"https://gearvn.com/blogs/game-hay/cach-tai-minecraft-tren-may-tinh\">Minecraft</a>, mang đến cho người dùng cảm giác như đang sống trong trò chơi yêu thích của mình. Các chi tiết của bàn phím được thiết kế tỉ mỉ với màu sắc sống động, tạo điểm nhấn ấn tượng cho bộ setup không gian chơi game.</p><p><img src=\"https://product.hstatic.net/200000722513/product/-phim-co-razer-blackwidow-v4-x-minecraft-edition-rz03-04704100-r3m1-04_c0a0aa88e4114e21800587554af7249d_1024x1024.jpg\" alt=\"Bàn phím Razer BlackWidow V4 X Green Switch - Minecraft Edition\"></p><h3><strong>Switch cơ học Razer Green Switch</strong></h3><p>Bàn phím sử dụng loại switch Razer Green, mang đến phản hồi âm thanh và cảm giác gõ tuyệt vời. Switch này được thiết kế cho độ chính xác cao, giúp người dùng dễ dàng thực hiện các thao tác trong game một cách mượt mà. Với lực nhấn vừa phải và độ bền cao, Razer Green Switch là sự lựa chọn lý tưởng cho những ai thường xuyên phải chơi game.</p><h3><strong>Đèn nền RGB tùy chỉnh</strong></h3><p>Một trong những điểm nổi bật của bàn phím là hệ thống đèn nền RGB với hàng triệu màu sắc và hiệu ứng ánh sáng tùy chỉnh. Người dùng có thể sử dụng phần mềm Razer Synapse để tạo ra các hiệu ứng đẹp mắt hoặc đồng bộ hóa ánh sáng với các thiết bị khác. Điều này không chỉ làm tăng tính thẩm mỹ mà còn giúp tạo ra bầu không khí thích hợp khi chơi game.</p><p><img src=\"https://product.hstatic.net/200000722513/product/-phim-co-razer-blackwidow-v4-x-minecraft-edition-rz03-04704100-r3m1-02_ad0e9119e8434a8897d60b9d023107df_1024x1024.jpg\" alt=\"Bàn phím Razer BlackWidow V4 X Green Switch - Minecraft Edition\"></p><p><strong>Chức năng macro thông minh</strong></p><p>Razer BlackWidow V4 X cho phép người dùng lập trình macro cho từng phím, giúp mở rộng khả năng tương tác trong game. Tính năng này rất hữu ích cho những game cần thao tác nhanh và chính xác, giúp người chơi dễ dàng thực hiện các chiến thuật phức tạp mà không gặp trở ngại.</p><p>&nbsp;</p><h3><strong>Chất lượng xây dựng bền bỉ</strong></h3><p>Sản phẩm được làm từ chất liệu cao cấp, đảm bảo độ bền và tuổi thọ lâu dài. Với lớp hoàn thiện chắc chắn và khả năng chống nước, Razer BlackWidow V4 X dễ dàng chịu được tác động từ môi trường và các tình huống sử dụng khắc nghiệt.</p><p><img src=\"https://product.hstatic.net/200000722513/product/m-co-razer-blackwidow-v4-x-minecraft-edition-rz03-04704100-r3m1-03__1__f53c5e2df3774b3cba98fc468047e1c3_1024x1024.jpg\" alt=\"Bàn phím Razer BlackWidow V4 X Green Switch - Minecraft Edition\"></p>', 0, 1, '2025-11-20 07:26:54', '2025-11-20 07:26:54'),
(240, 18, 2, 9, 49, 'Bàn phím Razer Ornata V3 X', NULL, 990000, 459000, 300, NULL, 0, 1, '2025-11-20 07:27:53', '2025-11-20 07:27:53'),
(241, 18, 2, 9, 49, 'Bàn phím cơ Razer Huntsman V2 Linear Optical Switch PUBG BATTLEGROUNDS Edition', NULL, 990000, 459000, 159, '<h2><strong>THÔNG SỐ KĨ THUẬT</strong></h2><figure class=\"table\"><table><tbody><tr><td><h3><strong>Thương hiệu</strong></h3></td><td><h3><a href=\"https://gearvn.com/collections/ban-phim-choi-game-razer\"><strong>Razer</strong></a></h3></td></tr><tr><td><h3><strong>Loại Switch</strong></h3></td><td>Razer™ Linear Optical Switch</td></tr><tr><td><h3><strong>Size</strong></h3></td><td>Full Size</td></tr><tr><td><h3><strong>Keycap</strong></h3></td><td><br>Doubleshot ABS keycaps</td></tr><tr><td><h3><strong>Led</strong></h3></td><td><br>Razer Chroma™ RGB customizable backlighting with 16.8 million color options</td></tr><tr><td><h3><strong>KẾT NỐI</strong></h3></td><td><br>Wired - Braided fiber cable</td></tr><tr><td><h3><strong>BỘ NHỚ TÍCH HỢP</strong></h3></td><td><br>Hybrid onboard storage – up to 5 keybinding profiles</td></tr><tr><td><h3><strong>OTHERS</strong></h3></td><td><br>Razer™ HyperPolling Technology with up to true 8000 Hz polling rate<br>Fully programmable keys with on-the-fly macro recording<br>N-key roll-over with anti-ghosting<br>Gaming mode option<br>Aluminum matte top plate</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 07:29:16', '2025-11-20 07:29:16'),
(242, 18, 2, 9, 49, 'Bàn phím Razer Blackwidow V4 75% White Tactile', NULL, 3299000, 1899000, 13, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>&nbsp;</p><p><strong>Thông số kỹ thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:</strong></td><td>Razer</td></tr><tr><td><strong>Model:</strong></td><td>Razer Blackwidow V4 75% White Tactile</td></tr><tr><td><strong>Switch:</strong></td><td>Tactile</td></tr><tr><td><strong>Keycaps:</strong></td><td>Doubleshot ABS Keycaps</td></tr><tr><td><strong>Kích thước:&nbsp;</strong></td><td>75%</td></tr><tr><td><strong>LED:</strong></td><td>Razer Chroma™ RGB</td></tr><tr><td><strong>Bộ nhớ tích hợp:</strong></td><td>Bộ nhớ trên bo mạch kết hợp - lên đến 5 cấu hình</td></tr><tr><td><strong>Kết nối:&nbsp;</strong></td><td>Cáp loại C có thể tháo rời</td></tr><tr><td><strong>Hotswap</strong></td><td>5Pin</td></tr><tr><td><p>&nbsp;</p><p><strong>Tính năng hỗ trợ:</strong></p></td><td>Đã bật Razer™ Synapse<br>5052 Vỏ trên cùng hợp kim nhôm<br>PCB &amp;; Case bọt giảm âm thanh bao gồm<br>PCB tăng cường băng không dẫn điện<br>Các lỗ PCB bổ sung cho mod ổn định vít *<br>Chất ổn định bôi trơn<br>Dải bên phát sáng 2 mặt<br>Tỷ lệ bỏ phiếu lên đến 8.000 Hz<br>Cuộn phím N &amp;; Chống bóng ma</td></tr></tbody></table></figure>', 0, 1, '2025-11-20 07:30:14', '2025-11-20 09:13:29'),
(243, 18, 2, 9, 49, 'Bàn phím Razer Huntsman V3 Pro TKL - White', NULL, 3299000, 1299000, 34, NULL, 0, 1, '2025-11-20 07:31:06', '2025-11-20 07:31:06'),
(244, 18, 2, 9, 49, 'Bàn phím có dây Razer Huntsman V3 Pro Tenkeyless Counter-Strike 2 Edition', NULL, 1299000, 399000, 402, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Thông số kỹ thuật:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td>Akko&nbsp;</td></tr><tr><td><strong>Màu sắc</strong></td><td>&nbsp;RF One Piece – Luffy</td></tr><tr><td><strong>Thiết kế</strong></td><td>TKL 87 phím</td></tr><tr><td><strong>Kết nối</strong></td><td>USB Type-C to Type-A (dây có thể tháo rời) hoặc không dây 2.4Ghz (sử dụng pin AAA)</td></tr><tr><td><strong>Kích thước&nbsp;</strong></td><td>360 x 140 x 40mm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>~ 0.95 kg</td></tr><tr><td><strong>Foam tiêu âm PCB</strong></td><td>Tích hợp sẵn</td></tr><tr><td><strong>Hỗ trợ</strong></td><td>NKRO / Multimedia / Macro / Khóa phím windows</td></tr><tr><td><strong>Keycap</strong></td><td>PBT Dye-Subbed, OEM profile</td></tr><tr><td><strong>Tương thích</strong></td><td>Windows / MacOS / Linux<br>Bàn phím AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này)</td></tr><tr><td><strong>Phụ kiện</strong></td><td>1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB Type-C to USB + 2 pin AAA + Keycap tặng kèm</td></tr></tbody></table></figure>', 1, 1, '2025-11-20 07:33:38', '2025-12-13 04:48:00'),
(245, 18, 2, 9, 64, 'Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch', NULL, 1299000, 599000, 223, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Đánh giá Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch</strong></h2><p>Trong thế giới <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ</a>&nbsp;ngày càng đa dạng, <a href=\"https://gearvn.com/collections/ban-phim-akko\">bàn phím AKKO</a> nổi lên như một thương hiệu được nhiều người yêu thích bởi chất lượng và thiết kế độc đáo. <strong>Bàn phím AKKO 5098B Wasteland Survival với switch V3 Piano Pro</strong> là một ví dụ điển hình, mang đến trải nghiệm gõ phím tuyệt vời cùng vẻ ngoài ấn tượng. Bài viết này GEARVN&nbsp;đánh giá chi tiết những điểm nổi bật của sản phẩm này, bạn có thể tham khảo.</p><p><img src=\"https://file.hstatic.net/200000722513/file/ban-phim-akko-5098b-wasteland-survival-v3-piano-pro-switch_1024x1024.jpg\" alt=\"Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch\"></p><h3><strong>Thiết kế độc đáo, lấy cảm hứng từ vùng đất hoang tàn</strong></h3><p>AKKO 5098B Wasteland Survival gây ấn tượng mạnh mẽ ngay từ cái nhìn đầu tiên với thiết kế lấy cảm hứng từ vùng đất hoang tàn (Wasteland). Màu sắc chủ đạo là sự kết hợp giữa màu be cát, xám và các chi tiết màu cam, tạo nên vẻ ngoài bụi bặm, mạnh mẽ và đầy cá tính. Vỏ bàn phím được làm từ nhựa ABS cao cấp, mang lại độ bền cao và cảm giác chắc chắn khi sử dụng.</p><p>Layout 98% (1800 Compact) của <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím máy tính</a> này giúp tiết kiệm không gian bàn làm việc mà vẫn giữ đầy đủ các phím chức năng cần thiết, bao gồm cả cụm phím số. Thiết kế này đặc biệt phù hợp với những người dùng cần một bàn phím nhỏ gọn nhưng vẫn muốn có đầy đủ chức năng.</p><p><img src=\"https://product.hstatic.net/200000722513/product/thiet-ke-chua-co-ten-5_64d4effa6b234296b868b9f29699334c_1024x1024.png\" alt=\"Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch\"></p><h3><strong>Keycap PBT Dye-subbed Cherry Profile chất lượng cao</strong></h3><p>AKKO 5098B Wasteland Survival được trang bị keycap PBT Dye-subbed với profile Cherry. Chất liệu PBT nổi tiếng với độ bền cao, chống mài mòn và không bị bóng sau thời gian dài sử dụng. Công nghệ in Dye-subbed đảm bảo các ký tự trên keycap sắc nét, không bị phai màu theo thời gian. Profile Cherry với độ cao vừa phải và đường cong ôm ngón tay mang lại cảm giác gõ phím thoải mái và chính xác.</p><h3><strong><img src=\"https://file.hstatic.net/200000722513/file/ban-phim-akko-5098b-wasteland-survival-v3-piano-pro-switch-2_1024x1024.png\" alt=\"Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch\">Switch AKKO V3 Piano Pro cho trải nghiệm gõ phím mượt mà</strong></h3><p>Điểm nhấn của AKKO 5098B Wasteland Survival chính là switch AKKO V3 Piano Pro. Đây là loại <a href=\"https://gearvn.com/blogs/cong-nghe/chon-switch-ban-phim-theo-tung-the-loai-game\">switch </a>linear (thẳng) với lực nhấn nhẹ, hành trình phím ngắn và độ nảy tốt, mang lại cảm giác gõ phím mượt mà, êm ái và nhanh chóng. Switch đã được lube sẵn từ nhà máy giúp giảm tiếng ồn và tăng độ mượt mà khi gõ.</p><p>Khả năng hot-swap (thay nóng switch) cho phép người dùng dễ dàng tùy chỉnh switch theo sở thích cá nhân mà không cần phải hàn. Bàn phím hỗ trợ cả switch 3 pin và 5 pin, mang lại sự linh hoạt cao.</p><h3><strong>Kết nối 3 chế độ linh hoạt</strong></h3><p>AKKO 5098B Wasteland Survival hỗ trợ 3 chế độ kết nối: Bluetooth 5.0, Wireless 2.4GHz và USB Type-C. Kết nối Bluetooth 5.0 cho phép kết nối không dây ổn định với nhiều thiết bị. Kết nối Wireless 2.4GHz với độ trễ thấp phù hợp cho việc chơi game. Kết nối <a href=\"https://gearvn.com/collections/cong-chuyen-usb-gia-do\">USB </a>Type-C đảm bảo tốc độ truyền tải dữ liệu nhanh chóng và ổn định.</p><p><img src=\"https://file.hstatic.net/200000722513/file/ban-phim-akko-5098b-wasteland-survival-v3-piano-pro-switch-1_1024x1024.png\" alt=\"Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch\"></p><h3><strong>LED RGB và màn hình LCD tùy chỉnh</strong></h3><p>Bàn phím được trang bị hệ thống đèn nền RGB với nhiều hiệu ứng ánh sáng đẹp mắt, cho phép người dùng tùy chỉnh theo sở thích cá nhân. <a href=\"https://gearvn.com/collections/man-hinh\">Màn hình</a> LCD nhỏ được tích hợp trên bàn phím có thể hiển thị các thông tin như thời gian, ngày tháng, chế độ kết nối, mức pin và thậm chí là hình ảnh động tùy chỉnh.</p><p>Ngoài ra, với switch AKKO V3 Piano Pro, keycap PBT Cherry Profile và cấu trúc Gasket Mount, AKKO 5098B Wasteland Survival mang lại trải nghiệm gõ phím tuyệt vời. Cảm giác gõ phím mượt mà, êm ái và độ phản hồi tốt. Bàn phím cơ này&nbsp;phù hợp cho cả việc gõ văn bản và chơi game.</p><p><img src=\"https://product.hstatic.net/200000722513/product/5098_____________2_1_36549b10cb4f416d8be73e3c6e1edff6_1024x1024.png\" alt=\"Bàn phím AKKO 5098B Wasteland Survival V3 Piano Pro switch\"></p>', 1, 1, '2025-11-20 07:47:44', '2025-12-05 02:07:18'),
(246, 18, 2, 9, 64, 'Bàn phím cơ AKKO 3087 RF One Piece Luffy Akko V3 Cream Yellow switch', NULL, 2999000, 119900, 88, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Thông số kỹ thuật:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td>Akko&nbsp;</td></tr><tr><td><strong>Màu sắc</strong></td><td>&nbsp;RF One Piece – Luffy</td></tr><tr><td><strong>Thiết kế</strong></td><td>TKL 87 phím</td></tr><tr><td><strong>Kết nối</strong></td><td>USB Type-C to Type-A (dây có thể tháo rời) hoặc không dây 2.4Ghz (sử dụng pin AAA)</td></tr><tr><td><strong>Kích thước&nbsp;</strong></td><td>360 x 140 x 40mm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>~ 0.95 kg</td></tr><tr><td><strong>Foam tiêu âm PCB</strong></td><td>Tích hợp sẵn</td></tr><tr><td><strong>Hỗ trợ</strong></td><td>NKRO / Multimedia / Macro / Khóa phím windows</td></tr><tr><td><strong>Keycap</strong></td><td>PBT Dye-Subbed, OEM profile</td></tr><tr><td><strong>Tương thích</strong></td><td>Windows / MacOS / Linux<br>Bàn phím AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này)</td></tr><tr><td><strong>Phụ kiện</strong></td><td>1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB Type-C to USB + 2 pin AAA + Keycap tặng kèm</td></tr></tbody></table></figure>', 1, 1, '2025-11-20 07:48:59', '2025-12-14 06:59:37'),
(247, 18, 2, 9, 64, 'Bàn phím AKKO 5098B The King’s Avatar Ye Xiu V3 Piano Pro switch', NULL, 999000, 699900, 222, '<h2><strong>Đánh giá&nbsp;Bàn phím AKKO 5098B The King’s Avatar Ye Xiu V3 Piano Pro switch</strong></h2><p>AKKO 5098B The King’s Avatar Ye Xiu là một chiếc <a href=\"https://gearvn.com/collections/ban-phim-co\">bàn phím cơ</a> độc đáo, lấy cảm hứng từ bộ truyện và phim hoạt hình nổi tiếng \"Toàn Chức Cao Thủ\" (The King’s Avatar). Với thiết kế bắt mắt, hiệu năng gõ phím tuyệt vời và nhiều tính năng hiện đại, sản phẩm này hứa hẹn sẽ làm hài lòng cả những game thủ và người dùng khó tính nhất. Cùng GEARVN đánh giá chi tiết sản phẩm <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím</a> này trong phần dưới đây!</p><p><img src=\"https://file.hstatic.net/200000722513/file/ban-phim-akko-5098b-the-king_s-avatar-ye-xiu-v3-piano-pro-switch_1024x1024.jpg\" alt=\"Bàn phím AKKO 5098B The King’s Avatar Ye Xiu V3 Piano Pro switch\"></p><h3><strong>Thiết kế đậm chất \"Toàn Chức Cao Thủ\"</strong></h3><p>Chiếc <a href=\"https://gearvn.com/collections/ban-phim-akko\">bàn phím AKKO</a> 5098B The King’s Avatar Ye Xiu mang đậm dấu ấn của nhân vật Diệp Tu (Ye Xiu) với tông màu chủ đạo đen và vàng gold, kết hợp với các họa tiết được lấy cảm hứng từ trò chơi Vinh Quang (Glory). Vỏ bàn phím được làm từ nhựa ABS cao cấp, mang lại cảm giác chắc chắn và bền bỉ. Layout 98% (1800 Compact) giúp tiết kiệm không gian mà vẫn giữ đầy đủ các phím chức năng.</p><p><strong>Màu sắc và họa tiết:</strong> Sự kết hợp giữa đen và vàng gold tạo nên vẻ ngoài sang trọng và mạnh mẽ. Các họa tiết được in trên keycap và vỏ bàn phím tái hiện lại những biểu tượng và hình ảnh quen thuộc trong \"Toàn Chức Cao Thủ\", mang đến sự độc đáo và cá tính cho sản phẩm.</p><p><strong>Layout 98%: </strong>Thiết kế này giúp bàn phím nhỏ gọn hơn so với full-size, phù hợp với những người dùng có không gian bàn làm việc hạn chế hoặc thường xuyên di chuyển. Tuy nhiên, nó vẫn giữ lại đầy đủ các phím số và phím chức năng cần thiết.</p><p><img src=\"https://product.hstatic.net/200000722513/product/trai_c86aaec9b6ed4d099d2a9883ceefa27b_1024x1024.png\" alt=\"Bàn phím AKKO 5098B The King’s Avatar Ye Xiu V3 Piano Pro switch\"></p>', 1, 1, '2025-11-20 07:50:36', '2025-12-11 09:59:17'),
(248, 18, 2, 2, 64, 'Bàn phím MonsGeek M1 V5-SP Contour Black V3 Piano Pro switch', NULL, 1399000, 799000, 309, NULL, 1, 1, '2025-11-20 07:51:22', '2025-12-14 06:59:00'),
(249, 18, 2, 9, 64, 'Bàn phím AKKO MOD007B-HE PC Tokyo Sakura Pink Magnetic Switch', NULL, 1399000, 799000, 72, NULL, 1, 1, '2025-11-20 07:52:36', '2025-12-11 16:34:50'),
(250, 18, 2, 9, 64, 'Bàn phím AKKO MOD007B-HE PC Santorini Sakura Pink Magnetic Switch', NULL, 2999000, 999000, 53, NULL, 0, 1, '2025-11-20 07:54:44', '2025-11-27 09:53:33'),
(251, 18, 2, 9, 64, 'Bàn phím AKKO 5108 SE Joy of Life', NULL, 2990000, 899000, 213, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>AKKO 5108 SE Joy of Life (RGB / Hotswap / Piano Pro sw)&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/joy-of-life-5108-se-rgb.jpg\"></p>', 0, 1, '2025-11-20 07:56:13', '2025-11-20 07:56:13'),
(252, 18, 2, 9, 64, 'Bàn phím cơ AKKO 3087 RF Dragon Ball Z Goku Akko V3 Cream Yellow switch', NULL, 1599000, 899000, 108, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Thông số kỹ thuật:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td>Akko&nbsp;</td></tr><tr><td><strong>Màu sắc</strong></td><td>RF Dragon Ball Z Goku</td></tr><tr><td><strong>Thiết kế</strong></td><td>TKL 87 phím</td></tr><tr><td><strong>Kết nối</strong></td><td>USB Type-C to Type-A (dây có thể tháo rời) hoặc không dây 2.4Ghz (sử dụng pin AAA)</td></tr><tr><td><strong>Kích thước&nbsp;</strong></td><td>360 x 140 x 40mm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>~ 0.95 kg</td></tr><tr><td><strong>Foam tiêu âm PCB</strong></td><td>Tích hợp sẵn</td></tr><tr><td><strong>Hỗ trợ</strong></td><td>NKRO / Multimedia / Macro / Khóa phím windows</td></tr><tr><td><strong>Keycap</strong></td><td>PBT Dye-Subbed, OEM profile</td></tr><tr><td><strong>Tương thích</strong></td><td>Windows / MacOS / Linux<br>Bàn phím AKKO khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này)</td></tr><tr><td><strong>Phụ kiện</strong></td><td>1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB Type-C to USB + 2 pin AAA + Keycap tặng kèm</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;</strong></h2><p>&nbsp;</p><p><a href=\"https://gearvn.com/collections/ban-phim-co\">Bàn phím cơ</a> AKKO 3087 RF Dragon Ball Z Goku Akko V3 Cream Yellow switch là một sản phẩm độc đáo kết hợp giữa thương hiệu bàn phím nổi tiếng AKKO và bộ truyện tranh&nbsp;Dragon Ball Z đình đám. Với thiết kế lấy cảm hứng từ nhân vật Son Goku, sản phẩm này không chỉ hấp dẫn với các fan của Dragon Ball Z mà còn mang đến trải nghiệm gõ phím tuyệt vời cho người dùng công nghệ.</p><h2><strong>Thiết kế hiện đại, tiện lợi</strong></h2><p><a href=\"https://gearvn.com/collections/ban-phim-akko\">Bàn phím AKKO </a>3087 RF Dragon Ball Z Goku được thiết kế với tông màu cam và xanh dương rực rỡ, kèm theo hình ảnh Goku in trên các phím bấm, tạo nên một phong cách độc đáo và bắt mắt. Thiết kế TKL với 87 phím giúp tiết kiệm không gian trên bàn làm việc, đồng thời giữ lại đầy đủ các tính năng cần thiết cho công việc và giải trí.</p><p><a href=\"https://gearvn.com/collections/ban-phim-wireless\">Bàn phím không dây</a> này&nbsp;còn tích hợp phím đa phương tiện, giúp điều khiển nhạc và video dễ dàng mà không cần thoát ra khỏi ứng dụng đang sử dụng. Tính năng phím Macro cho phép ghi và phát lại thao tác phím, rất tiện lợi cho những người thường xuyên sử dụng các chuỗi lệnh phức tạp. Đặc biệt, khóa phím Windows giúp tránh tình trạng bấm nhầm trong khi chơi game, đảm bảo không bị gián đoạn, giúp bạn tập trung hơn vào các trận đấu kịch tính.</p><p><img src=\"https://file.hstatic.net/200000722513/file/_phim_co_akko_3087_rf_dragon_ball_z_goku_akko_v3_cream_yellow_switch-3_44cc4760df874c2fad84e575e7b0edcb_grande.jpg\" alt=\"Bàn phím cơ AKKO 3087 RF Dragon Ball Z Goku Akko V3 Cream Yellow switch\"></p>', 1, 1, '2025-11-20 07:57:13', '2025-12-14 04:07:07'),
(253, 18, 2, 9, 64, 'Bàn phím AKKO 5098B Santorini V3 Piano Pro switch', NULL, 1399000, 499000, 73, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Đánh giá chi tiết sản phẩm&nbsp;Bàn phím AKKO 5098B Santorini V3 Piano Pro switch</strong></h2><p>Bàn phím AKKO 5098B Santorini V3 Piano Pro switch nhất định&nbsp;để lại cho người dùng ấn tượng mạnh kể từ lần đầu bởi thiết kế lạ mắt, sáng tạo. Trên <a href=\"https://gearvn.com/collections/ban-phim-akko\">bàn phím AKKO</a> còn được tích hợp màn hình LCD khéo léo. Với ngoại hình ấn tượng, hiệu năng nổi bật, đây chắc chắn là một sản phẩm được nhiều người săn đón.</p><h3><strong>Thiết kế bàn phím đẹp mắt, ấn tượng</strong></h3><p>Khác với những bàn phím khác,&nbsp;AKKO 5098B Santorini V3 Piano Pro switch để lại cho mọi người một ấn tượng đặc biệt bởi ngoại hình được thiết kế hiện đại, màu sắc thu hút. Các keycaps&nbsp;của bàn phím được làm từ một loại vật liệu vô cùng bền bỉ kết hợp với&nbsp;công nghệ in dye-sublimation nhuộm màu bền bỉ&nbsp;không chỉ giúp hình vẽ không&nbsp;phai mà còn mang đến cho người dùng cảm giác gõ thoải mái.</p><p>Bàn phím AKKO 5098B có kích thước khoảng&nbsp;409 x 138.4 x 32.3mm và nặng khoảng 1.02kg, với thiết kế như vậy người dùng có thể dễ mang <a href=\"https://gearvn.com/collections/ban-phim-may-tinh\">bàn phím máy tính</a>&nbsp;đi mọi nơi để thuận tiện làm việc. Và một điểm khiến bàn phím AKKO 5098B trở nên ấn tượng hơn chính là&nbsp;Custom Vertical Knob (Núm điều chỉnh).&nbsp;Với núm điều chỉnh dọc độc đáo, AKKO 5098B mang đến cho bạn trải nghiệm sử dụng mượt mà và trực quan hơn. Với núm xoay này, bạn có thể tùy chỉnh âm lượng và hiệu ứng đèn nền RGB chỉ bằng một thao tác xoay nhẹ.&nbsp;</p><p><img src=\"https://product.hstatic.net/200000722513/product/sto-1_32651b25ecaf4578ab1a93f82639d12c_1024x1024.png\" alt=\"Bàn phím AKKO 5098B Santorini V3 Piano Pro switch\"></p>', 1, 1, '2025-11-20 07:58:18', '2025-12-06 16:26:42'),
(254, 18, 2, 9, 64, 'Bàn phím AKKO 5108B Plus Hatsune Miku Akko Piano Pro Switch', NULL, 999000, 499000, 136, NULL, 1, 1, '2025-11-20 07:59:19', '2025-12-16 00:49:21'),
(255, 18, 2, 9, 64, 'Bàn phím cơ AKKO 5075B Plus TM Chicago Piano V3 Pro Switch', NULL, 1009000, 499900, 214, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>&nbsp;</p><p><strong>5075B Plus Chicago</strong>:</p><ul><li>Layout 75%, có núm</li><li>LED RGB có thể nháy theo nhạc và có cả led viền</li><li>Gasket mount giúp âm gõ “êm tai”</li><li>Keycap ASA&nbsp; profile (Trải nghiệm RGB cao cấp)</li><li>Stab đã được tinh chỉnh sẫn, sử dụng akko switch Piano V3 Pro</li><li><strong>NGHIÊM CẤM SẠC TRỰC TIẾP QUA CỦ SẠC</strong></li></ul><p>&nbsp;</p><p><img src=\"https://product.hstatic.net/200000722513/product/multi-modes-4-1_71918eb58998485a8f37b214ada1caf0_grande.png\"></p><p>&nbsp;</p><p>LED nền RGB (16 triệu màu) với nhiều chế độ và có cả LED 2 bên hông phím&nbsp;3 chế độ kết nối: Dây / Bluetooth 5.0 / 2.4Ghz. NSX khuyến cáo chỉ nên cắm USB receiver 2.4ghz vào cổng USB 2.0 để được tín hiệu không dây tốt nhất.<br>Cấu trúc Gasket mount + Plate PC giúp âm gõ đều nhau ở các row.<br>Keycap : ASA profile ( Trải nghiệm RGB cao cấp)<br>Hotswap hỗ trợ switch 5 pin socket<br>Loại switch: AKKO Piano V3 Pro<br>Hỗ trợ NKRO / Multimedia / Macro / Khóa phím Win<br>Tích hợp sẵn foam tiêu âm PCB, foam đáy và IXPE switch pad<br><strong>Phụ kiện</strong>: 1 sách hướng dẫn sử dụng + 1 dây USB Type-C to USB + 1 USB Receiver 2.4Ghz&nbsp; + 1 Che bụi bàn phím + Keycap tặng kèm<br><strong>Phần mềm</strong>:&nbsp; Tích hợp AKKO Cloud Driver (Hỗ trợ Audio Visualizer ở chế độ kết nối 2.4Ghz) có thể keymap và chỉnh LED / Macro<br><a href=\"https://gearvn.com/collections/ban-phim-akko\">Bàn phím AKKO</a> khi kết nối với MacOS: (Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này)</p><p><img src=\"https://product.hstatic.net/200000722513/product/5075b-plus___________1_cba7f64fabe04e50ae43fe78c9054fb6_grande.png\"></p>', 1, 1, '2025-11-20 08:00:52', '2025-12-05 09:24:29'),
(256, 26, 2, 9, 55, 'Huawei MatePad 11.5 WiFi 6GB 128GB', NULL, 5500000, 1200000, 211, '<h2>Mô tả sản phẩm</h2><p><strong>Sở hữu màn hình thân thiện, chiếc tablet </strong><a href=\"https://fptshop.com.vn/may-tinh-bang/huawei-matepad-115-wifi-6gb\"><strong>MatePad 11.5 6GB RAM</strong></a><strong> mang lại trải nghiệm hình ảnh cực kỳ đã mắt. Sản phẩm là lựa chọn lý tưởng để bạn làm việc, giải trí và học tập. Công nghệ bảo vệ mắt và hiệu suất mạnh mẽ hỗ trợ bạn hiệu quả trong mọi tác vụ thường ngày.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_5_wifi_d_2fbc6f42a6.jpg\" alt=\"huawei-matepad-11-5-wifi-d.jpg\"></figure><h2><strong>Phong cách tinh tế, thiết kế gọn nhẹ</strong></h2><p>Về kiểu dáng, MatePad 11.5 nổi bật với cấu trúc thân máy được chế tác từ hợp kim nhôm nguyên khối, mang lại cảm nhận cứng cáp nhưng vẫn nhẹ nhàng với trọng lượng chỉ 499g và độ mỏng 6.8mm ấn tượng.</p><p>Các cạnh bao quanh thiết bị được vuốt cong nhẹ nhàng, tạo cảm nhận thoải mái khi cầm nắm trên tay trong thời gian dài, thích hợp cho việc di chuyển để sử dụng linh hoạt hoặc đáp ứng nhu cầu làm việc ngoài trời thường xuyên. Tông màu xám không gian tạo vẻ hiện đại, sang trọng và dễ hòa hợp với các phụ kiện công nghệ khác của bạn.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_5_wifi_2_1716d4ebb8.jpg\" alt=\"huawei-matepad-11-5-wifi-2.jpg\"></figure><h2><strong>Màn hình 11.5 inch mượt mà</strong></h2><p>Điểm nhấn quan trọng nhất của mẫu tablet MatePad 11.5 nằm ở màn hình rộng 11.5 inch với độ phân giải 2.2K (2.200 x 1.440 pixels) được thiết kế với tỉ lệ 3:2, cho không gian hiển thị rộng rãi và rõ nét khi đọc tài liệu, lướt web hoặc chỉnh sửa ảnh. Tần số quét 120Hz giúp các thao tác cuộn trang, vẽ hoặc xem video trở nên mượt mà hơn. Màn hình đạt tỷ lệ hiển thị trên thân máy lên tới 86% nhờ hạn chế tối đa kích cỡ viền bao quanh, mang lại trải nghiệm nhìn ngắm liền mạch.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_5_wifi_6_5615a891ba.jpg\" alt=\"huawei-matepad-11-5-wifi-6.jpg\"></figure>', 0, 1, '2025-11-27 09:13:00', '2025-11-27 09:13:00'),
(257, 26, 2, 9, 55, 'Huawei MatePad Pro 12.2 WiFi 12GB 512GB', NULL, 3200000, 999000, 91, '<h2>Mô tả sản phẩm</h2><p><strong>Khoe dáng với thiết kế tinh xảo cùng họa tiết dệt lụa độc đáo, </strong><a href=\"https://fptshop.com.vn/may-tinh-bang/huawei-matepad-pro-12-2-wifi\"><strong>Huawei MatePad Pro 12.2</strong></a><strong> mang lại sự hỗ trợ tối ưu trong quá trình làm việc và thực hiện các tác vụ đồ họa. Chiếc tablet thế hệ mới của Huawei ghi điểm mạnh nhờ công nghệ màn hình Tandem OLED PaperMatte 12.2 inch, đạt độ sáng tối đa 2000 </strong><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/do-sang-man-hinh-nit-la-gi-184871\"><strong>nits</strong></a><strong>, có độ phân giải 2800 x 1840 pixels và hỗ trợ </strong><a href=\"https://fptshop.com.vn/tin-tuc/for-gamers/man-hinh-gaming-144hz-153518\"><strong>tần số quét 144Hz</strong></a><strong>. Viên pin 10.100 mAh mang lại thời lượng sử dụng đáng kinh ngạc.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_1_dff9988df8.jpg\" alt=\"huawei-matepad-pro-12-2-1.jpg\"></figure><h2><strong>Nét đẹp tinh tế của chiếc tablet thanh lịch</strong></h2><p>Phiên bản MatePad Pro 12.2 được chế tác với độ mỏng thân máy chỉ 5.5mm và đạt trọng lượng khoảng 508g, mang lại cho người dùng cảm giác nhẹ nhàng khi cầm nắm hoặc di chuyển. Thiết kế viền màn hình rất mỏng giúp tỉ lệ hiển thị đạt tới 92%, từ đó tối ưu không gian quan sát hình ảnh nhưng vẫn giữ được sự gọn gàng tinh tế.</p><p>Chất liệu chế tác bền bỉ kết hợp với họa tiết dệt lụa cùng gam màu Xanh tươi mát giúp thiết bị phù hợp trong nhiều môi trường sử dụng khác nhau, từ văn phòng, giảng đường cho đến không gian sáng tạo cá nhân. Mặt lưng máy được Huawei xử lý tinh xảo, tạo cảm giác sang trọng và chắc chắn, đồng thời hạn chế bám dấu vân tay trong quá trình sử dụng hằng ngày.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_5_0f224bfa41.jpg\" alt=\"huawei-matepad-pro-12-2-5.jpg\"></figure><h2><strong>Màn hình PaperMatte sắc nét và chân thực</strong></h2><p>Hiện diện trên mặt trước của MatePad Pro 12.2 là màn hình Tandem OLED PaperMatte với độ phân giải 2800 x 1840 pixels cùng mật độ điểm ảnh 274 ppi. Công nghệ tấm nền hiện đại cho phép hiển thị tới 1.07 tỷ màu, hỗ trợ dải màu rộng P3 cùng độ tương phản 2.000.000:1, mang lại hình ảnh chi tiết và sắc nét trong từng khung hình.</p><p>Tần số quét 144Hz đảm bảo mọi chuyển động trở nên mượt mà, đặc biệt hữu ích khi xem phim, chơi game hay thao tác trên các ứng dụng đồ họa. Công nghệ chống lóa nano giúp màn hình hiển thị rõ ràng ngay cả dưới nguồn sáng mạnh. Thêm vào đó, bề mặt PaperMatte mang lại cảm giác viết vẽ gần như trên giấy thật. Màn hình còn hỗ trợ các chế độ như giảm ánh sáng xanh, chế độ đọc sách hoặc hiển thị đen trắng.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_f_332381522c.jpg\" alt=\"huawei-matepad-pro-12-2-f.jpg\"></figure><h2><strong>Trải nghiệm mạnh mẽ cùng HarmonyOS 4.2</strong></h2><p>Huawei MatePad Pro 12.2 sử dụng nền tảng HarmonyOS 4.2 với giao diện hiện đại cùng hiệu suất đa nhiệm vượt trội. Lợi thế 12GB <a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/ram-la-gi-bo-nho-ram-dung-de-lam-gi-57115\">RAM</a> giúp sản phẩm xử lý mượt nhiều tác vụ cùng lúc như mở hàng loạt tab trình duyệt, soạn thảo tài liệu và chỉnh sửa ảnh. <a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/rom-la-gi-chu-y-gi-khi-chon-bo-nho-trong-cua-dien-thoai-57161\">Bộ nhớ trong</a> 256GB đủ để lưu trữ các tệp dữ liệu, hình ảnh hay video dung lượng lớn, đồng thời có tốc độ đọc ghi cao nhằm tối ưu hiệu suất tổng thể.</p><p>Kiến trúc tản nhiệt 3D cùng cơ chế dẫn nhiệt hiệu quả được tích hợp giúp máy duy trì nhiệt độ ổn định ngay cả khi xử lý các tác vụ nặng. Bạn có thể an tâm khi thực hiện các dự án sáng tạo trong hàng giờ liên tục, từ dựng video đến chỉnh sửa hình ảnh chuyên sâu.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_9_db87bff4c7.jpg\" alt=\"huawei-matepad-pro-12-2-9.jpg\"></figure>', 1, 1, '2025-11-27 09:14:34', '2025-12-14 15:10:08'),
(258, 26, 2, 9, 55, 'Huawei MatePad SE 11 WiFi 4GB 128GB', NULL, 4000000, 2300000, 234, '<h2>Mô tả sản phẩm</h2><p><strong>Phiên bản 4GB </strong><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/ram-dien-thoai-la-gi-35502\"><strong>RAM</strong></a><strong> của&nbsp;MatePad SE 11 inch là lựa chọn nổi bật trong tầm giá dễ tiếp cận.&nbsp;Ngoài việc&nbsp;thiết kế tinh tế,&nbsp;sản phẩm còn ghi điểm nhờ&nbsp;loạt tính năng&nbsp;nổi bật&nbsp;như màn hình lớn Full HD+, bút cảm ứng M-Pen Lite tiện dụng, hệ thống âm thanh sống động và pin dung lượng cao 7.700 mAh.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/Huawei_matepad_se_11_inch_2_083a8035f3.jpg\" alt=\"Huawei MatePad SE 11 inch 2\"></figure><h2><strong>Thanh lịch, nhẹ nhàng, sử dụng thoải mái</strong></h2><p>Chiếc <a href=\"https://fptshop.com.vn/may-tinh-bang/huawei\">máy tính bảng Huawei</a> mang triết lý thiết kế tối giản nhưng không kém phần tinh tế, với thân máy chỉ dày 6.9 mm và trọng lượng vỏn vẹn 475 gram. Đây là điểm cộng giúp thiết bị trở nên thanh lịch, đồng thời tạo cảm giác cầm nắm nhẹ nhàng, phù hợp để sử dụng trong thời gian dài mà không gây mỏi tay.</p><p>Từng chi tiết nhỏ trên thân máy đều được hoàn thiện một cách tỉ mỉ, thể hiện sự chỉn chu và đầu tư nghiêm túc trong khâu thiết kế. Màu Xám thời thượng khiến sản phẩm dễ dàng hòa hợp với nhiều phong cách khác nhau của người dùng, từ chuyên nghiệp đến năng động.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/Huawei_matepad_se_11_inch_c_3e53904825.jpg\" alt=\"Huawei MatePad SE 11 inch 30\"></figure><h2><strong>Hoàn thiện từ kim loại và bền bỉ hơn bạn nghĩ</strong></h2><p>Cấu trúc khung vỏ của Huawei MatePad SE 11 inch được chế tác hoàn toàn từ kim loại nguyên khối nhằm đảo bảo độ chắc chắn trong quá trình sử dụng. Chất liệu nhôm góp phần tô điểm diện mạo cao cấp, đồng thời đảm bảo tính bền bỉ trong quá trình sử dụng hằng ngày.</p><p>Để chứng minh độ tin cậy, sản phẩm đã vượt qua hơn 60 bài kiểm tra độ bền nghiêm ngặt trước khi đến tay người dùng. Nhờ đó, Huawei khẳng định độ cứng của thiết bị tăng tới 45.2%, hạn chế hư hỏng khi va đập nhẹ hoặc sử dụng trong điều kiện khắc nghiệt.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/Huawei_matepad_se_11_inch_3_9a20317be1.jpg\" alt=\"Huawei MatePad SE 11 inch 3\"></figure>', 0, 1, '2025-11-27 09:16:17', '2025-11-27 09:16:17'),
(259, 26, 2, 9, 55, 'Huawei MatePad 11.5 PaperMatte 2025 WiFi 8GB 256GB', NULL, 4200000, 3200000, 231, '<h2>Mô tả sản phẩm</h2><p><a href=\"https://fptshop.com.vn/may-tinh-bang/huawei-matepad-115-2025\"><strong>Huawei MatePad 11.5</strong></a><strong> gây ấn tượng bởi khả năng hiển thị cao cấp và vận hành linh hoạt trong mọi tình huống. Sản phẩm sở hữu màn hình PaperMatte 11.5 inch với độ phân giải 2.5K, viên pin dung lượng 10.100mAh và hệ thống loa kép hiện đại. Với thiết kế kim loại nguyên khối và tương thích cùng bút M-Pencil thế hệ 3, MatePad 11.5 mang đến trải nghiệm chuyên nghiệp, tiện lợi và bền bỉ.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_5_2025_0_a5c69fb1e7.jpg\" alt=\"huawei-matepad-11-5-2025-0.jpg\"></figure><h2><strong>Trải nghiệm đắc lực như PC</strong></h2><p>Bàn phím với hành trình phím 1.5mm và kích thước phím 15mm mang đến trải nghiệm gõ mượt mà cho người dùng. Ngoài ra, bàn phím cũng được tích hợp sạc trực tiếp từ thân máy giúp người dùng thoải mái sử dụng trong một khoảng thời gian dài. Đặc biệt, khi kết hợp cùng <a href=\"https://fptshop.com.vn/phu-kien/chuot\">Chuột Bluetooth</a> Thông Minh, Huawei MatePad 11.5 PaperMatte Mới trở thành “bạn đồng hành” hoàn hảo.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_5_66d6e99be8.jpg\" alt=\"huawei-matepad-11-5.jpg\"></figure><h2><strong>Bộ ứng dụng WPS Office PC hoàn toàn miễn phí</strong></h2><p>Ngoài việc “chuẩn PC” về phần cứng, Huawei MatePad 11.5 PaperMatte 2025 cũng được trang bị bộ ứng dụng WPS Office PC, hoàn toàn miễn phí với giao diện tương tự như trên laptop, cho phép xử lý bảng tính, bản trình chiếu hay các tệp tài liệu một cách dễ dàng. Việc sử dụng cùng bàn phím thông minh đi kèm giúp người dùng dễ dàng thao tác tương tự như trên máy tính để có thể làm việc mọi lúc, mọi nơi.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_6_db057f15b8.jpg\" alt=\"huawei-matepad-11-6.jpg\"></figure><h2><strong>Ghi chú hiệu quả trên ứng dụng Huawei Notes tiện lợi</strong></h2><p>Ứng dụng HUAWEI Notes cũng mang đến những cải tiến đáng chú ý, như bổ sung thêm tính năng AI Handwriting Enhancement, đa dạng loại bút viết và các công cụ hỗ trợ ghi chú trong Trung Tâm Tài Nguyên (Resource Center), giúp người dùng thỏa sức lưu trữ những ghi chú quan trọng một cách dễ dàng và nhanh chóng.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_11_8_eda37206b1.jpg\" alt=\"huawei-matepad-11-8.jpg\"></figure>', 0, 1, '2025-11-27 09:17:55', '2025-11-27 09:17:55'),
(260, 26, 2, 9, 55, 'Huawei MatePad Pro 12.2 12GB 512GB', NULL, 9000000, 5000000, 111, '<h2>Mô tả sản phẩm</h2><p><strong>Huawei MatePad Pro sẽ nâng tầm trải nghiệm của bạn với màn hình Tandem OLED tuyệt sắc kết hợp cùng bàn phím Huawei Glide chuyên nghiệp. Chiếc tablet phô diễn vẻ đẹp cao cấp với họa tiết tơ lụa vàng độc đáo, toát lên phong thái doanh nhân. Ngoài ra, thời lượng pin chờ lên đến 1 năm và trải nghiệm âm thanh đỉnh cao cũng là những điểm cộng khó lòng bỏ qua ở sản phẩm này.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_12gb_256gb_1_d7be46906f.jpg\" alt=\"huawei-matepad-pro-12-2-12gb-256gb-1.jpg\"></figure><h2><strong>Màn hình Tandem OLED Full View tuyệt sắc</strong></h2><p>Không gian hiển thị hình ảnh 12.2 inch của <a href=\"https://fptshop.com.vn/may-tinh-bang/huawei-matepad-pro-12-2\">Huawei MatePad Pro</a> được sản xuất từ công nghệ Tandem OLED với độ bền vượt trội. Nhờ kỹ nghệ xếp chồng các điểm ảnh ở cấp độ nano, màn hình này thể hiện độ sáng tốt và có độ tương phản cực cao. Thiết kế viền bao quanh siêu mỏng giúp tỉ lệ màn hình trên thân máy lên tới 92%, cung cấp góc nhìn rộng mở cho người dùng.</p><p>Các thông số hiển thị trên màn hình MatePad Pro rất ấn tượng với độ sáng 2.000 <a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/do-sang-man-hinh-nit-la-gi-184871\">nit</a>, độ tương phản 2.000.000:1, khả năng diễn đạt 1,07 tỷ màu sắc, độ phân giải lên đến 2.800 x 1.840 pixel và <a href=\"https://fptshop.com.vn/tin-tuc/for-gamers/man-hinh-gaming-144hz-153518\">tần số quét 144Hz</a>. Tất cả đều hứa hẹn đem lại những khuôn hình tuyệt sắc, sống động và trung thực.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_12gb_256gb_2_2db3247faf.jpg\" alt=\"huawei-matepad-pro-12-2-12gb-256gb-2.jpg\"></figure><h2><strong>Trải nghiệm nhìn ngắm thoải mái, đã mắt</strong></h2><p>Huawei MatePad Pro được trang bị công nghệ chống chói và chống lóa kích cỡ nano, có thể loại bỏ tới 99% hiện tượng nhiễu sáng. Thêm vào đó, các lớp quang học nano magnetron giúp giảm thiểu độ bóng do phản chiếu ánh sáng từ môi trường. Nhờ vậy, bạn sẽ có được trải nghiệm nhìn ngắm dễ chịu và cực kỳ thoải mái.&nbsp;</p><p>Lợi thế mà màn hình Tandem OLED PaperMate đem lại giúp Huawei MatePad Pro đạt chứng nhận <i>Hiệu suất cao về Giảm mệt mỏi thị giác 2.0</i> của SGS, đi kèm chứng nhận <i>Không phản chiếu</i> và chứng nhận <i>Màn hình chăm sóc toàn diện 3.0</i> của TUV Rheinland.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_12gb_256gb_3_70916587c3.jpg\" alt=\"huawei-matepad-pro-12-2-12gb-256gb-3.jpg\"></figure><h2><strong>Thu hút mọi ánh mắt với họa tiết lụa tơ vàng</strong></h2><p>Mặt lưng của MatePad Pro được thiết kế với cấu trúc độc đáo, lấy cảm ứng từ độ mềm mại, quý phái của các bức tranh lụa truyền thống. Để làm được điều này, đội ngũ <a href=\"https://fptshop.com.vn/may-tinh-bang/huawei\">Huawei</a> đã kết hợp nhiều lớp quang học với họa tiết lụa tơ vàng, giúp chiếc máy tính bảng như tỏa ra ánh sáng từ bên trong.</p><p>Thiết kế tinh tế và thân máy 5.5mm mảnh mai đem lại cảm nhận tổng thể hết sức thanh lịch, cao cấp. Trọng lượng 508 gram nhẹ nhàng của thiết bị cho cảm giác cầm nắm thoải mái trên tay, thân thiện hơn mọi mẫu tablet có kích cỡ tương đương trên thị trường.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/huawei_matepad_pro_12_2_12gb_256gb_5_d6f7c4002d.jpg\" alt=\"huawei-matepad-pro-12-2-12gb-256gb-5.jpg\"></figure>', 0, 1, '2025-11-27 09:19:17', '2025-11-27 09:19:17'),
(261, 26, 2, 9, 55, 'Huawei MatePad 11.5\"S WiFi 8GB 256GB', NULL, 10000000, 4999999, 42, NULL, 0, 1, '2025-11-27 09:20:30', '2025-11-27 09:20:30'),
(262, 26, 2, 9, 56, 'Samsung Galaxy Tab S10 Lite Wifi 6GB 128GB', NULL, 10000000, 6999999, 134, '<h2><strong>Thông số kỹ thuật</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Kích thước màn hình</td><td>10.9 inches</td></tr><tr><td>Công nghệ màn hình</td><td><a href=\"https://cellphones.com.vn/sforum/man-hinh-tft-lcd\">TFT LCD</a></td></tr><tr><td>Camera sau</td><td>8 MP</td></tr><tr><td>Camera trước</td><td>5 MP</td></tr><tr><td>Chipset</td><td>Exynos 1380</td></tr><tr><td>Dung lượng RAM</td><td>6 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 MB</td></tr><tr><td>Pin</td><td>8000 mAh</td></tr><tr><td>Hệ điều hành</td><td>Android</td></tr><tr><td>Độ phân giải màn hình</td><td>1320 x 2112 pixels</td></tr><tr><td>Tính năng màn hình</td><td>Hỗ trợ S Pen<br>16 triệu màu<br>Tần số quét 90 Hz</td></tr><tr><td>Loại CPU</td><td>8 nhân (4x2.4 GHz + 4x2.0 GHz)</td></tr><tr><td>Tương thích</td><td>Bút S Pen</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 09:27:04', '2025-11-27 09:27:04');
INSERT INTO `products` (`id`, `cat_id`, `users_id`, `brands_id`, `sub_id`, `name`, `youtube_path`, `price`, `price_new`, `quantity`, `content`, `featured_product`, `status`, `created_at`, `updated_at`) VALUES
(263, 26, 2, 9, 56, 'Samsung Galaxy Tab S10 FE Wifi 8GB 128GB', NULL, 19900999, 11999000, 100, '<h2><strong>Thông số kỹ thuật</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Kích thước màn hình</td><td>10.9 inches</td></tr><tr><td>Công nghệ màn hình</td><td><a href=\"https://cellphones.com.vn/sforum/man-hinh-tft-lcd\">TFT LCD</a></td></tr><tr><td>Camera sau</td><td>13.0 MP</td></tr><tr><td>Camera trước</td><td>12.0 MP</td></tr><tr><td>Chipset</td><td>Exynos 1580 (4 nm)</td></tr><tr><td>Dung lượng RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>Pin</td><td>8,000 mAh</td></tr><tr><td>Hệ điều hành</td><td>Android 15</td></tr><tr><td>Độ phân giải màn hình</td><td>2304 x 1440 pixels</td></tr><tr><td>Tính năng màn hình</td><td>Tần số 90Hz, Độ sáng màn hình 800 nits, 16 triệu màu</td></tr><tr><td>Loại CPU</td><td>2.9GHz,2.6GHz,1.9GHz</td></tr><tr><td>Tương thích</td><td>Bút S Pen</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 09:28:52', '2025-11-27 09:28:52'),
(264, 26, 2, 9, 56, 'Samsung Galaxy Tab S10 FE Wifi 8GB 256GB', NULL, 23999000, 9999000, 50, '<h2><strong>Thông số kỹ thuật</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Kích thước màn hình</td><td>10.9 inches</td></tr><tr><td>Công nghệ màn hình</td><td><a href=\"https://cellphones.com.vn/sforum/man-hinh-tft-lcd\">TFT LCD</a></td></tr><tr><td>Camera sau</td><td>13.0 MP</td></tr><tr><td>Camera trước</td><td>12.0 MP</td></tr><tr><td>Chipset</td><td>Exynos 1580 (4 nm)</td></tr><tr><td>Dung lượng RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>Pin</td><td>8,000 mAh</td></tr><tr><td>Hệ điều hành</td><td>Android 15</td></tr><tr><td>Độ phân giải màn hình</td><td>2304 x 1440 pixels</td></tr><tr><td>Tính năng màn hình</td><td>Tần số 90Hz, Độ sáng màn hình 800 nits, 16 triệu màu</td></tr><tr><td>Loại CPU</td><td>2.9GHz,2.6GHz,1.9GHz</td></tr><tr><td>Tương thích</td><td>Bút S Pen</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 09:29:43', '2025-11-27 09:29:43'),
(265, 26, 2, 9, 56, 'Samsung Galaxy Tab S10 FE Wifi 8GB 1TB', NULL, 7999000, 5999000, 82, '<h2><strong>Thông số kỹ thuật</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Kích thước màn hình</td><td>10.9 inches</td></tr><tr><td>Công nghệ màn hình</td><td><a href=\"https://cellphones.com.vn/sforum/man-hinh-tft-lcd\">TFT LCD</a></td></tr><tr><td>Camera sau</td><td>8 MP</td></tr><tr><td>Camera trước</td><td>5 MP</td></tr><tr><td>Chipset</td><td>Exynos 1380</td></tr><tr><td>Dung lượng RAM</td><td>6 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 MB</td></tr><tr><td>Pin</td><td>8000 mAh</td></tr><tr><td>Hệ điều hành</td><td>Android</td></tr><tr><td>Độ phân giải màn hình</td><td>1320 x 2112 pixels</td></tr><tr><td>Tính năng màn hình</td><td>Hỗ trợ S Pen<br>16 triệu màu<br>Tần số quét 90 Hz</td></tr><tr><td>Loại CPU</td><td>8 nhân (4x2.4 GHz + 4x2.0 GHz)</td></tr><tr><td>Tương thích</td><td>Bút S Pen</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 09:30:29', '2025-11-27 17:00:54'),
(266, 26, 2, 9, 56, 'Samsung Galaxy Tab S10 Ultra 5G 12GB 256GB', NULL, 8999000, 4990900, 103, '<h2><strong>Thông số kỹ thuật</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Kích thước màn hình</td><td>14.6 inches</td></tr><tr><td>Công nghệ màn hình</td><td>Dynamic AMOLED 2X</td></tr><tr><td>Camera sau</td><td>13.0 MP + 8.0 MP</td></tr><tr><td>Camera trước</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Chipset</td><td>MediaTek Dimensity 9300+</td></tr><tr><td>Công nghệ NFC</td><td>Không</td></tr><tr><td>Dung lượng RAM</td><td>12 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>Pin</td><td>11,200mAh</td></tr><tr><td>Thẻ SIM</td><td>2 SIM (nano‑SIM và eSIM)</td></tr><tr><td>Hệ điều hành</td><td>Android 14, One UI 6.1.1</td></tr><tr><td>Độ phân giải màn hình</td><td>1848 x 2960 Pixels</td></tr><tr><td>Tính năng màn hình</td><td>120 Hz, 930 nits<br>Kính cường lực Corning Gorilla Glass<br>Lớp phủ chống chói (mới)<br>Độ sâu màu sắc 16M</td></tr><tr><td>Loại CPU</td><td>8 nhân, 3.4GHz,2.8GHz,2GHz</td></tr><tr><td>Tương thích</td><td>Bút S Pen</td></tr></tbody></table></figure>', 1, 1, '2025-11-27 09:32:36', '2025-12-12 15:35:30'),
(267, 26, 2, 9, 56, 'Samsung Galaxy Tab S10 Ultra 5G 12GB 1TB', NULL, 12999000, 7999000, 90, '<h2><strong>Thông số kỹ thuật</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Kích thước màn hình</td><td>14.6 inches</td></tr><tr><td>Công nghệ màn hình</td><td>Dynamic AMOLED 2X</td></tr><tr><td>Camera sau</td><td>13.0 MP + 8.0 MP</td></tr><tr><td>Camera trước</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Chipset</td><td>MediaTek Dimensity 9300+</td></tr><tr><td>Công nghệ NFC</td><td>Không</td></tr><tr><td>Dung lượng RAM</td><td>12 GB</td></tr><tr><td>Bộ nhớ trong</td><td>256 GB</td></tr><tr><td>Pin</td><td>11,200mAh</td></tr><tr><td>Thẻ SIM</td><td>2 SIM (nano‑SIM và eSIM)</td></tr><tr><td>Hệ điều hành</td><td>Android 14, One UI 6.1.1</td></tr><tr><td>Độ phân giải màn hình</td><td>1848 x 2960 Pixels</td></tr><tr><td>Tính năng màn hình</td><td>120 Hz, 930 nits<br>Kính cường lực Corning Gorilla Glass<br>Lớp phủ chống chói (mới)<br>Độ sâu màu sắc 16M</td></tr><tr><td>Loại CPU</td><td>8 nhân, 3.4GHz,2.8GHz,2GHz</td></tr><tr><td>Tương thích</td><td>Bút S Pen</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 09:33:30', '2025-11-27 09:33:30'),
(268, 20, 2, 9, 38, 'Chuột Logitech G Pro X Superlight 2 Black', NULL, 3500000, 2900000, 123, '<p><strong>Thông tin chung:</strong></p><ul><li><strong>Hãng sản xuất:&nbsp;</strong>Logitech&nbsp;</li><li><strong>Tình trạng: </strong>Mới</li><li><strong>Bảo hành: </strong>24 Tháng</li></ul>', 0, 1, '2025-11-27 16:12:11', '2025-11-27 16:12:11'),
(269, 20, 2, 9, 38, 'Chuột Logitech G Pro X Superlight Wireless Pink', NULL, 2700000, 1200000, 90, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><h3><strong>Thông số kỹ thuật:</strong></h3><figure class=\"table\"><table><tbody><tr><td>Hãng sản xuất:</td><td>Logitech</td></tr><tr><td>Model:</td><td>G Pro X Superlight Wireless Pink</td></tr><tr><td>Màu:</td><td>Pink</td></tr><tr><td>Tần suất gửi tín hiệu USB:</td><td>1000 Hz (1ms)</td></tr><tr><td>Bộ vi xử lý:</td><td>32-bit ARM</td></tr><tr><td>Chuyển động liên tục:</td><td>70h</td></tr><tr><td>Tương thích:</td><td>POWERPLAY</td></tr><tr><td>Công nghệ không dây:</td><td>LIGHTSPEED</td></tr><tr><td>Chân:</td><td>Nhựa PTFE không pha tạp</td></tr><tr><td>Nút:</td><td>5 nút</td></tr><tr><td>Cảm biến:</td><td>HERO</td></tr><tr><td>Độ phân giải:</td><td>100 – 25.400 DPI</td></tr><tr><td>Tăng tốc tối đa:&nbsp;</td><td>&gt; 40 G</td></tr><tr><td>Tốc độ tối đa:</td><td>&gt; 400 IPS&nbsp;</td></tr><tr><td>Kích thước:</td><td>125,0 x&nbsp;63,5 x&nbsp;40,0 mm</td></tr><tr><td>Trọng lượng:</td><td>&lt; 63 g</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink_cb96834fcb4545649e5272e1d928017f_grande.png\"></p><p>&nbsp;</p><p>Chuột Logitech G Pro X Superlight Wireless&nbsp;là một trong những dòng <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> nhẹ nhất từ trước tới nay của Logitech, Logitech G Pro X Superlight Wireless White là bước đột phá về kỹ thuật khi đạt được trọng lượng ít hơn 63 gram – nhẹ hơn gần 25% so với chuột PRO không dây tiêu chuẩn của Logitech.</p><p>&nbsp;</p><p>&nbsp;</p><p>Với công nghệ không dây LIGHTSPEED 2,4 GHz đáp ứng để chơi game không bị gián đoạn và thời lượng pin lên đến 70 giờ.&nbsp;Chuột mới có các chân PTFE lớn, không phụ gia, cho trải nghiệm ma sát thấp mang lại độ chính xác, tốc độ và khả năng cơ động vô song.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-3_e56c39e0399d4bd6baee214978c7b12b_grande.png\"></p>', 0, 1, '2025-11-27 16:13:44', '2025-11-27 16:40:10'),
(270, 20, 2, 9, 38, 'Chuột Logitech G102 LightSync Black', NULL, 700000, 405000, 400, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><h3><strong>Thông số kỹ thuật:</strong></h3><figure class=\"table\"><table><tbody><tr><td>Hãng sản xuất:</td><td>Logitech</td></tr><tr><td>Model:</td><td>G Pro X Superlight Wireless Pink</td></tr><tr><td>Màu:</td><td>Pink</td></tr><tr><td>Tần suất gửi tín hiệu USB:</td><td>1000 Hz (1ms)</td></tr><tr><td>Bộ vi xử lý:</td><td>32-bit ARM</td></tr><tr><td>Chuyển động liên tục:</td><td>70h</td></tr><tr><td>Tương thích:</td><td>POWERPLAY</td></tr><tr><td>Công nghệ không dây:</td><td>LIGHTSPEED</td></tr><tr><td>Chân:</td><td>Nhựa PTFE không pha tạp</td></tr><tr><td>Nút:</td><td>5 nút</td></tr><tr><td>Cảm biến:</td><td>HERO</td></tr><tr><td>Độ phân giải:</td><td>100 – 25.400 DPI</td></tr><tr><td>Tăng tốc tối đa:&nbsp;</td><td>&gt; 40 G</td></tr><tr><td>Tốc độ tối đa:</td><td>&gt; 400 IPS&nbsp;</td></tr><tr><td>Kích thước:</td><td>125,0 x&nbsp;63,5 x&nbsp;40,0 mm</td></tr><tr><td>Trọng lượng:</td><td>&lt; 63 g</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink_cb96834fcb4545649e5272e1d928017f_grande.png\"></p><p>&nbsp;</p><p>Chuột Logitech G Pro X Superlight Wireless&nbsp;là một trong những dòng <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> nhẹ nhất từ trước tới nay của Logitech, Logitech G Pro X Superlight Wireless White là bước đột phá về kỹ thuật khi đạt được trọng lượng ít hơn 63 gram – nhẹ hơn gần 25% so với chuột PRO không dây tiêu chuẩn của Logitech.</p><p>&nbsp;</p><p>&nbsp;</p><p>Với công nghệ không dây LIGHTSPEED 2,4 GHz đáp ứng để chơi game không bị gián đoạn và thời lượng pin lên đến 70 giờ.&nbsp;Chuột mới có các chân PTFE lớn, không phụ gia, cho trải nghiệm ma sát thấp mang lại độ chính xác, tốc độ và khả năng cơ động vô song.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-3_e56c39e0399d4bd6baee214978c7b12b_grande.png\"></p>', 0, 1, '2025-11-27 16:15:10', '2025-11-27 16:15:10'),
(271, 20, 2, 9, 38, 'Chuột Logitech G102 LightSync White', NULL, 700000, 415000, 390, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><h3><strong>Thông số kỹ thuật:</strong></h3><figure class=\"table\"><table><tbody><tr><td>Hãng sản xuất:</td><td>Logitech</td></tr><tr><td>Model:</td><td>G Pro X Superlight Wireless Pink</td></tr><tr><td>Màu:</td><td>Pink</td></tr><tr><td>Tần suất gửi tín hiệu USB:</td><td>1000 Hz (1ms)</td></tr><tr><td>Bộ vi xử lý:</td><td>32-bit ARM</td></tr><tr><td>Chuyển động liên tục:</td><td>70h</td></tr><tr><td>Tương thích:</td><td>POWERPLAY</td></tr><tr><td>Công nghệ không dây:</td><td>LIGHTSPEED</td></tr><tr><td>Chân:</td><td>Nhựa PTFE không pha tạp</td></tr><tr><td>Nút:</td><td>5 nút</td></tr><tr><td>Cảm biến:</td><td>HERO</td></tr><tr><td>Độ phân giải:</td><td>100 – 25.400 DPI</td></tr><tr><td>Tăng tốc tối đa:&nbsp;</td><td>&gt; 40 G</td></tr><tr><td>Tốc độ tối đa:</td><td>&gt; 400 IPS&nbsp;</td></tr><tr><td>Kích thước:</td><td>125,0 x&nbsp;63,5 x&nbsp;40,0 mm</td></tr><tr><td>Trọng lượng:</td><td>&lt; 63 g</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink_cb96834fcb4545649e5272e1d928017f_grande.png\"></p><p>&nbsp;</p><p>Chuột Logitech G Pro X Superlight Wireless&nbsp;là một trong những dòng <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> nhẹ nhất từ trước tới nay của Logitech, Logitech G Pro X Superlight Wireless White là bước đột phá về kỹ thuật khi đạt được trọng lượng ít hơn 63 gram – nhẹ hơn gần 25% so với chuột PRO không dây tiêu chuẩn của Logitech.</p><p>&nbsp;</p><p>&nbsp;</p><p>Với công nghệ không dây LIGHTSPEED 2,4 GHz đáp ứng để chơi game không bị gián đoạn và thời lượng pin lên đến 70 giờ.&nbsp;Chuột mới có các chân PTFE lớn, không phụ gia, cho trải nghiệm ma sát thấp mang lại độ chính xác, tốc độ và khả năng cơ động vô song.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-3_e56c39e0399d4bd6baee214978c7b12b_grande.png\"></p>', 0, 1, '2025-11-27 16:16:47', '2025-11-27 16:16:47'),
(272, 20, 2, 9, 38, 'Chuột Logitech MX Master 3S Graphite', NULL, 3200000, 2390000, 32, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>Chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><h3><strong>Thông số kỹ thuật:</strong></h3><figure class=\"table\"><table><tbody><tr><td>Hãng sản xuất:</td><td>Logitech</td></tr><tr><td>Model:</td><td>G Pro X Superlight Wireless Pink</td></tr><tr><td>Màu:</td><td>Pink</td></tr><tr><td>Tần suất gửi tín hiệu USB:</td><td>1000 Hz (1ms)</td></tr><tr><td>Bộ vi xử lý:</td><td>32-bit ARM</td></tr><tr><td>Chuyển động liên tục:</td><td>70h</td></tr><tr><td>Tương thích:</td><td>POWERPLAY</td></tr><tr><td>Công nghệ không dây:</td><td>LIGHTSPEED</td></tr><tr><td>Chân:</td><td>Nhựa PTFE không pha tạp</td></tr><tr><td>Nút:</td><td>5 nút</td></tr><tr><td>Cảm biến:</td><td>HERO</td></tr><tr><td>Độ phân giải:</td><td>100 – 25.400 DPI</td></tr><tr><td>Tăng tốc tối đa:&nbsp;</td><td>&gt; 40 G</td></tr><tr><td>Tốc độ tối đa:</td><td>&gt; 400 IPS&nbsp;</td></tr><tr><td>Kích thước:</td><td>125,0 x&nbsp;63,5 x&nbsp;40,0 mm</td></tr><tr><td>Trọng lượng:</td><td>&lt; 63 g</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Logitech G Pro X Superlight Wireless Pink</strong></h2><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink_cb96834fcb4545649e5272e1d928017f_grande.png\"></p><p>&nbsp;</p><p>Chuột Logitech G Pro X Superlight Wireless&nbsp;là một trong những dòng <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> nhẹ nhất từ trước tới nay của Logitech, Logitech G Pro X Superlight Wireless White là bước đột phá về kỹ thuật khi đạt được trọng lượng ít hơn 63 gram – nhẹ hơn gần 25% so với chuột PRO không dây tiêu chuẩn của Logitech.</p><p>&nbsp;</p><p>&nbsp;</p><p>Với công nghệ không dây LIGHTSPEED 2,4 GHz đáp ứng để chơi game không bị gián đoạn và thời lượng pin lên đến 70 giờ.&nbsp;Chuột mới có các chân PTFE lớn, không phụ gia, cho trải nghiệm ma sát thấp mang lại độ chính xác, tốc độ và khả năng cơ động vô song.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g-pro-x-superlight-wireless-pink-3_e56c39e0399d4bd6baee214978c7b12b_grande.png\"></p>', 0, 1, '2025-11-27 16:18:07', '2025-11-27 16:18:07'),
(273, 20, 2, 9, 38, 'Chuột Logitech MX Anywhere 3S Rose', NULL, 1590000, 900000, 142, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>THÔNG SỐ KĨ THUẬT:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Loại chuột</strong></td><td>Văn phòng</td></tr><tr><td><strong>Màu sắc</strong></td><td>Hồng</td></tr><tr><td><strong>Trọng lượng</strong></td><td>99g&nbsp;</td></tr><tr><td><strong>Kích thước</strong></td><td>10.05 x 6.5 x 3.44 cm</td></tr><tr><td><strong>Công nghệ cảm biến</strong></td><td>Cảm biến Darkfield</td></tr><tr><td><strong>DPI</strong></td><td>200 - 8000 DPI</td></tr><tr><td><strong>Nút</strong></td><td>6 nút</td></tr><tr><td><strong>Khoảng cách không dây</strong></td><td>10 m</td></tr><tr><td><strong>Kết nối</strong></td><td>Bluetooth</td></tr><tr><td><strong>Pin</strong></td><td>500 mAh có thể sạc (thông qua cáp USB-C đi kèm)</td></tr><tr><td><strong>Phần mềm</strong></td><td>Logi Options&nbsp;và Logitech Flow</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 16:19:35', '2025-11-27 16:19:35'),
(274, 20, 2, 9, 38, 'Chuột Logitech G502 Hero Gaming', NULL, 890000, 590000, 370, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>THÔNG SỐ KĨ THUẬT:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Loại chuột</strong></td><td>Văn phòng</td></tr><tr><td><strong>Màu sắc</strong></td><td>Hồng</td></tr><tr><td><strong>Trọng lượng</strong></td><td>99g&nbsp;</td></tr><tr><td><strong>Kích thước</strong></td><td>10.05 x 6.5 x 3.44 cm</td></tr><tr><td><strong>Công nghệ cảm biến</strong></td><td>Cảm biến Darkfield</td></tr><tr><td><strong>DPI</strong></td><td>200 - 8000 DPI</td></tr><tr><td><strong>Nút</strong></td><td>6 nút</td></tr><tr><td><strong>Khoảng cách không dây</strong></td><td>10 m</td></tr><tr><td><strong>Kết nối</strong></td><td>Bluetooth</td></tr><tr><td><strong>Pin</strong></td><td>500 mAh có thể sạc (thông qua cáp USB-C đi kèm)</td></tr><tr><td><strong>Phần mềm</strong></td><td>Logi Options&nbsp;và Logitech Flow</td></tr></tbody></table></figure>', 0, 1, '2025-11-27 16:21:17', '2025-11-27 16:23:14'),
(275, 20, 2, 9, 38, 'Chuột Logitech G502 X Plus LightSpeed Black', NULL, 1000000, 699000, 380, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h2><strong>THÔNG SỐ KĨ THUẬT:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Loại chuột</strong></td><td>Văn phòng</td></tr><tr><td><strong>Màu sắc</strong></td><td>Hồng</td></tr><tr><td><strong>Trọng lượng</strong></td><td>99g&nbsp;</td></tr><tr><td><strong>Kích thước</strong></td><td>10.05 x 6.5 x 3.44 cm</td></tr><tr><td><strong>Công nghệ cảm biến</strong></td><td>Cảm biến Darkfield</td></tr><tr><td><strong>DPI</strong></td><td>200 - 8000 DPI</td></tr><tr><td><strong>Nút</strong></td><td>6 nút</td></tr><tr><td><strong>Khoảng cách không dây</strong></td><td>10 m</td></tr><tr><td><strong>Kết nối</strong></td><td>Bluetooth</td></tr><tr><td><strong>Pin</strong></td><td>500 mAh có thể sạc (thông qua cáp USB-C đi kèm)</td></tr><tr><td><strong>Phần mềm</strong></td><td>Logi Options&nbsp;và Logitech Flow</td></tr></tbody></table></figure>', 1, 1, '2025-11-27 16:22:34', '2025-12-14 23:41:45'),
(276, 20, 2, 9, 50, 'Chuột Rapoo VT9 Air Gaming Không Dây Tím', NULL, 1200000, 690000, 324, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>Nếu bạn đang tìm kiếm sản phẩm chuột máy tính không dây tốc độ cao cho bạn thoải mái di chuyển trong những trận đấu gây cần thì <strong>chuột Rapoo VT9 Air Gaming không dây Tím</strong> là “người bạn đồng hành” phù hợp dành cho bạn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-chuot-rapoo-vt9-air-gaming-khong-day-tim-1_73de00f136424b0295605a0e11cede3d.png\" alt=\"Rapoo VT9 Air Gaming Không Dây Tím\"></p><h3><strong>Thiết kế đặc biệt với trọng lượng nhẹ</strong></h3><p>Chuột gaming VT9 AIR sở hữu thiết kế trong suốt cùng với màu tím pastel mang đến cho bạn một chuột máy tính vừa dễ thương lại vừa độc đáo.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-chuot-rapoo-vt9-air-gaming-khong-day-tim-3_8a30063346b641c2af19cf2bb63626f5.png\" alt=\"Rapoo VT9 Air Gaming Không Dây Tím\"></p><p>Với trọng lượng chỉ khoảng 59 gram, bạn có thể chơi game với <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> cả ngày mà không mang lại cảm giác mỏi cổ tay.&nbsp;</p>', 0, 0, '2025-11-27 16:28:45', '2025-12-15 07:25:46'),
(277, 20, 2, 9, 50, 'Chuột Rapoo VT9 Air Gaming Không Dây Xanh', NULL, 1200000, 590000, 312, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>Nếu bạn đang tìm kiếm sản phẩm chuột máy tính không dây tốc độ cao cho bạn thoải mái di chuyển trong những trận đấu gây cần thì <strong>chuột Rapoo VT9 Air Gaming không dây Tím</strong> là “người bạn đồng hành” phù hợp dành cho bạn.</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-chuot-rapoo-vt9-air-gaming-khong-day-tim-1_73de00f136424b0295605a0e11cede3d.png\" alt=\"Rapoo VT9 Air Gaming Không Dây Tím\"></p><h3><strong>Thiết kế đặc biệt với trọng lượng nhẹ</strong></h3><p>Chuột gaming VT9 AIR sở hữu thiết kế trong suốt cùng với màu tím pastel mang đến cho bạn một chuột máy tính vừa dễ thương lại vừa độc đáo.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-chuot-rapoo-vt9-air-gaming-khong-day-tim-3_8a30063346b641c2af19cf2bb63626f5.png\" alt=\"Rapoo VT9 Air Gaming Không Dây Tím\"></p><p>Với trọng lượng chỉ khoảng 59 gram, bạn có thể chơi game với <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> cả ngày mà không mang lại cảm giác mỏi cổ tay.&nbsp;</p>', 1, 0, '2025-11-27 16:30:09', '2025-12-15 07:21:25'),
(278, 20, 2, 9, 50, 'Chuột Rapoo MT760 Mini Không Dây Đen', NULL, 900000, 459000, 422, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>Chuột máy tính bình thường khiến bạn mỏi tay khi làm việc trong thời gian dài, bạn cần một sản phẩm hỗ trợ việc này với độ nhạy vượt trội phù hợp cho công việc và chơi game. Vậy bạn có thể tham khảo chuột <strong>Rapoo MT760 Mini</strong> tại <a href=\"https://gearvn.com/\">GEARVN</a> với thiết kế công thái học độc đáo.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-chuot-rapoo-mt760-mini-khong-day-den-1_efe4fddc7e2f4ad7bee2da8ef1647797.png\" alt=\"Chuột Rapoo MT760 Mini Không Dây Đen\"></p>', 1, 1, '2025-11-27 16:31:13', '2025-12-06 16:26:16'),
(279, 20, 2, 2, 50, 'Chuột gaming Rapoo VT200 RGB Wireless', NULL, 490000, 230999, NULL, NULL, 0, 0, '2025-11-27 16:32:02', '2025-12-15 07:20:51'),
(280, 20, 2, 9, 50, 'Chuột Rapoo M300 Silent Wireless Dark Grey', NULL, 980000, 690000, 443, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p>Chuột máy tính bình thường khiến bạn mỏi tay khi làm việc trong thời gian dài, bạn cần một sản phẩm hỗ trợ việc này với độ nhạy vượt trội phù hợp cho công việc và chơi game. Vậy bạn có thể tham khảo chuột <strong>Rapoo MT760 Mini</strong> tại <a href=\"https://gearvn.com/\">GEARVN</a> với thiết kế công thái học độc đáo.&nbsp;</p><p><img src=\"https://file.hstatic.net/200000722513/file/gearvn-chuot-rapoo-mt760-mini-khong-day-den-1_efe4fddc7e2f4ad7bee2da8ef1647797.png\" alt=\"Chuột Rapoo MT760 Mini Không Dây Đen\"></p>', 0, 0, '2025-11-27 16:33:05', '2025-12-15 07:20:31'),
(281, 20, 2, 9, 50, 'Chuột Rapoo Gaming V280 RGB', NULL, 790000, 390000, 333, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><h3><strong>Thông số kỹ thuật:</strong></h3><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:</strong></td><td>Rapoo</td></tr><tr><td><strong>Bảo hành:</strong></td><td>24 Tháng</td></tr><tr><td><strong>Màu sắc:</strong></td><td>Đen</td></tr><tr><td><strong>Kết nối:</strong></td><td>Có dây</td></tr><tr><td><strong>Đèn led:</strong></td><td>RGB&nbsp;</td></tr><tr><td><strong>Độ nhạy (DPI):</strong></td><td>Lên tới 7000</td></tr><tr><td><strong>Chiều dài dây:</strong></td><td>1.8m</td></tr><tr><td><strong>Kích thước:</strong></td><td>123 x 68 x 39 mm</td></tr><tr><td><strong>Trọng lượng:</strong></td><td>110g</td></tr><tr><td><strong>Tương thích:</strong></td><td>Windows, MacOS</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết chuột Rapoo V280 RGB</strong></h2><p>Thiết kế công thái học kiểu dáng đối xứng chọ mọi game thủ<br>Bộ cảm biến quang học HD và tốc độ tracking IPS 80 inch/s<br>Chuyển đổi DPI với 7 mức từ 500 – 7000 đáp ứng thao tác thể loại Game<br>Bộ nhớ tích hợp bên trong lưu cấu hình phím macro, DPI và chế độ hiệu ứng ánh sáng<br>Hệ thống ánh sáng đa sắc thiết lập lên tới 16 triệu màu<br>Cảm biến chạm tay làm thay đổi ánh sáng nền thêm hào hứng</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-rapoo-v280_bc170b8cc6f14824a1ccff85a35ea4ed_grande.png\" alt=\"GEARVN-rapoo-v280\"></p><p>&nbsp;</p><p><strong>Thiết kế hiện đại</strong></p><p><a href=\"https://gearvn.com/collections/chuot-rapoo-v-series\">Chuột Rapoo V series</a>&nbsp;sở hữu thiết kế công thái học kiểu dáng đối xứng cho mọi game thủ kết hợp những góc cạnh sắc nét, mạnh mẽ tạo điểm nhấn ấn ấn tượng. Bên cạnh đó, ớp đệm nhám chống trơn trượt giúp người dùng thoải mái thực hiện mọi thao tác. Với màu đen bao phủ trên toàn bộ bề mặt, chuột có thêm đèn LED trang trí 7 màu đem lại những trải nghiệm thú vị hơn về ngoại hình, mẫu mã hấp dẫn.</p><p><strong>Dễ dàng điều chỉnh DPI</strong></p><p>Một trong những dòng <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột gaming</a> từ Rapoo được trang bị đến&nbsp;5 phím bấm và nút DPI với khả năng hiệu chỉnh 7 mức 500 DPI tới 7000 DPI tiện lợi. Tính năng giúp đem lại khả năng điều khiển trở nên chính xác hơn.&nbsp;&nbsp;</p><p><strong>Khả năng xử lý mạnh mẽ</strong></p><p>&nbsp;</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-rapoo-v280-1_d76ab7db9bcd43c495889772a7fb1ad1_grande.png\" alt=\"GEARVN-rapoo-v280\"></p>', 0, 1, '2025-11-27 16:34:25', '2025-11-27 16:34:25'),
(282, 20, 2, 9, 50, 'Chuột Bluetooth Silent Rapoo M650 Lucky Cat', NULL, 899000, 499000, 421, '<h2><strong>​​​​​​Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td>Rapoo</td></tr><tr><td><strong>Kết nối</strong></td><td>Bluetooth /&nbsp;Wireless</td></tr><tr><td><strong>DPI</strong></td><td>1300</td></tr><tr><td><strong>Mô tả</strong></td><td><p>&nbsp;</p><ul><li>Chuột không dây Silent Rapoo M650 Silent kết nối không dây qua USB Receiver 2.4GHz hoặc Bluetooth 3.0, 5.0</li><li>Bạn có thể dùng chuột không dây cùng với các thiết bị như iPad, Notebook, Macbook, PC, iMac qua kết nối tương thích tại bất kỳ đâu cho nhu cầu xử lý công việc hay giải trí của mình.</li><li>Với khoảng cách kết nối đến 10 mét, thật dễ dàng để sử dụng chuột trong mọi không gian kết nối.</li><li>Kết nối đồng thời với 3 thiết bị, luân phiên làm việc dễ dàng giữa chúng, cho không gian làm việc thêm gọn gàng, thao tác xử lý thêm thuận tiện</li><li>Chuột Rapoo M650 sử dụng pin AA thông dụng dễ thay thế</li><li>Tích hợp công nghệ tiết kiệm pin Rapoo’s energy saving và công tắt bật nguồn cho phép kéo dài thời gian sử dụng pin đến 9 tháng, yên tâm sử dụng với tần suất cao trong thời gian dài.</li><li>Chuột Rapoo M650 tương thích tốt với hệ điều hành Windows, MacOS (MacBook, iMac) thông dụng</li><li>Di chuyển nhanh, nhạy với thao tác chuẩn xác nhờ độ phân giải tối đa đến 1300 DPI</li><li>Với mức DPI độ phân giải cao 1,300 dpi của M650 Silent phù hợp với nhu cầu làm việc, thiết kế cơ bản hoặc giải trí của mình.</li><li>Chuột Rapoo M650 không dây Silent không tiếng ồn, êm ái trong mọi thao tác</li><li>Như vậy, chỉ với 1 mức đầu tư không lớn cho chuột máy tính thông minh, tiện ích, bạn sẽ thực sự hài lòng với những trải nghiệm cùng chuột không dây Rapoo M650 Silent.</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Bluetooth Silent Rapoo M650 Lucky Cat</strong></h2><p>Mừng tết đến và lộc đến nhà nhà với sản phẩm <a href=\"https://gearvn.com/collections/chuot-wireless\">chuột không dây</a> từ Rapoo với model <strong>M650 Lucky Cat</strong>. Hãy cùng GEARVN tìm hiểu ngay thôi nào !</p><h3><strong>Ngoại hình may mắn và cute</strong></h3><p>Vốn đã nổi tiếng với phân khúc <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột máy tính</a> giá rẻ, Rapoo M650 Lucky Cat được thương hiệu khoác lên lớp skin cực kì dễ thương và đẹp mặt. Lấy trọng tâm là năm Quý Mão, chính là năm của những chú mèo thì Rapoo đã sử dụng hình ảnh chú mèo thần tài dễ thương làm tâm điểm cho chú chuột của chúng ta.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-bluetooth-silent-rapoo-m650-lucky-cat-2_4518b71e6c044e7a86db7a93f53aef7c_1024x1024.jpg\" alt=\"GEARVN - Chuột Bluetooth Silent Rapoo M650 Lucky Cat\"></p>', 1, 1, '2025-11-27 16:35:25', '2025-12-15 16:15:17'),
(283, 20, 2, 9, 50, 'Chuột Rappo M500 Red', NULL, 799000, 599000, 180, '<h2><strong>​​​​​​Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td>Rapoo</td></tr><tr><td><strong>Kết nối</strong></td><td>Bluetooth /&nbsp;Wireless</td></tr><tr><td><strong>DPI</strong></td><td>1300</td></tr><tr><td><strong>Mô tả</strong></td><td><p>&nbsp;</p><ul><li>Chuột không dây Silent Rapoo M650 Silent kết nối không dây qua USB Receiver 2.4GHz hoặc Bluetooth 3.0, 5.0</li><li>Bạn có thể dùng chuột không dây cùng với các thiết bị như iPad, Notebook, Macbook, PC, iMac qua kết nối tương thích tại bất kỳ đâu cho nhu cầu xử lý công việc hay giải trí của mình.</li><li>Với khoảng cách kết nối đến 10 mét, thật dễ dàng để sử dụng chuột trong mọi không gian kết nối.</li><li>Kết nối đồng thời với 3 thiết bị, luân phiên làm việc dễ dàng giữa chúng, cho không gian làm việc thêm gọn gàng, thao tác xử lý thêm thuận tiện</li><li>Chuột Rapoo M650 sử dụng pin AA thông dụng dễ thay thế</li><li>Tích hợp công nghệ tiết kiệm pin Rapoo’s energy saving và công tắt bật nguồn cho phép kéo dài thời gian sử dụng pin đến 9 tháng, yên tâm sử dụng với tần suất cao trong thời gian dài.</li><li>Chuột Rapoo M650 tương thích tốt với hệ điều hành Windows, MacOS (MacBook, iMac) thông dụng</li><li>Di chuyển nhanh, nhạy với thao tác chuẩn xác nhờ độ phân giải tối đa đến 1300 DPI</li><li>Với mức DPI độ phân giải cao 1,300 dpi của M650 Silent phù hợp với nhu cầu làm việc, thiết kế cơ bản hoặc giải trí của mình.</li><li>Chuột Rapoo M650 không dây Silent không tiếng ồn, êm ái trong mọi thao tác</li><li>Như vậy, chỉ với 1 mức đầu tư không lớn cho chuột máy tính thông minh, tiện ích, bạn sẽ thực sự hài lòng với những trải nghiệm cùng chuột không dây Rapoo M650 Silent.</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Bluetooth Silent Rapoo M650 Lucky Cat</strong></h2><p>Mừng tết đến và lộc đến nhà nhà với sản phẩm <a href=\"https://gearvn.com/collections/chuot-wireless\">chuột không dây</a> từ Rapoo với model <strong>M650 Lucky Cat</strong>. Hãy cùng GEARVN tìm hiểu ngay thôi nào !</p><h3><strong>Ngoại hình may mắn và cute</strong></h3><p>Vốn đã nổi tiếng với phân khúc <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột máy tính</a> giá rẻ, Rapoo M650 Lucky Cat được thương hiệu khoác lên lớp skin cực kì dễ thương và đẹp mặt. Lấy trọng tâm là năm Quý Mão, chính là năm của những chú mèo thì Rapoo đã sử dụng hình ảnh chú mèo thần tài dễ thương làm tâm điểm cho chú chuột của chúng ta.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-bluetooth-silent-rapoo-m650-lucky-cat-2_4518b71e6c044e7a86db7a93f53aef7c_1024x1024.jpg\" alt=\"GEARVN - Chuột Bluetooth Silent Rapoo M650 Lucky Cat\"></p>', 1, 1, '2025-11-27 16:36:46', '2025-12-15 21:39:29'),
(284, 20, 2, 9, 50, 'Chuột Rappo M500 Blue', NULL, 470000, 260000, 562, '<h2><strong>​​​​​​Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td>Rapoo</td></tr><tr><td><strong>Kết nối</strong></td><td>Bluetooth /&nbsp;Wireless</td></tr><tr><td><strong>DPI</strong></td><td>1300</td></tr><tr><td><strong>Mô tả</strong></td><td><p>&nbsp;</p><ul><li>Chuột không dây Silent Rapoo M650 Silent kết nối không dây qua USB Receiver 2.4GHz hoặc Bluetooth 3.0, 5.0</li><li>Bạn có thể dùng chuột không dây cùng với các thiết bị như iPad, Notebook, Macbook, PC, iMac qua kết nối tương thích tại bất kỳ đâu cho nhu cầu xử lý công việc hay giải trí của mình.</li><li>Với khoảng cách kết nối đến 10 mét, thật dễ dàng để sử dụng chuột trong mọi không gian kết nối.</li><li>Kết nối đồng thời với 3 thiết bị, luân phiên làm việc dễ dàng giữa chúng, cho không gian làm việc thêm gọn gàng, thao tác xử lý thêm thuận tiện</li><li>Chuột Rapoo M650 sử dụng pin AA thông dụng dễ thay thế</li><li>Tích hợp công nghệ tiết kiệm pin Rapoo’s energy saving và công tắt bật nguồn cho phép kéo dài thời gian sử dụng pin đến 9 tháng, yên tâm sử dụng với tần suất cao trong thời gian dài.</li><li>Chuột Rapoo M650 tương thích tốt với hệ điều hành Windows, MacOS (MacBook, iMac) thông dụng</li><li>Di chuyển nhanh, nhạy với thao tác chuẩn xác nhờ độ phân giải tối đa đến 1300 DPI</li><li>Với mức DPI độ phân giải cao 1,300 dpi của M650 Silent phù hợp với nhu cầu làm việc, thiết kế cơ bản hoặc giải trí của mình.</li><li>Chuột Rapoo M650 không dây Silent không tiếng ồn, êm ái trong mọi thao tác</li><li>Như vậy, chỉ với 1 mức đầu tư không lớn cho chuột máy tính thông minh, tiện ích, bạn sẽ thực sự hài lòng với những trải nghiệm cùng chuột không dây Rapoo M650 Silent.</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Bluetooth Silent Rapoo M650 Lucky Cat</strong></h2><p>Mừng tết đến và lộc đến nhà nhà với sản phẩm <a href=\"https://gearvn.com/collections/chuot-wireless\">chuột không dây</a> từ Rapoo với model <strong>M650 Lucky Cat</strong>. Hãy cùng GEARVN tìm hiểu ngay thôi nào !</p><h3><strong>Ngoại hình may mắn và cute</strong></h3><p>Vốn đã nổi tiếng với phân khúc <a href=\"https://gearvn.com/collections/chuot-may-tinh\">chuột máy tính</a> giá rẻ, Rapoo M650 Lucky Cat được thương hiệu khoác lên lớp skin cực kì dễ thương và đẹp mặt. Lấy trọng tâm là năm Quý Mão, chính là năm của những chú mèo thì Rapoo đã sử dụng hình ảnh chú mèo thần tài dễ thương làm tâm điểm cho chú chuột của chúng ta.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-bluetooth-silent-rapoo-m650-lucky-cat-2_4518b71e6c044e7a86db7a93f53aef7c_1024x1024.jpg\" alt=\"GEARVN - Chuột Bluetooth Silent Rapoo M650 Lucky Cat\"></p>', 1, 1, '2025-11-27 16:38:10', '2025-12-16 02:00:11'),
(285, 20, 2, 9, 50, 'Chuột Rapoo không dây VT9 Pro White Orange', NULL, 9990000, 2990000, 397, '<h2><strong>Thông tin sản phẩm</strong></h2><p>&nbsp;</p><p><strong>Thông số kỹ thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td>Hãng sản xuất:</td><td>Rapoo</td></tr><tr><td>Model:</td><td>Rapoo VT9 Pro</td></tr><tr><td>DPI:</td><td>50 – 26000</td></tr><tr><td>IPS:</td><td>650</td></tr><tr><td>Kết nối:</td><td>USB 2.0 / Wireless 2.4G</td></tr><tr><td>Cảm biến:</td><td>Quang học&nbsp;PMW3398</td></tr><tr><td>Gia tốc:</td><td>50G</td></tr><tr><td>Kích thước (D x C x R):</td><td>124.9*67.1*40.2mm</td></tr><tr><td>Led:</td><td>16.8 triệu màu RGB</td></tr><tr><td>Tốc độ phản hồi:</td><td>125/250/500/1000Hz (mặc định) và 1K/2K/4K Hz(Đi kèm với bộ thu sóng 4K)</td></tr><tr><td>Số nút:</td><td>8</td></tr><tr><td>Pin:</td><td>Pin Sạc Lithium 800 mAh<br>Thời lượng pin lên đến 160 tiếng<br>Thời gian sạc đầy&nbsp;3 tiếng</td></tr><tr><td>Đặc biệt:</td><td>Nguyên Khối Kim Loại Unibody và màn hình OLED</td></tr><tr><td>Trọng lượng (không bao gồm dây):</td><td>68 gram</td></tr><tr><td>Chiều dài cáp:</td><td>1.8 m</td></tr></tbody></table></figure><h2><strong>Đánh giá chi tiết&nbsp;chuột Rapoo VT960S Black</strong></h2><p><a href=\"https://gearvn.com/collections/chuot-may-tinh\">Chuột gaming</a> đã trở thành một công cụ tuyệt vời và nhu cầu thiết yếu cho mọi game thủ. Không chỉ sở hữu vẻ ngoài bắt mắt, đậm chất gaming mà những con chuột gaming còn đáp ứng tuyệt vời cho nhu cầu sử dụng nhờ vào những tính năng được trang bị. <strong>Rapoo VT960S Black</strong> là dòng sản phẩm chuột gaming mới nhất đến từ thương hiệu Trung Quốc này với những thiết kế vô cùng đặc biệt, cùng GEARVN tìm hiểu về sản phẩm này ngay sau đây nhé !</p><h3><strong>Vẻ ngoài đẹp mắt, thiên hướng tương lai</strong></h3><p>Ra mắt thị trường với một vẻ ngoài không thể nổi bật hơn khi Rapoo VT960S Black đã trình diện những tinh hoa dành cho một chú chuột gaming. Đặt ngay vào mắt chúng ta đó là những đường nét sắc bén và nổi bật, tôn vinh lên từng góc cạnh của sản phẩm <a href=\"https://gearvn.com/collections/chuot-rapoo\">chuột Rapoo</a>. Đặc biệt, khi không còn là khu vực đặt tay như những con chuột máy tính bình thường mà đã được Rapoo tiêu biến và tối ưu đem đến cho VT960S Black một trọng lượng tối thiểu.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-rapoo-vt960s-black-7_a2af10c298674af1bebaa05f339b3ea6_1024x1024.jpg\" alt=\"GEARVN - Chuột Rapoo VT960S Black\"></p><p>Ngoài ra lớp màu đen bóng và những chi tiết như nút bấm, tấm feet cũng được Rapoo trau chuốt cho sản phẩm của mình dựa theo hình mẫu lý tưởng của những chiếc siêu xe. Chốt hạ với điều khác biệt rất lớn đó chính là khu vực <a href=\"https://gearvn.com/pages/man-hinh\">màn hình</a> OLED cho bạn thoải mái tùy biến để tô điểm cho Rapoo VT960S Black nói riêng và góc gaming nói chung.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-rapoo-vt960s-black-8_fa4ae12a593f49e88a9610d0e5f5bd4b_1024x1024.jpg\" alt=\"GEARVN - Chuột Rapoo VT960S Black\"></p><h3><strong>Trải nghiệm cao cấp cho gaming</strong></h3><p>Được dành cho gaming, Rapoo đã trang bị những đặc tính mạnh mẽ nhất của dòng chuột chơi game trên Rapoo VT960S Black. Mở đầu lượng DPI cực lớn từ 50 - 19K để cho bạn thoải mái tùy chỉnh tốc độ theo bất cứ yêu cầu sử dụng nào trong mọi tình huống. Kết hợp cùng tốc độ quét IPS ở mức 400 và khả năng tăng tốc 50G để tạo nên trải nghiệm sử dụng đã tay nhất có thể biến mọi vũ khí trong tay bạn được nâng tầm khi sử dụng Rapoo VT960S Black.</p><p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-chuot-rapoo-vt960s-black-9_b8dc27a671ac47698ffb6740179a9e4c_1024x1024.jpg\" alt=\"GEARVN - Chuột Rapoo VT960S Black\"></p>', 1, 1, '2025-11-27 16:39:15', '2026-04-17 05:21:01'),
(287, 18, 2, 9, 64, 'Bàn phím cơ không dây E-Dra EK398W (Light Gray + White + Dark Gray)', NULL, 2999999, 1999999, 26, NULL, 0, 1, '2025-12-15 07:36:36', '2025-12-15 23:58:18'),
(288, 18, 2, 9, 64, 'Bàn phím AKKO MOD007B-HE PC Tokyo Sakura Pink Magnetic Switch', NULL, 4990999, 0, 0, NULL, 0, 1, '2025-12-16 02:04:13', '2025-12-16 02:04:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(10, 3, 'Productslibrary/dgrihgc2g6gxhoftnaps', '2023-10-26 08:54:58', '2023-10-26 08:54:58'),
(11, 3, 'Productslibrary/gcm7jiu8ii3suow1e2zm', '2023-10-26 08:55:00', '2023-10-26 08:55:00'),
(12, 3, 'Productslibrary/akxiz6uviw49rwzmqjqg', '2023-10-26 08:55:02', '2023-10-26 08:55:02'),
(13, 3, 'Productslibrary/ihlpanayx2txpk3ub5yz', '2023-10-26 08:55:05', '2023-10-26 08:55:05'),
(14, 3, 'Productslibrary/lw53fibor5pfjlsarwj7', '2023-10-26 08:55:07', '2023-10-26 08:55:07'),
(15, 4, 'Productslibrary/riwslml5u2vnhehlxmxd', '2023-10-26 08:57:47', '2023-10-26 08:57:47'),
(16, 4, 'Productslibrary/mnfl7c0hk7r8zdcnyv4u', '2023-10-26 08:57:49', '2023-10-26 08:57:49'),
(17, 4, 'Productslibrary/r79l0hse7a3znyyxozok', '2023-10-26 08:57:51', '2023-10-26 08:57:51'),
(18, 4, 'Productslibrary/z6c3iwdp5cz9r7afxjv3', '2023-10-26 08:57:53', '2023-10-26 08:57:53'),
(19, 4, 'Productslibrary/sdbmltrtfxtvclxydwvz', '2023-10-26 08:57:55', '2023-10-26 08:57:55'),
(20, 4, 'Productslibrary/ps5tvzclvpqictjykqvj', '2023-10-26 08:57:57', '2023-10-26 08:57:57'),
(36, 10, 'Productslibrary/hhd6815rbx4owaxrlyys', '2023-10-28 22:18:30', '2023-10-28 22:18:30'),
(37, 10, 'Productslibrary/ac2va35aggclmwyf2qes', '2023-10-28 22:18:22', '2023-10-28 22:18:22'),
(38, 10, 'Productslibrary/v2dnnsbkpcgiu6vuvbpo', '2023-10-28 22:18:25', '2023-10-28 22:18:25'),
(39, 10, 'Productslibrary/irxcgnlcdmgbzdm4vjbv', '2023-10-28 22:18:27', '2023-10-28 22:18:27'),
(41, 10, 'Productslibrary/w1uhutkquix2zzjvdtbv', '2023-10-28 22:18:32', '2023-10-28 22:18:32'),
(42, 10, 'Productslibrary/zzgtuwobq3nsuypw53im', '2023-10-28 22:18:34', '2023-10-28 22:18:34'),
(80, 14, 'products/rch3rfwoupihkmknke48', '2023-11-10 03:17:58', '2023-11-10 03:17:58'),
(81, 14, 'products/u8l0udgfnbjfsbuq5zxs', '2023-11-10 03:18:01', '2023-11-10 03:18:01'),
(82, 14, 'products/qh2asg8gjwzcywtouibs', '2023-11-10 03:18:05', '2023-11-10 03:18:05'),
(84, 15, 'products/sz5frhvim9xeat3qjyb2', '2023-11-15 11:55:40', '2023-11-15 11:55:40'),
(100, 19, 'products/thhtbmdvpywdsooahwxi', '2023-12-27 02:36:23', '2023-12-27 02:36:23'),
(101, 24, 'products/gzgnvzjgt0ugfx4v0ij7', '2024-01-02 11:59:50', '2024-01-02 11:59:50'),
(102, 24, 'products/fp6soy9f3y3vuiwxwrf0', '2024-01-02 11:59:52', '2024-01-02 11:59:52'),
(103, 24, 'products/tc5n1w7oqrktoy4kca3s', '2024-01-02 11:59:54', '2024-01-02 11:59:54'),
(104, 24, 'products/unlxrfq0hkctakirdcjq', '2024-01-02 11:59:56', '2024-01-02 11:59:56'),
(105, 24, 'products/tyoksdlc8zelzxu4uvwu', '2024-01-02 11:59:58', '2024-01-02 11:59:58'),
(106, 18, 'products/yoq9kqf48gcujeqqf3ih', '2024-01-04 15:09:08', '2024-01-04 15:09:08'),
(107, 18, 'products/pi6ugqrlu69zpg7rtuha', '2024-01-04 15:09:11', '2024-01-04 15:09:11'),
(108, 18, 'products/vdffzs5lpeukwfrku8bd', '2024-01-04 15:09:13', '2024-01-04 15:09:13'),
(109, 18, 'products/s99vguaddyfffd8radwt', '2024-01-04 15:09:15', '2024-01-04 15:09:15'),
(110, 18, 'products/zrbovjosxiru5ekbvhsc', '2024-01-04 15:09:17', '2024-01-04 15:09:17'),
(112, 17, 'products/cjpy7lxzbf7zmdf5p21p', '2024-01-04 15:14:44', '2024-01-04 15:14:44'),
(113, 17, 'products/elnrgv6xu63yiykvvrot', '2024-01-04 15:14:45', '2024-01-04 15:14:45'),
(114, 17, 'products/i6ylulcupogpxiaug9oh', '2024-01-04 15:14:47', '2024-01-04 15:14:47'),
(115, 16, 'products/kh5hgxninanipq949j5y', '2024-01-04 16:05:46', '2024-01-04 16:05:46'),
(116, 16, 'products/d1yauto6nus1hxmwlggd', '2024-01-04 16:05:49', '2024-01-04 16:05:49'),
(117, 16, 'products/hyqloihrwizl0snswlr1', '2024-01-04 16:05:52', '2024-01-04 16:05:52'),
(118, 16, 'products/wvizwbggykpce1k0yrrr', '2024-01-04 16:05:55', '2024-01-04 16:05:55'),
(119, 16, 'products/cnjworunuryojoyrdlhb', '2024-01-04 16:05:58', '2024-01-04 16:05:58'),
(120, 16, 'products/z5l1skrbu7bklskm1qro', '2024-01-04 16:07:26', '2024-01-04 16:07:26'),
(121, 16, 'products/vniyyqac1uaos80bofx8', '2024-01-04 16:07:29', '2024-01-04 16:07:29'),
(122, 16, 'products/d4lo9mkqdiwhzadqbhrf', '2024-01-04 16:07:33', '2024-01-04 16:07:33'),
(123, 16, 'products/yb3ciyuicepceis8iych', '2024-01-04 16:07:36', '2024-01-04 16:07:36'),
(124, 16, 'products/ds5o1j1xuyzndvsos5dt', '2024-01-04 16:07:39', '2024-01-04 16:07:39'),
(125, 13, 'products/fn4conatbn056ehnf4tq', '2024-01-04 16:10:59', '2024-01-04 16:10:59'),
(126, 13, 'products/pvjnxzisxp0boyyojzzt', '2024-01-04 16:11:02', '2024-01-04 16:11:02'),
(127, 13, 'products/h9xy7t0lgjkyzqje1jtq', '2024-01-04 16:11:05', '2024-01-04 16:11:05'),
(128, 13, 'products/ug9bo24xrpr8nipm3df7', '2024-01-04 16:11:08', '2024-01-04 16:11:08'),
(129, 2, 'products/opmflgfsfk9zlm0zmcrc', '2024-01-04 16:12:56', '2024-01-04 16:12:56'),
(130, 2, 'products/bgedee3pojil6jucjsca', '2024-01-04 16:12:58', '2024-01-04 16:12:58'),
(131, 2, 'products/yc1yjoayraeklgsqgjku', '2024-01-04 16:13:00', '2024-01-04 16:13:00'),
(132, 2, 'products/ytybbrdceabh9fbqu6dq', '2024-01-04 16:13:03', '2024-01-04 16:13:03'),
(133, 2, 'products/doykivhobgcq8hkox9du', '2024-01-04 16:13:04', '2024-01-04 16:13:04'),
(134, 1, 'products/tebtu6ixqm1aysuhwtr1', '2024-01-04 16:17:38', '2024-01-04 16:17:38'),
(135, 1, 'products/v5s0tnlifmbt4zqzjfvc', '2024-01-04 16:17:40', '2024-01-04 16:17:40'),
(136, 1, 'products/qjxeqzoqxrgdo9cxv4py', '2024-01-04 16:17:42', '2024-01-04 16:17:42'),
(137, 1, 'products/klcl3o5yxy5c2h5vmwri', '2024-01-04 16:17:44', '2024-01-04 16:17:44'),
(138, 1, 'products/iylpegl4bbizkjspounp', '2024-01-04 16:17:46', '2024-01-04 16:17:46'),
(139, 25, 'products/ulowjy8hsxiuwlvoe2v8', '2024-01-05 15:57:04', '2024-01-05 15:57:04'),
(140, 26, 'products/ziyhnecl7s64qcon0eoa', '2024-01-05 16:00:43', '2024-01-05 16:00:43'),
(141, 35, 'products/vc2fudwjhqmy2myn3tvf', '2024-01-10 12:56:34', '2024-01-10 12:56:34'),
(142, 45, 'products/qbs7c7slgu772juvmwtu', '2025-08-30 02:36:46', '2025-08-30 02:36:46'),
(143, 46, 'products/ij8ibbrwqvovlxow1r8k', '2025-08-30 02:44:02', '2025-08-30 02:44:02'),
(144, 47, 'products/uk0sdfvcy1kzsmg10uh5', '2025-09-02 07:06:20', '2025-09-02 07:06:20'),
(149, 48, 'products/svxanpjusixu3xi0ebnq', '2025-09-02 07:13:34', '2025-09-02 07:13:34'),
(150, 48, 'products/kzmlgaq1jh20dic1rm5k', '2025-09-02 07:14:50', '2025-09-02 07:14:50'),
(151, 48, 'products/wkxyggsscmwjgjrfq3wg', '2025-09-02 07:14:52', '2025-09-02 07:14:52'),
(152, 48, 'products/bummx5bzzecla81bgyqh', '2025-09-02 07:14:54', '2025-09-02 07:14:54'),
(153, 48, 'products/eailxighxjdizimcjbdw', '2025-09-02 07:14:57', '2025-09-02 07:14:57'),
(154, 49, 'products/jesf5ybpalp7acabmnvh', '2025-09-02 07:17:47', '2025-09-02 07:17:47'),
(155, 50, 'products/u5htkgecxojdauadg4ej', '2025-09-02 07:27:36', '2025-09-02 07:27:36'),
(156, 50, 'products/n5tkqqbfti0sgqpm6li4', '2025-09-02 07:27:38', '2025-09-02 07:27:38'),
(157, 50, 'products/qmtoevmyorja5bpwzojx', '2025-09-02 07:27:40', '2025-09-02 07:27:40'),
(158, 50, 'products/yfcjydgr0nvxhzvmxk6l', '2025-09-02 07:27:41', '2025-09-02 07:27:41'),
(159, 50, 'products/cmdh5lpxjvlm6kn9hgug', '2025-09-02 07:27:43', '2025-09-02 07:27:43'),
(160, 50, 'products/pkuifutkljdg24e2rw7a', '2025-09-02 07:27:44', '2025-09-02 07:27:44'),
(161, 50, 'products/mthrxktqxxjqumzyfj7c', '2025-09-02 07:27:46', '2025-09-02 07:27:46'),
(162, 50, 'products/v9zmgspmzoo4v95izvdf', '2025-09-02 07:27:47', '2025-09-02 07:27:47'),
(163, 50, 'products/o5jcdce2bacm1pcldrbh', '2025-09-02 07:27:49', '2025-09-02 07:27:49'),
(164, 50, 'products/t9o0z1hq1ah76hmkqeht', '2025-09-02 07:27:50', '2025-09-02 07:27:50'),
(165, 50, 'products/mwg4lha7yvlzfmpxse2u', '2025-09-02 07:27:52', '2025-09-02 07:27:52'),
(166, 51, 'products/dlnzsxkrzqppt8osilnj', '2025-09-02 07:27:54', '2025-09-02 07:27:54'),
(167, 51, 'products/fcbdyic0xuuasgytxci6', '2025-09-02 07:27:56', '2025-09-02 07:27:56'),
(168, 51, 'products/ixnygvjo5ponjavryw8a', '2025-09-02 07:27:58', '2025-09-02 07:27:58'),
(169, 51, 'products/wbva7cfolkekmfzo13po', '2025-09-02 07:28:00', '2025-09-02 07:28:00'),
(170, 51, 'products/ooqjrfeltbcoo19ikibq', '2025-09-02 07:28:01', '2025-09-02 07:28:01'),
(171, 51, 'products/xtqa1jgfjvhhdqa1zpec', '2025-09-02 07:28:03', '2025-09-02 07:28:03'),
(172, 51, 'products/pwilywniucc262wfocuh', '2025-09-02 07:28:04', '2025-09-02 07:28:04'),
(173, 51, 'products/p2eerybrqfssowcfktd5', '2025-09-02 07:28:06', '2025-09-02 07:28:06'),
(174, 51, 'products/qre4vkfcketdnrxmlh9i', '2025-09-02 07:28:07', '2025-09-02 07:28:07'),
(175, 51, 'products/mmviqlaasm7bmmfpuy0x', '2025-09-02 07:28:08', '2025-09-02 07:28:08'),
(176, 51, 'products/rrswcbctcp6pwtnlm4hr', '2025-09-02 07:28:11', '2025-09-02 07:28:11'),
(177, 52, 'products/bai4f7dbpbbxfafviogq', '2025-09-02 07:40:03', '2025-09-02 07:40:03'),
(178, 53, 'products/mlpkixdbzbityyhfqwec', '2025-09-25 14:33:42', '2025-09-25 14:33:42'),
(185, 54, 'products/sfj5e2jc5qgbkjcxf9n3', '2025-10-04 08:49:12', '2025-10-04 08:49:12'),
(186, 54, 'products/unwoxkcj9hkhpqkklhnk', '2025-10-04 08:50:21', '2025-10-04 08:50:21'),
(187, 54, 'products/sfuswsmyvzuvuw6qgmu5', '2025-10-04 08:50:23', '2025-10-04 08:50:23'),
(188, 54, 'products/qh1dhxblct7fmr0v0m6a', '2025-10-04 08:50:24', '2025-10-04 08:50:24'),
(189, 54, 'products/tcjflo2rxuiew7tafano', '2025-10-04 08:50:27', '2025-10-04 08:50:27'),
(190, 54, 'products/ql077i3fto9yyfl9hwdv', '2025-10-04 08:50:28', '2025-10-04 08:50:28'),
(191, 54, 'products/mh5dc1vahpesu1xvcamm', '2025-10-04 08:50:30', '2025-10-04 08:50:30'),
(192, 55, 'products/xzqs3dwhtzgpped4gb9j', '2025-10-04 08:56:40', '2025-10-04 08:56:40'),
(193, 55, 'products/hbc6qhtmgqj3ndfvudx5', '2025-10-04 08:56:42', '2025-10-04 08:56:42'),
(194, 55, 'products/fxasuo2dtl9pioycut7c', '2025-10-04 08:56:44', '2025-10-04 08:56:44'),
(195, 55, 'products/j4zj9ptymbcmx8zcqwkk', '2025-10-04 08:56:46', '2025-10-04 08:56:46'),
(196, 55, 'products/qz0pbklyg4ogxp2uxkhu', '2025-10-04 08:56:48', '2025-10-04 08:56:48'),
(197, 55, 'products/nmqgc2nuigoqandeqhcm', '2025-10-04 08:56:49', '2025-10-04 08:56:49'),
(198, 55, 'products/kfiycyhl1aulszf2hbcd', '2025-10-04 08:56:51', '2025-10-04 08:56:51'),
(199, 55, 'products/fsd3u38vnjhj8rku3iud', '2025-10-04 08:56:53', '2025-10-04 08:56:53'),
(200, 55, 'products/dexp65l5uglplsystgfn', '2025-10-04 08:56:54', '2025-10-04 08:56:54'),
(201, 56, 'products/oi8urrdpzusrbd3dypbs', '2025-10-04 09:04:26', '2025-10-04 09:04:26'),
(202, 56, 'products/ae2a6mwi9yosl3gcglyr', '2025-10-04 09:04:28', '2025-10-04 09:04:28'),
(203, 56, 'products/jebkj8sg9yvc7ol72vmq', '2025-10-04 09:04:29', '2025-10-04 09:04:29'),
(204, 56, 'products/xe0qxy1tv9bv67xkspef', '2025-10-04 09:04:31', '2025-10-04 09:04:31'),
(205, 56, 'products/btfbje850cre02qyya2w', '2025-10-04 09:04:33', '2025-10-04 09:04:33'),
(206, 56, 'products/ejgjptx7u4smf68ww7mp', '2025-10-04 09:04:35', '2025-10-04 09:04:35'),
(207, 56, 'products/pr7y9koyx1xsdcshqwvy', '2025-10-04 09:04:37', '2025-10-04 09:04:37'),
(208, 56, 'products/abyjgbpognsg2ny5kyy1', '2025-10-04 09:04:38', '2025-10-04 09:04:38'),
(209, 56, 'products/fmuxlqrmzga1wgxkqjum', '2025-10-04 09:04:39', '2025-10-04 09:04:39'),
(210, 56, 'products/n8ft4durssqiw5xqrgv5', '2025-10-04 09:04:41', '2025-10-04 09:04:41'),
(211, 57, 'products/pmpvke6lhvacio02ipfz', '2025-10-07 12:28:10', '2025-10-07 12:28:10'),
(212, 57, 'products/wy2jr2gblq0l5kvf50ow', '2025-10-07 12:28:52', '2025-10-07 12:28:52'),
(213, 57, 'products/thnpuggzr3zndhm5wi19', '2025-10-07 12:28:53', '2025-10-07 12:28:53'),
(214, 57, 'products/akbsb8agj1yyv5ojmjfp', '2025-10-07 12:28:56', '2025-10-07 12:28:56'),
(215, 57, 'products/mt1or9xcomdpl78cigkc', '2025-10-07 12:28:57', '2025-10-07 12:28:57'),
(216, 57, 'products/fmb7oomcngsddtb6xjc4', '2025-10-07 12:29:01', '2025-10-07 12:29:01'),
(217, 57, 'products/h41t8i3idotdvflvqxgx', '2025-10-07 12:29:02', '2025-10-07 12:29:02'),
(218, 57, 'products/l6w6yoss5ndrkbguwbp7', '2025-10-07 12:29:05', '2025-10-07 12:29:05'),
(219, 57, 'products/thy9byp4kdifwhwca8od', '2025-10-07 12:29:07', '2025-10-07 12:29:07'),
(220, 57, 'products/oj6ggrmigzfzgzw5qyyt', '2025-10-07 12:29:10', '2025-10-07 12:29:10'),
(221, 58, 'products/kzijpksm3ystqtuhbjqm', '2025-10-07 12:35:08', '2025-10-07 12:35:08'),
(222, 58, 'products/f7cim6oltsckio8irfg5', '2025-10-07 12:35:27', '2025-10-07 12:35:27'),
(223, 58, 'products/b6wfdvtltuq4dhezpq4j', '2025-10-07 12:35:29', '2025-10-07 12:35:29'),
(224, 58, 'products/bqj9aza52yuzhllt9pn5', '2025-10-07 12:35:32', '2025-10-07 12:35:32'),
(225, 58, 'products/ytfraoprtrpmaqtrtppr', '2025-10-07 12:35:35', '2025-10-07 12:35:35'),
(226, 58, 'products/vuj9ikhfzom28jkjnonx', '2025-10-07 12:35:38', '2025-10-07 12:35:38'),
(227, 58, 'products/mkfnw8ph9osrwjlzfvwm', '2025-10-07 12:35:40', '2025-10-07 12:35:40'),
(228, 58, 'products/hm1zgvz54xr25mszv1wt', '2025-10-07 12:35:42', '2025-10-07 12:35:42'),
(229, 59, 'products/bkilcq4gdey0vjxwuem1', '2025-10-07 12:38:01', '2025-10-07 12:38:01'),
(230, 60, 'products/chssmef1ahyfaqaucpaj', '2025-10-07 13:23:18', '2025-10-07 13:23:18'),
(231, 60, 'products/giatsavl9a3xhgjgoo00', '2025-10-07 13:23:20', '2025-10-07 13:23:20'),
(232, 60, 'products/inlgmrngvj0ynr07g3ts', '2025-10-07 13:23:22', '2025-10-07 13:23:22'),
(233, 60, 'products/dpqfxpg1zd8k1dy6xpma', '2025-10-07 13:23:24', '2025-10-07 13:23:24'),
(234, 60, 'products/dxnqz8fs3ywfdcdjb7ru', '2025-10-07 13:23:27', '2025-10-07 13:23:27'),
(235, 60, 'products/rlfxoct706b8qbasraun', '2025-10-07 13:23:29', '2025-10-07 13:23:29'),
(236, 61, 'products/edtt89oimcqpitqwry9j', '2025-10-15 02:57:21', '2025-10-15 02:57:21'),
(237, 62, 'products/rgnlty4gpo77yoz8navs', '2025-10-15 02:59:12', '2025-10-15 02:59:12'),
(238, 63, 'products/scky1k0tzc7fwujs3umd', '2025-10-15 03:16:32', '2025-10-15 03:16:32'),
(239, 64, 'products/h6fbj2qmgwnualdjxbjp', '2025-10-15 03:42:11', '2025-10-15 03:42:11'),
(240, 65, 'products/apycufhfmfschm9ary7r', '2025-10-15 03:49:13', '2025-10-15 03:49:13'),
(241, 66, 'products/fv2kxam1quq7bf4efic1', '2025-10-15 03:55:55', '2025-10-15 03:55:55'),
(242, 67, 'products/in5tvfwe9fmhuagutevk', '2025-10-15 04:32:14', '2025-10-15 04:32:14'),
(243, 68, 'products/f3wqz3n9zgkcds80o4hw', '2025-10-15 04:42:45', '2025-10-15 04:42:45'),
(244, 69, 'products/xlomzrp4ibupi5jqb7ln', '2025-10-15 05:49:47', '2025-10-15 05:49:47'),
(245, 70, 'products/dpbtqjibsqqdkvzvs85j', '2025-10-15 07:26:15', '2025-10-15 07:26:15'),
(246, 71, 'products/m1s8pqqqbguyqfznbmuj', '2025-10-16 02:28:00', '2025-10-16 02:28:00'),
(247, 72, 'products/r3gmezmffk5xmy8ykspl', '2025-10-16 03:07:43', '2025-10-16 03:07:43'),
(248, 73, 'products/hulzqygw4qubyghlhgtk', '2025-10-16 04:18:10', '2025-10-16 04:18:10'),
(250, 74, 'products/uqdnudz0do10jnrogkjw', '2025-10-16 10:01:48', '2025-10-16 10:01:48'),
(251, 75, 'products/tpdxspukd7afgb52bm26', '2025-10-17 08:46:10', '2025-10-17 08:46:10'),
(252, 76, 'products/kuhbtdhpnfzxtv5nke9p', '2025-10-17 08:48:05', '2025-10-17 08:48:05'),
(253, 77, 'products/ufeaybjgcplbk16bceo3', '2025-10-17 08:49:45', '2025-10-17 08:49:45'),
(255, 79, 'products/sgksyxmms2rsifknvuyt', '2025-10-17 08:52:54', '2025-10-17 08:52:54'),
(256, 80, 'products/iswq7wn5fnetmgc1bcww', '2025-10-17 08:54:42', '2025-10-17 08:54:42'),
(257, 81, 'products/jbyu8kugfy9n79yvkyu1', '2025-10-17 08:56:25', '2025-10-17 08:56:25'),
(258, 82, 'products/hgex0idswhhhqorqqb4y', '2025-10-17 08:58:10', '2025-10-17 08:58:10'),
(259, 83, 'products/ordlsn2l6h0ng0vtcx0q', '2025-10-17 08:59:13', '2025-10-17 08:59:13'),
(260, 84, 'products/txb5se7yap7ncjn6lplz', '2025-10-17 09:00:49', '2025-10-17 09:00:49'),
(261, 85, 'products/ufltgjxrexypuvwv22tx', '2025-10-18 02:24:00', '2025-10-18 02:24:00'),
(262, 86, 'products/k9vo8zx01v9mdqlsgw8p', '2025-10-18 02:25:01', '2025-10-18 02:25:01'),
(263, 87, 'products/phqc7zvgodj03p3thjmy', '2025-10-18 02:26:10', '2025-10-18 02:26:10'),
(264, 88, 'products/jn8kll9kwhzsrhhomfn4', '2025-10-18 02:27:08', '2025-10-18 02:27:08'),
(265, 89, 'products/uqbd9jvnle4yrcjjryji', '2025-10-18 02:28:40', '2025-10-18 02:28:40'),
(266, 90, 'products/ypycpr2bzjphjvkeici1', '2025-10-18 02:29:53', '2025-10-18 02:29:53'),
(267, 91, 'products/mljb2pjkmwfgdyyuvchd', '2025-10-18 02:31:19', '2025-10-18 02:31:19'),
(268, 92, 'products/ciqreqmiqk8yqywmyj87', '2025-10-18 02:32:13', '2025-10-18 02:32:13'),
(269, 93, 'products/ab2tbyrppqn1nghwib3c', '2025-10-18 02:33:32', '2025-10-18 02:33:32'),
(270, 94, 'products/nlgdrsqjroxcwjhirxtf', '2025-10-18 02:34:48', '2025-10-18 02:34:48'),
(271, 95, 'products/sn6kbl4z0tzkpuflfab6', '2025-10-18 02:36:02', '2025-10-18 02:36:02'),
(272, 96, 'products/svzex8mqcgnfxmfgy5sf', '2025-10-18 02:40:23', '2025-10-18 02:40:23'),
(273, 97, 'products/cq4a1fe93v9ebqlxjoh5', '2025-10-18 02:42:03', '2025-10-18 02:42:03'),
(274, 98, 'products/htouadwhjyplqa8jrems', '2025-10-18 02:43:30', '2025-10-18 02:43:30'),
(275, 99, 'products/exulwmglms4mkxgejael', '2025-10-18 02:44:49', '2025-10-18 02:44:49'),
(276, 100, 'products/hc197qes0nuf9ikvjyc2', '2025-10-18 02:46:09', '2025-10-18 02:46:09'),
(277, 101, 'products/ambdslshpnylk2krv5qq', '2025-10-18 02:47:12', '2025-10-18 02:47:12'),
(278, 102, 'products/noxvfbzeumbiv0bpnvne', '2025-10-18 02:50:16', '2025-10-18 02:50:16'),
(279, 103, 'products/kcrjrgacy4oxjlmhlg3b', '2025-10-18 02:51:18', '2025-10-18 02:51:18'),
(280, 104, 'products/rjx72zmxdjwrsabbdv0v', '2025-10-18 02:52:23', '2025-10-18 02:52:23'),
(281, 105, 'products/zffy0jjrhm06j5kgajsa', '2025-10-18 02:53:36', '2025-10-18 02:53:36'),
(282, 106, 'products/qcns3trmuicnu3urxbzv', '2025-10-18 02:54:45', '2025-10-18 02:54:45'),
(283, 107, 'products/aedepp5qu9cesxz1q5ur', '2025-10-18 02:56:08', '2025-10-18 02:56:08'),
(284, 108, 'products/tgvq2zpimv95xshuu67u', '2025-10-18 02:57:12', '2025-10-18 02:57:12'),
(285, 109, 'products/zsyta6i3z5uumfztjgb3', '2025-10-18 02:58:24', '2025-10-18 02:58:24'),
(286, 110, 'products/zjxdbsmzy3ohoaafwdva', '2025-10-18 02:59:25', '2025-10-18 02:59:25'),
(287, 111, 'products/lojflbrqqghn6cvgydcy', '2025-10-18 03:01:42', '2025-10-18 03:01:42'),
(288, 112, 'products/ozbf1mlfji8geljbe3zn', '2025-10-18 03:02:56', '2025-10-18 03:02:56'),
(289, 113, 'products/qiiam1y5dyh0vuatj7lv', '2025-10-18 03:04:00', '2025-10-18 03:04:00'),
(290, 114, 'products/rt6erqptu6vno180nhpw', '2025-10-18 03:05:53', '2025-10-18 03:05:53'),
(291, 115, 'products/o43jmekcpek04ohwlmp7', '2025-10-18 03:09:42', '2025-10-18 03:09:42'),
(292, 116, 'products/cdmxllyvymqsckvk5ad7', '2025-10-18 03:10:44', '2025-10-18 03:10:44'),
(293, 117, 'products/g3n7koz52cmg5pd5xwsa', '2025-10-18 03:11:47', '2025-10-18 03:11:47'),
(294, 118, 'products/vof6ermsjzghg8pn6d2s', '2025-10-18 03:12:39', '2025-10-18 03:12:39'),
(295, 119, 'products/nlfqzrr0bzb50kf4l4qw', '2025-10-18 03:13:39', '2025-10-18 03:13:39'),
(296, 120, 'products/c3gehdvd6ka7kp6l9yvm', '2025-10-18 03:14:57', '2025-10-18 03:14:57'),
(297, 121, 'products/gackslixrnmq4qv7iwtk', '2025-10-18 03:16:30', '2025-10-18 03:16:30'),
(298, 122, 'products/y2o4dipol3wyvjaqxl1x', '2025-10-18 03:17:53', '2025-10-18 03:17:53'),
(299, 123, 'products/chxruzb3jalahgzeu0xz', '2025-10-18 03:18:56', '2025-10-18 03:18:56'),
(300, 124, 'products/dj8sqesdpnjteflsedkx', '2025-10-18 03:19:53', '2025-10-18 03:19:53'),
(301, 125, 'products/bprmdquqq91ryxikmkwd', '2025-10-18 03:20:49', '2025-10-18 03:20:49'),
(302, 126, 'products/kiqpa50p1fbd9c0bwkeb', '2025-10-18 03:21:44', '2025-10-18 03:21:44'),
(303, 127, 'products/attrjldwnxsyabk8oqvb', '2025-10-18 03:23:42', '2025-10-18 03:23:42'),
(304, 128, 'products/ycxmmezotrslyn0y52i9', '2025-10-18 03:25:05', '2025-10-18 03:25:05'),
(305, 129, 'products/qtvnqoxpnzhdl8e5ayfh', '2025-10-18 03:28:38', '2025-10-18 03:28:38'),
(306, 130, 'products/izinsisrtaa7vijvokpw', '2025-10-18 03:30:01', '2025-10-18 03:30:01'),
(307, 131, 'products/gyzoskhydiieaybizx65', '2025-10-18 03:32:33', '2025-10-18 03:32:33'),
(308, 132, 'products/ldbrajwexnzpr1optjpp', '2025-10-18 03:33:51', '2025-10-18 03:33:51'),
(309, 133, 'products/oe8tlu4uw7bxwzd5bnbh', '2025-10-18 03:48:41', '2025-10-18 03:48:41'),
(310, 134, 'products/feuza09nsbr3bugzbukw', '2025-10-18 03:50:15', '2025-10-18 03:50:15'),
(311, 135, 'products/xikapd6aflam94jt1mdv', '2025-10-18 03:52:22', '2025-10-18 03:52:22'),
(312, 136, 'products/rxyussh93yauyijcqpkh', '2025-10-18 03:53:56', '2025-10-18 03:53:56'),
(313, 137, 'products/nbri0uqkydhsvtsj6imp', '2025-10-23 04:05:01', '2025-10-23 04:05:01'),
(314, 138, 'products/wrzypspoq5j0wn5pdis9', '2025-10-23 04:06:12', '2025-10-23 04:06:12'),
(315, 139, 'products/tmfcsfshhbwdswhiskjb', '2025-10-23 04:09:06', '2025-10-23 04:09:06'),
(316, 140, 'products/d5ukxahgacyc3qwdbdct', '2025-10-23 04:09:59', '2025-10-23 04:09:59'),
(317, 141, 'products/pjces5bvlrc3pebpmyzk', '2025-10-23 04:10:56', '2025-10-23 04:10:56'),
(318, 142, 'products/shvjlkynlv2mx1ylfbod', '2025-10-23 04:11:55', '2025-10-23 04:11:55'),
(319, 143, 'products/fxwjezfjw7taemusxl7m', '2025-10-23 04:13:52', '2025-10-23 04:13:52'),
(320, 144, 'products/rkrm4no0julbspijfcuv', '2025-10-23 04:14:59', '2025-10-23 04:14:59'),
(321, 145, 'products/yt909vldekum40aymeig', '2025-10-23 04:16:22', '2025-10-23 04:16:22'),
(322, 146, 'products/qrte769jovctzfyvuc9i', '2025-10-23 04:17:08', '2025-10-23 04:17:08'),
(323, 147, 'products/sjxdskyghecxxmd7ttks', '2025-10-23 04:18:41', '2025-10-23 04:18:41'),
(324, 148, 'products/drpqvpsbcwpojcyrtv86', '2025-10-23 04:20:25', '2025-10-23 04:20:25'),
(325, 149, 'products/d6aagvx8ni0udzrknlwv', '2025-10-23 04:23:25', '2025-10-23 04:23:25'),
(326, 150, 'products/vu4fdnpwgj0szdn1xl3y', '2025-10-23 04:24:17', '2025-10-23 04:24:17'),
(327, 151, 'products/fdqwj569b88dmk7pfzxl', '2025-10-23 04:26:21', '2025-10-23 04:26:21'),
(328, 152, 'products/fud5d0uxhilvig69html', '2025-10-23 04:27:58', '2025-10-23 04:27:58'),
(329, 153, 'products/qyf5w4g6pjfocvobl7ov', '2025-10-23 04:29:24', '2025-10-23 04:29:24'),
(330, 154, 'products/tywdui8sb48rh3tnpja6', '2025-10-23 04:33:56', '2025-10-23 04:33:56'),
(331, 155, 'products/brqxlo0zf8c3flxhhd1a', '2025-10-23 04:35:12', '2025-10-23 04:35:12'),
(332, 156, 'products/vytl8oiftxa2wkhhzabg', '2025-10-23 04:36:06', '2025-10-23 04:36:06'),
(333, 157, 'products/gu8fc18ybawwn9epnb4j', '2025-10-23 04:37:07', '2025-10-23 04:37:07'),
(334, 158, 'products/f3y02y1mjje7pe5ur8zr', '2025-10-23 04:38:10', '2025-10-23 04:38:10'),
(335, 159, 'products/nalypzwimqlny6ruoooz', '2025-10-23 04:39:56', '2025-10-23 04:39:56'),
(336, 160, 'products/o8qzzkr1izxizvd9iasx', '2025-10-23 04:40:56', '2025-10-23 04:40:56'),
(337, 161, 'products/pzxuipsthrtx21faeh4j', '2025-10-23 04:42:11', '2025-10-23 04:42:11'),
(338, 162, 'products/cmlhjgo764jqqtxc09ho', '2025-10-23 04:47:56', '2025-10-23 04:47:56'),
(339, 163, 'products/rrvcm9hxsbrfxlgirere', '2025-10-23 04:50:00', '2025-10-23 04:50:00'),
(340, 164, 'products/ceuiu4k7m8fzygv0lslj', '2025-10-23 04:50:48', '2025-10-23 04:50:48'),
(341, 165, 'products/kvbi1kfsrcu2otgsynih', '2025-10-23 04:51:58', '2025-10-23 04:51:58'),
(342, 166, 'products/iqmwpaebonrv1xorkota', '2025-10-23 04:57:26', '2025-10-23 04:57:26'),
(343, 167, 'products/xq3b7eg50fsjqmj2getj', '2025-10-23 04:58:37', '2025-10-23 04:58:37'),
(344, 168, 'products/skpds0eg7x2vks2u33r0', '2025-10-23 04:59:35', '2025-10-23 04:59:35'),
(345, 169, 'products/str6a3uad3fdk77mt13i', '2025-10-23 05:00:26', '2025-10-23 05:00:26'),
(346, 170, 'products/tqvfou0d0nxkgxixsfg6', '2025-10-23 05:01:33', '2025-10-23 05:01:33'),
(347, 171, 'products/rsi9fmogmv3bg30cwhs8', '2025-10-23 05:03:13', '2025-10-23 05:03:13'),
(348, 172, 'products/vxucctlu4lsdkpkqcivq', '2025-10-23 05:04:31', '2025-10-23 05:04:31'),
(349, 173, 'products/hdiqutczyfybynqtyisr', '2025-10-23 05:06:51', '2025-10-23 05:06:51'),
(350, 174, 'products/au7v47cnqmgadfw2ffgd', '2025-10-23 05:07:40', '2025-10-23 05:07:40'),
(351, 175, 'products/hu8cqahqaiv68qqvka5v', '2025-10-23 06:47:00', '2025-10-23 06:47:00'),
(352, 176, 'products/ge6usevs1ktokpy9jxge', '2025-10-23 06:48:57', '2025-10-23 06:48:57'),
(353, 177, 'products/ouxdvs6vmq3thwokd6xt', '2025-10-23 06:53:53', '2025-10-23 06:53:53'),
(354, 178, 'products/ukxg8wcklsvjsvq6wgz5', '2025-10-23 06:55:07', '2025-10-23 06:55:07'),
(355, 179, 'products/u33zfhwna4nscdska51z', '2025-10-23 06:56:34', '2025-10-23 06:56:34'),
(356, 180, 'products/nxaybunky3veqylzygwy', '2025-10-23 07:13:04', '2025-10-23 07:13:04'),
(357, 181, 'products/bl80fdyq27lxpilcb6pq', '2025-10-23 07:14:51', '2025-10-23 07:14:51'),
(358, 182, 'products/i4ujdcjok3or42iblnnc', '2025-10-23 07:16:04', '2025-10-23 07:16:04'),
(359, 183, 'products/fih1b3xywm1f9qeir3vr', '2025-10-23 07:16:58', '2025-10-23 07:16:58'),
(360, 184, 'products/jjgkrspopyav8nt7en0f', '2025-10-23 07:18:08', '2025-10-23 07:18:08'),
(361, 185, 'products/jhltojhjb2ydo8okqihj', '2025-10-23 07:22:36', '2025-10-23 07:22:36'),
(362, 186, 'products/zj3eh5yxykykee67kgbk', '2025-10-23 07:28:50', '2025-10-23 07:28:50'),
(363, 187, 'products/yxrc5cimelmonymmh9ox', '2025-10-23 07:30:43', '2025-10-23 07:30:43'),
(364, 188, 'products/ket0vlmjuogodgqdhkev', '2025-10-23 07:32:18', '2025-10-23 07:32:18'),
(365, 189, 'products/oxtf4rt6iueckiduqtg2', '2025-10-23 07:33:34', '2025-10-23 07:33:34'),
(366, 190, 'products/l5haepdvzxifwwusbrmx', '2025-10-23 07:34:43', '2025-10-23 07:34:43'),
(367, 191, 'products/opd5cmgdfgkyfno2qw2e', '2025-10-23 07:35:57', '2025-10-23 07:35:57'),
(368, 192, 'products/co5f2iolzrl040ezhpns', '2025-10-23 07:37:11', '2025-10-23 07:37:11'),
(369, 193, 'products/cpilrycpzfatx9xfnvnp', '2025-10-23 07:38:29', '2025-10-23 07:38:29'),
(370, 194, 'products/s3tkt14pzjrdperbs1ri', '2025-10-23 07:41:50', '2025-10-23 07:41:50'),
(371, 195, 'products/kxmactcxmsfw1tdlz3ml', '2025-10-23 07:44:54', '2025-10-23 07:44:54'),
(372, 196, 'products/pjl0mjc2t6i4ktkqw0sk', '2025-10-23 07:45:54', '2025-10-23 07:45:54'),
(373, 197, 'products/shj4wbgntoqvufdyhsic', '2025-10-23 07:47:34', '2025-10-23 07:47:34'),
(374, 198, 'products/k0inpvyaq7vdvsozfu1y', '2025-10-23 07:49:47', '2025-10-23 07:49:47'),
(375, 199, 'products/cfpccx6nbgkiied1kclb', '2025-10-23 07:53:05', '2025-10-23 07:53:05'),
(376, 200, 'products/t9yvg8uazrk9qot1gpmm', '2025-10-23 07:54:53', '2025-10-23 07:54:53'),
(377, 201, 'products/ols2gzl1kq2hjlshtvbw', '2025-10-23 07:55:50', '2025-10-23 07:55:50'),
(378, 202, 'products/wflscczdtmdvly6f1jh5', '2025-10-23 07:57:08', '2025-10-23 07:57:08'),
(380, 204, 'products/mnweesr3wps4cuze13nl', '2025-11-20 02:34:17', '2025-11-20 02:34:17'),
(381, 205, 'products/wiboafltwen7thub7vxj', '2025-11-20 02:37:03', '2025-11-20 02:37:03'),
(382, 206, 'products/dvdsnv1ihsnwogbljvdx', '2025-11-20 02:39:17', '2025-11-20 02:39:17'),
(383, 207, 'products/d1wtgq49vek14jmmgr9q', '2025-11-20 02:41:44', '2025-11-20 02:41:44'),
(384, 208, 'products/jebqxmaw2eefgxcbxtpu', '2025-11-20 02:46:50', '2025-11-20 02:46:50'),
(385, 209, 'products/kixujf0rp5cjzjeychus', '2025-11-20 02:48:37', '2025-11-20 02:48:37'),
(386, 210, 'products/ftsbbpaooctbmglthagx', '2025-11-20 02:50:09', '2025-11-20 02:50:09'),
(387, 211, 'products/nrluw2noylbhmptd2uet', '2025-11-20 02:51:44', '2025-11-20 02:51:44'),
(388, 212, 'products/hhpulngxypyv711od0vl', '2025-11-20 02:53:32', '2025-11-20 02:53:32'),
(389, 213, 'products/vb9sf8nlqssifhlfy3xo', '2025-11-20 02:56:50', '2025-11-20 02:56:50'),
(390, 214, 'products/rewi44wkojyshnk2gcno', '2025-11-20 02:58:18', '2025-11-20 02:58:18'),
(391, 214, 'products/m58bgnellid18i2jbwlb', '2025-11-20 02:58:21', '2025-11-20 02:58:21'),
(392, 215, 'products/uxfmoftip1cd9bbgaisd', '2025-11-20 03:01:48', '2025-11-20 03:01:48'),
(393, 216, 'products/lzjtfpt73stbwquvgq9i', '2025-11-20 03:03:02', '2025-11-20 03:03:02'),
(394, 217, 'products/p8h7elzfgfkyie0f3wsb', '2025-11-20 03:04:24', '2025-11-20 03:04:24'),
(395, 218, 'products/occct0ecqy5kacfjnhkp', '2025-11-20 03:06:27', '2025-11-20 03:06:27'),
(396, 219, 'products/wbjodurer9dheoh7orig', '2025-11-20 03:10:32', '2025-11-20 03:10:32'),
(397, 220, 'products/rf3w4hhd7wetlykukfmr', '2025-11-20 03:11:53', '2025-11-20 03:11:53'),
(398, 221, 'products/uha6sqz2mfh65ilkmxnf', '2025-11-20 03:13:24', '2025-11-20 03:13:24'),
(399, 222, 'products/cknagafcaqpq1hnkhafh', '2025-11-20 03:14:29', '2025-11-20 03:14:29'),
(400, 223, 'products/p1bih6clvnwk1zlb5cuc', '2025-11-20 03:15:56', '2025-11-20 03:15:56'),
(401, 224, 'products/nmuvjizfyu1gyfz6eyvo', '2025-11-20 03:25:39', '2025-11-20 03:25:39'),
(402, 225, 'products/keqxkx9jeeiqbr0flrzd', '2025-11-20 03:27:47', '2025-11-20 03:27:47'),
(403, 226, 'products/etnhgdyabtjcggblhslf', '2025-11-20 03:29:35', '2025-11-20 03:29:35'),
(404, 227, 'products/z44gmmshwus5jy7psljm', '2025-11-20 03:31:06', '2025-11-20 03:31:06'),
(405, 228, 'products/ijqtczt9h7kboi2fwxzy', '2025-11-20 03:32:52', '2025-11-20 03:32:52'),
(406, 229, 'products/s5qqlzp04atzvpxlkmtt', '2025-11-20 03:42:55', '2025-11-20 03:42:55'),
(407, 230, 'products/ypcnh560dlsp1tzy8h1u', '2025-11-20 03:44:22', '2025-11-20 03:44:22'),
(408, 231, 'products/cl3whms281i1cy6kilab', '2025-11-20 03:45:21', '2025-11-20 03:45:21'),
(409, 232, 'products/coyddxg5qzsxkcerqza9', '2025-11-20 03:46:22', '2025-11-20 03:46:22'),
(410, 233, 'products/nkosflvleih169svdxfq', '2025-11-20 03:47:30', '2025-11-20 03:47:30'),
(411, 234, 'products/xnwn7gim4enb3bdnbfti', '2025-11-20 07:16:15', '2025-11-20 07:16:15'),
(412, 235, 'products/ox8cz7u8hxyxxeqab3f0', '2025-11-20 07:17:09', '2025-11-20 07:17:09'),
(413, 236, 'products/geekibqcd23evvh3zttm', '2025-11-20 07:18:08', '2025-11-20 07:18:08'),
(414, 237, 'products/e8scx1izo90sqrfqqhui', '2025-11-20 07:18:56', '2025-11-20 07:18:56'),
(415, 238, 'products/jcoduwmholshpjl79doq', '2025-11-20 07:19:45', '2025-11-20 07:19:45'),
(416, 239, 'products/cyfi2kgtfvmfxgqlmpuc', '2025-11-20 07:26:57', '2025-11-20 07:26:57'),
(417, 240, 'products/kugmnuwo1ivvi50wia2i', '2025-11-20 07:27:57', '2025-11-20 07:27:57'),
(418, 241, 'products/hanisncw6viijkffnn75', '2025-11-20 07:29:19', '2025-11-20 07:29:19'),
(419, 242, 'products/aamhv9bxkzsxtvgh07ht', '2025-11-20 07:30:17', '2025-11-20 07:30:17'),
(420, 243, 'products/ftcvpjf8jqkfkfal7c06', '2025-11-20 07:31:10', '2025-11-20 07:31:10'),
(421, 244, 'products/gtdswufptsuucbyv5b37', '2025-11-20 07:33:41', '2025-11-20 07:33:41'),
(422, 245, 'products/hbqgve7avpdmyppijwcl', '2025-11-20 07:47:49', '2025-11-20 07:47:49'),
(423, 246, 'products/quwcieh976elgbmb0h3w', '2025-11-20 07:49:01', '2025-11-20 07:49:01'),
(424, 247, 'products/tfy6pvwpwt3adowfl27v', '2025-11-20 07:50:40', '2025-11-20 07:50:40'),
(425, 248, 'products/xeaqpr6cmmfsp32wlzsu', '2025-11-20 07:51:27', '2025-11-20 07:51:27'),
(426, 249, 'products/fnomc842skbca77v48ky', '2025-11-20 07:52:41', '2025-11-20 07:52:41'),
(427, 250, 'products/mb1thpe0mx1105kketjx', '2025-11-20 07:54:47', '2025-11-20 07:54:47'),
(428, 251, 'products/kv6xoihzoclnhjh8qibd', '2025-11-20 07:56:21', '2025-11-20 07:56:21'),
(429, 252, 'products/woupjtoadk846n5zslqr', '2025-11-20 07:57:15', '2025-11-20 07:57:15'),
(430, 253, 'products/jly4ga50tufeyfsahqou', '2025-11-20 07:58:23', '2025-11-20 07:58:23'),
(431, 254, 'products/fpoa1w99kms2byskl6ov', '2025-11-20 07:59:21', '2025-11-20 07:59:21'),
(432, 255, 'products/xlyhpiuxdqm5gbza6qqb', '2025-11-20 08:00:59', '2025-11-20 08:00:59'),
(433, 203, 'products/tgh2w7zor5jyajc88cgx', '2025-11-26 02:07:27', '2025-11-26 02:07:27'),
(434, 78, 'products/wbphnolz5i57ywjfkopj', '2025-11-26 03:47:52', '2025-11-26 03:47:52'),
(435, 256, 'products/mo3y1b7mcpbzoq2jjhrq', '2025-11-27 09:13:02', '2025-11-27 09:13:02'),
(436, 257, 'products/cqnx3ublzfafdkgbtlp3', '2025-11-27 09:14:37', '2025-11-27 09:14:37'),
(437, 258, 'products/wdmn8tv48bssiy42s0qe', '2025-11-27 09:16:20', '2025-11-27 09:16:20'),
(438, 259, 'products/j5ovjoz58trjpvirdk90', '2025-11-27 09:17:57', '2025-11-27 09:17:57'),
(439, 260, 'products/yyz2txdzvvzzetaxgpi1', '2025-11-27 09:19:19', '2025-11-27 09:19:19'),
(440, 261, 'products/uv7s2fbhye1lcbaxmane', '2025-11-27 09:20:32', '2025-11-27 09:20:32'),
(441, 262, 'products/zets4qgbny7ccrfpabde', '2025-11-27 09:27:06', '2025-11-27 09:27:06'),
(442, 263, 'products/o7tckzfp4p8algscz4bi', '2025-11-27 09:28:53', '2025-11-27 09:28:53'),
(443, 264, 'products/td3stq3kvnluhvxox16j', '2025-11-27 09:29:45', '2025-11-27 09:29:45'),
(444, 265, 'products/yja0qrj43uzzzn0d6zxm', '2025-11-27 09:30:31', '2025-11-27 09:30:31'),
(445, 266, 'products/buwjmksgj1b2aovjne2z', '2025-11-27 09:32:37', '2025-11-27 09:32:37'),
(446, 267, 'products/nvg5nd9dzv86wppewirn', '2025-11-27 09:33:32', '2025-11-27 09:33:32'),
(447, 268, 'products/gllo4i2mv3lgifozggcp', '2025-11-27 16:12:13', '2025-11-27 16:12:13'),
(448, 269, 'products/cbz9dfygcu9rauohhbyz', '2025-11-27 16:13:45', '2025-11-27 16:13:45'),
(449, 270, 'products/akpi9fmtworxm2pbahpc', '2025-11-27 16:15:12', '2025-11-27 16:15:12'),
(450, 271, 'products/nfvvwxcmgbthteuzkcsi', '2025-11-27 16:16:49', '2025-11-27 16:16:49'),
(451, 272, 'products/dn1dpvfojw2qh1ed409g', '2025-11-27 16:18:10', '2025-11-27 16:18:10'),
(452, 273, 'products/zpzkjfvvukwxeyxkx7ro', '2025-11-27 16:19:37', '2025-11-27 16:19:37'),
(453, 274, 'products/sjecwnof242bqxhugbu0', '2025-11-27 16:21:18', '2025-11-27 16:21:18'),
(454, 275, 'products/k2pbhevbk1dva6ybe4ju', '2025-11-27 16:22:38', '2025-11-27 16:22:38'),
(455, 276, 'products/mxki4s0pcvr8nxa2brwu', '2025-11-27 16:28:47', '2025-11-27 16:28:47'),
(456, 277, 'products/sorcmrr7g6niaa2enyuh', '2025-11-27 16:30:13', '2025-11-27 16:30:13'),
(457, 278, 'products/pglfaxyd9jjjyjxt3rym', '2025-11-27 16:31:16', '2025-11-27 16:31:16'),
(458, 279, 'products/dkwlqfronf1olnkqaneh', '2025-11-27 16:32:04', '2025-11-27 16:32:04'),
(459, 280, 'products/ulbhvvtnlm2fdbinn5uh', '2025-11-27 16:33:07', '2025-11-27 16:33:07'),
(460, 281, 'products/vgq9evubf5uxfqg0lyy1', '2025-11-27 16:34:30', '2025-11-27 16:34:30'),
(461, 282, 'products/xljf3rivgewka2phluvt', '2025-11-27 16:35:26', '2025-11-27 16:35:26'),
(462, 283, 'products/l1tryfg7wxivowcdcpwl', '2025-11-27 16:36:49', '2025-11-27 16:36:49'),
(463, 284, 'products/zxbhtjkaqnzdkusftrfa', '2025-11-27 16:38:12', '2025-11-27 16:38:12'),
(464, 285, 'products/pezpghbgqjzwyb2flrbj', '2025-11-27 16:39:17', '2025-11-27 16:39:17'),
(465, 286, 'products/hyt2aacxoacoecmsbcl6', '2025-11-28 03:40:14', '2025-11-28 03:40:14'),
(466, 287, 'products/x1inh49rmorc9yw5ijkh', '2025-12-15 07:36:39', '2025-12-15 07:36:39'),
(467, 288, 'products/rvjcmh8xfv1t274cvhto', '2025-12-16 02:04:15', '2025-12-16 02:04:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `products_id`, `users_id`, `rate`, `content`, `created_at`, `updated_at`) VALUES
(5, 198, 12, 5, 'ạhfiuasdhfiuhsdufhsdÒIHNOIWEG', '2025-11-09 10:15:05', '2025-11-09 10:15:05'),
(6, 125, 12, 5, 'Quá tuyệt vời luôn', '2025-11-12 17:38:16', '2025-11-12 17:38:16'),
(7, 255, 11, 5, 'Đẹp, sang xịn', '2025-11-22 06:41:41', '2025-11-22 06:41:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49'),
(2, 'staff', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49'),
(3, 'client', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49'),
(4, 'nguyenvankien123', 'web', '2023-11-18 14:18:49', '2023-11-18 14:18:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `cat_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 1, 1, '2023-10-26 07:38:10', '2025-10-15 02:38:02'),
(2, 'LG', 1, 1, '2023-10-26 07:38:19', '2025-08-30 02:14:03'),
(4, 'Logitech', 2, 1, '2023-10-26 07:41:00', '2025-08-30 02:25:23'),
(5, 'RAZER', 2, 1, '2023-10-26 07:41:08', '2025-08-30 02:25:06'),
(6, 'HyperX', 2, 1, '2023-10-26 07:41:17', '2025-08-30 02:25:41'),
(31, 'MacBook Air', 17, 1, '2023-12-21 20:34:56', '2025-09-02 07:10:30'),
(32, 'LENOVO', 17, 1, '2023-12-21 20:35:20', '2025-08-30 02:23:59'),
(33, 'E-dra', 18, 1, '2023-12-21 20:36:42', '2025-08-30 02:16:24'),
(34, 'Logitech', 18, 1, '2023-12-21 20:37:00', '2025-08-30 02:16:57'),
(35, 'Victus', 19, 0, '2023-12-21 20:37:38', '2025-11-16 05:47:38'),
(36, 'SAMSUNG', 19, 1, '2023-12-21 20:37:52', '2025-08-30 02:24:31'),
(38, 'Logitech', 20, 1, '2023-12-21 20:38:52', '2025-08-30 02:20:42'),
(39, 'UGREEN', 20, 0, '2023-12-21 20:40:06', '2025-11-27 16:24:41'),
(44, 'Acer', 1, 1, '2025-08-30 02:14:55', '2025-08-30 02:14:55'),
(45, 'E-dra', 1, 1, '2025-08-30 02:15:19', '2025-08-30 02:15:19'),
(46, 'ASUS', 1, 1, '2025-08-30 02:15:38', '2025-08-30 02:15:38'),
(47, 'DAREU', 18, 1, '2025-08-30 02:17:26', '2025-08-30 02:17:26'),
(48, 'Vortex', 18, 0, '2025-08-30 02:17:58', '2025-11-16 05:48:56'),
(49, 'RAZER', 18, 1, '2025-08-30 02:20:20', '2025-08-30 02:20:20'),
(50, 'Rapoo', 20, 1, '2025-08-30 02:21:42', '2025-11-27 16:24:35'),
(52, 'ASUS Vivobook', 17, 1, '2025-09-02 07:04:25', '2025-09-02 07:04:25'),
(53, 'MacBook Pro', 17, 1, '2025-09-02 07:10:47', '2025-09-02 07:10:47'),
(54, 'Ipad', 26, 1, '2025-09-02 07:20:10', '2025-09-02 07:20:10'),
(55, 'Huawei pad', 26, 1, '2025-09-02 07:20:25', '2025-11-27 09:21:32'),
(56, 'Samsung pad', 26, 1, '2025-09-02 07:20:46', '2025-09-02 07:20:46'),
(57, 'DarkFlash', 18, 0, '2025-09-02 07:34:40', '2025-11-16 05:49:01'),
(58, 'Củ sạc', 19, 0, '2025-10-16 02:26:11', '2025-11-16 05:48:03'),
(59, 'DELL', 1, 1, '2025-10-17 09:06:01', '2025-10-17 09:06:01'),
(60, 'Corsair', 2, 1, '2025-10-23 04:31:56', '2025-10-23 04:31:56'),
(61, 'Fuhlen', 2, 1, '2025-10-23 04:46:48', '2025-10-23 04:46:48'),
(62, 'HP', 17, 1, '2025-10-23 07:43:01', '2025-10-23 07:43:01'),
(63, 'Fulhen', 20, 0, '2025-11-16 05:49:36', '2025-11-27 16:24:37'),
(64, 'AKKO', 18, 1, '2025-11-20 07:44:21', '2025-11-20 07:44:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `username`, `password`, `image`, `email`, `phone`, `address`, `district`, `city`, `status`, `email_verified`, `phone_verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Văn', 'Kiên', 'admin', '$2y$10$dHPOnQfXTntfanVJp6FJPOY00sIX5Zd01DtRZDhNLqxMOpMbKSf.i', 'user/aiw8ywlnxkqve5jhkzlm', 'nguyentienquy14@gmail.com', '+84396959786', 'Tân Lập', 'Đan Phượng', 'Hà Nội', 1, 0, 0, 'gMxcgq6ZfSNt0GCybDonrBrwdl2RZW3J810Q5wH5VMYaU9fbnqqieSlUXq8n', '2023-11-18 14:18:49', '2025-11-06 07:47:04'),
(3, 'Huu', 'Dang', 'huudang', '$2y$10$HE4kTy2UvIg/Mnn1vS4r5urOFN7XYJBkiYeHGo.zUY.3oMY238/06', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'lUcaJeNAfcGVOKiGkZJ5CUlY6kOtd3Y3cEMyBOJsMSnnfufIitBfgvh2Htcy', '2023-11-18 14:18:49', '2025-09-05 10:03:37'),
(4, 'dang', 'huu', 'danghuu', '$2y$10$ejma/dryBYs9A12Wxf..Se93gkqVWW2g6Q7vwhBuwfdI5zNE8Ldya', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '2023-12-21 21:27:56', '2025-08-31 12:55:33'),
(5, 'Đặng', 'Phúc Hữu', 'dangphuchuu', '$2y$10$dHPOnQfXTntfanVJp6FJPOY00sIX5Zd01DtRZDhNLqxMOpMbKSf.i', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuchuu0120@gmail.com', '1234567895', '1', '456', 'Cần Thơ', 0, 1, 0, 'z1Xke9eKPlP51T5p4jG7nSoR2Y34XYAd9R6l05DwcQo1GYp6Jp2MMKBueF6M', '2023-12-24 05:17:43', '2025-09-05 08:25:19'),
(7, 'Đặng', 'Phúc Hữu', 'dangphuchuu1', '$2y$10$dHPOnQfXTntfanVJp6FJPOY00sIX5Zd01DtRZDhNLqxMOpMbKSf.i', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuchuu0120@gmail.com1', '0123456789', '123', '85', 'Hồ Chí Minh', 0, 0, 0, NULL, '2023-12-24 05:22:13', '2025-08-31 12:55:34'),
(8, 'Đặng', 'Phúc Hữu', 'dangphuchuu4', '$2y$10$pll/g9V6UJZ1/VP04FVbouO.6bGs8da.T2r1WhOR7IIyjnvratllW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuchuu0112w2s0@gmail.com', '01234565888', NULL, NULL, 'Hồ Chí Minh', 0, 0, 0, NULL, '2024-01-13 12:45:46', '2025-08-31 12:55:36'),
(9, 'T', 'Q', 'quybeo', '$2y$10$Gexw6T6rL0gsjCBSDIzZtu2l2lzFOaSlvwrKDVcv1TmvkuDYi3RNy', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'thoanlon2003@gmail.com', '+84396959789', 'tan lap', 'dan phuong', 'Hà Nội', 1, 0, 1, NULL, '2025-09-05 08:31:00', '2025-09-05 08:31:00'),
(10, 'da', 'dat', 'Quys2', '$2y$10$zc8yzCF/I/ApkpS3Edg/jeZYyqShv6p6kvGycBPrHUwnrFtjH454.', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'quynguyentien14@gmail.com', '0396959786', 'ba dinh', 'o dua', 'Hà Nội', 1, 0, 1, NULL, '2025-09-05 08:35:25', '2025-09-05 09:04:50'),
(11, 'Quý', 'Nguyễn Tiến', 'nguyenquy', '$2y$10$LCiEl6qtrrW70kG91ftmGOxwhh4.UwDQVo.ssVcYAVAYIGVHpDRgq', 'user/d0l8b68m6hdmhdtc1lgi', 'quynt14092003@gmail.com', '0374868597', '59, Tân Lập, Đan Phượng, Hà Nọi', 'o dua', 'Hải Phòng', 1, 0, 1, NULL, '2025-09-05 09:34:19', '2025-11-21 13:22:42'),
(12, 'Vân', 'Anh', 'quyrt123', '$2y$10$rroFC019qvaY8iyz74Gh8ujfKQyxsaAzLPhX5E7WG2YXxfVhWNinS', 'user/rvoi00dy5rozplwn32tm', 'quyntqp@gmail.com', '0396959999', 'tan lap', 'Hà tĩnh', 'An Giang', 1, 0, 1, NULL, '2025-10-07 12:00:08', '2025-11-12 18:09:09'),
(13, 'fgdfg', 'hfdbd', 'sdsdsd', '$2y$10$LLkREWtUh.QXDlMvJfYMleTgKcty4w9.Rz0P6FoPVDe/VR7J0orbC', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'nguyentien12ra@gmail.com', '0396949788', 'Số 59 ngõ 83 đường bát phúc khu đô thị tân tây đô', NULL, 'Hồ Chí Minh', 0, 0, 1, NULL, '2025-10-07 15:18:37', '2025-11-22 06:50:13'),
(14, 'dat', 'Tôi', 'anhem123', '$2y$10$MPIbjQ1VLDCK74VnCec6h.ns8w6hJH6XkbPN.9RMWzs9d4HmXxbX2', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'anhem123@gmail.com', '0987654332', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Hải Phòng', 'An Giang', 1, 0, 1, NULL, '2025-10-17 03:57:36', '2025-10-17 03:57:36'),
(15, 'da', 'a', 'nuy12sax', '$2y$10$ca2rcOZGND990rpSXd92B.u/oe8MrnKdU1419M44r02JbgscJWt..', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'nuy12sax@gmail.com', '0976973756', 'e', 'fd3', 'Bình Định', 0, 0, 1, NULL, '2025-10-17 04:02:34', '2025-11-22 06:40:09'),
(16, 'dnh', 'Nguyễn Tiến', 'hgafaasc', '$2y$10$g9.M0OgogszeaiERc8HJHuCSBo0PVylZPg6YBuKQ.NhMygyxkrFci', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'hgafaasc@gmail.com', '0396959994', 'tuyen quang', 'Thanh Xuân', 'Đắk Lắk', 0, 0, 1, NULL, '2025-10-17 04:15:54', '2025-11-22 06:40:07'),
(17, 'Tien', 'QUy', 'abc123', '$2y$10$MiSLaIDg9tNGaufPRkUFJ.pQ9yilHKg5b.fanGNM5JsU/iCx1l64y', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'abc123@gmail.com', '0374868599', 'Tân Lập', 'Hà nội', 'Hồ Chí Minh', 0, 0, 1, NULL, '2025-10-17 04:17:35', '2025-11-22 06:40:05'),
(18, 'FPY', 'VBN', 'abc12345', '$2y$10$gcEA1f77sT1mDX5VZyvA2eQtglCla2h46BN.8oaA683Pu6rLob1LW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'abc12345@gmail.com', '0396959567', NULL, NULL, NULL, 0, 0, 1, NULL, '2025-10-17 04:26:18', '2025-11-22 06:40:03'),
(19, 'FPY', 'VBN', 'abc1234509', '$2y$10$0Fh7oX2x6FJGW5HtRCTjjOi0ojaGVXNZSthTnIQOTB6nGT.1x3fuy', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'abc1234765@gmail.com', '0396159567', NULL, NULL, NULL, 0, 0, 1, NULL, '2025-10-17 04:26:39', '2025-11-22 06:39:59'),
(20, 'da', 'Q', 'abc12312345', '$2y$10$wnmM1VXiKb/QRZprNeVthOL3OFNh6/mmn/59HwmzPnQl5fl3ZkdIq', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'abc12312345@gmail.com', '0396953486', 'tan lap', 'Hải Phòng', 'Hồ Chí Minh', 0, 0, 1, NULL, '2025-10-17 04:28:16', '2025-11-22 06:39:56'),
(21, 'beo', 'Quy', 'admin123456', '$2y$10$Q8CmU6qrsUyttfwGn5xJruRPaix/b0eynKOU7e35Mfqr4oK0s2VYS', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'admin123456@gmail.com', '0396869186', 'Cum 9', 'dan phuong', 'Hà Nội', 1, 0, 1, NULL, '2025-10-17 04:50:39', '2025-10-17 04:50:39'),
(22, 'da', 'Nguyễn Tiến', 'ahkffnhh1234', '$2y$10$TDaNJsU2oQJcvEZP1PpGHuhNJ7p7zPQT3cd3ZfKWlnZbw4g8tdYN2', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'ahkffnhh@gmail.com', '0374868589', '59, Tân Lập', 'dan phuong', 'Cần Thơ', 0, 0, 1, NULL, '2025-10-17 07:28:29', '2025-11-22 06:39:52'),
(23, 'Vân', 'Quý', 'dfgh11234a', '$2y$10$vPf378cToRJBaSeGHehrJOu4UZND9fuzoDM0pgsfBkJCJQyIxEql6', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'dfgh11234a@gmail.com', '0396959976', '59, Tân Lập', 'dan phuong', 'Tuyên Quang', 0, 0, 1, NULL, '2025-10-17 07:43:04', '2025-11-22 06:39:49'),
(24, 'Tien', 'Anh', 'fghjjhgfbvd', '$2y$10$T4ExmR2A7p40/.oYlMc2uu5W6TNREkqZaAaTymJ9pdj4vdYIFAX0e', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'fghjjhgfbvd@gmail.com', '0396659786', '59, Tân Lập, Đan Phượng, Hà Nọi', 'Hải Phòng', 'Hồ Chí Minh', 0, 0, 1, NULL, '2025-10-17 08:40:51', '2025-11-22 06:39:48'),
(25, 'Trung', 'Tien', 'TienTrung', '$2y$10$gHsKDMquqgiCjFoY2PF8euDmtn5Gdm9F38354T3Gy2UdJ4QOZltvW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tientrung123@gmail.com', '0987612435', 'Cum 10 Tan Lap', 'Ha Dong', 'Bình Dương', 1, 0, 1, NULL, '2025-11-22 06:49:22', '2025-11-22 06:49:22'),
(26, 'Nam', 'Tien', 'Tiến Nam', '$2y$10$pYR3eEHppSVn3rAFgBQ8Gulx96I7IhSvRVbGhMzTxeKCEjH5MCs2q', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienNam123@gmail.com', '0987612735', 'Hoai Duc', 'Ha Dong', 'Kiên Giang', 1, 0, 1, NULL, '2025-11-22 06:59:26', '2025-11-22 06:59:26'),
(27, 'Van', 'Viet', 'vanviet', '$2y$10$0xe8vL4SDu84OPgB0sc5hu9k.y52xgGk35rnjCcqb3Y1Mkhe7/dKm', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'vanviet233@gmail.com', '0987612765', 'Tan Hoi', 'Lien Trung', 'Vĩnh Long', 1, 0, 1, NULL, '2025-11-22 07:01:09', '2025-11-22 07:01:09'),
(28, 'Hai', 'Long', 'hailong', '$2y$10$ZudN4DQHGdeB7jjw7JAlH.uoawoiChvSmEmsuw4vsu2QUfh.Yn9WO', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'hailong233@gmail.com', '0990612765', 'My Dinh', 'Dong Anh', 'Hưng Yên', 1, 0, 1, NULL, '2025-11-22 07:02:31', '2025-11-22 07:02:31'),
(29, 'Huu', 'Huy', 'huuhuy', '$2y$10$8mxPky9JfzZ2Zzd384XmlOhp.u5NkpEYIrGRZ/4T/rUOkYAhkMW2W', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'huuhuy@gmail.com', '0374868593', 'Tan Hoi', 'Tan Trieu', 'Thừa Thiên Huế', 1, 0, 1, NULL, '2025-11-26 06:41:10', '2025-11-26 06:41:10'),
(30, 'Minh', 'Duc', 'minhduc', '$2y$10$L/WKlyM8gwm9ELl5W6R9U.dHBzoikqz9Z.sxY6V8mWAqiqA0i1QUC', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'minhduc@gmail.com', '0374863599', 'Thach That', 'Tay Ho', 'Quảng Ninh', 1, 0, 1, NULL, '2025-11-26 06:54:12', '2025-11-26 06:54:12'),
(31, 'Le', 'An', 'lean', '$2y$10$4Qtnaqpe9fCrBtsaKdyHTuY11cw0kYDaBO.J8tsky1Ku3ZEbY8a46', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'lean@gmail.com', '0374898599', 'Hai Dinh', 'Nam Tu Liem', 'Bà Rịa - Vũng Tàu', 1, 0, 1, NULL, '2025-11-26 06:57:19', '2025-11-26 06:57:19'),
(32, 'Duc', 'Anh', 'ducanh1', '$2y$10$2kvix7O0D8w8nSTFSp5E2OiGyeDpx9UVHrnjgF6PpiYgGj3esscZG', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'ducanh@gmail.com', '0374238599', 'Phung Hung', 'Hoai Duc', 'Thái Bình', 1, 0, 1, NULL, '2025-11-26 07:04:24', '2025-11-26 07:04:24'),
(33, 'Ngoc', 'Anh', 'ngocanh', '$2y$10$d/h7jf/tzDqziW/FSiBDHePPLoDYZGNc9t6DX2.aS7pYbxc1T4Q8K', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'ngocanh22@gmail.com', '0374868525', 'Cum 10', 'Trieu Khuc', 'Lâm Đồng', 1, 0, 1, NULL, '2025-11-26 07:25:27', '2025-11-26 07:25:27'),
(34, 'Tuong', 'Tri', 'tuongtri', '$2y$10$AgNIB6mNIiuKs6iv7dL71u3fAtdr8IYvNoxZ6.7Cr3UvZrK4qxJ2y', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tuongtri@gmail.com', '0396959799', 'Moc chau', 'Son La', 'Đắk Nông', 1, 0, 1, NULL, '2025-11-26 07:37:17', '2025-11-26 07:37:17'),
(35, 'Hai', 'Yen', 'haiyen', '$2y$10$W0MHQrKPgjJQkjZpIyB.VeFHIlYIk/Q5Ura8YjxNzrxBcmZJG6fBK', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'haiyen43@gmail.com', '0399868599', 'Lam dong', 'Da Lat', 'Long An', 1, 0, 1, NULL, '2025-11-26 07:45:15', '2025-11-26 07:45:15'),
(36, 'Quy', 'Ninh', 'quyninh', '$2y$10$ffSAplxeI/2KTipE6Ftm2.RKhsXadZxl.fv/eSF0IDgmJu94g0cVK', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'quyninh@gmail.com', '0374868591', 'Ha bac', 'Bac Tu Liem', 'Phú Yên', 1, 0, 1, NULL, '2025-11-26 07:47:51', '2025-11-26 07:47:51'),
(37, 'Huyen', 'Trang', 'huyentrang', '$2y$10$gp9HaZ/HGbT8Em729zg4nu6VNu82OGxqUbHn4..WbeB1OXkWKUTQ.', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'huyentrang2510@gmail.com', '0975936583', 'Tân Lập', 'Duc Thuong', 'Long An', 1, 0, 1, NULL, '2025-11-26 07:52:32', '2025-12-14 02:51:38'),
(38, 'Ngo', 'Hoa', 'ngohoa94', '$2y$10$HO8eFEkQeuwrts2qJxJnR.PnErNfHI6n4.OCqf3jc.9OSsL.1wwRe', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'ngohoa94@gmail.com', '0396958799', 'Quan 1', 'Quan 2', 'Đồng Tháp', 1, 0, 1, NULL, '2025-11-26 07:55:24', '2025-11-26 07:55:24'),
(39, 'Quoc', 'Cuong', 'quoccuong', '$2y$10$p8SOYlRxfLRIenUTZJYAZOybhvQ/y9E/SN.AM0f5nYVDTLU6xk7h2', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'quoccuong@gmail.com', '0987656325', 'thue thien huy', 'Hà tĩnh', 'Lâm Đồng', 1, 0, 1, NULL, '2025-11-26 07:57:36', '2025-11-26 07:57:36'),
(40, 'Van', 'Anh', 'vananh', '$2y$10$AgYz8n7luFB8lglw3gUVjOfGx1ln3YskdwsgRLJiYGVxIZthpGeJK', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'vananh2512@gmail.com', '0396959966', 'tuyen quang', 'Tuyên Quang', 'Tuyên Quang', 1, 0, 1, NULL, '2025-11-26 08:05:32', '2025-11-26 08:05:32'),
(41, 'Le', 'Hoang', 'lehoang', '$2y$10$B6jFLb4KeqQdZR6f.lVzh.LNButM/Bp.880gfvtlugcvVwOh0.bJu', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'lehoang123@gmail.com', '0374898597', 'Thanh hoa', 'thanh hoa', 'Đà Nẵng', 1, 0, 1, NULL, '2025-12-12 06:51:50', '2025-12-12 06:51:50'),
(42, 'Quý', 'Ninh', 'quyninh123', '$2y$10$kTD3sPBi5NHX4inX5zPgDem7BxTAkc.7h9CenIuXbYvBLCVWIj/7u', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'quyninh123@gmail.com', '0396959908', 'Tân Hội', 'Đan Phượng', 'Gia Lai', 1, 0, 1, NULL, '2025-12-14 09:49:27', '2025-12-14 09:49:27'),
(43, 'Vân', 'Anh', 'vananh2512', '$2y$10$dYpMALahmSZ1zECDTYiMd.r8qRB7ka.gdZ115GwbA2iQ0ka0N22QW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'vananh25122002@gmail.com', '0374868587', 'tuyen quang', 'Tuyên Quang', 'Điện Biên', 1, 0, 1, NULL, '2025-12-14 09:52:27', '2025-12-14 09:52:27'),
(44, 'Tiến', 'Quý', 'tienquy1409', '$2y$10$8fyXHj1Vn1YaKtVAPZXS4.495Q.R2A85AV0SNECtOJ9QAHJDZVkvW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienquy1409@gmail.com', '0941460480', '10 Hà Nội', 'Phùng', 'Hải Dương', 1, 0, 1, NULL, '2025-12-14 09:54:42', '2025-12-14 09:54:42'),
(45, 'Ngọc', 'Ánh', 'ngocanh2208', '$2y$10$4OUMUMswhl8okCpay3STeuDi89G2qafT.HsZG9s7AFf3oB.EUtXCW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'ngocanh2208@gmail.com', '0987789654', '20 Thái hà 21', 'Nam Từ Liêm', 'Nam Định', 1, 0, 1, NULL, '2025-12-14 09:57:41', '2025-12-14 11:01:13'),
(46, 'Xuân', 'Huy', 'xuanhuy123', '$2y$10$g3DZtkjRxSthI7raI1uaWuv78VAfmkW4JpmL3DpKa2PL.zET8DJ5G', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'xuanhuy123@gmail.com', '0678906572', 'Sơn La', 'Sơn La', 'Kon Tum', 1, 0, 1, NULL, '2025-12-14 10:00:54', '2025-12-14 10:00:54'),
(47, 'Thị', 'Thành', 'thithanh21', '$2y$10$SLf9Z0PmoEQEXybE6p4Iqes0VzZHv7pdtYAfHr4SpUwAJW05.3Qjm', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'thithanh21@gmail.com', '0987627492', 'Bắc Cạn', 'Hà Giang', 'Cà Mau', 1, 0, 1, NULL, '2025-12-14 10:06:17', '2025-12-14 10:06:17'),
(48, 'Tiến', 'An', 'tienan1976', '$2y$10$2ZCZqtQlq1loEDdED/Ihjui9g12DIP0NPvr4A71CDd91fCzCGVxDC', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienan1976@gmail.com', '0987856213', 'Ninh Bình', 'Hoa Lư', 'Hà Nam', 1, 0, 1, NULL, '2025-12-14 10:10:56', '2025-12-14 10:10:56'),
(49, 'Tiến', 'Liên', 'tienlien', '$2y$10$W1ama2BXlr0hWRQrjL9eyOuOnuEV0pRBAJ082ZIe5aljwEojaNgTC', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienlien@gmail.com', '0987856254', 'Mộc Châu', 'Điện Biên', 'Đắk Lắk', 1, 0, 1, NULL, '2025-12-14 10:12:21', '2025-12-14 10:12:21'),
(50, 'Phương', 'Chi', 'phuongchi', '$2y$10$j4CDo9GvgddhLTKVZobLpu8QzJEjZzKK24uFlyeiUtBBQlbS6zsnW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuongchi@gmail.com', '0987632492', 'Quận 1', 'Điện Biên', 'Đà Nẵng', 1, 0, 1, NULL, '2025-12-14 10:20:46', '2025-12-14 10:20:46'),
(51, 'Tiến', 'Hưng', 'tienhung', '$2y$10$enKjIm5T4EvWVRNrlIGPYeJOC9haKA7p2E2tjOAZpy6rxeggcvkYK', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienhung@gmail.com', '0984656254', 'Hạ long', 'Cô Tô', 'Hải Phòng', 1, 0, 1, NULL, '2025-12-14 10:24:54', '2025-12-14 10:24:54'),
(52, 'Trường', 'Huy', 'truonghuy', '$2y$10$CPgnKShSsFk49Pwx9fRnT.K1OoZePRO5Vzq5Z2pqg5ZLyntniQgaa', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'truonghuy@gmail.com', '0987852354', 'Phú thọ', 'Phú thọ', 'Đồng Nai', 1, 0, 1, NULL, '2025-12-14 10:26:03', '2025-12-14 10:26:03'),
(53, 'Phương', 'Vy', 'phuongvy', '$2y$10$16e5vzIFFvzS/Y8L9gSlbONo5DjaliAaHlrYAfk29MK3rFOfQvahe', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'phuongvy@gmail.com', '0987887213', 'Cố Đô', 'Huế', 'Gia Lai', 1, 0, 1, NULL, '2025-12-14 10:28:09', '2025-12-14 10:28:09'),
(54, 'Hải', 'Anh', 'haianh', '$2y$10$zXHovhYT9go7cTfVe3xMreeRQRAP4aLlXjJphc4XYz6112BzvUGrq', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'ntquy14092003ntq@gmail.com', '0987621492', 'Ninh Bình', 'Sơn La', 'Bà Rịa - Vũng Tàu', 1, 0, 1, NULL, '2025-12-14 10:31:05', '2025-12-14 10:31:05'),
(55, 'Ha', 'Noi', 'hanoi123', '$2y$10$dnS5yBo5Pzh817J.t1EwRe7j7Qwt9s5i.Imw2DRUJVDk1NxNRINNm', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'hanoi123@gmail.com', '0987859813', 'Bắc Cạn', 'Sơn La', 'An Giang', 1, 0, 1, NULL, '2025-12-14 10:34:21', '2025-12-14 10:34:21'),
(56, 'Tiến', 'Phú', 'tienphu', '$2y$10$2nz8dHvqF//LCIvW6hv8heFoNMt758JDAGM0o2P/I1VNi8qjEYicO', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienphu@gmail.com', '0987856223', 'Ninh Bình', 'Nam Từ Liêm', 'Bắc Kạn', 1, 0, 1, NULL, '2025-12-14 10:38:37', '2025-12-14 10:38:37'),
(57, 'Hà', 'Anh', 'haanh', '$2y$10$2zLFmZZr0wA5WEMt0WwchuIB1lDg6Mq.0BgomGg82vNLKULCKfdOm', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'haanh@gmail.com', '0987659654', '20 Thái hà', 'Sài Gòn', 'Bạc Liêu', 1, 0, 1, NULL, '2025-12-14 10:39:31', '2025-12-14 10:39:31'),
(58, 'Minh', 'Quân', 'minhquan', '$2y$10$XKkTFYQeSTe8lH24cbs.oO/rNOicZiw4BNx/TcaSfhg71XYyNp.fW', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'minhquan@gmail.com', '0987898254', 'Đức', 'Cô Tô', 'Đồng Nai', 1, 0, 1, NULL, '2025-12-14 10:41:55', '2025-12-14 10:41:55'),
(59, 'Thu', 'Hương', 'thuhuong', '$2y$10$Imu.YngHdJZEQ3/SmXUdOupm9j4d.zHnP3Wg8qW1fgTR2iVX71EZK', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'thuhuong@gmail.com', '0975626583', 'tan lap', 'Bac Tu Liem', 'Cần Thơ', 1, 0, 1, NULL, '2025-12-14 23:45:02', '2025-12-14 23:45:02'),
(60, 'Tiến', 'Quý', 'tienquy480', '$2y$10$eyRoerSIpkYFC4ccr4GT/elfGJKyXcpp85ogMFM9PV8cuN72IhViK', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'tienquy480@gmail.com', '0396952999', '59, 83 cụm', 'Mỹ đình', 'Bắc Kạn', 1, 0, 1, NULL, '2025-12-16 01:58:50', '2025-12-16 01:58:50'),
(61, 'Nguyen', 'Kien', 'kiennguyenn', '$2y$10$sIRA7ohXwWwD1q0hoJ2u0OjsPofmm25yOFmoWi/W9qT1DSNNP2uXq', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'kiennguyen.tech3@gmail.com', '0972918621', 'Hà Nội', 'Bắc Từ Liêm', 'Hà Nội', 1, 0, 1, NULL, '2026-04-09 06:38:55', '2026-04-09 06:38:55'),
(62, 'KIÊN', 'NGUYỄN', 'test1', '$2y$10$5VnKTOt7QWF9vu6SaaKf1eMIztOG8fo31uoJRmsr4BeUEjBGjnx4u', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', '2121050725@student.humg.edu.vn', '0972912212', 'ha noi', '0123456789', 'An Giang', 1, 0, 1, NULL, '2026-04-17 04:21:51', '2026-04-22 09:47:48'),
(63, 'KIÊN', 'NGUYỄN', 'nguyenvankien123', '$2y$10$FYiHj/WRGufwCIy214MRpO06DRm.aRd0ZBASPmNWET4wzu8x7EL9S', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', 'nguyenvankienadk2003@gmail.com', '0972918620', 'ha noi', 'Bắc Từ Liêm', 'Hà Nội', 1, 0, 1, 'CoJJ8wvLYDdtuK7iFImrsS59ktej2p5gfWTy10EBuXh9mrJxhbUOmLwTYoKl', '2026-04-22 10:01:21', '2026-04-22 10:01:21'),
(64, 'KIÊN', 'NGUYỄN', 'nguyenvankien1234', '$2y$10$cvZ6tFXO7a.YR3iZbeBbqe/M/fEV0x/Ufl84HmU3WB8dHUDJLaWRe', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', '2121050726@student.humg.edu.vn', '0972918622', 'ha noi', 'Bắc Từ Liêm', 'Bắc Ninh', 1, 0, 1, NULL, '2026-04-22 13:30:46', '2026-04-22 13:30:46'),
(65, 'Quang', 'Phạm', 'phamvanquang123', '$2y$10$6y25/nTSO9ONVcwDPpkrj.I3RnpqRtNqraMRChDdE1tQiFS7h6yuC', 'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png', '2121050727@student.humg.edu.vn', '0972918623', 'ha noi', 'Bắc Từ Liêm', 'Bắc Ninh', 1, 0, 1, NULL, '2026-04-22 13:33:18', '2026-04-22 13:33:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `products_id`, `users_id`, `created_at`, `updated_at`) VALUES
(49, 16, 5, '2024-01-05 03:37:35', '2024-01-05 03:37:35'),
(50, 13, 5, '2024-01-05 03:37:36', '2024-01-05 03:37:36'),
(87, 2, 2, '2024-01-10 14:56:59', '2024-01-10 14:56:59'),
(88, 13, 2, '2024-01-10 14:57:00', '2024-01-10 14:57:00'),
(90, 56, 2, '2025-10-15 06:43:36', '2025-10-15 06:43:36'),
(91, 104, 2, '2025-11-08 03:46:26', '2025-11-08 03:46:26'),
(92, 198, 12, '2025-11-09 10:15:28', '2025-11-09 10:15:28'),
(93, 79, 12, '2025-11-12 08:58:09', '2025-11-12 08:58:09'),
(94, 185, 11, '2025-11-26 03:45:08', '2025-11-26 03:45:08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners_featureds`
--
ALTER TABLE `banners_featureds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_users_id_foreign` (`users_id`);

--
-- Chỉ mục cho bảng `orders__details`
--
ALTER TABLE `orders__details`
  ADD KEY `orders__details_orders_id_foreign` (`orders_id`),
  ADD KEY `orders__details_products_id_foreign` (`products_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_libraries_products_id_foreign` (`products_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_products_id_foreign` (`products_id`),
  ADD KEY `reviews_users_id_foreign` (`users_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `banners_featureds`
--
ALTER TABLE `banners_featureds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=729;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT cho bảng `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
