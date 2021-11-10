-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Nov-2021 às 03:24
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `play`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-27 11:29:39', '2021-10-27 14:29:39', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/play', 'yes'),
(2, 'home', 'http://localhost/play', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marcelobfariasjr@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:122:{s:18:\"index.php/video/?$\";s:25:\"index.php?post_type=video\";s:48:\"index.php/video/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:43:\"index.php/video/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:35:\"index.php/video/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=video&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"index.php/video/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"index.php/video/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"index.php/video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"index.php/video/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"index.php/video/([^/]+)/embed/?$\";s:38:\"index.php?video=$matches[1]&embed=true\";s:36:\"index.php/video/([^/]+)/trackback/?$\";s:32:\"index.php?video=$matches[1]&tb=1\";s:56:\"index.php/video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:51:\"index.php/video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:44:\"index.php/video/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&paged=$matches[2]\";s:51:\"index.php/video/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/video/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?video=$matches[1]&page=$matches[2]\";s:32:\"index.php/video/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"index.php/video/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"index.php/video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/video/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"index.php/genero/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:52:\"index.php/genero/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:33:\"index.php/genero/([^/]+)/embed/?$\";s:39:\"index.php?genero=$matches[1]&embed=true\";s:45:\"index.php/genero/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?genero=$matches[1]&paged=$matches[2]\";s:27:\"index.php/genero/([^/]+)/?$\";s:28:\"index.php?genero=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'play', 'yes'),
(41, 'stylesheet', 'play', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '21', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1650896945', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1636316996;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1636338594;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636338597;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636338598;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636381787;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636382125;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636393522;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636640988;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635346020;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(134, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1636316258;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(138, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636316266;s:7:\"checked\";a:4:{s:4:\"play\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'Play', 'yes'),
(155, 'theme_mods_play', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:23;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635563835;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(168, 'recovery_mode_email_last_sent', '1635525063', 'yes'),
(174, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'site_logo', '23', 'yes'),
(190, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":1}', 'yes'),
(211, 'category_children', 'a:0:{}', 'yes'),
(217, 'genero_children', 'a:0:{}', 'yes'),
(231, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635563840;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(266, '_site_transient_timeout_theme_roots', '1636318065', 'no'),
(267, '_site_transient_theme_roots', 'a:4:{s:4:\"play\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(268, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636316267;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(269, '_site_transient_timeout_php_check_26328e95a1a09d326a615e4b43668741', '1636921071', 'no'),
(270, '_site_transient_php_check_26328e95a1a09d326a615e4b43668741', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1635352997'),
(5, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1635356719'),
(8, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(9, 7, '_edit_lock', '1635357545:1'),
(10, 9, '_edit_lock', '1635356665:1'),
(11, 11, '_edit_lock', '1635356686:1'),
(12, 13, '_menu_item_type', 'custom'),
(13, 13, '_menu_item_menu_item_parent', '0'),
(14, 13, '_menu_item_object_id', '13'),
(15, 13, '_menu_item_object', 'custom'),
(16, 13, '_menu_item_target', ''),
(17, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 13, '_menu_item_xfn', ''),
(19, 13, '_menu_item_url', 'http://localhost/play/'),
(20, 13, '_menu_item_orphaned', '1635356995'),
(21, 14, '_menu_item_type', 'post_type'),
(22, 14, '_menu_item_menu_item_parent', '0'),
(23, 14, '_menu_item_object_id', '11'),
(24, 14, '_menu_item_object', 'page'),
(25, 14, '_menu_item_target', ''),
(26, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 14, '_menu_item_xfn', ''),
(28, 14, '_menu_item_url', ''),
(29, 14, '_menu_item_orphaned', '1635356995'),
(30, 15, '_menu_item_type', 'post_type'),
(31, 15, '_menu_item_menu_item_parent', '0'),
(32, 15, '_menu_item_object_id', '7'),
(33, 15, '_menu_item_object', 'page'),
(34, 15, '_menu_item_target', ''),
(35, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 15, '_menu_item_xfn', ''),
(37, 15, '_menu_item_url', ''),
(38, 15, '_menu_item_orphaned', '1635356996'),
(39, 16, '_menu_item_type', 'post_type'),
(40, 16, '_menu_item_menu_item_parent', '0'),
(41, 16, '_menu_item_object_id', '9'),
(42, 16, '_menu_item_object', 'page'),
(43, 16, '_menu_item_target', ''),
(44, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 16, '_menu_item_xfn', ''),
(46, 16, '_menu_item_url', ''),
(47, 16, '_menu_item_orphaned', '1635356997'),
(48, 17, '_menu_item_type', 'custom'),
(49, 17, '_menu_item_menu_item_parent', '0'),
(50, 17, '_menu_item_object_id', '17'),
(51, 17, '_menu_item_object', 'custom'),
(52, 17, '_menu_item_target', ''),
(53, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 17, '_menu_item_xfn', ''),
(55, 17, '_menu_item_url', 'http://localhost/play/'),
(56, 17, '_menu_item_orphaned', '1635357583'),
(57, 18, '_menu_item_type', 'post_type'),
(58, 18, '_menu_item_menu_item_parent', '0'),
(59, 18, '_menu_item_object_id', '11'),
(60, 18, '_menu_item_object', 'page'),
(61, 18, '_menu_item_target', ''),
(62, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 18, '_menu_item_xfn', ''),
(64, 18, '_menu_item_url', ''),
(65, 18, '_menu_item_orphaned', '1635357585'),
(66, 19, '_menu_item_type', 'post_type'),
(67, 19, '_menu_item_menu_item_parent', '0'),
(68, 19, '_menu_item_object_id', '7'),
(69, 19, '_menu_item_object', 'page'),
(70, 19, '_menu_item_target', ''),
(71, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 19, '_menu_item_xfn', ''),
(73, 19, '_menu_item_url', ''),
(74, 19, '_menu_item_orphaned', '1635357587'),
(75, 20, '_menu_item_type', 'post_type'),
(76, 20, '_menu_item_menu_item_parent', '0'),
(77, 20, '_menu_item_object_id', '9'),
(78, 20, '_menu_item_object', 'page'),
(79, 20, '_menu_item_target', ''),
(80, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 20, '_menu_item_xfn', ''),
(82, 20, '_menu_item_url', ''),
(83, 20, '_menu_item_orphaned', '1635357588'),
(84, 21, '_wp_attached_file', '2021/10/favicon-32x32-1.png'),
(85, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:27:\"2021/10/favicon-32x32-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 22, '_wp_trash_meta_status', 'publish'),
(87, 22, '_wp_trash_meta_time', '1635375684'),
(88, 23, '_wp_attached_file', '2021/10/logo.png'),
(89, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:432;s:6:\"height\";i:139;s:4:\"file\";s:16:\"2021/10/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 24, '_edit_lock', '1635377331:1'),
(91, 24, '_wp_trash_meta_status', 'publish'),
(92, 24, '_wp_trash_meta_time', '1635377356'),
(93, 25, '_wp_trash_meta_status', 'publish'),
(94, 25, '_wp_trash_meta_time', '1635377387'),
(95, 26, '_wp_trash_meta_status', 'publish'),
(96, 26, '_wp_trash_meta_time', '1635377983'),
(97, 27, '_wp_trash_meta_status', 'publish'),
(98, 27, '_wp_trash_meta_time', '1635378911'),
(99, 28, '_wp_trash_meta_status', 'publish'),
(100, 28, '_wp_trash_meta_time', '1635378929'),
(101, 29, '_wp_trash_meta_status', 'publish'),
(102, 29, '_wp_trash_meta_time', '1635379055'),
(103, 30, '_wp_trash_meta_status', 'publish'),
(104, 30, '_wp_trash_meta_time', '1635379063'),
(105, 31, '_wp_trash_meta_status', 'publish'),
(106, 31, '_wp_trash_meta_time', '1635379076'),
(107, 36, 'Duração', '181m'),
(108, 36, '_edit_last', '1'),
(109, 36, '_edit_lock', '1635525094:1'),
(110, 36, 'Duração', '181m'),
(111, 37, '_wp_attached_file', '2021/10/pexels-anastasia-shuraeva-4513214.jpg'),
(112, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4480;s:6:\"height\";i:5600;s:4:\"file\";s:45:\"2021/10/pexels-anastasia-shuraeva-4513214.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 38, '_wp_attached_file', '2021/10/pexels-andrea-piacquadio-3760259.jpg'),
(114, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:3942;s:4:\"file\";s:44:\"2021/10/pexels-andrea-piacquadio-3760259.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 39, '_wp_attached_file', '2021/10/pexels-burak-k-1253049.jpg'),
(116, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5472;s:6:\"height\";i:3648;s:4:\"file\";s:34:\"2021/10/pexels-burak-k-1253049.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 40, '_wp_attached_file', '2021/10/pexels-chris-peeters-12801.jpg'),
(118, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2386;s:6:\"height\";i:1591;s:4:\"file\";s:38:\"2021/10/pexels-chris-peeters-12801.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"18\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409329312\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(119, 41, '_wp_attached_file', '2021/10/pexels-cottonbro-4753879.jpg'),
(120, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2832;s:6:\"height\";i:4240;s:4:\"file\";s:36:\"2021/10/pexels-cottonbro-4753879.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 42, '_wp_attached_file', '2021/10/pexels-dazzle-jam-1190208.jpg'),
(122, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:6000;s:4:\"file\";s:37:\"2021/10/pexels-dazzle-jam-1190208.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 43, '_wp_attached_file', '2021/10/pexels-ekaterina-belinskaya-4674351.jpg'),
(124, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2218;s:6:\"height\";i:3327;s:4:\"file\";s:47:\"2021/10/pexels-ekaterina-belinskaya-4674351.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1512618822\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(125, 44, '_wp_attached_file', '2021/10/pexels-francesco-ungaro-1525041.jpg'),
(126, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4000;s:4:\"file\";s:43:\"2021/10/pexels-francesco-ungaro-1525041.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-H1\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539964695\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"10\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 45, '_wp_attached_file', '2021/10/pexels-gabb-tapic-3568544.jpg'),
(128, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2624;s:6:\"height\";i:3936;s:4:\"file\";s:37:\"2021/10/pexels-gabb-tapic-3568544.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 46, '_wp_attached_file', '2021/10/pexels-gabriel-hohol-3593922.jpg'),
(130, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3915;s:6:\"height\";i:5872;s:4:\"file\";s:40:\"2021/10/pexels-gabriel-hohol-3593922.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 47, '_wp_attached_file', '2021/10/pexels-gabriel-pompeo-4338508.jpg'),
(132, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:5760;s:4:\"file\";s:41:\"2021/10/pexels-gabriel-pompeo-4338508.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 48, '_wp_attached_file', '2021/10/pexels-ivy-son-3490257.jpg'),
(134, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:34:\"2021/10/pexels-ivy-son-3490257.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 49, '_wp_attached_file', '2021/10/pexels-jayson-marquez-4850412.jpg'),
(136, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3264;s:6:\"height\";i:4896;s:4:\"file\";s:41:\"2021/10/pexels-jayson-marquez-4850412.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 50, '_wp_attached_file', '2021/10/pexels-jayson-marquez-4850421.jpg'),
(138, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3264;s:6:\"height\";i:4896;s:4:\"file\";s:41:\"2021/10/pexels-jayson-marquez-4850421.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-E2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:6:\"0.0005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 51, '_wp_attached_file', '2021/10/pexels-jess-vide-5008377.jpg'),
(140, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:8192;s:4:\"file\";s:36:\"2021/10/pexels-jess-vide-5008377.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 52, '_wp_attached_file', '2021/10/pexels-joey-kyber-134643.jpg'),
(142, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5851;s:6:\"height\";i:3901;s:4:\"file\";s:36:\"2021/10/pexels-joey-kyber-134643.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 53, '_wp_attached_file', '2021/10/pexels-karley-saagi-2062882.jpg'),
(144, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3686;s:6:\"height\";i:4607;s:4:\"file\";s:39:\"2021/10/pexels-karley-saagi-2062882.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 54, '_wp_attached_file', '2021/10/pexels-kehn-hermano-3849167.jpg'),
(146, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:6000;s:4:\"file\";s:39:\"2021/10/pexels-kehn-hermano-3849167.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 55, '_wp_attached_file', '2021/10/pexels-mati-mango-5533926.jpg'),
(148, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2926;s:6:\"height\";i:4096;s:4:\"file\";s:37:\"2021/10/pexels-mati-mango-5533926.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 56, '_wp_attached_file', '2021/10/pexels-maxime-francis-2246476.jpg'),
(150, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5464;s:6:\"height\";i:3643;s:4:\"file\";s:41:\"2021/10/pexels-maxime-francis-2246476.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1499276053\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"19\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:1:\"8\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 57, '_wp_attached_file', '2021/10/pexels-paul-kerby-genil-3703961.jpg'),
(152, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:6000;s:4:\"file\";s:43:\"2021/10/pexels-paul-kerby-genil-3703961.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1580661578\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:8:\"0.000125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 58, '_wp_attached_file', '2021/10/pexels-perchek-industrie-5451980.jpg'),
(154, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2549;s:6:\"height\";i:3399;s:4:\"file\";s:44:\"2021/10/pexels-perchek-industrie-5451980.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 59, '_wp_attached_file', '2021/10/pexels-pixabay-2346.jpg'),
(156, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:2100;s:4:\"file\";s:31:\"2021/10/pexels-pixabay-2346.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 60, '_wp_attached_file', '2021/10/pexels-pixabay-277253.jpg'),
(158, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3581;s:6:\"height\";i:4013;s:4:\"file\";s:33:\"2021/10/pexels-pixabay-277253.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 61, '_wp_attached_file', '2021/10/pexels-rafael-paul-4797134.jpg'),
(160, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3430;s:6:\"height\";i:4287;s:4:\"file\";s:38:\"2021/10/pexels-rafael-paul-4797134.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 62, '_wp_attached_file', '2021/10/pexels-steve-682375.jpg'),
(162, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4288;s:6:\"height\";i:2848;s:4:\"file\";s:31:\"2021/10/pexels-steve-682375.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 63, '_wp_attached_file', '2021/10/pexels-thiago-matos-4576085.jpg'),
(164, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3230;s:6:\"height\";i:4038;s:4:\"file\";s:39:\"2021/10/pexels-thiago-matos-4576085.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 64, '_wp_attached_file', '2021/10/pexels-zachary-debottis-2568539.jpg'),
(166, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2624;s:6:\"height\";i:3936;s:4:\"file\";s:43:\"2021/10/pexels-zachary-debottis-2568539.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 36, '_thumbnail_id', '64'),
(168, 72, '_edit_last', '1'),
(169, 72, '_edit_lock', '1635535967:1'),
(170, 72, 'Duração', '180m'),
(171, 72, '_thumbnail_id', '59'),
(172, 73, '_edit_last', '1'),
(173, 73, '_edit_lock', '1635767221:1'),
(174, 73, 'Duração', '180m'),
(175, 73, '_thumbnail_id', '47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-10-27 11:29:39', '2021-10-27 14:29:39', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-10-27 11:29:39', '2021-10-27 14:29:39', '', 0, 'http://localhost/play/?p=1', 0, 'post', '', 1),
(2, 1, '2021-10-27 11:29:39', '2021-10-27 14:29:39', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/play/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-10-27 13:43:17', '2021-10-27 16:43:17', '', 0, 'http://localhost/play/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-10-27 11:29:39', '2021-10-27 14:29:39', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/play.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-10-27 14:45:19', '2021-10-27 17:45:19', '', 0, 'http://localhost/play/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-10-27 13:43:17', '2021-10-27 16:43:17', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/play/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-10-27 13:43:17', '2021-10-27 16:43:17', '', 2, 'http://localhost/play/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-10-27 14:45:19', '2021-10-27 17:45:19', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/play.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-10-27 14:45:19', '2021-10-27 17:45:19', '', 3, 'http://localhost/play/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-10-27 14:46:14', '2021-10-27 17:46:14', '<!-- wp:paragraph -->\n<p>Página de filmes</p>\n<!-- /wp:paragraph -->', 'Filmes', '', 'publish', 'closed', 'closed', '', 'filmes', '', '', '2021-10-27 15:01:11', '2021-10-27 18:01:11', '', 0, 'http://localhost/play/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-10-27 14:46:14', '2021-10-27 17:46:14', '<!-- wp:paragraph -->\n<p>Página de filmes</p>\n<!-- /wp:paragraph -->', 'Filmes', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-10-27 14:46:14', '2021-10-27 17:46:14', '', 7, 'http://localhost/play/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-10-27 14:46:47', '2021-10-27 17:46:47', '<!-- wp:paragraph -->\n<p>Página de séries</p>\n<!-- /wp:paragraph -->', 'Séries', '', 'publish', 'closed', 'closed', '', 'series', '', '', '2021-10-27 14:46:47', '2021-10-27 17:46:47', '', 0, 'http://localhost/play/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-10-27 14:46:47', '2021-10-27 17:46:47', '<!-- wp:paragraph -->\n<p>Página de séries</p>\n<!-- /wp:paragraph -->', 'Séries', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-10-27 14:46:47', '2021-10-27 17:46:47', '', 9, 'http://localhost/play/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-10-27 14:47:09', '2021-10-27 17:47:09', '<!-- wp:paragraph -->\n<p>Página de documentários</p>\n<!-- /wp:paragraph -->', 'Documentários', '', 'publish', 'closed', 'closed', '', 'documentarios', '', '', '2021-10-27 14:47:09', '2021-10-27 17:47:09', '', 0, 'http://localhost/play/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-10-27 14:47:09', '2021-10-27 17:47:09', '<!-- wp:paragraph -->\n<p>Página de documentários</p>\n<!-- /wp:paragraph -->', 'Documentários', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-10-27 14:47:09', '2021-10-27 17:47:09', '', 11, 'http://localhost/play/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-10-27 14:49:53', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:49:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2021-10-27 14:49:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:49:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2021-10-27 14:49:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:49:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2021-10-27 14:49:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:49:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2021-10-27 14:59:42', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:59:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-10-27 14:59:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:59:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2021-10-27 14:59:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:59:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-10-27 14:59:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-27 14:59:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-10-27 20:01:01', '2021-10-27 23:01:01', '', 'favicon-32x32', '', 'inherit', 'open', 'closed', '', 'favicon-32x32', '', '', '2021-10-27 20:01:01', '2021-10-27 23:01:01', '', 0, 'http://localhost/play/wp-content/uploads/2021/10/favicon-32x32-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2021-10-27 20:01:23', '2021-10-27 23:01:23', '{\n    \"blogdescription\": {\n        \"value\": \"Play - Assista tudo \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:01:23\"\n    },\n    \"site_icon\": {\n        \"value\": 21,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:01:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f54bbbcc-9990-469d-a00e-e61de1f85759', '', '', '2021-10-27 20:01:23', '2021-10-27 23:01:23', '', 0, 'http://localhost/play/index.php/2021/10/27/f54bbbcc-9990-469d-a00e-e61de1f85759/', 0, 'customize_changeset', '', 0),
(23, 1, '2021-10-27 20:16:00', '2021-10-27 23:16:00', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-10-27 20:16:00', '2021-10-27 23:16:00', '', 0, 'http://localhost/play/wp-content/uploads/2021/10/logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-10-27 20:29:16', '2021-10-27 23:29:16', '{\n    \"play::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:17:05\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:29:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40c0ddd7-6229-468d-966c-492d9f4bcab6', '', '', '2021-10-27 20:29:16', '2021-10-27 23:29:16', '', 0, 'http://localhost/play/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2021-10-27 20:29:47', '2021-10-27 23:29:47', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:29:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eaf70e40-63f9-4f95-988e-9e4f930dbd8e', '', '', '2021-10-27 20:29:47', '2021-10-27 23:29:47', '', 0, 'http://localhost/play/index.php/2021/10/27/eaf70e40-63f9-4f95-988e-9e4f930dbd8e/', 0, 'customize_changeset', '', 0),
(26, 1, '2021-10-27 20:39:41', '2021-10-27 23:39:41', '{\n    \"play::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:39:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '04faac69-a018-4457-98d5-261e50179d7b', '', '', '2021-10-27 20:39:41', '2021-10-27 23:39:41', '', 0, 'http://localhost/play/index.php/2021/10/27/04faac69-a018-4457-98d5-261e50179d7b/', 0, 'customize_changeset', '', 0),
(27, 1, '2021-10-27 20:55:09', '2021-10-27 23:55:09', '{\n    \"play::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:55:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be0442bb-8e58-425c-b025-83ac6b621a50', '', '', '2021-10-27 20:55:09', '2021-10-27 23:55:09', '', 0, 'http://localhost/play/index.php/2021/10/27/be0442bb-8e58-425c-b025-83ac6b621a50/', 0, 'customize_changeset', '', 0),
(28, 1, '2021-10-27 20:55:26', '2021-10-27 23:55:26', '{\n    \"play::custom_logo\": {\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:55:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fe3c9241-5ff7-4539-932b-4cbd2e961327', '', '', '2021-10-27 20:55:26', '2021-10-27 23:55:26', '', 0, 'http://localhost/play/index.php/2021/10/27/fe3c9241-5ff7-4539-932b-4cbd2e961327/', 0, 'customize_changeset', '', 0),
(29, 1, '2021-10-27 20:57:33', '2021-10-27 23:57:33', '{\n    \"play::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:57:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c7acc81-6fe9-4b7a-9052-4a3bf1bcfa63', '', '', '2021-10-27 20:57:33', '2021-10-27 23:57:33', '', 0, 'http://localhost/play/index.php/2021/10/27/0c7acc81-6fe9-4b7a-9052-4a3bf1bcfa63/', 0, 'customize_changeset', '', 0),
(30, 1, '2021-10-27 20:57:43', '2021-10-27 23:57:43', '{\n    \"play::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:57:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9935277-bfcf-4bdb-a923-d86668e39086', '', '', '2021-10-27 20:57:43', '2021-10-27 23:57:43', '', 0, 'http://localhost/play/index.php/2021/10/27/c9935277-bfcf-4bdb-a923-d86668e39086/', 0, 'customize_changeset', '', 0),
(31, 1, '2021-10-27 20:57:56', '2021-10-27 23:57:56', '{\n    \"play::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-27 23:57:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ebfa924-4be3-4cba-bc23-f550019c6bd5', '', '', '2021-10-27 20:57:56', '2021-10-27 23:57:56', '', 0, 'http://localhost/play/index.php/2021/10/27/6ebfa924-4be3-4cba-bc23-f550019c6bd5/', 0, 'customize_changeset', '', 0),
(36, 1, '2021-10-29 12:33:10', '2021-10-29 15:33:10', 'teste de post', 'Teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2021-10-29 12:33:10', '2021-10-29 15:33:10', '', 0, 'http://localhost/play/?post_type=video&#038;p=36', 0, 'video', '', 0),
(37, 1, '2021-10-29 12:32:07', '2021-10-29 15:32:07', '', 'pexels-anastasia-shuraeva-4513214', '', 'inherit', 'open', 'closed', '', 'pexels-anastasia-shuraeva-4513214', '', '', '2021-10-29 12:32:07', '2021-10-29 15:32:07', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-anastasia-shuraeva-4513214.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-10-29 12:32:08', '2021-10-29 15:32:08', '', 'pexels-andrea-piacquadio-3760259', '', 'inherit', 'open', 'closed', '', 'pexels-andrea-piacquadio-3760259', '', '', '2021-10-29 12:32:08', '2021-10-29 15:32:08', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-andrea-piacquadio-3760259.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-10-29 12:32:09', '2021-10-29 15:32:09', '', 'pexels-burak-k-1253049', '', 'inherit', 'open', 'closed', '', 'pexels-burak-k-1253049', '', '', '2021-10-29 12:32:09', '2021-10-29 15:32:09', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-burak-k-1253049.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-10-29 12:32:10', '2021-10-29 15:32:10', '', 'pexels-chris-peeters-12801', '', 'inherit', 'open', 'closed', '', 'pexels-chris-peeters-12801', '', '', '2021-10-29 12:32:10', '2021-10-29 15:32:10', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-chris-peeters-12801.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-10-29 12:32:11', '2021-10-29 15:32:11', '', 'pexels-cottonbro-4753879', '', 'inherit', 'open', 'closed', '', 'pexels-cottonbro-4753879', '', '', '2021-10-29 12:32:11', '2021-10-29 15:32:11', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-cottonbro-4753879.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-10-29 12:32:12', '2021-10-29 15:32:12', '', 'pexels-dazzle-jam-1190208', '', 'inherit', 'open', 'closed', '', 'pexels-dazzle-jam-1190208', '', '', '2021-10-29 12:32:12', '2021-10-29 15:32:12', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-dazzle-jam-1190208.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-10-29 12:32:14', '2021-10-29 15:32:14', '', 'pexels-ekaterina-belinskaya-4674351', '', 'inherit', 'open', 'closed', '', 'pexels-ekaterina-belinskaya-4674351', '', '', '2021-10-29 12:32:14', '2021-10-29 15:32:14', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-ekaterina-belinskaya-4674351.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-10-29 12:32:17', '2021-10-29 15:32:17', '', 'pexels-francesco-ungaro-1525041', '', 'inherit', 'open', 'closed', '', 'pexels-francesco-ungaro-1525041', '', '', '2021-10-29 12:32:17', '2021-10-29 15:32:17', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-francesco-ungaro-1525041.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-10-29 12:32:18', '2021-10-29 15:32:18', '', 'pexels-gabb-tapic-3568544', '', 'inherit', 'open', 'closed', '', 'pexels-gabb-tapic-3568544', '', '', '2021-10-29 12:32:18', '2021-10-29 15:32:18', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-gabb-tapic-3568544.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-10-29 12:32:19', '2021-10-29 15:32:19', '', 'pexels-gabriel-hohol-3593922', '', 'inherit', 'open', 'closed', '', 'pexels-gabriel-hohol-3593922', '', '', '2021-10-29 12:32:19', '2021-10-29 15:32:19', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-gabriel-hohol-3593922.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-10-29 12:32:21', '2021-10-29 15:32:21', '', 'pexels-gabriel-pompeo-4338508', '', 'inherit', 'open', 'closed', '', 'pexels-gabriel-pompeo-4338508', '', '', '2021-10-29 12:32:21', '2021-10-29 15:32:21', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-gabriel-pompeo-4338508.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-10-29 12:32:25', '2021-10-29 15:32:25', '', 'pexels-ivy-son-3490257', '', 'inherit', 'open', 'closed', '', 'pexels-ivy-son-3490257', '', '', '2021-10-29 12:32:25', '2021-10-29 15:32:25', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-ivy-son-3490257.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-10-29 12:32:26', '2021-10-29 15:32:26', '', 'pexels-jayson-marquez-4850412', '', 'inherit', 'open', 'closed', '', 'pexels-jayson-marquez-4850412', '', '', '2021-10-29 12:32:26', '2021-10-29 15:32:26', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-jayson-marquez-4850412.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-10-29 12:32:30', '2021-10-29 15:32:30', '', 'pexels-jayson-marquez-4850421', '', 'inherit', 'open', 'closed', '', 'pexels-jayson-marquez-4850421', '', '', '2021-10-29 12:32:30', '2021-10-29 15:32:30', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-jayson-marquez-4850421.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-10-29 12:32:31', '2021-10-29 15:32:31', '', 'pexels-jess-vide-5008377', '', 'inherit', 'open', 'closed', '', 'pexels-jess-vide-5008377', '', '', '2021-10-29 12:32:31', '2021-10-29 15:32:31', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-jess-vide-5008377.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-10-29 12:32:34', '2021-10-29 15:32:34', '', 'pexels-joey-kyber-134643', '', 'inherit', 'open', 'closed', '', 'pexels-joey-kyber-134643', '', '', '2021-10-29 12:32:34', '2021-10-29 15:32:34', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-joey-kyber-134643.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-10-29 12:32:36', '2021-10-29 15:32:36', '', 'pexels-karley-saagi-2062882', '', 'inherit', 'open', 'closed', '', 'pexels-karley-saagi-2062882', '', '', '2021-10-29 12:32:36', '2021-10-29 15:32:36', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-karley-saagi-2062882.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-10-29 12:32:37', '2021-10-29 15:32:37', '', 'pexels-kehn-hermano-3849167', '', 'inherit', 'open', 'closed', '', 'pexels-kehn-hermano-3849167', '', '', '2021-10-29 12:32:37', '2021-10-29 15:32:37', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-kehn-hermano-3849167.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-10-29 12:32:40', '2021-10-29 15:32:40', '', 'pexels-mati-mango-5533926', '', 'inherit', 'open', 'closed', '', 'pexels-mati-mango-5533926', '', '', '2021-10-29 12:32:40', '2021-10-29 15:32:40', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-mati-mango-5533926.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-10-29 12:32:43', '2021-10-29 15:32:43', '', 'pexels-maxime-francis-2246476', '', 'inherit', 'open', 'closed', '', 'pexels-maxime-francis-2246476', '', '', '2021-10-29 12:32:43', '2021-10-29 15:32:43', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-maxime-francis-2246476.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-10-29 12:32:46', '2021-10-29 15:32:46', '', 'pexels-paul-kerby-genil-3703961', '', 'inherit', 'open', 'closed', '', 'pexels-paul-kerby-genil-3703961', '', '', '2021-10-29 12:32:46', '2021-10-29 15:32:46', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-paul-kerby-genil-3703961.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-10-29 12:32:50', '2021-10-29 15:32:50', '', 'pexels-perchek-industrie-5451980', '', 'inherit', 'open', 'closed', '', 'pexels-perchek-industrie-5451980', '', '', '2021-10-29 12:32:50', '2021-10-29 15:32:50', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-perchek-industrie-5451980.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-10-29 12:32:51', '2021-10-29 15:32:51', '', 'pexels-pixabay-2346', '', 'inherit', 'open', 'closed', '', 'pexels-pixabay-2346', '', '', '2021-10-29 12:32:51', '2021-10-29 15:32:51', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-pixabay-2346.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-10-29 12:32:52', '2021-10-29 15:32:52', '', 'pexels-pixabay-277253', '', 'inherit', 'open', 'closed', '', 'pexels-pixabay-277253', '', '', '2021-10-29 12:32:52', '2021-10-29 15:32:52', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-pixabay-277253.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-10-29 12:32:53', '2021-10-29 15:32:53', '', 'pexels-rafael-paul-4797134', '', 'inherit', 'open', 'closed', '', 'pexels-rafael-paul-4797134', '', '', '2021-10-29 12:32:53', '2021-10-29 15:32:53', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-rafael-paul-4797134.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-10-29 12:32:56', '2021-10-29 15:32:56', '', 'pexels-steve-682375', '', 'inherit', 'open', 'closed', '', 'pexels-steve-682375', '', '', '2021-10-29 12:32:56', '2021-10-29 15:32:56', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-steve-682375.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 'pexels-thiago-matos-4576085', '', 'inherit', 'open', 'closed', '', 'pexels-thiago-matos-4576085', '', '', '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-thiago-matos-4576085.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 'pexels-zachary-debottis-2568539', '', 'inherit', 'open', 'closed', '', 'pexels-zachary-debottis-2568539', '', '', '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-zachary-debottis-2568539.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-10-29 16:35:06', '2021-10-29 19:35:06', 'Teste genero', 'Teste genero', '', 'publish', 'closed', 'closed', '', 'teste-genero', '', '', '2021-10-29 16:35:06', '2021-10-29 19:35:06', '', 0, 'http://localhost/play/?post_type=video&#038;p=72', 0, 'video', '', 0),
(73, 1, '2021-10-29 16:39:17', '2021-10-29 19:39:17', '', 'teste filmes', '', 'publish', 'closed', 'closed', '', 'teste-filmes', '', '', '2021-10-30 00:23:45', '2021-10-30 03:23:45', '', 0, 'http://localhost/play/?post_type=video&#038;p=73', 0, 'video', '', 0),
(74, 1, '2021-11-01 09:49:02', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-01 09:49:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?post_type=video&p=74', 0, 'video', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Documentarios', 'documentarios', 0),
(3, 'Filmes', 'filmes', 0),
(4, 'Series', 'series', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(72, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'genero', '', 0, 1),
(3, 3, 'genero', '', 0, 0),
(4, 4, 'genero', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'marcelofariasjr'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"8db9ef213cfb2499fdfc71ac0732e6914f399770bf9be405b115a72f53e11235\";a:4:{s:10:\"expiration\";i:1636554615;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0\";s:5:\"login\";i:1635345015;}s:64:\"1c17049dd111caef7bdd6d748987d5d5702b1bca49b43242ec1020ad2e37e487\";a:4:{s:10:\"expiration\";i:1636565655;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36\";s:5:\"login\";i:1635356055;}s:64:\"115dfe24a7ac62986a8b020597f5f20a1978e2a4bc44cf969ff4375778474970\";a:4:{s:10:\"expiration\";i:1636729045;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 OPR/80.0.4170.61\";s:5:\"login\";i:1635519445;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1635375861'),
(23, 1, 'closedpostboxes_video', 'a:0:{}'),
(24, 1, 'metaboxhidden_video', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'meta-box-order_video', 'a:3:{s:4:\"side\";s:32:\"submitdiv,generodiv,postimagediv\";s:6:\"normal\";s:40:\"postexcerpt,slugdiv,postcustom,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_video', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'marcelofariasjr', '$P$B1im2gqMH/Q7rKts9ySkElDmeSG2gh.', 'marcelofariasjr', 'marcelobfariasjr@gmail.com', 'http://localhost/play', '2021-10-27 14:29:33', '', 0, 'marcelofariasjr');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
