
CREATE TABLE IF NOT EXISTS `destination_cdr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `calldate` datetime NOT NULL,
  `source` varchar(80) NOT NULL,
  `destination` varchar(80) NOT NULL,
  `account_code` varchar(30) DEFAULT NULL,
  `pincode` varchar(45) NOT NULL,
  `duration_call` bigint(20) NOT NULL DEFAULT '0',
  `duration_talk` bigint(20) NOT NULL,
  `disposition` varchar(255) NOT NULL,
  `clid` varchar(80) DEFAULT NULL,
  `cdr_id` bigint(20) DEFAULT NULL,
  `vxcdr_id` bigint(20) DEFAULT NULL,
  `provider` int(11) NOT NULL DEFAULT '0'
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;