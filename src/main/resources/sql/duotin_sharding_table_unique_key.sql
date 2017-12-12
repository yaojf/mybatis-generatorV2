CREATE TABLE `duotin_sharding_table_unique_key` (
  `table_name` varchar(32) NOT NULL COMMENT '表明，通过这个获取唯一id',
  `max_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '目前使用最大的id',
  PRIMARY KEY (`table_name`),
  UNIQUE KEY `tablename` (`table_name`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='为分表提供唯一的id';


--分表共享主键
INSERT INTO `duotin_sharding_table_unique_key` (`table_name`, `max_id`)
VALUES
	('duotin_user_concerns_user', 1);
