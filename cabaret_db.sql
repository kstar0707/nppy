/*
 Navicat Premium Data Transfer

 Source Server         : cabaret
 Source Server Type    : MySQL
 Source Server Version : 100414 (10.4.14-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : cabaret_db

 Target Server Type    : MySQL
 Target Server Version : 100414 (10.4.14-MariaDB)
 File Encoding         : 65001

 Date: 25/10/2023 15:06:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (28, 11, 'こんにちは。 お世話になっております。', '653813be22d05.png', '653813be2303a.png', '', '', '', '');
INSERT INTO `article` VALUES (29, 12, 'アプリのために頑張ろう！', '6538149d186db.jpg', '6538149d1885b.jpg', '', '', '', '');

-- ----------------------------
-- Table structure for bar
-- ----------------------------
DROP TABLE IF EXISTS `bar`;
CREATE TABLE `bar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bar_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bar_location` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bar
-- ----------------------------
INSERT INTO `bar` VALUES (1, '111', 1);
INSERT INTO `bar` VALUES (2, '222', 2);
INSERT INTO `bar` VALUES (3, '333', 3);

-- ----------------------------
-- Table structure for chatting
-- ----------------------------
DROP TABLE IF EXISTS `chatting`;
CREATE TABLE `chatting`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sent_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_read` int NULL DEFAULT NULL,
  `last_time` date NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chatting
-- ----------------------------
INSERT INTO `chatting` VALUES (3, 6, 7, NULL, NULL, NULL, '2023-10-24 04:42:41');
INSERT INTO `chatting` VALUES (4, 7, 6, NULL, NULL, NULL, '2023-10-24 04:42:41');
INSERT INTO `chatting` VALUES (5, 8, 7, NULL, NULL, NULL, '2023-10-24 22:05:43');
INSERT INTO `chatting` VALUES (6, 7, 8, NULL, NULL, NULL, '2023-10-24 22:05:43');
INSERT INTO `chatting` VALUES (7, 7, 7, NULL, NULL, NULL, '2023-10-25 00:57:43');
INSERT INTO `chatting` VALUES (8, 7, 7, NULL, NULL, NULL, '2023-10-25 00:57:44');
INSERT INTO `chatting` VALUES (9, 6, 9, NULL, NULL, NULL, '2023-10-25 01:26:06');
INSERT INTO `chatting` VALUES (10, 9, 6, NULL, NULL, NULL, '2023-10-25 01:26:06');
INSERT INTO `chatting` VALUES (11, 7, 9, NULL, NULL, NULL, '2023-10-25 01:30:20');
INSERT INTO `chatting` VALUES (12, 9, 7, NULL, NULL, NULL, '2023-10-25 01:30:20');
INSERT INTO `chatting` VALUES (13, 8, 9, NULL, NULL, NULL, '2023-10-25 01:30:22');
INSERT INTO `chatting` VALUES (14, 9, 8, NULL, NULL, NULL, '2023-10-25 01:30:22');
INSERT INTO `chatting` VALUES (15, 11, 12, NULL, NULL, NULL, '2023-10-25 05:03:47');
INSERT INTO `chatting` VALUES (16, 12, 11, NULL, NULL, NULL, '2023-10-25 05:03:47');
INSERT INTO `chatting` VALUES (17, 11, 13, NULL, NULL, NULL, '2023-10-25 05:33:34');
INSERT INTO `chatting` VALUES (18, 13, 11, NULL, NULL, NULL, '2023-10-25 05:33:34');

-- ----------------------------
-- Table structure for following
-- ----------------------------
DROP TABLE IF EXISTS `following`;
CREATE TABLE `following`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `following_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of following
-- ----------------------------
INSERT INTO `following` VALUES (23, 11, 12);
INSERT INTO `following` VALUES (24, 11, 13);

-- ----------------------------
-- Table structure for residence
-- ----------------------------
DROP TABLE IF EXISTS `residence`;
CREATE TABLE `residence`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `residence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of residence
-- ----------------------------
INSERT INTO `residence` VALUES (1, '北海道');
INSERT INTO `residence` VALUES (2, '青森県');
INSERT INTO `residence` VALUES (3, '岩手県');
INSERT INTO `residence` VALUES (4, '宮城県');
INSERT INTO `residence` VALUES (5, '秋田県');
INSERT INTO `residence` VALUES (6, '山形県');
INSERT INTO `residence` VALUES (7, '福島県');
INSERT INTO `residence` VALUES (8, '茨城県');
INSERT INTO `residence` VALUES (9, '栃木県');
INSERT INTO `residence` VALUES (10, '群馬県');
INSERT INTO `residence` VALUES (11, '埼玉県');
INSERT INTO `residence` VALUES (12, '千葉県');
INSERT INTO `residence` VALUES (13, '東京都');
INSERT INTO `residence` VALUES (14, '神奈川県');
INSERT INTO `residence` VALUES (15, '新潟県');
INSERT INTO `residence` VALUES (16, '富山県');
INSERT INTO `residence` VALUES (17, '石川県');
INSERT INTO `residence` VALUES (18, '福井県');
INSERT INTO `residence` VALUES (19, '山梨県');
INSERT INTO `residence` VALUES (20, '長野県');
INSERT INTO `residence` VALUES (21, '岐阜県');
INSERT INTO `residence` VALUES (22, '静岡県');
INSERT INTO `residence` VALUES (23, '愛知県');
INSERT INTO `residence` VALUES (24, '三重県');
INSERT INTO `residence` VALUES (25, '滋賀県');
INSERT INTO `residence` VALUES (26, '京都府');
INSERT INTO `residence` VALUES (27, '大阪府');
INSERT INTO `residence` VALUES (28, '兵庫県');
INSERT INTO `residence` VALUES (29, '奈良県');
INSERT INTO `residence` VALUES (30, '和歌山県');
INSERT INTO `residence` VALUES (31, '鳥取県');
INSERT INTO `residence` VALUES (32, '島根県');
INSERT INTO `residence` VALUES (33, '岡山県');
INSERT INTO `residence` VALUES (34, '広島県');
INSERT INTO `residence` VALUES (35, '山口県');
INSERT INTO `residence` VALUES (36, '徳島県');
INSERT INTO `residence` VALUES (37, '香川県');
INSERT INTO `residence` VALUES (38, '愛媛県');
INSERT INTO `residence` VALUES (39, '高知県');
INSERT INTO `residence` VALUES (40, '福岡県');
INSERT INTO `residence` VALUES (41, '佐賀県');
INSERT INTO `residence` VALUES (42, '長崎県');
INSERT INTO `residence` VALUES (43, '熊本県');
INSERT INTO `residence` VALUES (44, '大分県');
INSERT INTO `residence` VALUES (45, '宮崎県');
INSERT INTO `residence` VALUES (46, '鹿児島県');
INSERT INTO `residence` VALUES (47, '沖縄県 ');

-- ----------------------------
-- Table structure for response_article
-- ----------------------------
DROP TABLE IF EXISTS `response_article`;
CREATE TABLE `response_article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `res_user_id` int NOT NULL,
  `res_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of response_article
-- ----------------------------
INSERT INTO `response_article` VALUES (12, 28, 12, 'お世話になっております。\n時間はありますか？', '2023-10-25 05:03:36');
INSERT INTO `response_article` VALUES (13, 28, 12, 'OKです。', '2023-10-25 05:05:37');
INSERT INTO `response_article` VALUES (16, 29, 11, 'Hi', '2023-10-25 05:37:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `login_method` int NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `user_pass` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` int NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `address` int NOT NULL,
  `bar_id` int NULL DEFAULT NULL,
  `identity_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (11, 1, '美しい処女', 'test1@gmail.com', '123456', '$2y$10$iJxrqHYtupKBTLQbFMYceOYknxyeWf9Tx7vBsPK/Z6ZyNTsg.XQom', '1698173772_splash4.png', '簡易売り', 0, '2000-10-17', 12, 2, 1, '2023-10-24 18:56:12');
INSERT INTO `users` VALUES (12, 1, 'ゲスト1', 'test2@gmail.com', '123456', '$2y$10$a9CFti6WPHMTGmOinI8MB.b/P2a57HpRvSMYKeLagBhJxUjhJTdne', '1698174032_gettyimages-1139169124-2048x2048.jpg', '東京', 0, '1997-07-07', 14, 0, 1, '2023-10-24 19:00:32');
INSERT INTO `users` VALUES (13, 1, 'Hikari', 'test3@gmail.com', '123456', '$2y$10$CXdOvxII.IC9jFsXu2peeehpv4nXoAQ1cByz7VxgByQmwZvKGfuTS', '1698175981_4.jpg', 'Tokyo', 1, '1998-08-12', 24, 0, 1, '2023-10-24 19:33:01');

SET FOREIGN_KEY_CHECKS = 1;
