--基表
CREATE TABLE `duotin_user_concerns_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `album_id` int(10) NOT NULL DEFAULT '0',
  `view_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `created_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `unread_track_count` int(10) NOT NULL DEFAULT '0' COMMENT '未读的新节目',
  `refresh_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '多听2.0 刷新时间，用于与duotin_content.online_time计算专辑节目更新数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`album_id`),
  KEY `album_id` (`album_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户订阅的专辑 按用户分表';


--分表1
CREATE TABLE `duotin_user_concerns_user_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `album_id` int(10) NOT NULL DEFAULT '0',
  `view_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `created_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `unread_track_count` int(10) NOT NULL DEFAULT '0' COMMENT '未读的新节目',
  `refresh_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '多听2.0 刷新时间，用于与duotin_content.online_time计算专辑节目更新数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`album_id`),
  KEY `album_id` (`album_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户订阅的专辑 按用户分表';

--分表2
CREATE TABLE `duotin_user_concerns_user_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `album_id` int(10) NOT NULL DEFAULT '0',
  `view_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `created_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `unread_track_count` int(10) NOT NULL DEFAULT '0' COMMENT '未读的新节目',
  `refresh_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '多听2.0 刷新时间，用于与duotin_content.online_time计算专辑节目更新数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`album_id`),
  KEY `album_id` (`album_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户订阅的专辑 按用户分表';