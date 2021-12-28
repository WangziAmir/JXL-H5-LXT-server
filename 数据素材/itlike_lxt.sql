/*
 Navicat MySQL Data Transfer

 Source Server         : 撩课-itlike
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : itlike_lxt

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 02/02/2021 17:48:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for error
-- ----------------------------
DROP TABLE IF EXISTS `error`;
CREATE TABLE `error`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `err_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `err_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `err_stack` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of error
-- ----------------------------
INSERT INTO `error` VALUES (1, 'ReferenceError', 'abc is not defined', '\"ReferenceError: abc is not defined\\n    at C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\src\\\\routers\\\\homeRouter.js:7:5\\n    at Layer.handle [as handle_request] (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\layer.js:95:5)\\n    at next (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\route.js:137:13)\\n    at Route.dispatch (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\route.js:112:3)\\n    at Layer.handle [as handle_request] (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\layer.js:95:5)\\n    at C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\index.js:281:22\\n    at Function.process_params (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\index.js:335:12)\\n    at next (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\index.js:275:10)\\n    at Function.handle (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\index.js:174:3)\\n    at router (C:\\\\Users\\\\50156\\\\Desktop\\\\JXL-H5-LXT-Server\\\\node_modules\\\\express\\\\lib\\\\router\\\\index.js:47:12)\"', '2021-01-31 11:09:28');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, '2021-01-31 11:08:37', 'GET', '/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (2, '2021-01-31 11:09:28', 'GET', '/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (3, '2021-01-31 11:12:08', 'GET', '/images/1.jpeg', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (4, '2021-01-31 15:45:28', 'GET', '/videos/01.mp4', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (5, '2021-01-31 15:45:28', 'GET', '/videos/01.mp4', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (6, '2021-01-31 15:53:22', 'GET', '/home/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (7, '2021-01-31 15:55:42', 'GET', '/home/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (8, '2021-01-31 15:58:14', 'GET', '/home/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (9, '2021-01-31 16:02:12', 'GET', '/home/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (10, '2021-01-31 16:04:49', 'GET', '/home/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (11, '2021-01-31 16:07:37', 'GET', '/home/nav', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (12, '2021-02-01 10:02:22', 'GET', '/home/focus_img', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (13, '2021-02-01 10:02:50', 'GET', '/images/banner/banner-3.jpg', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (14, '2021-02-01 10:17:31', 'GET', '/home/focus_img', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (15, '2021-02-01 10:17:48', 'GET', '/home/hot_courses', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (16, '2021-02-01 10:17:51', 'GET', '/home/hot_course', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (17, '2021-02-01 10:17:57', 'GET', '/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (18, '2021-02-01 10:18:03', 'GET', '/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (19, '2021-02-01 10:18:08', 'GET', '/home/hot_courses', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (20, '2021-02-01 10:18:14', 'GET', '/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (21, '2021-02-01 10:18:20', 'GET', '/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (22, '2021-02-01 10:18:31', 'GET', '/home/hot_courses', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (23, '2021-02-01 10:23:39', 'GET', '/home/star_teacher', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (24, '2021-02-01 10:26:07', 'GET', '/home/last_news', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (25, '2021-02-01 10:56:25', 'GET', '/home/web_config', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (26, '2021-02-01 10:57:19', 'GET', '/home/nav', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (27, '2021-02-01 10:57:46', 'GET', '/home/nav', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (28, '2021-02-01 10:59:59', 'GET', '/home/nav', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (29, '2021-02-01 11:00:05', 'GET', '/home/hot_course', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (30, '2021-02-01 11:00:12', 'GET', '/home/star_teacher', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (31, '2021-02-01 14:48:56', 'GET', '/teacher/list', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (32, '2021-02-01 14:49:17', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"3\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (33, '2021-02-01 14:49:24', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"2\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (34, '2021-02-01 14:49:32', 'GET', '/teacher/list', '{\"page_num\":\"2\",\"page_size\":\"2\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (35, '2021-02-01 14:56:24', 'GET', '/teacher/list', '{\"page_num\":\"2\",\"page_size\":\"2\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (36, '2021-02-01 14:56:35', 'GET', '/teacher/list', '{\"page_num\":\"2\",\"page_size\":\"2\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (37, '2021-02-01 14:56:38', 'GET', '/teacher/list', '{\"page_num\":\"2\",\"page_size\":\"5\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (38, '2021-02-01 14:56:51', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"5\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (39, '2021-02-01 14:57:01', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"5\",\"is_star\":\"-1\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (40, '2021-02-01 14:57:11', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"5\",\"is_star\":\"0\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (41, '2021-02-01 14:57:22', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"5\",\"is_star\":\"1\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (42, '2021-02-01 14:57:36', 'GET', '/teacher/list', '{\"page_num\":\"1\",\"page_size\":\"1\",\"is_star\":\"1\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (43, '2021-02-01 14:57:41', 'GET', '/teacher/list', '{\"page_num\":\"2\",\"page_size\":\"1\",\"is_star\":\"1\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (44, '2021-02-01 15:28:40', 'GET', '/teacher_detail/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (45, '2021-02-01 15:28:45', 'GET', '/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (46, '2021-02-01 15:28:50', 'GET', '/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (47, '2021-02-01 15:28:53', 'GET', '/teacher/detail/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (48, '2021-02-01 15:32:31', 'GET', '/teacher/detail/', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (49, '2021-02-01 15:32:42', 'GET', '/teacher/detail/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (50, '2021-02-01 15:35:39', 'GET', '/teacher/detail/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (51, '2021-02-01 15:36:07', 'GET', '/teacher/detail/1', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (52, '2021-02-01 15:40:08', 'GET', '/teacher/detail/1', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (53, '2021-02-01 15:41:17', 'GET', '/teacher/detail/1', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (54, '2021-02-01 15:42:34', 'GET', '/teacher/detail/1', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (55, '2021-02-01 15:42:34', 'GET', '/teacher/detail/1', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (56, '2021-02-01 15:42:54', 'GET', '/teacher/detail/3', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (57, '2021-02-01 15:44:19', 'GET', '/teacher/detail/9', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (58, '2021-02-01 16:33:30', 'GET', '/course', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (59, '2021-02-01 16:33:39', 'GET', '/course/course_category', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (60, '2021-02-01 16:34:11', 'GET', '/course/category', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (61, '2021-02-01 16:42:39', 'GET', '/course/list', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (62, '2021-02-01 16:43:19', 'GET', '/course/list', '{\"page_num\":\"2\",\"page_size\":\"3\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (63, '2021-02-01 16:43:32', 'GET', '/course/list', '{\"page_num\":\"1\",\"page_size\":\"3\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (64, '2021-02-01 16:43:52', 'GET', '/course/list', '{\"page_num\":\"1\",\"page_size\":\"3\",\"category_id\":\"1\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (65, '2021-02-01 16:43:57', 'GET', '/course/list', '{\"page_num\":\"1\",\"page_size\":\"3\",\"category_id\":\"3\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (66, '2021-02-01 17:30:28', 'GET', '/course/basic_info/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (67, '2021-02-01 17:34:09', 'GET', '/course/outline/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (68, '2021-02-01 17:34:20', 'GET', '/videos/05.mp4', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (69, '2021-02-01 17:34:21', 'GET', '/videos/05.mp4', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (70, '2021-02-01 17:37:16', 'GET', '/course/comment/2', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (71, '2021-02-01 17:37:28', 'GET', '/course/comment/1', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (72, '2021-02-01 18:19:42', 'GET', '/article', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (73, '2021-02-01 18:19:47', 'GET', '/article/list', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (74, '2021-02-01 18:20:05', 'GET', '/article/list', '{\"page_num\":\"2\",\"page_size\":\"3\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (75, '2021-02-01 18:20:19', 'GET', '/article/detail/4', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (76, '2021-02-01 19:00:05', 'GET', '/search/course', '{}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (77, '2021-02-01 19:00:14', 'GET', '/search/course', '{\"key\":\"n\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (78, '2021-02-01 19:00:23', 'GET', '/search/article', '{\"key\":\"n\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (79, '2021-02-01 19:00:29', 'GET', '/search/article', '{\"key\":\"\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (80, '2021-02-01 19:00:35', 'GET', '/search/article', '{\"key\":\"6\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (81, '2021-02-01 19:00:45', 'GET', '/search/teacher', '{\"key\":\"撩\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (82, '2021-02-01 19:00:51', 'GET', '/search/teacher', '{\"key\":\"顺\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (83, '2021-02-01 19:01:01', 'GET', '/search/all', '{\"key\":\"顺\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (84, '2021-02-01 19:01:47', 'GET', '/search/all', '{\"key\":\"顺\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');
INSERT INTO `log` VALUES (85, '2021-02-01 19:02:00', 'GET', '/search/all', '{\"key\":\"顺\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');

-- ----------------------------
-- Table structure for t_ad
-- ----------------------------
DROP TABLE IF EXISTS `t_ad`;
CREATE TABLE `t_ad`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ad_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int NOT NULL,
  `is_show` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `广告-课程`(`course_id`) USING BTREE,
  CONSTRAINT `广告-课程` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ad
-- ----------------------------
INSERT INTO `t_ad` VALUES (1, '极系列-H5: 今日免费!', '/images/banner/banner-1.jpg', 1, 1);
INSERT INTO `t_ad` VALUES (2, '撩课烤串-考出实力!', '/images/banner/banner-2.jpg', 2, 1);
INSERT INTO `t_ad` VALUES (3, '夏天来了, 小龙虾长大了!', '/images/banner/banner-3.jpg', 3, 1);
INSERT INTO `t_ad` VALUES (4, '代码累了, 躺一会!', '/images/banner/banner-4.jpg', 4, 1);
INSERT INTO `t_ad` VALUES (5, '家里装修, 必备代码桌', '/images/banner/banner-5.jpg', 5, 0);

-- ----------------------------
-- Table structure for t_comments
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `评论-课程`(`course_id`) USING BTREE,
  INDEX `评论-用户`(`user_id`) USING BTREE,
  CONSTRAINT `评论-用户` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `评论-课程` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comments
-- ----------------------------
INSERT INTO `t_comments` VALUES (1, 5, '讲的听得懂!', '2021-01-29 19:42:33', 1, 1);
INSERT INTO `t_comments` VALUES (2, 4, '细致的狠!', '2021-01-29 19:42:44', 1, 2);
INSERT INTO `t_comments` VALUES (3, 5, '真不错!', '2021-01-28 18:08:05', 1, 1);
INSERT INTO `t_comments` VALUES (4, 4, '很棒呦!', '2021-01-29 10:28:40', 2, 1);
INSERT INTO `t_comments` VALUES (5, 3, '很棒', '2021-01-29 12:12:12', 2, 2);
INSERT INTO `t_comments` VALUES (6, 2, '真我听不懂', '2021-01-29 12:12:12', 2, 3);
INSERT INTO `t_comments` VALUES (7, 5, '真棒!好的很!', '2021-01-29 11:23:30', 3, 1);
INSERT INTO `t_comments` VALUES (8, 1, '真棒!好的很!给1分是为了让你看到!', '2021-06-06 06:06:06', 3, 3);

-- ----------------------------
-- Table structure for t_config
-- ----------------------------
DROP TABLE IF EXISTS `t_config`;
CREATE TABLE `t_config`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wechat_qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信二维码',
  `mini_program` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公众号二维码',
  `wb_qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微博二维码',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'app下载二维码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_config
-- ----------------------------
INSERT INTO `t_config` VALUES (1, '/images/ad/wechat.jpg', '/images/ad/mini_pro.jpg', '/images/ad/weibo.jpg', '15300647210', '/images/ad/mini_pro.jpg');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fm_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_hot` smallint NOT NULL DEFAULT 0,
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `课程表-分类表`(`category_id`) USING BTREE,
  INDEX `课程表-讲师表`(`teacher_id`) USING BTREE,
  CONSTRAINT `课程表-分类表` FOREIGN KEY (`category_id`) REFERENCES `t_course_category` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `课程表-讲师表` FOREIGN KEY (`teacher_id`) REFERENCES `t_teacher` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES (1, 'Python语言核心', '/images/course/fm_1.jpg', 1, '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', 1, 1);
INSERT INTO `t_course` VALUES (2, 'Web大前端核心-王顺子', '/images/course/fm_2.jpg', 1, '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', 1, 1);
INSERT INTO `t_course` VALUES (3, 'Node+TS重构', '/images/course/fm_3.jpg', 0, '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', 3, 2);
INSERT INTO `t_course` VALUES (4, 'React全家桶', '/images/course/fm_4.jpg', 0, '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', 4, 3);
INSERT INTO `t_course` VALUES (5, '微信小程序精讲', '/images/course/fm_5.png', 1, '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', 5, 2);

-- ----------------------------
-- Table structure for t_course_category
-- ----------------------------
DROP TABLE IF EXISTS `t_course_category`;
CREATE TABLE `t_course_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_category
-- ----------------------------
INSERT INTO `t_course_category` VALUES (1, 'Python', 0);
INSERT INTO `t_course_category` VALUES (2, 'H5+CSS3', 0);
INSERT INTO `t_course_category` VALUES (3, 'JavaScript', 0);
INSERT INTO `t_course_category` VALUES (4, 'Node.js', 0);
INSERT INTO `t_course_category` VALUES (5, 'MySQL', 0);
INSERT INTO `t_course_category` VALUES (6, 'React', 0);
INSERT INTO `t_course_category` VALUES (7, '小程序', 0);

-- ----------------------------
-- Table structure for t_course_outline
-- ----------------------------
DROP TABLE IF EXISTS `t_course_outline`;
CREATE TABLE `t_course_outline`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `num` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `大纲-课程`(`course_id`) USING BTREE,
  CONSTRAINT `大纲-课程` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course_outline
-- ----------------------------
INSERT INTO `t_course_outline` VALUES (1, 1, '标题一', '/videos/01.mp4', 1);
INSERT INTO `t_course_outline` VALUES (2, 2, '标题二', '/videos/02.mp4', 1);
INSERT INTO `t_course_outline` VALUES (3, 3, '标题三', '/videos/03.mp4', 1);
INSERT INTO `t_course_outline` VALUES (4, 4, '标题四', '/videos/04.mp4', 1);
INSERT INTO `t_course_outline` VALUES (5, 1, '标题1', '/videos/05.mp4', 2);
INSERT INTO `t_course_outline` VALUES (6, 2, '标题2', '/videos/06.mp4', 2);
INSERT INTO `t_course_outline` VALUES (7, 1, '标题1', '/videos/07.mp4', 3);
INSERT INTO `t_course_outline` VALUES (8, 2, '标题2', '/videos/08.mp4', 3);
INSERT INTO `t_course_outline` VALUES (9, 3, '标题3', '/videos/09.mp4', 3);

-- ----------------------------
-- Table structure for t_nav
-- ----------------------------
DROP TABLE IF EXISTS `t_nav`;
CREATE TABLE `t_nav`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导航菜单标题',
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/' COMMENT '导航路由地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_nav
-- ----------------------------
INSERT INTO `t_nav` VALUES (1, '首页', '/');
INSERT INTO `t_nav` VALUES (2, '课程', '/course');
INSERT INTO `t_nav` VALUES (3, '讲师', '/teacher');
INSERT INTO `t_nav` VALUES (4, '文章', '/article');

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章简介',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章的内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '文章的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES (1, '撩课-极系列-每日分享-第1天-顺', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-02-01 19:01:44');
INSERT INTO `t_news` VALUES (2, '撩课-极系列-每日分享-第2天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:05:59');
INSERT INTO `t_news` VALUES (3, '撩课-极系列-每日分享-第3天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:06:03');
INSERT INTO `t_news` VALUES (4, '撩课-极系列-每日分享-第4天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:06:06');
INSERT INTO `t_news` VALUES (5, '撩课-极系列-每日分享-第5天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:06:10');
INSERT INTO `t_news` VALUES (6, '撩课-极系列-每日分享-第6天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:06:14');
INSERT INTO `t_news` VALUES (7, '撩课-极系列-每日分享-第7天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:06:18');
INSERT INTO `t_news` VALUES (8, '撩课-极系列-每日分享-第8天', '欢迎关注:\"天天撩课\"-每日技术分享', '\r\n<div class=\"m-cbi f-cb\" id=\"auto-id-1612011681321\">            <div class=\"u-ctn-intro j-course-user-box\">                <h2 class=\"u-ctit ctit1\">适用人群</h2>                <p class=\"j-targetuser cintrocon\">1.&nbsp;对计算机编程感兴趣；<br>2.&nbsp;纯小白，零基础；<br>3.&nbsp;有耐心，有毅力；</p>            </div>            <div class=\"u-ctn-intro u-ctn-intro-last\">            <h2 class=\"u-ctit ctit1\">课程概述</h2>            <div class=\"cintrocon j-courseintro\">----------------（1）-----------------<br>此阶段课程为《基础阶段》<br>旨在夯实Python语法基础！<br>此教程极其详尽<br>耐心坚持下来<br>会受用整个职业生涯。<br><br>----------------（2）-----------------<br>如果想直接学习《实战阶段》<br>请移步如下地址：<br>&gt;&nbsp;Python-GUI系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/FhIZAZ8V<br>&gt;&nbsp;Python-爬虫系列：<br>&nbsp;&nbsp;&nbsp;&nbsp;https://dwz.cn/jNm8IBd4<br><br>----------------（3）-----------------<br>如需交流或资料下载：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请添加QQ群：885843891<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顺子老师微信：itlike-sz</div>            <div class=\"j-courseintroImgs introimg\"><div><a id=\"j-addHref\" href=\"https://study.163.com/series/1202836601.htm\" target=\"_blank\"><img width=\"880\" height=\"1744\" src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/3a9b4cf9aed54af5bba4fb638f566b00.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681817\"></a><a id=\"j-add\" href=\"https://study.163.com/series/1202822601.htm\" target=\"_blank\"><img width=\"880\" height=\"1588\" src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" data-src=\"//edu-image.nosdn.127.net/8e6b94a3afd74b8480fa9e123f797f49.jpg?imageView&amp;quality=100&amp;type=webp\" class=\"intro-img\" id=\"auto-id-1612011681818\"></a></div></div>            </div>            </div>\r\n', '2021-01-30 21:06:24');

-- ----------------------------
-- Table structure for t_study_history
-- ----------------------------
DROP TABLE IF EXISTS `t_study_history`;
CREATE TABLE `t_study_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `outline_id` int NOT NULL DEFAULT 0,
  `state` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `历史-用户`(`user_id`) USING BTREE,
  INDEX `历史-课程`(`course_id`) USING BTREE,
  INDEX `历史`(`outline_id`) USING BTREE,
  CONSTRAINT `历史-用户` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `历史-课程` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `历史` FOREIGN KEY (`outline_id`) REFERENCES `t_course_outline` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_study_history
-- ----------------------------
INSERT INTO `t_study_history` VALUES (1, 1, 1, 3, 1);
INSERT INTO `t_study_history` VALUES (2, 1, 1, 1, 2);
INSERT INTO `t_study_history` VALUES (3, 1, 1, 2, 1);
INSERT INTO `t_study_history` VALUES (4, 2, 1, 2, 0);
INSERT INTO `t_study_history` VALUES (5, 3, 3, 1, 0);

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_star` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES (1, '撩课-王顺子', '/images/teacher/sz.png', '讲师', '一名爱分享技术的程序员', 0);
INSERT INTO `t_teacher` VALUES (2, '撩课-叶建华', '/images/teacher/jh.jpg', '讲师', '一名说话很快的程序员', 1);
INSERT INTO `t_teacher` VALUES (3, '小撩-1号', '/images/teacher/xl.jpg', '技术辅导', '一名不爱说话的程序员', 1);
INSERT INTO `t_teacher` VALUES (4, '小撩-2号', '/images/teacher/xl.jpg', '技术辅导', '一名喜欢揍人的程序员', 0);
INSERT INTO `t_teacher` VALUES (5, '小撩-3号', '/images/teacher/xl.jpg', '技术辅导', '一名爱睡觉的程序员', 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nick_name` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'sanfeng', 'itlike', '张三丰', '/images/user/zsf.jpg', '撩课小迷弟!');
INSERT INTO `t_user` VALUES (2, 'wuji', 'itlike', '张无忌', '/images/user/zwj.jpg', '撩课铁杆粉丝!');
INSERT INTO `t_user` VALUES (3, 'yangguo', 'itlike', '杨过', '/images/user/yg.jpg', '人才!');

SET FOREIGN_KEY_CHECKS = 1;
