/*
Navicat MySQL Data Transfer

Source Server         : localhost@root
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : adalloc_empleados

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-26 13:50:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('2', '1', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('3', '1', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('4', '1', 'password', 'password', 'Password', '1', '0', '0', '1', '1', '0', null, '4');
INSERT INTO `data_rows` VALUES ('5', '1', 'remember_token', 'text', 'Remember Token', '0', '0', '0', '0', '0', '0', null, '5');
INSERT INTO `data_rows` VALUES ('6', '1', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('7', '1', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '7');
INSERT INTO `data_rows` VALUES ('8', '1', 'avatar', 'image', 'Avatar', '0', '1', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('9', '1', 'user_belongsto_role_relationship', 'relationship', 'Role', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', '10');
INSERT INTO `data_rows` VALUES ('10', '1', 'user_belongstomany_role_relationship', 'relationship', 'Roles', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', '11');
INSERT INTO `data_rows` VALUES ('11', '1', 'locale', 'text', 'Locale', '0', '1', '1', '1', '1', '0', null, '12');
INSERT INTO `data_rows` VALUES ('12', '1', 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', null, '12');
INSERT INTO `data_rows` VALUES ('13', '2', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('14', '2', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('15', '2', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', null, '3');
INSERT INTO `data_rows` VALUES ('16', '2', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '4');
INSERT INTO `data_rows` VALUES ('17', '3', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('18', '3', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('19', '3', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', null, '3');
INSERT INTO `data_rows` VALUES ('20', '3', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '4');
INSERT INTO `data_rows` VALUES ('21', '3', 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('22', '1', 'role_id', 'text', 'Role', '1', '1', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('57', '7', 'id', 'text', 'Id', '1', '1', '1', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('58', '7', 'uuid', 'text', 'Uuid', '1', '1', '1', '0', '1', '0', '{}', '2');
INSERT INTO `data_rows` VALUES ('59', '7', 'nombre', 'text', 'Nombre', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('60', '7', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('61', '7', 'puesto', 'text', 'Puesto', '1', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('62', '7', 'nacimiento', 'date', 'Nacimiento', '1', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('63', '7', 'domicilio', 'text', 'Domicilio', '1', '1', '1', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('65', '7', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', '{}', '9');
INSERT INTO `data_rows` VALUES ('66', '7', 'updated_at', 'timestamp', 'Updated At', '0', '1', '1', '0', '0', '0', '{}', '10');
INSERT INTO `data_rows` VALUES ('67', '8', 'id', 'text', 'Id', '1', '1', '1', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('68', '8', 'uuid', 'text', 'Uuid', '1', '1', '1', '0', '1', '0', '{}', '2');
INSERT INTO `data_rows` VALUES ('69', '8', 'nombre', 'text', 'Nombre', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('70', '8', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', '{}', '4');
INSERT INTO `data_rows` VALUES ('71', '8', 'updated_at', 'timestamp', 'Updated At', '0', '1', '1', '0', '0', '0', '{}', '5');
INSERT INTO `data_rows` VALUES ('72', '7', 'empleado_belongstomany_habilidade_relationship', 'relationship', 'habilidades', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Habilidade\",\"table\":\"habilidades\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"empleado_habilidad\",\"pivot\":\"1\",\"taggable\":\"on\"}', '11');

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', '1', '0', null, '2018-11-26 18:37:25', '2018-11-26 18:37:25');
INSERT INTO `data_types` VALUES ('2', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2018-11-26 18:37:25', '2018-11-26 18:37:25');
INSERT INTO `data_types` VALUES ('3', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2018-11-26 18:37:25', '2018-11-26 18:37:25');
INSERT INTO `data_types` VALUES ('7', 'empleados', 'empleados', 'Empleado', 'Empleados', 'voyager-people', 'App\\Empleado', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-26 18:52:16', '2018-11-26 19:30:27');
INSERT INTO `data_types` VALUES ('8', 'habilidades', 'habilidades', 'Habilidad', 'Habilidades', 'voyager-wand', 'App\\Habilidade', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-26 19:09:07', '2018-11-26 19:09:07');

-- ----------------------------
-- Table structure for empleados
-- ----------------------------
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puesto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacimiento` date NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of empleados
-- ----------------------------
INSERT INTO `empleados` VALUES ('1', '8312bc59-6a10-47ac-9fdc-ac8f8962643f', 'Rodrigo Perea', 'rodrigo@gmail.com', 'Front-End Developer', '1990-03-06', 'Calle 41 Edif. 5 Dep. 4 Col. Tecolutla. C.P. 24170, Ciudad Del Carmen, Campeche, México', '2018-11-26 19:31:54', '2018-11-26 19:31:54');
INSERT INTO `empleados` VALUES ('2', 'e7a0a0b2-7594-40d4-ab4d-8d59abf9f616', 'Rogelio Medina', 'rogelio@gmail.com', 'Backend Developer', '1988-04-10', 'Oriente 202, La Cañada, Tulancingo de Bravo, Hidalgo México', '2018-11-26 19:34:21', '2018-11-26 19:34:21');

-- ----------------------------
-- Table structure for empleado_habilidad
-- ----------------------------
DROP TABLE IF EXISTS `empleado_habilidad`;
CREATE TABLE `empleado_habilidad` (
  `empleado_id` int(10) unsigned NOT NULL,
  `habilidade_id` int(10) unsigned NOT NULL,
  `calificacion` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of empleado_habilidad
-- ----------------------------
INSERT INTO `empleado_habilidad` VALUES ('1', '5', null);
INSERT INTO `empleado_habilidad` VALUES ('1', '6', null);
INSERT INTO `empleado_habilidad` VALUES ('1', '11', null);
INSERT INTO `empleado_habilidad` VALUES ('1', '14', null);
INSERT INTO `empleado_habilidad` VALUES ('2', '1', null);
INSERT INTO `empleado_habilidad` VALUES ('2', '2', null);
INSERT INTO `empleado_habilidad` VALUES ('2', '10', null);

-- ----------------------------
-- Table structure for habilidades
-- ----------------------------
DROP TABLE IF EXISTS `habilidades`;
CREATE TABLE `habilidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of habilidades
-- ----------------------------
INSERT INTO `habilidades` VALUES ('1', '89195cdd-310e-4d9e-84b4-851a3b021ca9', 'PHP', '2018-11-26 19:18:22', '2018-11-26 19:18:22');
INSERT INTO `habilidades` VALUES ('2', 'a5d2dd94-a69e-4b5d-b564-b9cfa93e7daf', 'Laravel', '2018-11-26 19:18:57', '2018-11-26 19:18:57');
INSERT INTO `habilidades` VALUES ('3', '963a5f20-8b5b-47c8-ae9e-dd5fce3b8f4b', 'API RESTFUL', '2018-11-26 19:19:09', '2018-11-26 19:19:09');
INSERT INTO `habilidades` VALUES ('4', '9e43f2c4-602a-4050-9ac2-42eb29694a51', 'HTML5', '2018-11-26 19:19:33', '2018-11-26 19:19:33');
INSERT INTO `habilidades` VALUES ('5', '39d7e0df-f564-4d69-ad8c-6904656a8673', 'CSS3', '2018-11-26 19:19:47', '2018-11-26 19:19:47');
INSERT INTO `habilidades` VALUES ('6', '3c9edc47-d956-4cc6-9b76-3efd653bb187', 'jQuery', '2018-11-26 19:20:01', '2018-11-26 19:20:01');
INSERT INTO `habilidades` VALUES ('7', '8c8372a9-2a64-4236-8ffe-4769e767ebf0', 'AJAX', '2018-11-26 19:20:23', '2018-11-26 19:20:23');
INSERT INTO `habilidades` VALUES ('8', '587cb7dd-0dad-4dd9-a606-4fd0a5ba4ced', 'JavaScript', '2018-11-26 19:20:40', '2018-11-26 19:20:40');
INSERT INTO `habilidades` VALUES ('9', 'c7505aac-8979-4fe0-9a99-e88388c41105', 'MySQL', '2018-11-26 19:20:58', '2018-11-26 19:20:58');
INSERT INTO `habilidades` VALUES ('10', '94a3dc2b-127a-4597-9644-a9e384912408', 'SSH', '2018-11-26 19:21:19', '2018-11-26 19:21:19');
INSERT INTO `habilidades` VALUES ('11', '40d36f3e-fb78-4e26-acb4-52c663715cf8', 'SCRUM', '2018-11-26 19:21:34', '2018-11-26 19:21:34');
INSERT INTO `habilidades` VALUES ('12', '4681de40-f51e-4c9d-80db-7d10bfe22aaf', 'Mongo DB', '2018-11-26 19:22:09', '2018-11-26 19:22:09');
INSERT INTO `habilidades` VALUES ('13', '5de977d1-5c19-4360-ac53-fa3867624e95', 'Express', '2018-11-26 19:22:28', '2018-11-26 19:22:28');
INSERT INTO `habilidades` VALUES ('14', 'c504038f-af95-4ab7-8794-99fea1d6e633', 'Angular', '2018-11-26 19:22:47', '2018-11-26 19:22:47');
INSERT INTO `habilidades` VALUES ('15', 'd7b0a4e4-ba86-4c65-898e-6a04c3f9faad', 'Node', '2018-11-26 19:23:02', '2018-11-26 19:23:02');
INSERT INTO `habilidades` VALUES ('16', '1e5fd674-592f-4e99-b18c-9fbc00ca134c', 'React', '2018-11-26 19:23:17', '2018-11-26 19:23:17');
INSERT INTO `habilidades` VALUES ('17', '4edb9c42-7638-44ab-ac28-17e46ae2516f', 'Redis', '2018-11-26 19:23:29', '2018-11-26 19:23:29');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'admin', '2018-11-26 18:37:26', '2018-11-26 18:37:26');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Dashboard', '', '_self', 'voyager-boat', null, null, '1', '2018-11-26 18:37:27', '2018-11-26 18:37:27', 'voyager.dashboard', null);
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '', '_self', 'voyager-images', null, '5', '2', '2018-11-26 18:37:27', '2018-11-26 19:41:24', 'voyager.media.index', null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Users', '', '_self', 'voyager-person', null, null, '4', '2018-11-26 18:37:27', '2018-11-26 19:39:08', 'voyager.users.index', null);
INSERT INTO `menu_items` VALUES ('4', '1', 'Roles', '', '_self', 'voyager-lock', null, '5', '1', '2018-11-26 18:37:27', '2018-11-26 19:41:23', 'voyager.roles.index', null);
INSERT INTO `menu_items` VALUES ('5', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '5', '2018-11-26 18:37:27', '2018-11-26 19:41:23', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Menu Builder', '', '_self', 'voyager-list', null, '5', '3', '2018-11-26 18:37:27', '2018-11-26 19:41:24', 'voyager.menus.index', null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Database', '', '_self', 'voyager-data', null, '5', '4', '2018-11-26 18:37:27', '2018-11-26 19:41:24', 'voyager.database.index', null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Compass', '', '_self', 'voyager-compass', null, '5', '5', '2018-11-26 18:37:27', '2018-11-26 19:41:24', 'voyager.compass.index', null);
INSERT INTO `menu_items` VALUES ('9', '1', 'BREAD', '', '_self', 'voyager-bread', null, '5', '6', '2018-11-26 18:37:27', '2018-11-26 19:41:24', 'voyager.bread.index', null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Settings', '', '_self', 'voyager-settings', null, null, '6', '2018-11-26 18:37:27', '2018-11-26 19:41:24', 'voyager.settings.index', null);
INSERT INTO `menu_items` VALUES ('14', '1', 'Hooks', '', '_self', 'voyager-hook', null, '5', '7', '2018-11-26 18:37:44', '2018-11-26 19:41:24', 'voyager.hooks', null);
INSERT INTO `menu_items` VALUES ('15', '1', 'Empleados', '', '_self', 'voyager-people', null, null, '2', '2018-11-26 18:52:16', '2018-11-26 19:39:02', 'voyager.empleados.index', null);
INSERT INTO `menu_items` VALUES ('16', '1', 'Habilidades', '', '_self', 'voyager-wand', null, null, '3', '2018-11-26 19:09:07', '2018-11-26 19:39:05', 'voyager.habilidades.index', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_01_000000_add_voyager_user_fields', '1');
INSERT INTO `migrations` VALUES ('4', '2016_01_01_000000_create_data_types_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_05_19_173453_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_10_21_190000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_10_21_190000_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('8', '2016_11_30_135954_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_11_30_141208_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_12_26_201236_data_types__add__server_side', '1');
INSERT INTO `migrations` VALUES ('11', '2017_01_13_000000_add_route_to_menu_items_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_01_14_005015_create_translations_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_03_06_000000_add_controller_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_04_21_000000_add_order_to_data_rows_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_07_05_210000_add_policyname_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_08_05_000000_add_group_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_11_26_013050_add_user_role_relationship', '1');
INSERT INTO `migrations` VALUES ('19', '2017_11_26_015000_create_user_roles_table', '1');
INSERT INTO `migrations` VALUES ('20', '2018_03_11_000000_add_user_settings', '1');
INSERT INTO `migrations` VALUES ('21', '2018_03_14_000000_add_details_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('22', '2018_03_16_000000_make_settings_value_nullable', '1');
INSERT INTO `migrations` VALUES ('23', '2016_01_01_000000_create_pages_table', '2');
INSERT INTO `migrations` VALUES ('24', '2016_01_01_000000_create_posts_table', '2');
INSERT INTO `migrations` VALUES ('25', '2016_02_15_204651_create_categories_table', '2');
INSERT INTO `migrations` VALUES ('26', '2017_04_11_000000_alter_post_nullable_fields_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2018-11-26 18:37:27', '2018-11-26 18:37:27');
INSERT INTO `permissions` VALUES ('2', 'browse_bread', null, '2018-11-26 18:37:27', '2018-11-26 18:37:27');
INSERT INTO `permissions` VALUES ('3', 'browse_database', null, '2018-11-26 18:37:27', '2018-11-26 18:37:27');
INSERT INTO `permissions` VALUES ('4', 'browse_media', null, '2018-11-26 18:37:27', '2018-11-26 18:37:27');
INSERT INTO `permissions` VALUES ('5', 'browse_compass', null, '2018-11-26 18:37:27', '2018-11-26 18:37:27');
INSERT INTO `permissions` VALUES ('6', 'browse_menus', 'menus', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('7', 'read_menus', 'menus', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('8', 'edit_menus', 'menus', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('9', 'add_menus', 'menus', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('10', 'delete_menus', 'menus', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('11', 'browse_roles', 'roles', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('12', 'read_roles', 'roles', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('13', 'edit_roles', 'roles', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('14', 'add_roles', 'roles', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('15', 'delete_roles', 'roles', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('16', 'browse_users', 'users', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('17', 'read_users', 'users', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('18', 'edit_users', 'users', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('19', 'add_users', 'users', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('20', 'delete_users', 'users', '2018-11-26 18:37:28', '2018-11-26 18:37:28');
INSERT INTO `permissions` VALUES ('21', 'browse_settings', 'settings', '2018-11-26 18:37:29', '2018-11-26 18:37:29');
INSERT INTO `permissions` VALUES ('22', 'read_settings', 'settings', '2018-11-26 18:37:29', '2018-11-26 18:37:29');
INSERT INTO `permissions` VALUES ('23', 'edit_settings', 'settings', '2018-11-26 18:37:29', '2018-11-26 18:37:29');
INSERT INTO `permissions` VALUES ('24', 'add_settings', 'settings', '2018-11-26 18:37:29', '2018-11-26 18:37:29');
INSERT INTO `permissions` VALUES ('25', 'delete_settings', 'settings', '2018-11-26 18:37:29', '2018-11-26 18:37:29');
INSERT INTO `permissions` VALUES ('41', 'browse_hooks', null, '2018-11-26 18:37:44', '2018-11-26 18:37:44');
INSERT INTO `permissions` VALUES ('42', 'browse_empleados', 'empleados', '2018-11-26 18:52:16', '2018-11-26 18:52:16');
INSERT INTO `permissions` VALUES ('43', 'read_empleados', 'empleados', '2018-11-26 18:52:16', '2018-11-26 18:52:16');
INSERT INTO `permissions` VALUES ('44', 'edit_empleados', 'empleados', '2018-11-26 18:52:16', '2018-11-26 18:52:16');
INSERT INTO `permissions` VALUES ('45', 'add_empleados', 'empleados', '2018-11-26 18:52:16', '2018-11-26 18:52:16');
INSERT INTO `permissions` VALUES ('46', 'delete_empleados', 'empleados', '2018-11-26 18:52:16', '2018-11-26 18:52:16');
INSERT INTO `permissions` VALUES ('47', 'browse_habilidades', 'habilidades', '2018-11-26 19:09:07', '2018-11-26 19:09:07');
INSERT INTO `permissions` VALUES ('48', 'read_habilidades', 'habilidades', '2018-11-26 19:09:07', '2018-11-26 19:09:07');
INSERT INTO `permissions` VALUES ('49', 'edit_habilidades', 'habilidades', '2018-11-26 19:09:07', '2018-11-26 19:09:07');
INSERT INTO `permissions` VALUES ('50', 'add_habilidades', 'habilidades', '2018-11-26 19:09:07', '2018-11-26 19:09:07');
INSERT INTO `permissions` VALUES ('51', 'delete_habilidades', 'habilidades', '2018-11-26 19:09:07', '2018-11-26 19:09:07');

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('2', '1');
INSERT INTO `permission_role` VALUES ('3', '1');
INSERT INTO `permission_role` VALUES ('4', '1');
INSERT INTO `permission_role` VALUES ('5', '1');
INSERT INTO `permission_role` VALUES ('6', '1');
INSERT INTO `permission_role` VALUES ('7', '1');
INSERT INTO `permission_role` VALUES ('8', '1');
INSERT INTO `permission_role` VALUES ('9', '1');
INSERT INTO `permission_role` VALUES ('10', '1');
INSERT INTO `permission_role` VALUES ('11', '1');
INSERT INTO `permission_role` VALUES ('12', '1');
INSERT INTO `permission_role` VALUES ('13', '1');
INSERT INTO `permission_role` VALUES ('14', '1');
INSERT INTO `permission_role` VALUES ('15', '1');
INSERT INTO `permission_role` VALUES ('16', '1');
INSERT INTO `permission_role` VALUES ('17', '1');
INSERT INTO `permission_role` VALUES ('18', '1');
INSERT INTO `permission_role` VALUES ('19', '1');
INSERT INTO `permission_role` VALUES ('20', '1');
INSERT INTO `permission_role` VALUES ('21', '1');
INSERT INTO `permission_role` VALUES ('22', '1');
INSERT INTO `permission_role` VALUES ('23', '1');
INSERT INTO `permission_role` VALUES ('24', '1');
INSERT INTO `permission_role` VALUES ('25', '1');
INSERT INTO `permission_role` VALUES ('42', '1');
INSERT INTO `permission_role` VALUES ('43', '1');
INSERT INTO `permission_role` VALUES ('44', '1');
INSERT INTO `permission_role` VALUES ('45', '1');
INSERT INTO `permission_role` VALUES ('46', '1');
INSERT INTO `permission_role` VALUES ('47', '1');
INSERT INTO `permission_role` VALUES ('48', '1');
INSERT INTO `permission_role` VALUES ('49', '1');
INSERT INTO `permission_role` VALUES ('50', '1');
INSERT INTO `permission_role` VALUES ('51', '1');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Administrator', '2018-11-26 18:37:27', '2018-11-26 18:37:27');
INSERT INTO `roles` VALUES ('2', 'user', 'Normal User', '2018-11-26 18:37:27', '2018-11-26 18:37:27');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'site.title', 'Site Title', 'Empleados', '', 'text', '1', 'Site');
INSERT INTO `settings` VALUES ('2', 'site.description', 'Site Description', 'Ejercicio', '', 'text', '2', 'Site');
INSERT INTO `settings` VALUES ('3', 'site.logo', 'Site Logo', '', '', 'image', '3', 'Site');
INSERT INTO `settings` VALUES ('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', null, '', 'text', '4', 'Site');
INSERT INTO `settings` VALUES ('5', 'admin.bg_image', 'Admin Background Image', '', '', 'image', '5', 'Admin');
INSERT INTO `settings` VALUES ('6', 'admin.title', 'Admin Title', 'Empleados', '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('7', 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', '2', 'Admin');
INSERT INTO `settings` VALUES ('8', 'admin.loader', 'Admin Loader', '', '', 'image', '3', 'Admin');
INSERT INTO `settings` VALUES ('9', 'admin.icon_image', 'Admin Icon Image', '', '', 'image', '4', 'Admin');
INSERT INTO `settings` VALUES ('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', null, '', 'text', '1', 'Admin');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES ('1', 'data_types', 'display_name_singular', '5', 'pt', 'Post', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('2', 'data_types', 'display_name_singular', '6', 'pt', 'Página', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('3', 'data_types', 'display_name_singular', '1', 'pt', 'Utilizador', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('4', 'data_types', 'display_name_singular', '4', 'pt', 'Categoria', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('5', 'data_types', 'display_name_singular', '2', 'pt', 'Menu', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('6', 'data_types', 'display_name_singular', '3', 'pt', 'Função', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('7', 'data_types', 'display_name_plural', '5', 'pt', 'Posts', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('8', 'data_types', 'display_name_plural', '6', 'pt', 'Páginas', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('9', 'data_types', 'display_name_plural', '1', 'pt', 'Utilizadores', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('10', 'data_types', 'display_name_plural', '4', 'pt', 'Categorias', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('11', 'data_types', 'display_name_plural', '2', 'pt', 'Menus', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('12', 'data_types', 'display_name_plural', '3', 'pt', 'Funções', '2018-11-26 18:37:42', '2018-11-26 18:37:42');
INSERT INTO `translations` VALUES ('13', 'categories', 'slug', '1', 'pt', 'categoria-1', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('14', 'categories', 'name', '1', 'pt', 'Categoria 1', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('15', 'categories', 'slug', '2', 'pt', 'categoria-2', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('16', 'categories', 'name', '2', 'pt', 'Categoria 2', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('17', 'pages', 'title', '1', 'pt', 'Olá Mundo', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('18', 'pages', 'slug', '1', 'pt', 'ola-mundo', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('19', 'pages', 'body', '1', 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('20', 'menu_items', 'title', '1', 'pt', 'Painel de Controle', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('21', 'menu_items', 'title', '2', 'pt', 'Media', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('22', 'menu_items', 'title', '12', 'pt', 'Publicações', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('23', 'menu_items', 'title', '3', 'pt', 'Utilizadores', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('24', 'menu_items', 'title', '11', 'pt', 'Categorias', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('25', 'menu_items', 'title', '13', 'pt', 'Páginas', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('26', 'menu_items', 'title', '4', 'pt', 'Funções', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('27', 'menu_items', 'title', '5', 'pt', 'Ferramentas', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('28', 'menu_items', 'title', '6', 'pt', 'Menus', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('29', 'menu_items', 'title', '7', 'pt', 'Base de dados', '2018-11-26 18:37:43', '2018-11-26 18:37:43');
INSERT INTO `translations` VALUES ('30', 'menu_items', 'title', '10', 'pt', 'Configurações', '2018-11-26 18:37:43', '2018-11-26 18:37:43');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$mkByjZVyuKA6OSBx/oojueJHxb5W4spStPgRrntzU/xbMtUTxs/WK', 'JVaM8txPQxBHqinnwKu6pVrBQPq3qfG4chb5c2t12Gl19OkqfEynndu197UM', null, '2018-11-26 18:37:39', '2018-11-26 18:37:39');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
