CREATE TABLE `tbl_router_role` (
    `id` int(11) NOT NULL,
    `router_id` int(11) NOT NULL,
    `role_id` int(11) NOT NULL,
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
    `tbl_router_role`
ADD
    PRIMARY KEY (`id`);

ALTER TABLE
    `tbl_router_role`
MODIFY
    `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 1000000000;

ALTER TABLE
    `tbl_router_role`
ADD
    CONSTRAINT `tbl_router_role_router` FOREIGN KEY (`router_id`) REFERENCES `tbl_routers` (`id`);

ALTER TABLE
    `tbl_router_role`
ADD
    CONSTRAINT `tbl_router_role_role` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`);