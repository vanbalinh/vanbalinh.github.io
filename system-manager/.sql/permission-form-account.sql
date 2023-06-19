CREATE TABLE `tbl_permission_form_account` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `create` tinyint(1) NOT NULL DEFAULT 0,
  `update` tinyint(1) NOT NULL DEFAULT 0,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `updated_by` int(11) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_vietnamese_ci;

--
--
--  After table
--
--
ALTER TABLE
  `tbl_permission_form_account`
ADD
  PRIMARY KEY (`id`);

ALTER TABLE
  `tbl_permission_form_account`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 1000000000;

ALTER TABLE
  `tbl_permission_form_account`
ADD
  CONSTRAINT `tbl_permission_form_account_form` FOREIGN KEY (`form_id`) REFERENCES `tbl_forms` (`id`);

ALTER TABLE
  `tbl_permission_form_account`
ADD
  CONSTRAINT `tbl_permission_form_account` FOREIGN KEY (`account_id`) REFERENCES `tbl_accounts` (`id`);