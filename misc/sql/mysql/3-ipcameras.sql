CREATE TABLE `ipCameraDriver` (
  `id` varchar(32) NOT NULL,
  `rtsp_path` varchar(256) DEFAULT NULL,
  `mjpeg_path` varchar(256) DEFAULT NULL,
  `rtsp_port` int(8) DEFAULT NULL,
  `mjpeg_port` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `ipCameraDriver` (`id`, `rtsp_path`, `mjpeg_path`, `rtsp_port`, `mjpeg_port`) VALUES
('RTSP-VAPIX-AUTO', '/mpeg4/media.amp', '/mjpeg/video.mjpg', 554, 80),
('RTSP-ACTi', '/', '/cgi-bin/cmd/encoder?SNAPSHOT', 7070, 80),
('RTSP-Vivotek-V1', '/live.sdp', '/cgi-bin/video.jpg', 554, 80),
('RTSP-Vivotek-V2', '/live.sdp', '/video.mjpg', 554, 80),
('RTSP-RovioRobot', '/webcam', '/GetCam.cgi', 554, 80),
('RTSP-Sony-V4', '/media/video1', '/image', 554, 80),
('RTSP-Sony-V5', '/image/video1', '/image', 554, 80),
('RTSP-Brickcom', '/channel1', '/channel2', 554, 80),
('RTSP-Linksys', '/img/video.sav', '/img/mjpeg.jpg', 554, 80),
('RTSP-DLink', '/play1.sdp', '/mjpeg.cgi', 554, 80),
('RTSP-Trendnet', '/mpeg4', '/cgi/mjpg/mjpeg.cgi', 554, 80);

CREATE TABLE `ipCameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  `manufacturer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `compression` varchar(30) DEFAULT NULL,
  `resolutions` varchar(250) DEFAULT NULL,
  `driver` varchar(32) NOT NULL DEFAULT 'RTSP-GENERIC',
  PRIMARY KEY (`id`),
  KEY `driver` (`driver`)
);

INSERT INTO `ipCameras` (`id`, `type`, `manufacturer`, `model`, `compression`, `resolutions`, `driver`) VALUES
(1, 'Camera', 'Axis', '209FD', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(2, 'Camera', 'Axis', '209FD-R', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(3, 'Camera', 'Axis', '209MFD', 'MPEG4,MJPEG', '1280x1024-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(4, 'Camera', 'Axis', '209MFD-R', 'MPEG4,MJPEG', '1280x1024-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(5, 'Camera', 'Axis', 'M3011', 'MPEG4,H264,MJPEG', '1280x800-30,1280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(6, 'Camera', 'Axis', 'M3014', 'MPEG4,H264,MJPEG', '1280x800-30,1280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(7, 'Camera', 'Axis', '216FD', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(8, 'Camera', 'Axis', '216FD-V', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(9, 'Camera', 'Axis', 'P3301', 'H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(10, 'Camera', 'Axis', 'P3301-V', 'H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(11, 'Camera', 'Axis', '216MFD', 'MPEG4,MJPEG', '1280x1024-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(12, 'Camera', 'Axis', '216MFD-V', 'MPEG4,MJPEG', '1280x1024-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(13, 'Camera', 'Axis', '225FD', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(14, 'Camera', 'Axis', 'P3343', 'H264,MJPEG', '800x600-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(15, 'Camera', 'Axis', 'P3343-V', 'H264,MJPEG', '1280x800-30,1280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(16, 'Camera', 'Axis', 'P3344', 'H264,MJPEG', '1280x800-30,1280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(17, 'Camera', 'Axis', 'P3344-V', 'H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(18, 'Camera', 'Axis', 'P3343-VE', 'H264,MJPEG', '1280x800-30,1280x720-30,800x600-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(19, 'Camera', 'Axis', 'P3344-VE', 'H264,MJPEG', '1280x800-30,1280x720-30,800x600-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(20, 'Camera', 'Axis', '207W', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(21, 'Camera', 'Axis', '207MW', 'MPEG4,MJPEG', '1280x1024-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(22, 'Camera', 'Axis', 'M1011', 'MPEG4,H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(23, 'Camera', 'Axis', 'M1011-W', 'MPEG4,H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(24, 'Camera', 'Axis', 'M1031', 'MPEG4,H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(25, 'Camera', 'Axis', 'M1031-W', 'MPEG4,H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(26, 'Camera', 'Axis', '210', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(27, 'Camera', 'Axis', '210A', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(28, 'Camera', 'Axis', 'P1311', 'MPEG4,H264,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(29, 'Camera', 'Axis', '211', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(30, 'Camera', 'Axis', '211A', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(31, 'Camera', 'Axis', '211W', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(32, 'Camera', 'Axis', '211M', 'MPEG4,MJPEG', '1280x1024-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(33, 'Camera', 'Axis', '221', 'MPEG4,MJPEG', '640x480-45,480x360-60', 'RTSP-VAPIX-AUTO'),
(34, 'Camera', 'Axis', 'P1343', 'H264,MJPEG', '800x600-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(35, 'Camera', 'Axis', 'P1344', 'H264,MJPEG', '1280x800-30,1280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(36, 'Camera', 'Axis', '223M', 'H264,MJPEG', '1600x1200-9,1600x900-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(37, 'Camera', 'Axis', 'P1346', 'H264,MJPEG', '1920x1080-30,1600x1200-30,2048x1536-20,1600x900-12,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(38, 'Camera', 'Axis', 'Q1755', 'H264,MJPEG', '1920x1080-30,1600x1200-301280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(39, 'Camera', 'Axis', '212PTZ', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(40, 'Camera', 'Axis', '212PTZ-V', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(41, 'Camera', 'Axis', '213PTZ', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(42, 'Camera', 'Axis', '214PTZ', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(43, 'Camera', 'Axis', '215PTZ', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(44, 'Camera', 'Axis', '215PTZ-E', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(45, 'Camera', 'Axis', 'P5534', 'H264,MJPEG', '1280x720-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(46, 'Camera', 'Axis', '232D+', 'H264,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(47, 'Camera', 'Axis', '233D', 'H264,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(48, 'Camera', 'Axis', 'Q6032-E', 'H264,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(49, 'Camera', 'Axis', 'Q1910', 'H264,MJPEG', '160x128-8', 'RTSP-VAPIX-AUTO'),
(50, 'Camera', 'Axis', 'Q1910-E', 'H264,MJPEG', '160x128-8', 'RTSP-VAPIX-AUTO'),
(51, 'Video Server', 'Axis', '241S', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(52, 'Video Server', 'Axis', 'M7001', 'H264,MJPEG', '720x480-21,720x288-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(53, 'Video Server', 'Axis', '243SA', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(54, 'Video Server', 'Axis', '247S', 'MPEG4,MJPEG', '704x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(55, 'Video Server', 'Axis', 'Q7401', 'H264,MJPEG', '720x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(56, 'Video Server', 'Axis', '240Q', 'MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(57, 'Video Server', 'Axis', '241Q', 'MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(58, 'Video Server', 'Axis', '241QA', 'MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(59, 'Video Server', 'Axis', 'Q7404', 'H264,MJPEG', '720x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(60, 'Video Server', 'Axis', '243Q', 'MPEG4,MJPEG', '640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(61, 'Video Server', 'Axis', 'Q7406', 'H264,MJPEG', '720x480-30,640x480-30,320x240-30', 'RTSP-VAPIX-AUTO'),
(62, 'Camera', 'Vivotek', 'IP7361', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(63, 'Camera', 'Vivotek', 'IP8332', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(64, 'Camera', 'Vivotek', 'IP8330', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(65, 'Camera', 'Vivotek', 'IP7330', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(66, 'Camera', 'Vivotek', 'IP7142', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(67, 'Camera', 'Vivotek', 'IP8161', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(68, 'Camera', 'Vivotek', 'FD8134V', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(69, 'Camera', 'Vivotek', 'FD8133V', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(70, 'Camera', 'Vivotek', 'FD8134', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(71, 'Camera', 'Vivotek', 'FD8133', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(72, 'Camera', 'Vivotek', 'IP7161', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(73, 'Camera', 'Vivotek', 'IP7160', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(74, 'Camera', 'Vivotek', 'IZ7151', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(75, 'Camera', 'Vivotek', 'IP7251', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(76, 'Camera', 'Vivotek', 'IP7153', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(77, 'Camera', 'Vivotek', 'IP7154', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(78, 'Camera', 'Vivotek', 'IP7130', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(79, 'Camera', 'Vivotek', 'IP7131', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(80, 'Camera', 'Vivotek', 'IP7133', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(81, 'Camera', 'Vivotek', 'IP7134', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(82, 'Camera', 'Vivotek', 'IP7135', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(83, 'Camera', 'Vivotek', 'IP7137', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(84, 'Camera', 'Vivotek', 'SD7313', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(85, 'Camera', 'Vivotek', 'SD7323', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(86, 'Camera', 'Vivotek', 'SD7151', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(87, 'Camera', 'Vivotek', 'SD8111', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(88, 'Camera', 'Vivotek', 'SD8121', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(89, 'Camera', 'Vivotek', 'FD8361', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(90, 'Camera', 'Vivotek', 'FD8361L', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(91, 'Camera', 'Vivotek', 'FD7141', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(92, 'Camera', 'Vivotek', 'FD7141V', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(93, 'Camera', 'Vivotek', 'FD8161', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(94, 'Camera', 'Vivotek', 'FD7132', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(95, 'Camera', 'Vivotek', 'FD7131', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(96, 'Camera', 'Vivotek', 'MD7560', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(97, 'Camera', 'Vivotek', 'MD7530', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(98, 'Camera', 'Vivotek', 'PZ7111', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(99, 'Camera', 'Vivotek', 'PZ7112', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(100, 'Camera', 'Vivotek', 'PZ7122', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(101, 'Camera', 'Vivotek', 'PZ7121', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(102, 'Camera', 'Vivotek', 'PZ7131', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(103, 'Camera', 'Vivotek', 'PZ7152', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(104, 'Camera', 'Vivotek', 'PZ7151', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(105, 'Camera', 'Vivotek', 'PZ7132', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(106, 'Camera', 'Vivotek', 'PZ7131', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(107, 'Camera', 'Vivotek', 'PT7137', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(108, 'Camera', 'Vivotek', 'PT7135', 'MPEG4', '', 'RTSP-Vivotek-V1'),
(109, 'Camera', 'Vivotek', 'IP8151P', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(110, 'Camera', 'Vivotek', 'IP8162P', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(111, 'Camera', 'Vivotek', 'IP8151', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(112, 'Camera', 'Vivotek', 'IP8362', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(113, 'Camera', 'Vivotek', 'IP8352', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(114, 'Camera', 'Vivotek', 'IP8132', 'H264,MJPEG,MJPEG', '', 'RTSP-Vivotek-V2'),
(115, 'Video Server', 'Vivotek', 'VS8102', 'H.264,MPEG4,MJPEG', '', 'RTSP-Vivotek-V2'),
(116, 'Video Server', 'Vivotek', 'VS7100', 'MPEG4', '', 'RTSP-Vivotek-V2'),
(117, 'Robot', 'WowWee', 'Rovio', 'MPEG4', '', 'RTSP-RovioRobot'),
(118, 'Camera', 'Generic', 'Generic', 'MPEG4', 'NULL', 'RTSP-GENERIC'),
(119, 'Camera', 'ACTi', 'CAM-5201', 'MPEG4', '', 'RTSP-ACTi'),
(120, 'Camera', 'ACTi', 'CAM-5221', 'MPEG4', '', 'RTSP-ACTi'),
(121, 'Camera', 'ACTi', 'CAM-5301', 'MPEG4', '', 'RTSP-ACTi'),
(122, 'Camera', 'ACTi', 'CAM-5321', 'MPEG4', '', 'RTSP-ACTi'),
(123, 'Camera', 'ACTi', 'CAM-7300', 'MPEG4', '', 'RTSP-ACTi'),
(124, 'Camera', 'ACTi', 'CAM-7301', 'MPEG4', '', 'RTSP-ACTi'),
(125, 'Camera', 'ACTi', 'CAM-7321', 'MPEG4', '', 'RTSP-ACTi'),
(126, 'Camera', 'ACTi', 'CAM-7322', 'MPEG4', '', 'RTSP-ACTi'),
(127, 'Camera', 'ACTi', 'CAM-6510', 'MPEG4', '', 'RTSP-ACTi'),
(128, 'Camera', 'ACTi', 'CAM-6610', 'MPEG4', '', 'RTSP-ACTi'),
(129, 'Camera', 'ACTi', 'CAM-6620', 'MPEG4', '', 'RTSP-ACTi'),
(130, 'Camera', 'ACTi', 'CAM-6630', 'MPEG4', '', 'RTSP-ACTi'),
(131, 'Camera', 'ACTi', 'ACM-1011', 'MPEG4', '', 'RTSP-ACTi'),
(132, 'Camera', 'ACTi', 'ACM-1231', 'MPEG4', '', 'RTSP-ACTi'),
(133, 'Camera', 'ACTi', 'ACM-1232', 'MPEG4', '', 'RTSP-ACTi'),
(134, 'Camera', 'ACTi', 'ACM-1311', 'MPEG4', '', 'RTSP-ACTi'),
(135, 'Camera', 'ACTi', 'ACM-1431', 'MPEG4', '', 'RTSP-ACTi'),
(136, 'Camera', 'ACTi', 'ACM-1432', 'MPEG4', '', 'RTSP-ACTi'),
(137, 'Camera', 'ACTi', 'ACM-1511', 'MPEG4', '', 'RTSP-ACTi'),
(138, 'Camera', 'ACTi', 'ACM-3001', 'MPEG4', '', 'RTSP-ACTi'),
(139, 'Camera', 'ACTi', 'ACM-3011', 'MPEG4', '', 'RTSP-ACTi'),
(140, 'Camera', 'ACTi', 'ACM-3211', 'MPEG4', '', 'RTSP-ACTi'),
(141, 'Camera', 'ACTi', 'ACM-3311', 'MPEG4', '', 'RTSP-ACTi'),
(142, 'Camera', 'ACTi', 'ACM-3401', 'MPEG4', '', 'RTSP-ACTi'),
(143, 'Camera', 'ACTi', 'ACM-3411', 'MPEG4', '', 'RTSP-ACTi'),
(144, 'Camera', 'ACTi', 'ACM-3511', 'MPEG4', '', 'RTSP-ACTi'),
(145, 'Camera', 'ACTi', 'ACM-3601', 'MPEG4', '', 'RTSP-ACTi'),
(146, 'Camera', 'ACTi', 'ACM-3603', 'MPEG4', '', 'RTSP-ACTi'),
(147, 'Camera', 'ACTi', 'ACM-3701', 'MPEG4', '', 'RTSP-ACTi'),
(148, 'Camera', 'ACTi', 'ACM-3703', 'MPEG4', '', 'RTSP-ACTi'),
(149, 'Camera', 'ACTi', 'ACM-7411', 'MPEG4', '', 'RTSP-ACTi'),
(150, 'Camera', 'ACTi', 'ACM-7511', 'MPEG4', '', 'RTSP-ACTi'),
(151, 'Camera', 'ACTi', 'ACM-4000', 'MPEG4', '', 'RTSP-ACTi'),
(152, 'Camera', 'ACTi', 'ACM-4200', 'MPEG4', '', 'RTSP-ACTi'),
(153, 'Camera', 'ACTi', 'ACM-4201', 'MPEG4', '', 'RTSP-ACTi'),
(154, 'Camera', 'ACTi', 'ACM-5001', 'MPEG4', '', 'RTSP-ACTi'),
(155, 'Camera', 'ACTi', 'ACM-5601', 'MPEG4', '', 'RTSP-ACTi'),
(156, 'Camera', 'ACTi', 'ACM-5611', 'MPEG4', '', 'RTSP-ACTi'),
(157, 'Camera', 'ACTi', 'ACM-5711', 'MPEG4', '', 'RTSP-ACTi'),
(158, 'Camera', 'ACTi', 'ACM-8201', 'MPEG4', '', 'RTSP-ACTi'),
(159, 'Camera', 'ACTi', 'ACM-8211', 'MPEG4', '', 'RTSP-ACTi'),
(160, 'Camera', 'ACTi', 'ACM-8511', 'MPEG4', '', 'RTSP-ACTi'),
(161, 'Camera', 'ACTi', 'TCM-1231', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(162, 'Camera', 'ACTi', 'TCM-1232', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(163, 'Camera', 'ACTi', 'TCM-1511', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(164, 'Camera', 'ACTi', 'TCM-3001', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(165, 'Camera', 'ACTi', 'TCM-3011', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(166, 'Camera', 'ACTi', 'TCM-3401', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(167, 'Camera', 'ACTi', 'TCM-3411', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(168, 'Camera', 'ACTi', 'TCM-3511', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(169, 'Camera', 'ACTi', 'TCM-4101', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(170, 'Camera', 'ACTi', 'TCM-4301', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(171, 'Camera', 'ACTi', 'TCM-7411', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(172, 'Camera', 'ACTi', 'TCM-4301', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(173, 'Camera', 'ACTi', 'TCM-5001', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(174, 'Camera', 'ACTi', 'TCM-5311', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(175, 'Camera', 'ACTi', 'TCM-5312', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(176, 'Camera', 'ACTi', 'TCM-5601', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(177, 'Camera', 'ACTi', 'TCM-5611', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(178, 'Camera', 'ACTi', 'TCM-7011', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(179, 'Camera', 'ACTi', 'TCM-7411', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(180, 'Camera', 'ACTi', 'TCM-7811', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(181, 'Video Server', 'ACTi', 'SED-2120', 'MPEG4', '', 'RTSP-ACTi'),
(182, 'Video Server', 'ACTi', 'SED-2140', 'MPEG4', '', 'RTSP-ACTi'),
(183, 'Video Server', 'ACTi', 'SED-2610', 'MPEG4', '', 'RTSP-ACTi'),
(184, 'Video Server', 'ACTi', 'ACD-2100', 'MPEG4', '', 'RTSP-ACTi'),
(185, 'Video Server', 'ACTi', 'ACD-2100T', 'MPEG4', '', 'RTSP-ACTi'),
(186, 'Video Server', 'ACTi', 'ACD-2200', 'MPEG4', '', 'RTSP-ACTi'),
(187, 'Video Server', 'ACTi', 'ACD-2300', 'MPEG4', '', 'RTSP-ACTi'),
(188, 'Video Server', 'ACTi', 'ACD-2400', 'MPEG4', '', 'RTSP-ACTi'),
(189, 'Video Server', 'ACTi', 'ACD-3100', 'MPEG4', '', 'RTSP-ACTi'),
(190, 'Video Server', 'ACTi', 'ACD-2000Q', 'MPEG4', '', 'RTSP-ACTi'),
(191, 'Video Server', 'ACTi', 'ACD-2000QT', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(192, 'Video Server', 'ACTi', 'TCD-2100', 'MPEG4,H.264', '', 'RTSP-ACTi'),
(193, 'Video Server', 'ACTi', 'TCD-2500', 'MPEG4', '', 'RTSP-ACTi'),
(194, 'Camera', 'TRENDnet', 'TV-IP512P', 'MJPEG,MPEG4', '', 'RTSP-Trendnet'),
(195, 'Camera', 'TRENDnet', 'TV-IP512WN', 'MJPEG,MPEG5', '', 'RTSP-Trendnet'),
(196, 'Camera', 'TRENDnet', 'TV-IP522P', 'MJPEG,MPEG6', '', 'RTSP-Trendnet'),
(197, 'Camera', 'TRENDnet', 'TV-IP110W', 'MJPEG,MPEG7', '', ''),
(198, 'Camera', 'TRENDnet', 'TV-IP121W', 'MJPEG,MPEG8', '', ''),
(199, 'Camera', 'TRENDnet', 'TV-IP252P', 'MJPEG,MPEG9', '', 'RTSP-Trendnet'),
(200, 'Camera', 'TRENDnet', 'TV-IP312', 'MJPEG,MPEG10', '', 'RTSP-Trendnet'),
(201, 'Camera', 'TRENDnet', 'TV-IP312W', 'MJPEG,MPEG11', '', 'RTSP-Trendnet'),
(202, 'Camera', 'TRENDnet', 'TV-IP410', 'MJPEG,MPEG12', '', ''),
(203, 'Camera', 'TRENDnet', 'TV-IP410W', 'MJPEG,MPEG13', '', ''),
(204, 'Camera', 'TRENDnet', 'TV-IP422', 'MJPEG,MPEG14', '', 'RTSP-Trendnet'),
(205, 'Camera', 'TRENDnet', 'TV-IP422W', 'MJPEG,MPEG15', '', 'RTSP-Trendnet'),
(206, 'Camera', 'Arecont Vision', 'AV1300AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(207, 'Camera', 'Arecont Vision', 'AV1300DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(208, 'Camera', 'Arecont Vision', 'AV1300M', 'H.264 ', '', 'RTSP-ArecontVision'),
(209, 'Camera', 'Arecont Vision', 'AV1305', 'H.264 ', '', 'RTSP-ArecontVision'),
(210, 'Camera', 'Arecont Vision', 'AV1305DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(211, 'Camera', 'Arecont Vision', 'AV1305-AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(212, 'Camera', 'Arecont Vision', 'AV1355', 'H.264 ', '', 'RTSP-ArecontVision'),
(213, 'Camera', 'Arecont Vision', 'AV1355DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(214, 'Camera', 'Arecont Vision', 'AV2100AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(215, 'Camera', 'Arecont Vision', 'AV2100DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(216, 'Camera', 'Arecont Vision', 'AV2100M', 'H.264 ', '', 'RTSP-ArecontVision'),
(217, 'Camera', 'Arecont Vision', 'AV2105', 'H.264 ', '', 'RTSP-ArecontVision'),
(218, 'Camera', 'Arecont Vision', 'AV2105-AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(219, 'Camera', 'Arecont Vision', 'AV2105DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(220, 'Camera', 'Arecont Vision', 'AV2155', 'H.264 ', '', 'RTSP-ArecontVision'),
(221, 'Camera', 'Arecont Vision', 'AV2155DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(222, 'Camera', 'Arecont Vision', 'AV3100AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(223, 'Camera', 'Arecont Vision', 'AV3100DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(224, 'Camera', 'Arecont Vision', 'AV3100M', 'H.264 ', '', 'RTSP-ArecontVision'),
(225, 'Camera', 'Arecont Vision', 'AV3105', 'H.264 ', '', 'RTSP-ArecontVision'),
(226, 'Camera', 'Arecont Vision', 'AV3105-AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(227, 'Camera', 'Arecont Vision', 'AV3105DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(228, 'Camera', 'Arecont Vision', 'AV3155', 'H.264 ', '', 'RTSP-ArecontVision'),
(229, 'Camera', 'Arecont Vision', 'AV3155DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(230, 'Camera', 'Arecont Vision', 'AV3130M', 'H.264 ', '', 'RTSP-ArecontVision'),
(231, 'Camera', 'Arecont Vision', 'AV3135', 'H.264 ', '', 'RTSP-ArecontVision'),
(232, 'Camera', 'Arecont Vision', 'AV5100AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(233, 'Camera', 'Arecont Vision', 'AV5100DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(234, 'Camera', 'Arecont Vision', 'AV5100M', 'H.264 ', '', 'RTSP-ArecontVision'),
(235, 'Camera', 'Arecont Vision', 'AV5105', 'H.264 ', '', 'RTSP-ArecontVision'),
(236, 'Camera', 'Arecont Vision', 'AV5155', 'H.264 ', '', 'RTSP-ArecontVision'),
(237, 'Camera', 'Arecont Vision', 'AV5155DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(238, 'Camera', 'Arecont Vision', 'AV5105-AI', 'H.264 ', '', 'RTSP-ArecontVision'),
(239, 'Camera', 'Arecont Vision', 'AV5105DN', 'H.264 ', '', 'RTSP-ArecontVision'),
(240, 'Camera', 'Brickcom', 'OB-100Ae-f3', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(241, 'Camera', 'Brickcom', 'OB-040Ce-f3', 'MJPEG,MPEG4', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(242, 'Camera', 'Brickcom', 'WOB-100Ae-f3', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(243, 'Camera', 'Brickcom', 'WOB-040Ce-f3', 'MJPEG,MPEG4', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(244, 'Camera', 'Brickcom', 'GOB-100Ae-f3', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(245, 'Camera', 'Brickcom', 'GOB-040Ce-f3', 'MJPEG,MPEG4', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(246, 'Camera', 'Brickcom', 'OB-100Ae-73', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(247, 'Camera', 'Brickcom', 'OB-040Ce-73', 'MJPEG,MPEG4', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(248, 'Camera', 'Brickcom', 'WOB-100Ae-73', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(249, 'Camera', 'Brickcom', 'WOB-040Ce-73', 'MJPEG,MPEG4', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(250, 'Camera', 'Brickcom', 'GOB-100Ae-73', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(251, 'Camera', 'Brickcom', 'GOB-040Ce-73', 'MJPEG,MPEG4', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(252, 'Camera', 'Brickcom', 'OB-100Ap-73', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(253, 'Camera', 'Brickcom', 'GOB-040Cp-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(254, 'Camera', 'Brickcom', 'OB-040Cp-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(255, 'Camera', 'Brickcom', 'WOB-100Ap-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(256, 'Camera', 'Brickcom', 'OB-040Cp-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(257, 'Camera', 'Brickcom', 'WOB-100Ap-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(258, 'Camera', 'Brickcom', 'WOB-040Cp-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(259, 'Camera', 'Brickcom', 'GOB-100Ap-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(260, 'Camera', 'Brickcom', 'GOB-040Cp-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(261, 'Camera', 'Brickcom', 'OB-100Aa-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(262, 'Camera', 'Brickcom', 'OB-040Ca-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(263, 'Camera', 'Brickcom', 'WOB-100Aa-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(264, 'Camera', 'Brickcom', 'WOB-040Ca-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(265, 'Camera', 'Brickcom', 'GOB-100Aa-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(266, 'Camera', 'Brickcom', 'GOB-040Ca-73', 'H264,MPEG4,MJPEG', '720x480-30FPS,640x480-30FPS', 'RTSP-Brickcom'),
(267, 'Camera', 'Brickcom', 'CB-100Ae-08', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(268, 'Camera', 'Brickcom', 'WCB-100Ae-08', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(269, 'Camera', 'Brickcom', 'CB-100Ae-00', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(270, 'Camera', 'Brickcom', 'WCB-100Ae-00', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(271, 'Camera', 'Brickcom', 'CB-100Ap-0c', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(272, 'Camera', 'Brickcom', 'WCB-100Ap-0c', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(273, 'Camera', 'Brickcom', 'CB-100Ap-04', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(274, 'Camera', 'Brickcom', 'WCB-100Ap-04', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(275, 'Camera', 'Brickcom', 'FB-100Ae-21', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(276, 'Camera', 'Brickcom', 'WFB-100Ae-21', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(277, 'Camera', 'Brickcom', 'FB-130Ae-21', 'MJPEG,MPEG4', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(278, 'Camera', 'Brickcom', 'WFB-130Ae-21', 'MJPEG,MPEG4', '1280x1024-15FPS,640x400-30FPS', 'RTSP-Brickcom'),
(279, 'Camera', 'Brickcom', 'FB-100Ap-31', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(280, 'Camera', 'Brickcom', 'WFB-100Ap-31', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(281, 'Camera', 'Brickcom', 'FB-130Ap-31', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(282, 'Camera', 'Brickcom', 'WFB-130Ap-31', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(283, 'Camera', 'Brickcom', 'FB-100Aa-31', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(284, 'Camera', 'Brickcom', 'WFB-100Aa-31', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(285, 'Camera', 'Brickcom', 'FB-130Aa-31', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(286, 'Camera', 'Brickcom', 'WFB-130Aa-31', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(287, 'Camera', 'Brickcom', 'FD-100Ae-73', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(288, 'Camera', 'Brickcom', 'FD-130Ae-73', 'MJPEG,MPEG4', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(289, 'Camera', 'Brickcom', 'FD-100Ap-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(290, 'Camera', 'Brickcom', 'FD-130Ap-73', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(291, 'Camera', 'Brickcom', 'FD-100Aa-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(292, 'Camera', 'Brickcom', 'FD-130Aa-73', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(293, 'Camera', 'Brickcom', 'VD-100Ae-73', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(294, 'Camera', 'Brickcom', 'VD-130Ae-73', 'MJPEG,MPEG4', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(295, 'Camera', 'Brickcom', 'VD-100Ap-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(296, 'Camera', 'Brickcom', 'VD-130Ap-73', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(297, 'Camera', 'Brickcom', 'VD-100Aa-73', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(298, 'Camera', 'Brickcom', 'VD-130Aa-73', 'H264,MPEG4,MJPEG', '1280x1024-15FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(299, 'Camera', 'Brickcom', 'MD-100Ae-00', 'MJPEG,MPEG4', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(300, 'Camera', 'Brickcom', 'MD-100Ap-00', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(301, 'Camera', 'Brickcom', 'MD-100Aa-00', 'H264,MPEG4,MJPEG', '1280x800-30FPS,640x512-15FPS,320x256-15FPS', 'RTSP-Brickcom'),
(302, 'Video Server', 'Brickcom', 'VS-01Ae', 'MJPEG,MPEG4', '720x480-30FPS', 'RTSP-Brickcom'),
(303, 'Video Server', 'Brickcom', 'WVS-01Ae', 'MJPEG,MPEG4', '720x480-30FPS', 'RTSP-Brickcom'),
(304, 'Video Server', 'Brickcom', 'VS-01Ap', 'H264,MPEG4,MJPEG', '720x480-30FPS', 'RTSP-Brickcom'),
(305, 'Video Server', 'Brickcom', 'WVS-01Ap', 'H264,MPEG4,MJPEG', '720x480-30FPS', 'RTSP-Brickcom'),
(306, 'Video Server', 'Brickcom', 'VS-01Aa', 'H264,MPEG4,MJPEG', '720x480-30FPS', 'RTSP-Brickcom'),
(307, 'Video Server', 'Brickcom', 'WVS-01Aa', 'H264,MPEG4,MJPEG', '720x480-30FPS', 'RTSP-Brickcom'),
(308, 'Camera', 'Sony', 'SNC-CS50N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(309, 'Camera', 'Sony', 'SNC-DF50N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(310, 'Camera', 'Sony', 'SNC-DF80N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(311, 'Camera', 'Sony', 'SNC-DF85N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(312, 'Camera', 'Sony', 'SNC-RZ50N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(313, 'Camera', 'Sony', 'SNC-RX530N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(314, 'Camera', 'Sony', 'SNC-RX550N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(315, 'Camera', 'Sony', 'SNC-RX570N', 'MPEG4,MJPEG', '704x480-30FPS,640x480-30FPS,320x240-30FPS,160x120-30FPS', ''),
(316, 'Camera', 'Sony', 'SNC-DS10', 'MPEG4,MJPEG', '640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(317, 'Camera', 'Sony', 'SNC-DS60', 'MPEG4,MJPEG', '640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(318, 'Camera', 'Sony', 'SNC-CS20', 'MPEG4,MJPEG', '640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(319, 'Camera', 'Sony', 'SNC-DM110', 'MPEG4,MJPEG', '640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(320, 'Camera', 'Sony', 'SNC-DM160', 'MPEG4,MJPEG', '640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(321, 'Camera', 'Sony', 'SNC-CM120', 'MPEG4,MJPEG', '1280x960-15FPS,640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(322, 'Camera', 'Sony', 'SNC-CH140', 'MPEG4,H264,MJPEG', '1280x1024-20FPS,1280x920-20FPS,1280x800-20FPS,1280x720-30FPS,800x480-30FPS,768x576-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(323, 'Camera', 'Sony', 'SNC-DH140', 'MPEG4,H264,MJPEG', '1280x1024-20FPS,1280x920-20FPS,1280x800-20FPS,1280x720-30FPS,800x480-30FPS,768x576-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(324, 'Camera', 'Sony', 'SNC-DH180', 'MPEG4,H264,MJPEG', '1280x1024-20FPS,1280x920-20FPS,1280x800-20FPS,1280x720-30FPS,800x480-30FPS,768x576-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(325, 'Camera', 'Sony', 'SNC-DH240', 'H264,MJPEG', '1920x1440-20FPS,1600x1200-30FPS,1680x1056-30FPS,1920x1080-30FPS,1440x912-30FPS,1280x920-30FPS,1280x800-30FPS,1280x720-30FPS,800x480-30FPS,768x576-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(326, 'Camera', 'Sony', 'SNC-CH240', 'H264,MJPEG', '1920x1440-20FPS,1600x1200-30FPS,1680x1056-30FPS,1920x1080-30FPS,1440x912-30FPS,1280x920-30FPS,1280x800-30FPS,1280x720-30FPS,800x480-30FPS,768x576-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(327, 'Camera', 'Sony', 'SNC-RH124', 'MPEG4,H264,MJPEG', '1280x1024-30FPS,1280x576-30FPS,800x480-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(328, 'Camera', 'Sony', 'SNC-RH164', 'MPEG4,H264,MJPEG', '1280x1024-30FPS,1280x576-30FPS,800x480-30FPS,640x480-30FPS,640x368-30FPS,384x288-30FPS,320x240-30FPS,320x192-30FPS', ''),
(329, 'Camera', 'Sony', 'SNC-RS44N', 'MPEG4,H264,MJPEG', '720x480-30FPS,640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(330, 'Camera', 'Sony', 'SNC-RS46N', 'MPEG4,H264,MJPEG', '720x480-30FPS,640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(331, 'Camera', 'Sony', 'SNC-RS84N', 'MPEG4,H264,MJPEG', '720x480-30FPS,640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(332, 'Camera', 'Sony', 'SNC-RS86N', 'MPEG4,H264,MJPEG', '720x480-30FPS,640x480-30FPS,384x288-30FPS,320x240-30FPS', ''),
(333, 'Video Server', 'Sony', 'SNT-EP104', 'MPEG4,H264,MJPEG', '', 'RTSP-Sony-V4'),
(334, 'Video Server', 'Sony', 'SNT-EP154', 'MPEG4,H264,MJPEG', '', 'RTSP-Sony-V5'),
(335, 'Video Server', 'Sony', 'SNT-EX101', 'MPEG4,H264,MJPEG', '', 'RTSP-Sony-V6'),
(336, 'Video Server', 'Sony', 'SNT-EX101E', 'MPEG4,H264,MJPEG', '', 'RTSP-Sony-V7'),
(337, 'Video Server', 'Sony', 'SNT-EX104', 'MPEG4,H264,MJPEG', '', 'RTSP-Sony-V8'),
(338, 'Video Server', 'Sony', 'SNT-EX154', 'MPEG4,H264,MJPEG', '', 'RTSP-Sony-V9');
