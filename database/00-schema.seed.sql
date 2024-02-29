SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
USE `dev_uv2`;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `activities` (
  `id` int NOT NULL,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `display` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `objetive` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `evidence` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `indicators` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `slug` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `dba` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `dba2` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `performance_levels` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `reinforce` tinyint NOT NULL DEFAULT '0',
  `zone` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `grade_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `activities_century_skills` (
  `activities_id` int NOT NULL,
  `century_skills_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `activities_thinking_skills` (
  `activities_id` int NOT NULL,
  `thinking_skills_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `avatars` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `slug` char(1) COLLATE utf8mb4_bin NOT NULL,
  `skin_tone` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `customizes` json NOT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `branches` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `town_id` int DEFAULT NULL,
  `institution_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `cashes` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `snip` varchar(155) COLLATE utf8mb4_bin NOT NULL,
  `type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `cash_types` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `century_skills` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `country_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `enrollments` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `school_year` int NOT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL,
  `institution_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `grade_group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `finances` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `finances_cashes` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `amount` int NOT NULL,
  `finance_id` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `cash_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `gameplays` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `data` json NOT NULL,
  `time` int NOT NULL,
  `score` int NOT NULL,
  `errors` json DEFAULT NULL,
  `abort` tinyint NOT NULL,
  `finish` tinyint NOT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `activity_id` int DEFAULT NULL,
  `enrollment_id` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `gameplay_learning_results` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `performance_level` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `gameplay_id` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `activity_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `num` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `grades_groups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `grade_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `imgs` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `hashable` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `imgs_users` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `img_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `institutions` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `inventories` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `inventories_items` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `is_showed` tinyint NOT NULL,
  `amount` int NOT NULL,
  `inventory_id` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `items` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `snip` varchar(155) COLLATE utf8mb4_bin NOT NULL,
  `value` int NOT NULL,
  `properties` text COLLATE utf8mb4_bin,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `licenses` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `serial` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `owner` int NOT NULL,
  `expired_date` date NOT NULL,
  `tumlab_name` varchar(155) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `login_record` (
  `id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `roles` text COLLATE utf8mb4_bin,
  `loginSuccess` tinyint NOT NULL,
  `loginAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `ipAddress` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `profiles` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `birth` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `disability` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `snip` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `thinking_skills` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `towns` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `transactions` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `transaction_id` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `amount` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `buyer` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `users` (
  `id` int NOT NULL,
  `keycloak_sub_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `username` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `activation_token` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `reset_password_token` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `pic_pass` tinyint NOT NULL,
  `first_login` tinyint NOT NULL DEFAULT '1',
  `first_select_avatar` tinyint NOT NULL DEFAULT '1',
  `role` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `profile_id` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_c9ee662a4db2641eeac1bd3358` (`slug`),
  ADD KEY `FK_b18bcb61a2746e8282cd8a20b55` (`subject_id`),
  ADD KEY `FK_32e72bfadedb3eac1672f732936` (`grade_id`);

ALTER TABLE `activities_century_skills`
  ADD PRIMARY KEY (`activities_id`,`century_skills_id`),
  ADD KEY `IDX_ec02145cb9125a0258e5b307cd` (`activities_id`),
  ADD KEY `IDX_dc467f8c015cb71092528e88c1` (`century_skills_id`);

ALTER TABLE `activities_thinking_skills`
  ADD PRIMARY KEY (`activities_id`,`thinking_skills_id`),
  ADD KEY `IDX_5a34086998568f38af49858ee7` (`activities_id`),
  ADD KEY `IDX_758ce3f8cc68ce5d727bf1aa7e` (`thinking_skills_id`);

ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_068bfde144915dbef38bae3180` (`user_id`);

ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_22973db823ebe1d988a3d542598` (`town_id`),
  ADD KEY `FK_319f0f63c7ef90bec51825bcd37` (`institution_id`);

ALTER TABLE `cashes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_1d66df4c5d40f2f45b46833a23` (`name`),
  ADD KEY `FK_bcbb317ca78697b31fe275b6e1b` (`type_id`);

ALTER TABLE `cash_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `century_skills`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7563404890a1ef1966595352f21` (`country_id`);

ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_ff997f5a39cd24a491b9aca45c` (`user_id`),
  ADD KEY `FK_73f727a7a6a89153fe392f90f7e` (`institution_id`),
  ADD KEY `FK_d8aea2830ed08ccc2a542c07f76` (`branch_id`),
  ADD KEY `FK_f615e252ce900beba100f3c7131` (`grade_group_id`);

ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_396a36bbb293f255464cff7acf` (`user_id`);

ALTER TABLE `finances_cashes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a65c2b6e257e2f25807c1a73500` (`finance_id`),
  ADD KEY `FK_c94ccb67463038691603e542fa5` (`cash_id`);

ALTER TABLE `gameplays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8c12bddd84fa0f6b44bb83123f` (`abort`),
  ADD KEY `IDX_59874813154f78667784983347` (`finish`),
  ADD KEY `FK_77446cd3c9923062927eaacf18f` (`activity_id`),
  ADD KEY `FK_15ad2adca56c3bdad0f49041755` (`enrollment_id`);

ALTER TABLE `gameplay_learning_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_97069f0f34a31de25c5f47e1bd` (`gameplay_id`),
  ADD KEY `FK_9441820a6da8c57a3e4a89f4e8c` (`activity_id`);

ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `grades_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a1e350dccd27965938f37940e81` (`grade_id`),
  ADD KEY `FK_76bd13c6676bc7673103a47937a` (`group_id`);

ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `imgs_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_0af24dcac4257167eebaf5695e` (`user_id`);

ALTER TABLE `inventories_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_eec318eb1813ede0c12f92a9006` (`inventory_id`),
  ADD KEY `FK_531bc79390179c90a416c890f2f` (`item_id`);

ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0c4aa809ddf5b0c6ca45d8a8e80` (`category_id`);

ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `login_record`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `thinking_skills`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_9622a3805504447b728dd24844d` (`department_id`);

ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_fe0bb3f6520ee0469504521e71` (`username`),
  ADD UNIQUE KEY `IDX_4454cae6e1c2a60b0fe85086c5` (`keycloak_sub_id`),
  ADD UNIQUE KEY `IDX_97672ac88f789774dd47f7c8be` (`email`),
  ADD UNIQUE KEY `IDX_89a1c9adfee558c580dd8a2b6a` (`activation_token`),
  ADD UNIQUE KEY `IDX_ee6419219542371563e0592db5` (`reset_password_token`),
  ADD UNIQUE KEY `REL_23371445bd80cb3e413089551b` (`profile_id`),
  ADD KEY `IDX_772886e2f1f47b9ceb04a06e20` (`username`,`email`);


ALTER TABLE `activities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `cashes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `cash_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `century_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `grades_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `institutions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `login_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `thinking_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `towns`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;


ALTER TABLE `activities`
  ADD CONSTRAINT `FK_32e72bfadedb3eac1672f732936` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `FK_b18bcb61a2746e8282cd8a20b55` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `activities_century_skills`
  ADD CONSTRAINT `FK_dc467f8c015cb71092528e88c1d` FOREIGN KEY (`century_skills_id`) REFERENCES `century_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ec02145cb9125a0258e5b307cd4` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `activities_thinking_skills`
  ADD CONSTRAINT `FK_5a34086998568f38af49858ee7b` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_758ce3f8cc68ce5d727bf1aa7ef` FOREIGN KEY (`thinking_skills_id`) REFERENCES `thinking_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `avatars`
  ADD CONSTRAINT `FK_068bfde144915dbef38bae31808` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `branches`
  ADD CONSTRAINT `FK_22973db823ebe1d988a3d542598` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`),
  ADD CONSTRAINT `FK_319f0f63c7ef90bec51825bcd37` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `cashes`
  ADD CONSTRAINT `FK_bcbb317ca78697b31fe275b6e1b` FOREIGN KEY (`type_id`) REFERENCES `cash_types` (`id`);

ALTER TABLE `departments`
  ADD CONSTRAINT `FK_7563404890a1ef1966595352f21` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

ALTER TABLE `enrollments`
  ADD CONSTRAINT `FK_73f727a7a6a89153fe392f90f7e` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`),
  ADD CONSTRAINT `FK_d8aea2830ed08ccc2a542c07f76` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `FK_f615e252ce900beba100f3c7131` FOREIGN KEY (`grade_group_id`) REFERENCES `grades_groups` (`id`),
  ADD CONSTRAINT `FK_ff997f5a39cd24a491b9aca45c9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `finances`
  ADD CONSTRAINT `FK_396a36bbb293f255464cff7acf4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `finances_cashes`
  ADD CONSTRAINT `FK_a65c2b6e257e2f25807c1a73500` FOREIGN KEY (`finance_id`) REFERENCES `finances` (`id`),
  ADD CONSTRAINT `FK_c94ccb67463038691603e542fa5` FOREIGN KEY (`cash_id`) REFERENCES `cashes` (`id`);

ALTER TABLE `gameplays`
  ADD CONSTRAINT `FK_15ad2adca56c3bdad0f49041755` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollments` (`id`),
  ADD CONSTRAINT `FK_77446cd3c9923062927eaacf18f` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`);

ALTER TABLE `gameplay_learning_results`
  ADD CONSTRAINT `FK_9441820a6da8c57a3e4a89f4e8c` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `FK_97069f0f34a31de25c5f47e1bd4` FOREIGN KEY (`gameplay_id`) REFERENCES `gameplays` (`id`);

ALTER TABLE `grades_groups`
  ADD CONSTRAINT `FK_76bd13c6676bc7673103a47937a` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `FK_a1e350dccd27965938f37940e81` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`);

ALTER TABLE `inventories`
  ADD CONSTRAINT `FK_0af24dcac4257167eebaf5695ed` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `inventories_items`
  ADD CONSTRAINT `FK_531bc79390179c90a416c890f2f` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `FK_eec318eb1813ede0c12f92a9006` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`);

ALTER TABLE `items`
  ADD CONSTRAINT `FK_0c4aa809ddf5b0c6ca45d8a8e80` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `towns`
  ADD CONSTRAINT `FK_9622a3805504447b728dd24844d` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

ALTER TABLE `users`
  ADD CONSTRAINT `FK_23371445bd80cb3e413089551bf` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
