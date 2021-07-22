-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2021 at 01:09 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_demo3`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2021_05_03_210235_create_categories_table', 1),
(5, '2021_06_30_161340_create_products_table', 1);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `storage` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `camera` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `ram`, `storage`, `quantity`, `camera`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Libby Bauch', 'Nokia', 53491, 6, 128, 19, 13, 1, 'Illum excepturi omnis cumque magni. Aut repellendus quae officia ipsa deleniti ut. Odio qui debitis error ipsa corporis tenetur repellat fugiat. Et nam molestias accusamus ea quisquam dolor. Similique repudiandae beatae architecto perferendis at illum. Architecto nulla non voluptatum repellendus.', '2021-07-20 18:50:45', '2021-07-20 18:50:45'),
(2, 'Jaylin Price', 'Tecno', 53149, 3, 64, 19, 8, 1, 'Illo veritatis laudantium quia laborum. Vel porro minus unde hic inventore culpa ratione. Rerum ea et exercitationem consequuntur rerum. Atque tempora eum commodi et deserunt et.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(3, 'Greyson Morar', 'Tecno', 112825, 2, 64, 18, 13, 1, 'Dolores corrupti repudiandae deleniti fuga aut. Qui quis placeat quidem quo possimus animi. Voluptas enim pariatur hic doloribus. Et consectetur autem et laboriosam eligendi veniam. Molestias delectus laboriosam deserunt nihil minus officiis neque corporis.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(4, 'Dr. Julianne McKenzie MD', 'Nokia', 47773, 6, 2, 29, 8, 0, 'Et molestias consequatur veniam qui aperiam quos. Quaerat occaecati voluptatem unde numquam aperiam non et. Voluptatem unde esse magni veritatis libero. Est officiis eveniet tempore suscipit ipsa nihil. Aut fugit est fugiat labore amet necessitatibus iusto similique.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(5, 'Chance Lang', 'Apple', 76152, 8, 8, 21, 8, 1, 'Aut autem accusantium velit aut veniam fugiat. Est non omnis omnis quod. Eum quas cumque ut in. Et velit magnam provident ex. Sunt iusto amet voluptas deserunt et.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(6, 'Ida McKenzie', 'Infinix', 107088, 5, 32, 23, 16, 0, 'Repellat expedita laboriosam culpa nam ducimus sit ad nostrum. Aut molestiae est pariatur et doloribus eum molestiae. Itaque sit ut quos quis quia itaque quas. Voluptates molestiae voluptatem numquam sunt et.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(7, 'Miss Zetta Pouros DDS', 'Itel', 35307, 3, 16, 24, 13, 0, 'Facere eum quos distinctio minus. Quia qui numquam omnis unde nisi consequatur sint. Dignissimos deserunt omnis provident ea. Accusantium ratione ullam natus libero sed hic doloribus. Sint quidem doloremque blanditiis provident.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(8, 'Isabell Monahan', 'Tecno', 95114, 5, 1, 28, 16, 1, 'Aut est cumque quia incidunt voluptas. Cumque aperiam quia reprehenderit est ducimus quod. Minima magni tempore sapiente aut labore voluptates qui. Ut odit eligendi ut qui quia.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(9, 'Ottilie Hartmann', 'samesung', 127845, 4, 4, 25, 16, 1, 'Reprehenderit nulla ratione vel praesentium qui inventore quae impedit. Fugit assumenda et quidem veritatis impedit. Eos accusamus magnam aut aut alias.', '2021-07-20 18:50:47', '2021-07-20 18:50:47'),
(10, 'Norma Kshlerin III', 'samesung', 45867, 6, 8, 21, 13, 0, 'Mollitia commodi unde sed optio quisquam voluptatem vero. Rem dolorum in corrupti maiores mollitia quam enim aspernatur. Qui ipsa libero harum delectus eaque perspiciatis repudiandae corporis.', '2021-07-20 18:50:48', '2021-07-20 18:50:48'),
(11, 'Odell Bailey', 'samesung', 65646, 7, 64, 22, 8, 0, 'Id exercitationem saepe voluptatem beatae. Officia nobis non ut voluptas at incidunt magnam. Saepe vel et suscipit et.', '2021-07-20 18:50:48', '2021-07-20 18:50:48'),
(12, 'Phoebe Steuber IV', 'Vovo', 69554, 5, 128, 19, 16, 1, 'Asperiores expedita optio officiis autem. Et consequatur unde qui. Nisi qui ea culpa distinctio.', '2021-07-20 18:50:48', '2021-07-20 18:50:48'),
(13, 'Samara Braun DVM', 'Oppo', 113164, 6, 1, 26, 16, 0, 'Quae explicabo officia autem. Beatae eaque deserunt facere tempore placeat ut. Dolorem vel cumque blanditiis magnam cum. Aperiam eligendi nihil dolores exercitationem ut ipsa. Itaque quos cumque autem sunt.', '2021-07-20 18:50:48', '2021-07-20 18:50:48'),
(14, 'Tina Rutherford', 'Itel', 27222, 4, 1, 27, 16, 1, 'Et corporis ut suscipit ipsam commodi molestiae. Molestiae accusamus ut totam eum ipsam sapiente possimus neque. Optio vitae delectus repellendus quo facilis. Laborum quidem praesentium consectetur ipsam facilis numquam.', '2021-07-20 18:50:48', '2021-07-20 18:50:48'),
(15, 'Skye Jacobson', 'Apple', 21320, 5, 4, 30, 13, 1, 'Et aut ex architecto at nobis. Corporis tempora et et porro sed. Dolore iusto vel nihil minima. Exercitationem unde aut quasi qui. Sint exercitationem nihil fugit aut.', '2021-07-20 18:50:48', '2021-07-20 18:50:48'),
(16, 'Mr. Carmelo Abbott IV', 'Vovo', 86029, 7, 64, 22, 13, 0, 'Neque quo omnis alias labore. Accusantium velit nostrum rem nihil totam soluta voluptatem qui. Temporibus nihil corporis quis eos. Reiciendis magnam ullam debitis aut minima neque dignissimos. Repellat rerum in consequatur consectetur dolore ea.', '2021-07-20 18:50:49', '2021-07-20 18:50:49'),
(17, 'Mrs. Corine Harris V', 'Oppo', 143788, 8, 32, 15, 8, 1, 'Nam voluptates hic aut quae doloribus. Iure dicta aut voluptatem et non. Repellat qui illo odit omnis. Exercitationem est voluptas in qui et sequi. Vel praesentium quas vero et dolores odit harum.', '2021-07-20 18:50:49', '2021-07-20 18:50:49'),
(18, 'Guillermo Christiansen', 'Nokia', 44104, 7, 32, 21, 16, 0, 'Ipsam repellat est similique. Ut delectus eveniet eos ut. Est esse nulla ut vel magni doloremque. Facere corporis dicta modi eveniet illo molestiae. Minima at vel pariatur et. Dolorem dolorem adipisci dolor facilis.', '2021-07-20 18:50:49', '2021-07-20 18:50:49'),
(19, 'Madisyn Christiansen', 'samesung', 64873, 6, 8, 29, 16, 1, 'Placeat voluptatem enim sunt provident soluta sint molestiae. Qui occaecati aspernatur qui possimus aut molestiae. In qui ea sit tempora earum. Quidem nam sit id dolores placeat dolorum eos. Reiciendis et harum mollitia eos ut. Rerum error maiores vitae et facilis necessitatibus ipsam voluptates.', '2021-07-20 18:50:50', '2021-07-20 18:50:50'),
(20, 'Oscar Hauck Sr.', 'Vovo', 32813, 8, 4, 15, 16, 1, 'Id minus error qui magni fuga. Aut quod harum sunt nobis. Voluptatibus maiores qui at facilis sapiente cupiditate. Minima quod sunt pariatur itaque rem ea.', '2021-07-20 18:50:50', '2021-07-20 18:50:50'),
(21, 'Braden O\'Connell', 'samesung', 59940, 2, 4, 17, 13, 0, 'Ipsam enim quia error recusandae id. Magni commodi quisquam occaecati esse libero qui. Aliquid et ducimus alias consequatur id labore neque repudiandae. Maxime inventore rem sunt eos. Minus vitae porro distinctio qui.', '2021-07-20 18:50:51', '2021-07-20 18:50:51'),
(22, 'Freda Beier DDS', 'Galaxy', 96549, 5, 32, 26, 13, 1, 'Recusandae velit facilis commodi non veniam blanditiis ad. Deleniti rerum iste voluptatem hic libero dolorum aliquid. Dolorum quas labore ut officiis at maxime. Quidem tempore quidem quo reiciendis vero molestiae. Officiis repellat at repellendus vero. Quo debitis ullam autem sapiente quam quaerat numquam.', '2021-07-20 18:50:51', '2021-07-20 18:50:51'),
(23, 'Matilde Casper Jr.', 'Itel', 87656, 7, 32, 29, 13, 1, 'Voluptatum odit aut iure exercitationem eum. Aperiam dolores quia molestias. Placeat quisquam dolor quaerat ut velit. Quia amet libero non vel voluptatem. Sapiente assumenda aut libero delectus adipisci veniam dolorem. Vel numquam accusamus non.', '2021-07-20 18:50:51', '2021-07-20 18:50:51'),
(24, 'Dayana Fahey', 'Gino', 131582, 4, 1, 27, 13, 1, 'Dignissimos cupiditate qui facilis accusantium veritatis. Voluptatem voluptates quibusdam delectus facere fuga quia culpa. Sit dignissimos omnis velit ullam. Libero eius quidem fugiat debitis. Perspiciatis id nihil dolore nesciunt distinctio et.', '2021-07-20 18:50:51', '2021-07-20 18:50:51'),
(25, 'Alda Schmeler', 'Oppo', 106394, 7, 32, 19, 16, 0, 'Neque optio beatae quis libero cum et assumenda nemo. Consequuntur in ut magnam distinctio officiis praesentium iusto placeat. Alias asperiores rerum enim rerum velit at suscipit porro. Qui velit nihil enim aliquam soluta rerum.', '2021-07-20 18:50:51', '2021-07-20 18:50:51'),
(26, 'Charlotte Spencer', 'Gino', 92266, 7, 1, 19, 8, 1, 'Explicabo pariatur sunt voluptatum voluptatem veniam quia qui. Recusandae et eius voluptas laboriosam eligendi. Molestias error et aut saepe doloribus. Est consequuntur consequatur excepturi non unde tempora. Eaque dolorem hic doloribus rem.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(27, 'Ms. Berenice Bartoletti', 'Infinix', 137627, 2, 1, 29, 13, 0, 'Omnis quidem qui quidem eum quam. Est et et placeat nihil. Rerum illo repellat pariatur aperiam omnis qui distinctio et. Voluptatem sint sunt est id et vitae. Ad omnis cumque et quia adipisci at magni voluptas.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(28, 'Mr. August Mayert IV', 'Oppo', 111339, 8, 1, 15, 8, 1, 'Tempore laborum labore dolorem qui vel qui a. Qui quis nobis recusandae quidem velit. Dolorem laboriosam suscipit et nihil placeat nihil. Dolore quia suscipit totam. Rem nihil sequi aut incidunt enim. Consequatur consequatur quas eveniet.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(29, 'Abel O\'Conner', 'Infinix', 62316, 3, 1, 26, 16, 0, 'Consequatur ut sit quaerat officia. Suscipit perferendis autem pariatur perspiciatis tempore aut eum ullam. Voluptate recusandae quidem corporis perferendis vero autem sit officia. Voluptatem reprehenderit tenetur numquam pariatur.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(30, 'Mariane Rutherford', 'Tecno', 43341, 4, 8, 26, 13, 0, 'Laborum qui reprehenderit temporibus pariatur ullam qui nam. Culpa molestiae ducimus architecto dolor repellendus at. Molestiae voluptatibus in voluptatibus. Impedit aut consequuntur ab. Reprehenderit similique modi distinctio. Non accusamus ducimus et ut molestiae reprehenderit.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(31, 'Dolores Dietrich', 'Oppo', 67329, 6, 4, 19, 13, 0, 'Et esse incidunt provident ut vel autem totam natus. Omnis maxime et incidunt voluptate. Et voluptas eos ut et. Facere consequuntur similique nesciunt occaecati libero ad. Neque beatae repellat hic. Aut sint velit provident est omnis modi.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(32, 'Mr. Leland Crist MD', 'Itel', 94442, 7, 1, 17, 8, 0, 'Dolores et est rem aut. Et consequuntur aperiam nulla nihil dolor in quia. Dolores et reiciendis sint rerum eos tenetur sunt. Dolores pariatur tenetur sit nemo aut placeat qui impedit.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(33, 'Betty Goyette', 'Tecno', 43831, 6, 32, 18, 8, 1, 'Repudiandae quae et quisquam aperiam omnis. Doloremque itaque omnis dolorem voluptates qui magnam. Tempora et nam autem.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(34, 'Elenora Pagac', 'Vovo', 97737, 7, 16, 18, 13, 1, 'Qui ratione et voluptas expedita neque. Enim natus recusandae ullam et quam. Incidunt hic consequatur ipsam et laboriosam. In et eos voluptates. Nemo quod dolorum laboriosam voluptatem. Necessitatibus suscipit sint excepturi quo animi provident eos.', '2021-07-20 18:50:52', '2021-07-20 18:50:52'),
(35, 'Elisabeth Mills', 'Tecno', 101950, 4, 32, 15, 16, 0, 'In alias eveniet expedita cumque sed pariatur. Odit rem libero accusamus non cupiditate eum suscipit. Sint enim minima omnis consequuntur earum maiores magnam. Sed dolor laborum aperiam velit sed voluptas quis.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(36, 'Prof. Kevon Kunde', 'Itel', 77268, 2, 2, 28, 8, 0, 'Beatae ut quidem tenetur eos. Nemo dolores omnis consequatur voluptatem laudantium perspiciatis aliquam. Perspiciatis voluptatem incidunt quod aspernatur deserunt. Debitis dolorem qui esse ad ut voluptas rem. Et ut placeat est aut.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(37, 'Mr. Coleman Hudson Jr.', 'Gino', 41586, 8, 1, 15, 8, 1, 'Voluptas nostrum asperiores vitae hic ullam assumenda. Quos deserunt neque quam voluptatem sit voluptatem. Sapiente voluptatibus mollitia eos error temporibus. Ducimus rerum voluptatum optio.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(38, 'Celine Lang', 'Apple', 145912, 3, 4, 22, 8, 0, 'Minima non voluptate laborum accusantium beatae et. Dolore commodi libero pariatur molestiae nesciunt. Eligendi quia molestias quaerat velit ea ratione. Et nulla vel esse minima est nam.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(39, 'Keyon Gibson', 'Gino', 80269, 7, 1, 16, 16, 0, 'Molestiae nisi atque ad quas. Iusto totam repudiandae totam maxime suscipit. Et eos sit omnis minus. In maxime non dolorem et corrupti qui fugiat quibusdam. Sed ipsam eaque neque atque.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(40, 'Trinity Champlin', 'Nokia', 65206, 8, 32, 23, 13, 1, 'Ad consequatur explicabo ea aut dolor. Quia harum non dolorem. Non incidunt voluptas debitis magni facere aperiam. Architecto qui recusandae sequi sed occaecati dolorum et. Sit delectus quo ducimus optio sint eos dolorum.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(41, 'Forest Pfannerstill', 'Nokia', 29742, 2, 16, 23, 8, 0, 'Dolorem possimus aliquam consequatur. Perferendis omnis eius provident quaerat. Modi et corporis et ut debitis dolorum. Deserunt voluptates officiis voluptatem aut alias.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(42, 'Prof. Gilbert Beer', 'Galaxy', 89029, 3, 32, 21, 8, 0, 'Dicta eveniet rem error mollitia quis. Aut repellendus repellat eos. Tempore sit et earum iusto nostrum possimus. Est placeat eos nemo. Architecto cupiditate illo optio enim recusandae similique est facilis.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(43, 'Ocie Kemmer PhD', 'Galaxy', 105920, 5, 4, 17, 16, 1, 'Eum voluptatibus possimus quisquam repellat eos laborum. Recusandae natus ut tenetur provident temporibus dolore vel. Assumenda consectetur quaerat quam harum. Est quam aliquid velit dolor ducimus est minima sed.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(44, 'Floy McGlynn V', 'Itel', 35692, 7, 128, 22, 16, 0, 'Quis ut aut consequatur sint ut est dolore. Enim error laboriosam velit rem porro. Amet eius excepturi exercitationem. Repudiandae repellendus voluptatem dolore quis qui ullam perspiciatis.', '2021-07-20 18:50:53', '2021-07-20 18:50:53'),
(45, 'Grayson Carroll', 'Itel', 114850, 6, 8, 18, 16, 1, 'Consequatur deleniti similique provident cupiditate consequuntur. Voluptates enim culpa placeat et voluptatem officiis quia. Enim autem adipisci veritatis.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(46, 'Ms. Larissa Howe I', 'Lumia', 51913, 8, 8, 15, 16, 0, 'Esse suscipit sequi inventore aliquam. Sapiente et eveniet dolores qui soluta molestiae illum aut. Corporis ad qui molestiae. Praesentium ullam soluta facilis sapiente et magnam. Quam sed nemo omnis porro hic possimus dolorem. Animi quidem quia qui labore alias.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(47, 'Prof. Liam Purdy', 'Galaxy', 115102, 3, 4, 25, 8, 1, 'Tenetur laboriosam similique labore et. Earum illum et et et neque. Vero et ipsam ut debitis laborum accusamus veniam. Culpa delectus eligendi velit dolores earum fugiat et mollitia. At aut impedit et aut nihil velit est doloremque.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(48, 'Dr. Filiberto Bauch Jr.', 'Oppo', 14395, 7, 1, 24, 13, 0, 'Quod quas consequatur qui omnis expedita tempore rem. Ut at ipsa laboriosam amet. Cumque vitae atque omnis voluptatem ducimus sit sint quis. Ipsa placeat quidem fuga nostrum nisi ab delectus. Aspernatur eveniet iste dolore accusantium quia.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(49, 'Loren Kassulke', 'Apple', 86593, 2, 2, 24, 8, 1, 'Voluptas quisquam explicabo distinctio ipsum. Repudiandae non velit deleniti iste aspernatur. Numquam eligendi rerum error quos porro dolorem. Dolorum minima qui perferendis beatae. Maxime perspiciatis odit eos quia sit tempore. Expedita sed aliquid et autem consectetur unde nulla ratione.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(50, 'Prof. Aurore Lemke PhD', 'Lumia', 24819, 4, 32, 30, 8, 1, 'Autem quod necessitatibus ut. Dignissimos labore delectus id tempore asperiores qui. Dolorum velit quia dolorem aut. Corporis enim error et ex voluptatem. Maxime ipsa iure culpa adipisci.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(51, 'Johnnie Schoen', 'Vovo', 78582, 6, 128, 27, 8, 0, 'Aperiam eum quis quibusdam tempore inventore harum numquam. Odit adipisci expedita et enim at nostrum. Veritatis voluptatum reprehenderit nostrum et dolorem numquam dolore. Laudantium eligendi provident est porro velit reiciendis et excepturi.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(52, 'Mia Eichmann', 'Galaxy', 40860, 4, 2, 23, 16, 0, 'Soluta consequatur nesciunt illum aut. Enim sint doloribus laborum sit atque commodi. Deleniti adipisci sunt quo. Distinctio autem adipisci quia quisquam. Non est aut culpa accusantium non sit ipsam.', '2021-07-20 18:50:54', '2021-07-20 18:50:54'),
(53, 'Hettie Cruickshank IV', 'Tecno', 33747, 4, 4, 21, 8, 0, 'At quae rerum maiores in unde vel. Rem in quas cupiditate molestiae et sunt dolore. Libero quaerat quod mollitia quasi ut ad. Labore pariatur explicabo voluptates eligendi qui. Et molestiae atque sint quis sit quas aspernatur maxime.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(54, 'Miss Tiffany Gaylord Sr.', 'Itel', 17910, 8, 64, 23, 13, 0, 'Qui perspiciatis laudantium magnam qui et dolorem inventore. Natus sunt corporis velit. Numquam voluptates voluptatem maiores quo molestias. At sit facere sed odio dolores voluptatem dolores.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(55, 'Fabiola Gaylord', 'Infinix', 131079, 2, 32, 19, 8, 1, 'Aut in est sunt quis eos aliquid ut voluptate. Veritatis et libero accusamus dolores numquam saepe et saepe. Et consectetur velit vero corporis sapiente. Quasi soluta consequatur voluptatem dolorem repellendus. Sit vitae voluptatibus tempora ipsa voluptatibus et voluptatem atque. Et cum totam deserunt distinctio asperiores ex occaecati.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(56, 'Maye McKenzie', 'Itel', 71678, 7, 4, 18, 8, 1, 'Maxime repellat nam voluptatem commodi molestias distinctio corrupti. Quae officiis deleniti qui rerum aspernatur soluta rem. Aut ratione voluptas laborum omnis officia. Illum aspernatur veniam dolor laudantium reiciendis labore.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(57, 'Prof. Wanda Lehner Sr.', 'Nokia', 105689, 2, 1, 15, 16, 1, 'Iste deleniti quis at sed quasi. Molestiae rem iste ad. Quam odit fugiat aut sint magni.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(58, 'Reilly Keebler', 'Lumia', 66544, 7, 64, 28, 16, 1, 'Vero sed qui dolore est id voluptatem asperiores. Nihil repellendus dolor odio impedit suscipit. Ipsum dolores possimus optio praesentium. Consequatur optio ea iste aut aut officia. Aut dolores incidunt et quisquam mollitia. Dolores non beatae ullam quo est voluptatem.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(59, 'Dena Doyle', 'Oppo', 40785, 6, 8, 17, 13, 1, 'Sequi aliquam omnis iusto ducimus enim totam. Quam tempore similique et tenetur in accusamus id. Dolores laboriosam quia assumenda maiores.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(60, 'Mr. Hudson Bahringer PhD', 'Itel', 91885, 3, 8, 28, 13, 0, 'Accusantium id magnam totam harum repellat. Mollitia omnis sequi eos ex voluptas consequatur laborum. Quidem repellat ut et. Odio aut hic sequi eius. Dolore labore veniam sit voluptas et eveniet quis. Dolor quo corporis ab eum et aut necessitatibus.', '2021-07-20 18:50:55', '2021-07-20 18:50:55'),
(61, 'Dr. Clinton Smith DDS', 'Infinix', 98776, 3, 2, 25, 8, 0, 'Placeat totam reprehenderit autem et. Eius tempora fugiat saepe. Nostrum harum quae et fuga sed. Rerum atque et corporis impedit itaque dolore. Nemo alias sunt dolorum non autem. Odit necessitatibus maxime est sed delectus incidunt dignissimos.', '2021-07-20 18:50:56', '2021-07-20 18:50:56'),
(62, 'Marshall Shields', 'Gino', 93147, 6, 32, 30, 16, 0, 'Tempore porro officiis aut repellendus facilis laboriosam harum. Deserunt eaque tempora unde ut facere. Aperiam culpa et ex quis. Dolor sunt praesentium ea magni eligendi ipsum et. Nisi ipsum beatae qui velit enim omnis aperiam. Impedit porro quisquam error sit natus eum nulla.', '2021-07-20 18:50:56', '2021-07-20 18:50:56'),
(63, 'Shaina Harber', 'samesung', 47528, 5, 32, 26, 8, 0, 'Et cupiditate exercitationem aut. Et et deleniti nihil est totam vero aut. Itaque nihil tempore doloribus laboriosam. Praesentium et accusamus ad repellat minima. Iste expedita consequatur velit non esse.', '2021-07-20 18:50:57', '2021-07-20 18:50:57'),
(64, 'Kimberly Gorczany', 'Vovo', 90382, 7, 1, 25, 8, 0, 'Quae veritatis provident doloribus optio. Magnam est voluptatem dolores in sed provident. Aut fugit nulla voluptatem rerum blanditiis consequatur. Hic magni est voluptas et harum minima ut. Et voluptatibus blanditiis excepturi quibusdam nihil dolorem doloribus.', '2021-07-20 18:50:57', '2021-07-20 18:50:57'),
(65, 'Miss Syble Pouros', 'Gino', 117083, 4, 32, 26, 13, 1, 'Velit pariatur occaecati vero enim. Expedita eligendi et accusamus sunt error. Ut nemo cum cumque minima est.', '2021-07-20 18:50:57', '2021-07-20 18:50:57'),
(66, 'Lois Hand', 'Nokia', 18164, 8, 4, 25, 8, 1, 'Quia culpa quis sit. Modi laborum occaecati omnis ut beatae est blanditiis. Ut doloribus quas vel magnam ratione et rem rerum. At fuga error iusto. Unde dicta saepe et odio corporis tenetur.', '2021-07-20 18:50:57', '2021-07-20 18:50:57'),
(67, 'Maximilian Parisian', 'Gino', 105791, 8, 128, 30, 16, 1, 'Cumque omnis dolor velit quo. Id qui deleniti atque non. Eos culpa dicta et facere.', '2021-07-20 18:50:58', '2021-07-20 18:50:58'),
(68, 'Margarette Brown III', 'Apple', 65311, 7, 128, 24, 16, 0, 'Dolorem magnam tempora praesentium rerum inventore nostrum. Aut eos aperiam illum. Nihil ducimus quidem neque aut velit quis nostrum molestias. Consequuntur in et error. Aut ratione incidunt quaerat vel laboriosam quasi itaque. Odit ut quo ut.', '2021-07-20 18:50:58', '2021-07-20 18:50:58'),
(69, 'Mr. Riley Leannon Jr.', 'Infinix', 22921, 4, 64, 22, 8, 0, 'Neque vel aut pariatur est perferendis sit. Et itaque aut omnis ut delectus quae. Sequi perspiciatis libero porro a ipsam temporibus quisquam. Dolores placeat et est magni sit dolore facere. Qui provident architecto occaecati et.', '2021-07-20 18:50:58', '2021-07-20 18:50:58'),
(70, 'Alvah Volkman', 'Infinix', 146285, 3, 32, 19, 16, 0, 'Officia veniam ullam illo recusandae laudantium eveniet voluptatem cumque. Ut ipsam error aut iusto rem aliquid tempore a. Aut pariatur velit sapiente a fugiat. Et provident officia ratione ea nihil minima. Tempora vitae voluptate labore autem pariatur sit dicta.', '2021-07-20 18:50:58', '2021-07-20 18:50:58'),
(71, 'Jasper Pagac', 'Oppo', 125644, 4, 32, 27, 8, 1, 'Vel dolorum tempora voluptatum. Ut tempore culpa voluptatem debitis aut tempore hic. Vel ullam et nihil. Quia commodi sint illo fugiat omnis. Sapiente ut natus similique sint quos.', '2021-07-20 18:50:59', '2021-07-20 18:50:59'),
(72, 'Imani Krajcik V', 'Tecno', 54104, 3, 8, 16, 8, 0, 'Est qui est est eveniet repellat beatae. Sit cum et pariatur consequatur ea iure. Tenetur doloribus velit culpa ratione corporis vel. Iure dicta soluta ab et. Non quas et eligendi ut qui.', '2021-07-20 18:50:59', '2021-07-20 18:50:59'),
(73, 'Alex Stanton', 'Tecno', 146699, 6, 8, 17, 13, 0, 'Neque et sint ea earum ut occaecati commodi. Neque quaerat aut adipisci a iure corporis vero cumque. Eius aut ducimus unde eligendi omnis. Laudantium blanditiis sed sapiente.', '2021-07-20 18:50:59', '2021-07-20 18:50:59'),
(74, 'Owen Tillman', 'Galaxy', 124311, 3, 2, 17, 8, 1, 'Laborum dolor ab aut quo. Suscipit rerum doloremque eligendi accusamus debitis. Molestias necessitatibus accusantium dolorem repellat. Nisi modi corrupti et ut amet.', '2021-07-20 18:50:59', '2021-07-20 18:50:59'),
(75, 'Sammie Leffler', 'Lumia', 141442, 8, 128, 24, 16, 1, 'Consequatur magnam minus vel nemo vero. Quasi accusamus tenetur enim recusandae quisquam. Architecto autem eos minima sunt. Neque ab autem soluta sit sed autem rerum. Molestias maiores rem aut earum qui voluptas debitis.', '2021-07-20 18:50:59', '2021-07-20 18:50:59'),
(76, 'Sonny Pollich', 'Apple', 49601, 5, 64, 20, 16, 0, 'Minus distinctio natus occaecati facilis. Iste libero magnam deleniti incidunt eum quasi. Qui temporibus qui unde sunt reprehenderit odio. Molestiae dolor rem tempora error.', '2021-07-20 18:51:00', '2021-07-20 18:51:00'),
(77, 'Miss Stacy Breitenberg', 'samesung', 57557, 4, 16, 28, 13, 0, 'Molestias qui et aliquid architecto excepturi. Reiciendis assumenda ut consequatur tempora. Alias et vitae aut eius impedit. Itaque omnis voluptas nisi. Doloremque totam distinctio similique debitis. Ullam minus est odit perspiciatis et animi sint.', '2021-07-20 18:51:00', '2021-07-20 18:51:00'),
(78, 'Hailie Cremin', 'Vovo', 125239, 4, 64, 15, 8, 1, 'Enim odit ipsam adipisci sint quis consequatur. Necessitatibus doloremque at aperiam voluptatum. Reiciendis nisi aspernatur esse qui asperiores perferendis. Doloremque reiciendis tempora occaecati eum tempore unde. Quibusdam et et vitae voluptatum.', '2021-07-20 18:51:00', '2021-07-20 18:51:00'),
(79, 'Maia Bayer', 'Itel', 51786, 3, 32, 30, 16, 0, 'Quo aut repellat sit facilis. Mollitia ea perferendis dolore cum animi sit aut. Excepturi qui dolore dolore impedit consequatur non rerum. Necessitatibus sit et deleniti dicta ullam inventore sit. Sint rem sunt aut quisquam omnis odit.', '2021-07-20 18:51:01', '2021-07-20 18:51:01'),
(80, 'Angelita Steuber', 'Oppo', 49085, 3, 16, 16, 16, 1, 'Quia blanditiis quia voluptas similique ut. Eius nihil sit ullam enim ut soluta et. Laborum et natus velit iusto. Non dicta sit consequuntur vel quaerat.', '2021-07-20 18:51:01', '2021-07-20 18:51:01'),
(81, 'Anastasia Koss', 'Lumia', 82208, 4, 1, 25, 13, 1, 'Quaerat tenetur sapiente dolore libero cupiditate dolores dolores voluptatibus. Et voluptates nobis ea aut accusamus. Eaque odio qui maiores sint provident. Id enim ea quia exercitationem est minus ullam aut. Numquam dolor eos temporibus occaecati dolor corrupti autem.', '2021-07-20 18:51:01', '2021-07-20 18:51:01'),
(82, 'Fletcher Prohaska', 'Tecno', 103081, 2, 2, 22, 8, 1, 'Nihil est quasi omnis dignissimos. Qui et sequi reiciendis. Praesentium dolor voluptas natus dolor rerum sint.', '2021-07-20 18:51:01', '2021-07-20 18:51:01'),
(83, 'Rosalia Tromp II', 'Lumia', 117914, 5, 32, 27, 8, 1, 'Dolorum quo unde dolor illum porro. Aut natus vitae omnis aliquid sint magni. Impedit minus tenetur voluptatem. Tempora voluptas nihil pariatur vel. Assumenda blanditiis assumenda quam voluptatem soluta. Doloribus unde voluptates laborum nulla laudantium.', '2021-07-20 18:51:01', '2021-07-20 18:51:01'),
(84, 'Jerel Considine', 'Apple', 49358, 6, 8, 26, 16, 0, 'Est temporibus repellat voluptatem voluptatem porro deleniti. Fugiat et quia ex et laudantium molestiae. Voluptatem qui sit dolores labore doloribus et architecto. Consequatur dolor ut sequi qui sunt est.', '2021-07-20 18:51:02', '2021-07-20 18:51:02'),
(85, 'Dr. Zoe Monahan', 'Itel', 91762, 7, 1, 22, 16, 0, 'Sapiente asperiores dolores explicabo eum repudiandae est. Quis velit amet ut inventore ut omnis ab. Voluptas cum ut corrupti a rem quibusdam aspernatur.', '2021-07-20 18:51:02', '2021-07-20 18:51:02'),
(86, 'Riley Zieme', 'Vovo', 60639, 4, 1, 21, 16, 0, 'Illum magnam a eum atque quibusdam nobis ipsum. Quam et error voluptatem. At cupiditate laboriosam voluptas aliquid iusto consequatur.', '2021-07-20 18:51:02', '2021-07-20 18:51:02'),
(87, 'Cory Donnelly', 'Tecno', 126059, 5, 16, 20, 8, 0, 'Vero sint voluptates repellendus blanditiis voluptatem accusantium voluptatem. Non doloribus non maxime nihil nihil. Est harum ullam dicta dolorum et. Dolorum laborum deserunt numquam veniam odio.', '2021-07-20 18:51:02', '2021-07-20 18:51:02'),
(88, 'Mrs. Roxane Roob', 'Lumia', 19680, 2, 32, 24, 16, 0, 'Repudiandae et ab expedita eligendi. Voluptatem id nostrum quibusdam laboriosam officiis voluptatum. Ut nulla molestiae ut expedita et.', '2021-07-20 18:51:02', '2021-07-20 18:51:02'),
(89, 'Reynold Champlin', 'Galaxy', 121253, 5, 128, 15, 16, 0, 'Eaque distinctio veritatis aliquam et aperiam. Autem reprehenderit aut enim quos sed aut doloribus. Officiis tempore aliquam eligendi. Ut totam totam repudiandae at quia.', '2021-07-20 18:51:03', '2021-07-20 18:51:03'),
(90, 'Gwen Heaney', 'Infinix', 53907, 5, 32, 18, 13, 0, 'Culpa dicta excepturi molestias ipsa. Sapiente ea ut explicabo et necessitatibus omnis ducimus quia. Minus quasi qui sapiente ut voluptatem dolor. A necessitatibus ad est asperiores. Ipsum est doloribus iure at.', '2021-07-20 18:51:03', '2021-07-20 18:51:03'),
(91, 'Mr. Kadin Bednar', 'Vovo', 132847, 2, 128, 18, 16, 1, 'Temporibus beatae nostrum voluptatem soluta. Consequatur et excepturi vero cumque ullam. Quia atque accusantium perferendis odio rerum. Doloremque voluptas nulla quisquam nesciunt quia saepe nulla similique. Alias in sit quaerat labore non.', '2021-07-20 18:51:04', '2021-07-20 18:51:04'),
(92, 'Dr. William Grimes', 'Apple', 32600, 4, 16, 15, 8, 0, 'Ut repellendus alias sunt praesentium nihil. Ab saepe tenetur enim totam. Alias assumenda rerum minima necessitatibus non aut doloribus ducimus. Quia nemo fuga quas quia et. Sunt voluptatem a quod ipsa qui consequuntur.', '2021-07-20 18:51:04', '2021-07-20 18:51:04'),
(93, 'Prof. Wilton Hagenes', 'samesung', 69551, 4, 16, 15, 13, 0, 'Ea et dolores delectus voluptas assumenda dicta. Enim eaque nam aut eaque odio repudiandae cupiditate. Corrupti quia hic est nisi praesentium eveniet vitae. Omnis ut ea voluptatem. Consequuntur officiis aut itaque aperiam sit dolor qui.', '2021-07-20 18:51:04', '2021-07-20 18:51:04'),
(94, 'Prof. Vern Tremblay IV', 'Infinix', 80217, 8, 2, 18, 13, 0, 'Nisi veniam reprehenderit quisquam sed. Quod non adipisci quo molestiae. Eum animi aliquam ea deserunt quis quo libero. Nobis consequatur est ut quo esse. Ut maiores atque molestias delectus exercitationem.', '2021-07-20 18:51:04', '2021-07-20 18:51:04'),
(95, 'Joan McGlynn MD', 'samesung', 82734, 4, 16, 30, 8, 0, 'Eos ipsam quia quae excepturi eligendi. A dolor enim dolor voluptate. Ea facere consequatur rem nulla saepe.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(96, 'Bryon Corwin', 'Infinix', 16507, 2, 128, 17, 16, 0, 'Placeat sed sit asperiores nesciunt. Rerum facilis repellendus ut. Necessitatibus cumque tempora ut distinctio autem qui impedit. Necessitatibus est et libero et doloribus.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(97, 'Mr. Kareem Ziemann', 'Gino', 73965, 4, 1, 23, 13, 1, 'Ut dolores voluptas cumque non. Maxime sint tempore velit laboriosam voluptatibus nobis nihil. Non totam sunt sit ut. Voluptas minus voluptatem ut occaecati quod. Eaque omnis cum est accusantium.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(98, 'Miss Sydnee Hackett', 'Apple', 94829, 7, 8, 29, 16, 1, 'Optio sint tenetur molestiae veritatis dolor. Voluptas exercitationem voluptatem id ut accusantium. Consequatur velit excepturi illo deserunt fugit temporibus. Officia fugit labore enim totam.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(99, 'Myrna Schultz', 'Gino', 132196, 7, 64, 26, 8, 1, 'Vel alias omnis quia nesciunt aut. Cupiditate et consequatur ratione minima molestias quam nostrum dolorem. Placeat est animi dolores aliquam odit iste et.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(100, 'Clotilde Walker', 'Galaxy', 89179, 8, 32, 24, 8, 0, 'Cupiditate velit dolores ut voluptatem ex doloribus quisquam. Laudantium veritatis et consequatur dolores possimus in. Qui quis alias minus totam similique est voluptatem. Et quia animi consequuntur maxime. Hic quos et nisi iure.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(101, 'Dr. Zelma Ward', 'Infinix', 80738, 2, 2, 28, 13, 1, 'Aliquam aliquid exercitationem sit. Voluptatem possimus sunt optio veniam ad iusto. Provident cupiditate omnis itaque est commodi. Natus harum aut cupiditate ipsa. Enim et libero vel tempora dicta ut.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(102, 'Dr. Tierra O\'Hara II', 'samesung', 70462, 7, 2, 21, 8, 0, 'Dolorem dignissimos accusamus aut nemo animi. Molestiae explicabo est sequi facilis qui adipisci consequatur. Ad quia distinctio occaecati quis in. Voluptatem quod est cum. Incidunt molestiae magnam odio architecto ut sint qui rerum. Ad et enim consectetur sit.', '2021-07-20 18:51:05', '2021-07-20 18:51:05'),
(103, 'Dr. Christa Huel II', 'Vovo', 136114, 5, 16, 15, 16, 0, 'Dignissimos et et vitae cum placeat inventore. Qui ut aut omnis. Corrupti voluptates facilis qui iure.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(104, 'Aleen Auer', 'Apple', 116898, 4, 128, 29, 8, 1, 'Deleniti quo enim mollitia perferendis illum optio. Tenetur officia reiciendis ea non. Sapiente iure rerum sapiente deleniti ipsam ipsam. Blanditiis maiores voluptatem dolor voluptatibus nihil. Quibusdam nobis sit quae voluptas expedita est numquam voluptate.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(105, 'Mrs. Shania Mante', 'Oppo', 19314, 6, 2, 24, 16, 1, 'Veritatis quo qui esse veniam. Et nihil recusandae et voluptate. Et odit quo quae autem. Tempora inventore qui nihil aut eveniet minus quae nulla.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(106, 'Dr. Markus Breitenberg', 'Infinix', 141558, 2, 64, 15, 8, 1, 'Molestiae autem repellat id est tenetur. Tempora placeat animi repudiandae maiores. Nulla nam perferendis molestiae aut ut et quo. Repudiandae eos iure nesciunt maxime et delectus optio. Laborum cum quo ut ea.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(107, 'Prof. Norval Mohr', 'Lumia', 119591, 7, 2, 23, 13, 1, 'Cum modi sint doloribus. Eos ipsam cupiditate quia tempore aut rerum repudiandae. Iste occaecati et qui aperiam voluptates. Ad odio omnis quas corporis. Rerum perferendis similique totam asperiores in.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(108, 'Forrest Muller', 'Tecno', 106581, 5, 128, 27, 13, 0, 'Eos consequatur animi quasi. Nam nostrum voluptate culpa cumque corporis veritatis. Laboriosam magni eos saepe nisi maiores voluptas ut. Qui vero laboriosam et. Non dolor laboriosam porro a velit.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(109, 'Jalon Herman', 'Galaxy', 58897, 3, 8, 28, 16, 0, 'Qui maiores quidem saepe aut nam magnam reprehenderit. Et impedit consequatur sunt. Molestiae facere vel officia.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(110, 'Ms. Tess Kris Sr.', 'Lumia', 33390, 4, 4, 19, 8, 1, 'Soluta commodi tempore unde iusto quia maxime. Consequatur consectetur repudiandae rerum fugiat. Nihil fugit sint nihil et voluptatibus animi voluptas. Soluta iusto culpa quis earum nesciunt quo voluptatem. Aperiam autem omnis nihil officiis sunt. Unde enim sed atque voluptas distinctio dolorem.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(111, 'Beryl Lynch', 'Lumia', 80548, 6, 4, 24, 8, 0, 'Quia omnis et accusantium quaerat. Omnis voluptatem vel a minima et ut. Cum sapiente et nihil voluptatibus eos corporis. Illum doloribus est quas sunt maiores voluptatem.', '2021-07-20 18:51:06', '2021-07-20 18:51:06'),
(112, 'Prof. Emma Thompson DVM', 'Tecno', 119733, 8, 32, 20, 13, 1, 'Dicta molestias et esse similique maxime. Voluptas amet omnis ut quod. Minus modi assumenda nihil sunt. Tenetur fugiat cumque minus. Iusto qui accusantium ut nisi. Minus ducimus ut esse rerum illum.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(113, 'Mr. Robb Metz PhD', 'Lumia', 45093, 8, 4, 20, 8, 0, 'Possimus cum qui cum magni. Autem asperiores id praesentium. Aperiam ipsum dolor officia reprehenderit at. Dolores at voluptatem illo alias dicta. Reprehenderit vitae porro tenetur ex est eum.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(114, 'Brenden Kemmer', 'Itel', 30180, 4, 64, 24, 16, 0, 'Dolorem et architecto molestiae aut autem laboriosam. Vitae corporis dolores soluta qui est maiores. Qui ex rerum eum nihil aliquam. Doloribus repellat recusandae ut ratione.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(115, 'Alia Schoen', 'Oppo', 111970, 8, 4, 25, 16, 0, 'Quia qui rerum provident rem voluptas et. Eum asperiores iusto quasi eveniet animi. Ducimus iusto sunt est nihil deleniti non cum. Eaque assumenda quos sapiente occaecati.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(116, 'Nona Fritsch', 'Infinix', 109562, 8, 32, 18, 13, 1, 'Et et voluptates et explicabo ipsa vel. Nesciunt voluptatem quis deleniti qui dolores doloremque et. Quibusdam et deleniti voluptas in tenetur sed. Molestiae voluptas ratione doloribus est possimus rem. Quas voluptatum inventore minus qui.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(117, 'Jimmie Hintz IV', 'Vovo', 62346, 5, 8, 30, 8, 0, 'Rem consequatur et unde placeat ipsa reprehenderit eum. Tenetur non et saepe accusantium hic. Dolores voluptatibus sapiente ut in natus quia velit sapiente. Nesciunt iusto numquam recusandae eius aut doloremque eum. Dolorem voluptatem doloremque minus.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(118, 'Willis Kertzmann Jr.', 'samesung', 136987, 3, 1, 30, 16, 1, 'Corporis sit nostrum explicabo laborum at officia qui. Velit soluta porro ut incidunt sint ipsum aspernatur. Dolores officia temporibus minima. Est expedita earum aut quo quidem. Cumque odio laudantium quod dignissimos illo dicta ullam.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(119, 'Deonte Prosacco', 'Gino', 40211, 4, 8, 27, 8, 1, 'Reprehenderit quisquam ea earum cupiditate. Assumenda omnis nemo reprehenderit aut repudiandae voluptatem suscipit. Repellat ipsam qui aut et consectetur non.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(120, 'Dr. Ethyl Kihn', 'Itel', 49757, 7, 2, 21, 8, 1, 'Aut hic exercitationem ipsum ea et. Similique numquam qui eum quaerat soluta voluptas delectus. Adipisci assumenda molestias quo deserunt porro aspernatur deleniti. Quod laboriosam fugiat architecto consequuntur. Doloremque expedita quod magnam laboriosam beatae reiciendis exercitationem molestiae.', '2021-07-20 18:51:07', '2021-07-20 18:51:07'),
(121, 'Donavon Orn', 'Oppo', 64878, 6, 16, 30, 13, 1, 'Necessitatibus accusantium excepturi molestiae. Tenetur omnis vero fugit sed at ipsum corporis. Est et ea magnam totam in pariatur delectus.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(122, 'Else Stokes', 'Nokia', 30172, 6, 64, 25, 16, 1, 'Architecto ipsam facere animi molestias. Occaecati qui unde voluptas iste ab. Id itaque est recusandae. Sunt sapiente rem molestiae ex perferendis. Tempora deserunt vel sunt.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(123, 'Dominique Mraz', 'samesung', 79538, 5, 1, 19, 13, 0, 'Ex ducimus quisquam quia vero quod aperiam saepe. Reiciendis dolor aut nisi adipisci rerum in veritatis. Laudantium et nulla ullam voluptatem. Animi voluptas occaecati consectetur non.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(124, 'Nick DuBuque III', 'Oppo', 38777, 4, 1, 25, 13, 1, 'Occaecati aut quasi molestiae accusantium id ut maxime. Molestias ut cumque repellat vel est minima quia accusamus. Minus ad consequatur quo dicta qui. Et provident ea deserunt voluptas ut.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(125, 'Neha Nader', 'samesung', 103703, 4, 16, 16, 13, 1, 'Maiores illo placeat deleniti. Natus sunt autem soluta. Voluptas est provident ipsum et voluptatum est. Optio id explicabo iusto quis. Accusantium deserunt ut quod provident velit. Dignissimos ut fugiat sit.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(126, 'Paige Frami', 'Itel', 124524, 3, 1, 17, 13, 0, 'Sequi maxime est ex sed dignissimos. Laborum voluptatibus repudiandae modi occaecati quos. Tenetur et facere ex doloribus eum. Optio totam aut ipsum ratione ullam et nam.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(127, 'Royal Altenwerth', 'Infinix', 110016, 4, 1, 25, 13, 0, 'Rem nobis sed fuga recusandae. Ratione molestiae illum dignissimos eum praesentium voluptate eveniet nostrum. Ipsa in quae et delectus non. Sit perferendis omnis optio.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(128, 'Dallas Langworth', 'Infinix', 89574, 4, 4, 16, 13, 0, 'Est exercitationem inventore et sed in laudantium illo. Et maiores voluptate tempora aut deserunt omnis vel deserunt. Autem est cumque totam velit exercitationem velit impedit beatae. Atque consequatur necessitatibus omnis officiis ullam minus similique. Ratione error dicta ipsa amet eos earum minus.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(129, 'Jaren Hayes', 'Galaxy', 57133, 7, 1, 16, 13, 0, 'Et numquam ut recusandae ratione provident. Omnis reprehenderit excepturi mollitia ab voluptate quis eveniet. Molestiae voluptas velit tenetur odit architecto. Ratione quia aperiam optio amet impedit qui. Molestiae modi qui minus pariatur enim explicabo aperiam.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(130, 'Salvador Beer', 'Itel', 83455, 4, 32, 27, 8, 1, 'Est aut ut autem aliquid odio alias. Quas adipisci necessitatibus consequatur aut odit non et. Sed et repellendus quod natus.', '2021-07-20 18:51:08', '2021-07-20 18:51:08'),
(131, 'Forrest Schowalter', 'Itel', 79305, 7, 128, 29, 8, 0, 'Et culpa sed perferendis commodi. Earum soluta soluta reprehenderit sint unde asperiores enim. Nemo sint voluptatum quia qui consequatur. Odio facilis optio animi porro nihil accusamus.', '2021-07-20 18:51:09', '2021-07-20 18:51:09'),
(132, 'Duncan Rosenbaum', 'Nokia', 104949, 2, 64, 17, 8, 0, 'Voluptatem laudantium iure perferendis impedit doloremque ut distinctio voluptates. Perferendis quas sint doloremque. Sapiente magnam quasi laborum similique. Id et omnis alias id cupiditate et blanditiis. Tempora animi est odit neque modi occaecati.', '2021-07-20 18:51:10', '2021-07-20 18:51:10'),
(133, 'Ethelyn Rippin', 'Infinix', 120111, 3, 32, 16, 8, 0, 'Quidem placeat voluptatum omnis ut harum facilis perspiciatis. Non rerum doloremque minima voluptatibus. Modi excepturi ad nisi explicabo temporibus omnis.', '2021-07-20 18:51:10', '2021-07-20 18:51:10'),
(134, 'Mr. Enos Reichert', 'Lumia', 86875, 7, 8, 27, 13, 0, 'Et voluptas placeat accusamus doloremque itaque fuga saepe deserunt. Sed voluptates numquam ex. Soluta qui quae explicabo et fugit vel porro.', '2021-07-20 18:51:10', '2021-07-20 18:51:10'),
(135, 'Blake Hintz', 'Itel', 133294, 6, 8, 30, 8, 0, 'Iste quibusdam sequi a. Excepturi quas aut commodi earum eos quas quod. Quos ipsum ipsam odio occaecati est molestiae.', '2021-07-20 18:51:10', '2021-07-20 18:51:10'),
(136, 'Ms. Josianne Schiller II', 'Infinix', 104525, 6, 4, 26, 13, 1, 'Et aperiam quia enim cumque fuga. Et incidunt rem aut officia quis expedita. Ut ex autem ut necessitatibus dolores omnis quae.', '2021-07-20 18:51:11', '2021-07-20 18:51:11'),
(137, 'Dr. Ross White Sr.', 'Gino', 115090, 3, 1, 22, 13, 1, 'Quae officiis qui voluptatum eum voluptatem ea. Impedit et natus rerum ipsam voluptatem. Molestiae et pariatur quos ab. Perferendis officiis ex qui architecto voluptate distinctio eligendi exercitationem. Distinctio recusandae consequatur numquam impedit.', '2021-07-20 18:51:11', '2021-07-20 18:51:11'),
(138, 'Laurence Grant', 'Lumia', 88244, 3, 2, 28, 16, 1, 'Voluptas quia minus assumenda laboriosam harum dolore quasi. Itaque et culpa odio officia. Non facilis et provident porro quia sit et. Ipsa qui officia debitis dolor dolore quia.', '2021-07-20 18:51:11', '2021-07-20 18:51:11'),
(139, 'Grover Stehr DDS', 'Vovo', 88124, 3, 32, 23, 16, 1, 'Libero suscipit non dolorem. Nulla sint repellat et autem suscipit. Corporis et aut alias aut perspiciatis.', '2021-07-20 18:51:11', '2021-07-20 18:51:11'),
(140, 'Claudine Schumm', 'samesung', 54077, 7, 8, 21, 16, 1, 'Quia minus voluptatum iusto aliquam. Alias consequuntur aut veniam natus est vitae. Vitae possimus fugit perspiciatis. Atque quam ut dolores vitae et. Et est alias necessitatibus optio. Illum earum unde labore expedita aut et tempore.', '2021-07-20 18:51:11', '2021-07-20 18:51:11'),
(141, 'Mrs. Mckayla Marvin Jr.', 'Vovo', 35451, 8, 1, 24, 13, 0, 'Hic repudiandae perferendis laboriosam asperiores rem ut a. Eos rem quo dolor omnis ea quibusdam officia. Sequi et sit adipisci. Qui temporibus et minus distinctio odit.', '2021-07-20 18:51:12', '2021-07-20 18:51:12'),
(142, 'Nikolas Kub', 'Vovo', 114736, 7, 8, 28, 8, 0, 'Quod molestiae quo tempore perspiciatis et eum ut dolore. Aperiam qui necessitatibus culpa in suscipit. Cum saepe sit eveniet. Dolores velit numquam consequuntur ea. Et fugit aspernatur fugiat est. Est atque nam enim dolore distinctio commodi.', '2021-07-20 18:51:12', '2021-07-20 18:51:12'),
(143, 'Miss Leanna Maggio DDS', 'samesung', 41138, 3, 2, 20, 8, 0, 'Quia at culpa ipsum eveniet sit perspiciatis culpa. Facilis illum tenetur quisquam. Hic quisquam quas voluptatibus. Est eaque minus et iure.', '2021-07-20 18:51:12', '2021-07-20 18:51:12'),
(144, 'Adeline Bartell', 'Vovo', 42738, 2, 4, 18, 13, 1, 'Ad et inventore fugit dolores ea et beatae. Dolor nobis ab voluptas velit. Sit qui unde quia illo adipisci sunt sit voluptate. Voluptatem suscipit earum assumenda velit. Fuga placeat voluptatum occaecati non aspernatur dolores. Nostrum cupiditate occaecati eveniet libero.', '2021-07-20 18:51:12', '2021-07-20 18:51:12'),
(145, 'Destini Treutel I', 'Nokia', 32574, 7, 4, 24, 8, 1, 'Velit eaque dolore laboriosam corporis expedita velit facilis incidunt. Dignissimos consequatur autem ipsam dolor praesentium magni perferendis. Et aut commodi vel maiores. Sunt est excepturi similique corrupti accusantium. Excepturi cumque et quis.', '2021-07-20 18:51:12', '2021-07-20 18:51:12'),
(146, 'Aurelie Kozey', 'Gino', 77202, 7, 128, 17, 16, 1, 'Aliquam accusamus minus dolor natus laudantium ad. Suscipit necessitatibus perspiciatis odit et voluptate non. Ex natus soluta voluptas rerum. Dolor eos delectus voluptatem suscipit alias autem non. Laboriosam asperiores rerum voluptatem nemo tempore ut.', '2021-07-20 18:51:12', '2021-07-20 18:51:12'),
(147, 'Lewis Funk', 'Tecno', 99105, 3, 1, 22, 13, 0, 'Voluptatem adipisci corrupti magni. Sequi debitis rem ad officia vel. Voluptatibus nesciunt asperiores et eligendi officia enim et fuga.', '2021-07-20 18:51:13', '2021-07-20 18:51:13'),
(148, 'Kayla Stracke', 'samesung', 104440, 6, 1, 28, 8, 0, 'Illo quo voluptatibus facere. Et illo animi sunt nemo. Dolor dignissimos ut amet velit occaecati corrupti aut earum. Et eveniet dolorem quo voluptatum.', '2021-07-20 18:51:13', '2021-07-20 18:51:13'),
(149, 'Mrs. Theresa McLaughlin DVM', 'Tecno', 61797, 2, 128, 23, 8, 0, 'Et eius odit minus iste explicabo voluptates. Enim officiis delectus sint mollitia ratione et voluptas minus. Voluptatibus dolores hic impedit quam aperiam nihil possimus. Possimus quas maiores soluta dolorem et eos nobis quis.', '2021-07-20 18:51:13', '2021-07-20 18:51:13'),
(150, 'Dr. Scotty Pfeffer', 'Vovo', 130703, 5, 32, 19, 13, 1, 'Molestiae voluptatem repellendus modi excepturi voluptate et. Fugit magni incidunt explicabo delectus consequatur nihil. Debitis doloribus voluptas molestiae. Reprehenderit voluptatem mollitia hic mollitia qui architecto. Esse ut blanditiis officia et. Sequi iusto odio vitae accusantium.', '2021-07-20 18:51:13', '2021-07-20 18:51:13');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
