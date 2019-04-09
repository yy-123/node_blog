/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 09/04/2019 16:31:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_03_06_033728_create_table_goods', 1);
INSERT INTO `migrations` VALUES (4, '2019_03_06_035406_add_quantity_to_goods', 2);
INSERT INTO `migrations` VALUES (5, '2019_03_06_045114_create-table-msg', 3);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (1, 'laravel db test', 'laravel是好个东西 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (2, 'laravel db test', '已update过的内容', 600, NULL, NULL);
INSERT INTO `msg` VALUES (3, 'laravel db test', '已update过的内容', 600, NULL, NULL);
INSERT INTO `msg` VALUES (21, 'laravel db test', 'laravel是好个东西--004 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (20, 'laravel db test', 'laravel是好个东西--003 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (19, 'laravel db test', 'laravel是好个东西--002 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (18, 'laravel db test', 'laravel是好个东西--008 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (17, 'laravel db test', 'laravel是好个东西--005 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (16, 'laravel db test', 'laravel是好个东西--004 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (15, 'laravel db test', 'laravel是好个东西--003 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (14, 'laravel db test', 'laravel是好个东西--002 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (22, 'laravel db test', 'laravel是好个东西--005 ，不错呀不错', 600, NULL, NULL);
INSERT INTO `msg` VALUES (23, 'laravel db test', 'laravel是好个东西--008 ，不错呀不错', 600, NULL, NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE,
  INDEX `password_resets_token_index`(`token`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `love` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'yoyo', '871248145@qq.com', '14e1b600b1fd579f47433b88e8d85291', 18, '吃饭睡觉打豆豆');
INSERT INTO `users` VALUES (2, 'yoyo', '8712481456@qq.com', '123456', 10, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (3, 'yoyo', '8712481457@qq.com', '123456', 18, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (4, 'yoyo', '8712481458@qq.com', '123456', 18, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (5, 'yoyo', '8712481459@qq.com', '123456', 16, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (6, 'yoyo', '87124814@qq.com', '123456', 18, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (7, 'yoyo', '87124813@qq.com', '123456', 4, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (8, 'yoyo', '87124812@qq.com', '123456', 18, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (9, 'yoyo', '8712485@qq.com', '123456', 3, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (10, 'yoyo', '8712445@qq.com', '123456', 12, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (11, 'yoyo', '87124045@qq.com', '123456', 18, '吃饭睡觉打另一半豆');
INSERT INTO `users` VALUES (12, '小树', '871@qq.com', '5d612726fe1e13b564c8abf8100ac754', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
