
CREATE TABLE IF NOT EXISTS `source_cdr` (
  `callstart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `accountcode` varchar(50) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `callanswer` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `callend` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disposition` varchar(50) NOT NULL,
  `cdr_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pin_code` varchar(4) NOT NULL,
  `provider` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `calldate_idx` (`callstart`) USING BTREE,
  KEY `idx_acc_code_calldate` (`accountcode`,`callstart`) USING BTREE,
  KEY `uniqueid` (`uniqueid`),
  KEY `cdr_id` (`cdr_id`),
  KEY `idx_uniqueid_cdr_id` (`uniqueid`,`cdr_id`)
) ENGINE=MyISAM;


INSERT INTO `cdr` (`callstart`, `src`, `dst`, `accountcode`, `uniqueid`, `ID`, `callanswer`, `callend`, `disposition`, `cdr_id`, `pin_code`, `provider`) VALUES
('2012-03-18 20:54:49', '5796', '0761100866', '103f0124ad510516f33cab132c0a695b', 'call-F1884808-6753-2F10-181C-3A@10.217.164.33', 308006367, '2012-03-18 20:55:05', '2012-03-18 20:55:51', '200 OK', 2, '', 0),
('2012-03-18 20:54:51', '538020700', '0824848049', '5163fd808750863463fe67ebf2c39006', 'call-F16E4649-3853-2F10-1904-EB8@192.168.1.10', 308006369, '2012-03-18 20:55:10', '2012-03-18 20:56:29', '200 OK', 2, '', 0),
('2012-03-18 20:55:00', '6296', '0722181187', 'e5da8d145517fd7b1ed1bf6133e672e0', 'call-F1B9A5DD-6C53-2F10-020B-EED1@10.5.6.170', 308006371, '2012-03-18 20:55:14', '2012-03-18 21:08:25', '200 OK', 2, '', 0),
('2012-03-18 20:55:34', '*', '0833374195', '9182e33032e7503c27dc8d79bf4ebe85', 'call-7145D23D-6B53-2F10-0D1B-364E@10.217.169.131', 308006373, '2012-03-18 20:55:35', '2012-03-18 20:55:39', '200 OK', 2, '', 0),
('2012-03-18 20:55:52', '*', '0748585570', '9182e33032e7503c27dc8d79bf4ebe85', 'call-F1E3154C-6E53-2F10-0D1D-3650@10.217.169.131', 308006375, '2012-03-18 20:56:11', '2012-03-18 20:56:16', '200 OK', 2, '', 0),
('2012-03-18 20:56:03', '*', '0721924888', 'dc7ce157d6b6d0762eaa92c99da87379', 'call-71DC8F18-6953-2F10-031E-68D@192.168.1.10', 308006377, '2012-03-18 20:56:11', '2012-03-18 20:58:24', '200 OK', 2, '', 0),
('2012-03-18 20:56:22', '*', '0748585570', '9182e33032e7503c27dc8d79bf4ebe85', 'call-71C3DC87-6B53-2F10-0D1F-3652@10.217.169.131', 308006379, '2012-03-18 20:56:33', '2012-03-18 20:56:37', '200 OK', 2, '', 0),
('2012-03-18 20:56:38', '0791798752', '0860008907', 'd41d8cd98f00b204e9800998ecf8427e', '4e7c95a02851daab4af7f21c63f4c500@41.221.2.24', 308006381, '2012-03-18 20:56:38', '2012-03-18 20:56:49', '200 OK', 2, '', 0),
('2012-03-18 20:56:57', '538020700', '0717266447', '5163fd808750863463fe67ebf2c39006', 'call-F1199EB5-3753-2F10-1906-EBA@192.168.1.10', 308006383, '2012-03-18 20:57:07', '2012-03-18 20:58:01', '200 OK', 2, '', 0),
('2012-03-18 20:57:16', '3007', '0782788357', 'e82fe77d696328c140e0d552d09e20c3', '44553712-92831423@192.168.201.10', 308006385, '2012-03-18 20:57:21', '2012-03-18 20:58:03', '200 OK', 2, '', 0),
('2012-03-18 20:57:25', '*', '0833374195', '9182e33032e7503c27dc8d79bf4ebe85', 'call-F1861E71-7053-2F10-0D03-3657@10.217.169.131', 308006387, '2012-03-18 20:57:32', '2012-03-18 20:58:25', '200 OK', 2, '', 0),
('2012-03-18 20:57:41', '*', '0826499240', '2afec75697acfe8196bfc8085db9c5f6', 'call-712C9696-5853-2F10-1B10-1D62@192.168.1.10', 308006389, '2012-03-18 20:57:50', '2012-03-18 20:59:03', '200 OK', 2, '', 0),
('2012-03-18 20:58:13', '3007', '0790797535', 'e82fe77d696328c140e0d552d09e20c3', '101883712-92831434@192.168.201.10', 308006391, '2012-03-18 20:58:24', '2012-03-18 21:02:15', '487 Request Terminated', 2, '', 0),
('2012-03-18 20:58:25', '0737423779', '0413654236', 'd41d8cd98f00b204e9800998ecf8427e', '49b1f23a5f28266b19f8068d22302dca@41.221.2.22', 308006393, '2012-03-18 20:58:26', '0000-00-00 00:00:00', '487 Request Terminated', 1, '', 0),
('2012-03-18 20:58:25', '6266', '0137344818', 'e5da8d145517fd7b1ed1bf6133e672e0', 'call-F16B1BF6-6D53-2F10-020D-EED3@10.5.6.170', 308006395, '2012-03-18 20:58:33', '2012-03-18 20:58:45', '200 OK', 2, '', 0),
('2012-03-18 20:59:00', 'parkersantiintr', '0721786809', '8dbf1172511bd9c9d353cbadff889457', '1831255126-5064-117@BJC.BGI.B.BA', 308006397, '2012-03-18 20:59:23', '2012-03-18 21:00:06', '200 OK', 2, '', 0),
('2012-03-18 20:59:06', '6266', '0725620223', 'e5da8d145517fd7b1ed1bf6133e672e0', 'call-71A286B7-6C53-2F10-020F-EED5@10.5.6.170', 308006399, '2012-03-18 20:59:12', '2012-03-18 21:01:11', '200 OK', 2, '', 0),
('2012-03-18 20:59:10', '0577336229', '0828131944', '1a882ad0beb528cd106f6271a650f412', 'call-F1EC774C-2653-2F10-0804-56CE@192.168.1.10', 308006401, '2012-03-18 20:59:37', '0000-00-00 00:00:00', '487 Request Terminated', 1, '', 0),
('2012-03-18 20:59:13', '0126657954', '0131011220', 'd41d8cd98f00b204e9800998ecf8427e', 'BW205913397180312585033279@196.35.130.3', 308006403, '2012-03-18 20:59:20', '2012-03-18 20:59:55', '200 OK', 2, '', 0),
('2012-03-18 20:59:25', '218', '0823365230', '7e599e2e0bbb54158b9cebf2a4cd193c', 'call-71E25878-6C53-2F10-121C-2B70@192.168.1.10', 308006405, '2012-03-18 20:59:37', '2012-03-18 21:00:03', '200 OK', 2, '', 0),
('2012-03-18 20:59:36', '0826859696', '0114035740', 'd41d8cd98f00b204e9800998ecf8427e', 'BW2059360171803121813124303@196.35.130.3', 308006407, '2012-03-18 20:59:42', '2012-03-18 21:02:29', '200 OK', 2, '', 0),
('2012-03-18 20:59:41', '*', '0739293985', 'dc7ce157d6b6d0762eaa92c99da87379', 'call-71538CC8-6D53-2F10-031E-68F@192.168.1.10', 308006409, '2012-03-18 20:59:55', '2012-03-18 20:59:56', '200 OK', 2, '', 0),
('2012-03-18 20:59:58', '0577336229', '0828131944', '1a882ad0beb528cd106f6271a650f412', 'call-71BF414C-2D53-2F10-0805-56D0@192.168.1.10', 308006411, '2012-03-18 21:00:10', '0000-00-00 00:00:00', '487 Request Terminated', 1, '', 0),
('2012-03-18 21:00:06', '*', '0739293985', 'dc7ce157d6b6d0762eaa92c99da87379', 'call-7128AD42-6753-2F10-031F-691@192.168.1.10', 308006413, '2012-03-18 21:00:16', '2012-03-18 21:05:25', '200 OK', 2, '', 0),
('2012-03-18 21:00:08', '0210032621', '0215927980', '720e875242fb70c314a098e7ec130c88', 'call-F1198346-5D53-2F10-010A-150C@172.19.7.10', 308006415, '2012-03-18 21:00:20', '2012-03-18 21:01:05', '200 OK', 2, '', 0),
('2012-03-18 21:00:09', '538020700', '0722755898', '5163fd808750863463fe67ebf2c39006', 'call-F15AC489-3D53-2F10-1907-EBC@192.168.1.10', 308006417, '2012-03-18 21:00:19', '2012-03-18 21:00:49', '200 OK', 2, '', 0),
('2012-03-18 21:00:18', '6201', '0713903193', 'e5da8d145517fd7b1ed1bf6133e672e0', 'call-7141CA85-6B53-2F10-0211-EED7@10.5.6.170', 308006419, '2012-03-18 21:00:25', '2012-03-18 21:00:35', '200 OK', 2, '', 0),
('2012-03-18 21:00:26', '0215506328', '0780426163', '8cddb54e129233d95c837e43ca54a587', 'call-F1FA15E3-6A53-2F10-1117-DA1E@172.19.8.17', 308006421, '2012-03-18 21:00:48', '2012-03-18 21:02:44', '200 OK', 2, '', 0);


