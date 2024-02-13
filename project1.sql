/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : project1

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 29/01/2024 17:25:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aksiwebservice
-- ----------------------------
DROP TABLE IF EXISTS `aksiwebservice`;
CREATE TABLE `aksiwebservice`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Aksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aksiwebservice
-- ----------------------------
INSERT INTO `aksiwebservice` VALUES (3, 'Penetapan', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (4, 'Payment', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (5, 'SIPKD_BLUD_PENDAPATAN', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (6, 'SIPKD_BLUD_BELANJA', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (7, 'SIPKD_BLUD_DPA', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (8, 'SIPKD_BLUD_PENGELUARAN_PEMBIAYAAN', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (9, 'SIPKD_BLUD_PENERIMAAN_PEMBIAYAAN', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (10, 'Denda Keterlambatan', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (11, 'Sisa Belanja', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (12, 'pengiriman data aset ke Tabel I_SIERA_2 di SIPKDDEV', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (13, 'pengiriman data DTH/RTH pajak ke Kemenkeu', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (14, 'pengiriman data jurnal keuangan ke kemenkeu', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (15, 'pengiriman data realisasi belanja APBD ke kemenkeu', NULL, NULL);
INSERT INTO `aksiwebservice` VALUES (16, 'pengiriman data aset', '2024-01-29 09:57:26', NULL);

-- ----------------------------
-- Table structure for aplikasi
-- ----------------------------
DROP TABLE IF EXISTS `aplikasi`;
CREATE TABLE `aplikasi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_aplikasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aplikasi
-- ----------------------------
INSERT INTO `aplikasi` VALUES (1, 'PAJAK', '2024-01-29 10:09:05', NULL);
INSERT INTO `aplikasi` VALUES (2, 'SPB', '2024-01-29 10:09:13', NULL);
INSERT INTO `aplikasi` VALUES (3, 'SIERA', '2024-01-29 10:09:34', NULL);
INSERT INTO `aplikasi` VALUES (4, 'SIMPAD', '2024-01-29 10:09:41', NULL);
INSERT INTO `aplikasi` VALUES (5, 'SIPKD', '2024-01-29 10:09:50', NULL);
INSERT INTO `aplikasi` VALUES (6, 'RKBMD', '2024-01-29 10:10:05', NULL);

-- ----------------------------
-- Table structure for brandserver
-- ----------------------------
DROP TABLE IF EXISTS `brandserver`;
CREATE TABLE `brandserver`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brandserver
-- ----------------------------
INSERT INTO `brandserver` VALUES (1, 'HPE', 'America', '0000-00-00 00:00:00', NULL);
INSERT INTO `brandserver` VALUES (2, 'Dell', 'America', '0000-00-00 00:00:00', NULL);
INSERT INTO `brandserver` VALUES (3, 'Lenovo', 'China', '0000-00-00 00:00:00', NULL);
INSERT INTO `brandserver` VALUES (4, 'IBM', 'America', '0000-00-00 00:00:00', NULL);
INSERT INTO `brandserver` VALUES (5, 'Fujitsu', 'Jepang', '0000-00-00 00:00:00', NULL);
INSERT INTO `brandserver` VALUES (6, 'Nutanix', 'America', '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kolom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `orderby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_query_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sql_where` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `method_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `responses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hit` int(11) NULL DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime(0) NULL DEFAULT NULL,
  `email_recipient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_sent` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2024-01-29 08:03:43', NULL);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Master at Menu Management', '', 1, '2024-01-29 08:07:14', NULL);
INSERT INTO `cms_logs` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Master at Menu Management', '', 1, '2024-01-29 08:09:57', NULL);
INSERT INTO `cms_logs` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Master at Menu Management', '', 1, '2024-01-29 08:12:10', NULL);
INSERT INTO `cms_logs` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Master at Menu Management', '', 1, '2024-01-29 08:12:54', NULL);
INSERT INTO `cms_logs` VALUES (5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/module_generator/delete/14', 'Delete data brandserver at Module Generator', '', 1, '2024-01-29 08:13:41', NULL);
INSERT INTO `cms_logs` VALUES (6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/server/add-save', 'Add New Data  at server', '', 1, '2024-01-29 08:56:38', NULL);
INSERT INTO `cms_logs` VALUES (7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/vendor/add-save', 'Add New Data Gartek at vendor', '', 1, '2024-01-29 09:01:55', NULL);
INSERT INTO `cms_logs` VALUES (8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/vendor/add-save', 'Add New Data Pinet at vendor', '', 1, '2024-01-29 09:02:07', NULL);
INSERT INTO `cms_logs` VALUES (9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/vendor/add-save', 'Add New Data Anomail at vendor', '', 1, '2024-01-29 09:02:36', NULL);
INSERT INTO `cms_logs` VALUES (10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/server/edit-save/1', 'Update data  at server', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2024-01-29 09:17:34', NULL);
INSERT INTO `cms_logs` VALUES (11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2024-01/dki_logo.png</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@admin.com</td></tr><tr><td>password</td><td>$2y$10$G9Dk5T6ragDbp0jaoLHz0ejpiWc.yuD/QbEDBah.B7u6aR23qP166</td><td>$2y$10$w.hGyy5Z6zrZWa/YtmZ27.i6UC1kuSz/GtTNLb0nbaK7dgnXqiUkC</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:24:49', NULL);
INSERT INTO `cms_logs` VALUES (12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 1, '2024-01-29 09:24:59', NULL);
INSERT INTO `cms_logs` VALUES (13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2024-01-29 09:25:09', NULL);
INSERT INTO `cms_logs` VALUES (14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Super Admin at Users Management', '', 1, '2024-01-29 09:28:07', NULL);
INSERT INTO `cms_logs` VALUES (15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2024-01/dki_logo.png</td></tr><tr><td>password</td><td>$2y$10$w.hGyy5Z6zrZWa/YtmZ27.i6UC1kuSz/GtTNLb0nbaK7dgnXqiUkC</td><td>$2y$10$5Fohealubw4NCX.1FbeDAumZHBnbUm5bZrFhNRVbRVDwEM0XEszwa</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:28:13', NULL);
INSERT INTO `cms_logs` VALUES (16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$5Fohealubw4NCX.1FbeDAumZHBnbUm5bZrFhNRVbRVDwEM0XEszwa</td><td>$2y$10$m7z2cmbxi6tzTvYNlsmZBuR7KZCFlVbt.t5nw1ISlD2RGwUjVxKGm</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:28:37', NULL);
INSERT INTO `cms_logs` VALUES (17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data server at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-server</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:30:30', NULL);
INSERT INTO `cms_logs` VALUES (18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data webapp at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-delicious</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:31:03', NULL);
INSERT INTO `cms_logs` VALUES (19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data vendor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-user-secret</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:31:35', NULL);
INSERT INTO `cms_logs` VALUES (20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data brandserver at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-close</td><td>fa fa-copyright</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>', 1, '2024-01-29 09:32:07', NULL);
INSERT INTO `cms_logs` VALUES (21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aksiwebservice/add-save', 'Add New Data  at aksiwebservice', '', 1, '2024-01-29 09:57:26', NULL);
INSERT INTO `cms_logs` VALUES (22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aksiwebservice/delete/2', 'Delete data 2 at aksiwebservice', '', 1, '2024-01-29 09:57:47', NULL);
INSERT INTO `cms_logs` VALUES (23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/instansi/add-save', 'Add New Data BPAD at instansi', '', 1, '2024-01-29 10:01:13', NULL);
INSERT INTO `cms_logs` VALUES (24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/instansi/add-save', 'Add New Data BANK DKI/BAPENDA at instansi', '', 1, '2024-01-29 10:01:23', NULL);
INSERT INTO `cms_logs` VALUES (25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/instansi/add-save', 'Add New Data BPKD at instansi', '', 1, '2024-01-29 10:01:32', NULL);
INSERT INTO `cms_logs` VALUES (26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/instansi/add-save', 'Add New Data KEMENKEU at instansi', '', 1, '2024-01-29 10:01:55', NULL);
INSERT INTO `cms_logs` VALUES (27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aplikasi/add-save', 'Add New Data PAJAK at aplikasi', '', 1, '2024-01-29 10:09:05', NULL);
INSERT INTO `cms_logs` VALUES (28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aplikasi/add-save', 'Add New Data SPB at aplikasi', '', 1, '2024-01-29 10:09:13', NULL);
INSERT INTO `cms_logs` VALUES (29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aplikasi/add-save', 'Add New Data SIERA at aplikasi', '', 1, '2024-01-29 10:09:34', NULL);
INSERT INTO `cms_logs` VALUES (30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aplikasi/add-save', 'Add New Data SIMPAD at aplikasi', '', 1, '2024-01-29 10:09:41', NULL);
INSERT INTO `cms_logs` VALUES (31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aplikasi/add-save', 'Add New Data SIPKD at aplikasi', '', 1, '2024-01-29 10:09:50', NULL);
INSERT INTO `cms_logs` VALUES (32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/aplikasi/add-save', 'Add New Data RKBMD at aplikasi', '', 1, '2024-01-29 10:10:05', NULL);
INSERT INTO `cms_logs` VALUES (33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'http://127.0.0.1:8000/admin/webservice/add-save', 'Add New Data  at webservice', '', 1, '2024-01-29 10:14:52', NULL);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'server', 'Route', 'AdminServer1ControllerGetIndex', 'normal', 'fa fa-server', 0, 1, 0, 1, 2, '2024-01-29 08:05:44', '2024-01-29 09:30:30');
INSERT INTO `cms_menus` VALUES (2, 'webapp', 'Route', 'AdminWebapp1ControllerGetIndex', 'normal', 'fa fa-delicious', 0, 1, 0, 1, 3, '2024-01-29 08:06:03', '2024-01-29 09:31:03');
INSERT INTO `cms_menus` VALUES (6, 'Master', 'Route', '/admin/dashboard1', 'normal', 'fa fa-th-large', 0, 0, 1, 1, NULL, '2024-01-29 08:12:10', NULL);
INSERT INTO `cms_menus` VALUES (7, 'Master', 'Module', 'brandserver', 'normal', 'fa fa-th-large', 0, 1, 0, 1, 1, '2024-01-29 08:12:54', NULL);
INSERT INTO `cms_menus` VALUES (8, 'brandserver', 'Route', 'AdminBrandserver1ControllerGetIndex', 'normal', 'fa fa-copyright', 7, 1, 0, 1, 1, '2024-01-29 08:13:59', '2024-01-29 09:32:07');
INSERT INTO `cms_menus` VALUES (9, 'vendor', 'Route', 'AdminVendorControllerGetIndex', 'normal', 'fa fa-user-secret', 0, 1, 0, 1, 4, '2024-01-29 09:00:56', '2024-01-29 09:31:35');
INSERT INTO `cms_menus` VALUES (10, 'aksiwebservice', 'Route', 'AdminAksiwebserviceControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 2, '2024-01-29 09:54:51', NULL);
INSERT INTO `cms_menus` VALUES (11, 'instansi', 'Route', 'AdminInstansiControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 3, '2024-01-29 10:00:43', NULL);
INSERT INTO `cms_menus` VALUES (12, 'aplikasi', 'Route', 'AdminAplikasiControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 4, '2024-01-29 10:08:48', NULL);
INSERT INTO `cms_menus` VALUES (13, 'webservice', 'Route', 'AdminWebserviceControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 5, '2024-01-29 10:10:29', NULL);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES (3, 3, 1);
INSERT INTO `cms_menus_privileges` VALUES (4, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (5, 5, 1);
INSERT INTO `cms_menus_privileges` VALUES (6, 6, 1);
INSERT INTO `cms_menus_privileges` VALUES (7, 7, 1);
INSERT INTO `cms_menus_privileges` VALUES (10, 1, 1);
INSERT INTO `cms_menus_privileges` VALUES (11, 2, 1);
INSERT INTO `cms_menus_privileges` VALUES (12, 9, 1);
INSERT INTO `cms_menus_privileges` VALUES (13, 8, 1);
INSERT INTO `cms_menus_privileges` VALUES (14, 10, 1);
INSERT INTO `cms_menus_privileges` VALUES (15, 11, 1);
INSERT INTO `cms_menus_privileges` VALUES (16, 12, 1);
INSERT INTO `cms_menus_privileges` VALUES (17, 13, 1);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES (1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2024-01-29 08:03:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (12, 'server', 'fa fa-glass', 'server', 'server', 'AdminServer1Controller', 0, 0, '2024-01-29 08:05:44', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (13, 'webapp', 'fa fa-glass', 'webapp', 'webapp', 'AdminWebapp1Controller', 0, 0, '2024-01-29 08:06:03', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (14, 'brandserver', 'fa fa-glass', 'brandserver', 'brandserver', 'AdminBrandserver1Controller', 0, 0, '2024-01-29 08:06:25', NULL, '2024-01-29 08:13:41');
INSERT INTO `cms_moduls` VALUES (15, 'brandserver', 'fa fa-close', 'brandserver', 'brandserver', 'AdminBrandserver1Controller', 0, 0, '2024-01-29 08:13:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (16, 'vendor', 'fa fa-glass', 'vendor', 'vendor', 'AdminVendorController', 0, 0, '2024-01-29 09:00:56', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (17, 'aksiwebservice', 'fa fa-glass', 'aksiwebservice', 'aksiwebservice', 'AdminAksiwebserviceController', 0, 0, '2024-01-29 09:54:51', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (18, 'instansi', 'fa fa-glass', 'instansi', 'instansi', 'AdminInstansiController', 0, 0, '2024-01-29 10:00:43', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (19, 'aplikasi', 'fa fa-glass', 'aplikasi', 'aplikasi', 'AdminAplikasiController', 0, 0, '2024-01-29 10:08:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (20, 'webservice', 'fa fa-glass', 'webservice', 'webservice', 'AdminWebserviceController', 0, 0, '2024-01-29 10:10:28', NULL, NULL);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NULL DEFAULT NULL,
  `theme_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES (1, 'Super Administrator', 1, 'skin-yellow', '2024-01-29 08:03:43', NULL);
INSERT INTO `cms_privileges` VALUES (2, 'admin', 0, 'skin-blue', NULL, NULL);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) NULL DEFAULT NULL,
  `is_create` tinyint(1) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `is_edit` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `id_cms_moduls` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (21, 1, 1, 1, 1, 1, 2, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (22, 1, 1, 1, 1, 1, 2, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (23, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (24, 1, 1, 1, 1, 1, 2, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (25, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (26, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (27, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (28, 1, 1, 1, 1, 1, 1, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (29, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (30, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (31, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (32, 1, 1, 1, 1, 1, 1, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (33, 1, 1, 1, 1, 1, 1, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (34, 1, 1, 1, 1, 1, 1, 20, NULL, NULL);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content_input_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dataenum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `group_setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2024-01-29 08:03:43', NULL, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2024-01-29 08:03:43', NULL, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2024-01-29 08:03:43', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2024-01-29 08:03:43', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'Infra BPKD DKI', 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2024-01-29 08:03:43', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', 'uploads/2024-01/2d94dd651e4b850d9ce83daac5342f43.png', 'upload_image', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', 'uploads/2024-01/114c9f8a324898c976489dec3483aaf2.png', 'upload_image', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2024-01-29 08:03:43', NULL, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES (15, 'google_api_key', NULL, 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES (16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2024-01-29 08:03:43', NULL, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) NULL DEFAULT NULL,
  `componentID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'Super Admin', 'uploads/1/2024-01/dki_logo.png', 'admin@admin.com', '$2y$10$m7z2cmbxi6tzTvYNlsmZBuR7KZCFlVbt.t5nw1ISlD2RGwUjVxKGm', 1, '2024-01-29 08:03:43', '2024-01-29 09:28:37', 'Active');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instansi
-- ----------------------------
DROP TABLE IF EXISTS `instansi`;
CREATE TABLE `instansi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_instansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instansi
-- ----------------------------
INSERT INTO `instansi` VALUES (1, 'BPAD', '2024-01-29 10:01:13', NULL);
INSERT INTO `instansi` VALUES (2, 'BANK DKI/BAPENDA', '2024-01-29 10:01:23', NULL);
INSERT INTO `instansi` VALUES (3, 'BPKD', '2024-01-29 10:01:32', NULL);
INSERT INTO `instansi` VALUES (4, 'KEMENKEU', '2024-01-29 10:01:55', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (61, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (62, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (63, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (64, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` VALUES (65, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` VALUES (66, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` VALUES (67, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` VALUES (68, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` VALUES (69, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` VALUES (70, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` VALUES (71, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` VALUES (72, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` VALUES (73, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` VALUES (74, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` VALUES (75, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` VALUES (76, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` VALUES (77, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` VALUES (78, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (79, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` VALUES (80, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` VALUES (81, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` VALUES (82, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` VALUES (83, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` VALUES (84, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` VALUES (85, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` VALUES (86, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` VALUES (87, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` VALUES (88, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (89, '2024_02_29_000000_create_brandservers_table', 1);
INSERT INTO `migrations` VALUES (90, '2024_02_29_000000_create_servers_table', 2);
INSERT INTO `migrations` VALUES (91, '2024_02_29_000000_create_webapps_table', 2);
INSERT INTO `migrations` VALUES (92, '2024_02_29_000000_create_vendors_table', 3);
INSERT INTO `migrations` VALUES (93, '2024_02_29_000001_create_servers_table', 4);
INSERT INTO `migrations` VALUES (94, '2024_02_29_000000_create_aksiwebservices_table', 5);
INSERT INTO `migrations` VALUES (95, '2024_02_29_000000_create_instansis_table', 6);
INSERT INTO `migrations` VALUES (96, '2024_02_29_000000_create_webservices_table', 7);
INSERT INTO `migrations` VALUES (97, '2024_02_29_000000_create_aplikasis_table', 8);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `merk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harddisk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialnumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_manajement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_network` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES (1, '4', 'IBM System x3650 M3', 'In Xeon(R)  E5507  @ 2.27GHz', '12 GB RAM', 'SAS FRU 146GB x2', '06GF811', '10.15.34.148', '', '2024-01-29 08:56:38', '2024-01-29 09:17:34');

-- ----------------------------
-- Table structure for server1
-- ----------------------------
DROP TABLE IF EXISTS `server1`;
CREATE TABLE `server1`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `merk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harddisk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_manajement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_network` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server1
-- ----------------------------
INSERT INTO `server1` VALUES (1, '4', 'IBM System x3650 M3', 'In Xeon(R)  E5507  @ 2.27GHz', '12 GB RAM', 'SAS FRU 146GB x2', '', '10.15.34.148', '2024-01-29 08:56:38', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vendor
-- ----------------------------
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vendor
-- ----------------------------
INSERT INTO `vendor` VALUES (1, 'Gartek', 'software', 'Jakarta', '2024-01-29 09:01:55', NULL);
INSERT INTO `vendor` VALUES (2, 'Pinet', 'software', 'Jakarta', '2024-01-29 09:02:07', NULL);
INSERT INTO `vendor` VALUES (3, 'Anomail', 'hardware', 'Jakarta', '2024-01-29 09:02:36', NULL);

-- ----------------------------
-- Table structure for webapp
-- ----------------------------
DROP TABLE IF EXISTS `webapp`;
CREATE TABLE `webapp`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp
-- ----------------------------
INSERT INTO `webapp` VALUES (1, 'DASHBOARD', 'Dashboard Keuangan DKI Jakarta', 'https://dashboard-bpkd.jakarta.go.id/', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (2, 'E-BELPEG', 'Belanja Pegawai', 'https://ebelanjapegawai.jakarta.go.id', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (3, 'EHARGA', 'Komponen', 'https://eharga.jakarta.go.id/home', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (4, 'ERBA BLUD', 'RBA BLUD', 'https://rbablud.jakarta.go.id', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (5, 'PROYEKSI APBD', 'Proyeksi APBD', 'http://proyeksiapbd.jakarta.go.id/', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (6, 'SIKD', 'Sistem Informasi Keuangan Daerah', 'https://sipddki.jakarta.go.id/', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (7, 'SIMPAD', 'Sistem Informasi Pendapatan Daerah', 'http://simpad.jakarta.go.id/', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');
INSERT INTO `webapp` VALUES (8, 'SMART PLANNING BUDGETING', 'Smart Planning Budgeting', 'https://apbd.jakarta.go.id/', 'Aktif', '2024-01-29 14:04:53', '2024-01-29 14:04:59');

-- ----------------------------
-- Table structure for webservice
-- ----------------------------
DROP TABLE IF EXISTS `webservice`;
CREATE TABLE `webservice`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `destinasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webservice
-- ----------------------------
INSERT INTO `webservice` VALUES (1, '5', '3', '3', 'http://soadev.jakarta.go.id/rest/gov/dki/siera/ws/sieraKolokAPI?tahun=2020&versi=1&kolok=00100000000000&bp=False&real=True&rinci=True', '16', '\"User: updidev pass: updidev\"', 'DEV', '2024-01-29 10:14:52', NULL);

SET FOREIGN_KEY_CHECKS = 1;
