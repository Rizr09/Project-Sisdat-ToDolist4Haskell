-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: todolist
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_activation_attempts`
--

DROP TABLE IF EXISTS `auth_activation_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_activation_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_activation_attempts`
--

LOCK TABLES `auth_activation_attempts` WRITE;
/*!40000 ALTER TABLE `auth_activation_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_activation_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups`
--

DROP TABLE IF EXISTS `auth_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups`
--

LOCK TABLES `auth_groups` WRITE;
/*!40000 ALTER TABLE `auth_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups_permissions`
--

DROP TABLE IF EXISTS `auth_groups_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) unsigned NOT NULL DEFAULT 0,
  `permission_id` int(11) unsigned NOT NULL DEFAULT 0,
  KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`),
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups_permissions`
--

LOCK TABLES `auth_groups_permissions` WRITE;
/*!40000 ALTER TABLE `auth_groups_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups_users`
--

DROP TABLE IF EXISTS `auth_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_groups_users` (
  `group_id` int(11) unsigned NOT NULL DEFAULT 0,
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  KEY `auth_groups_users_user_id_foreign` (`user_id`),
  KEY `group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups_users`
--

LOCK TABLES `auth_groups_users` WRITE;
/*!40000 ALTER TABLE `auth_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_logins`
--

DROP TABLE IF EXISTS `auth_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_logins`
--

LOCK TABLES `auth_logins` WRITE;
/*!40000 ALTER TABLE `auth_logins` DISABLE KEYS */;
INSERT INTO `auth_logins` VALUES (1,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:27:33',1),(2,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:29:56',1),(3,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:32:44',1),(4,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:34:05',1),(5,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:38:34',1),(6,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:42:32',1),(7,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 06:48:29',1),(8,'::1','rizky21001@mail.unpad.ac.id',1,'2022-05-16 08:14:38',1),(9,'::1','almajidelang@gmail.com',5,'2022-05-16 08:57:59',1),(10,'::1','oriexj@gmail.com',4,'2022-05-16 08:58:24',1),(11,'::1','raihanmfa170803@gmail.com',NULL,'2022-05-16 09:36:55',0),(12,'::1','raihanmfa170803@gmail.com',NULL,'2022-05-16 09:37:02',0),(13,'::1','raihanmfa170803@gmail.com',37,'2022-05-16 09:37:11',1),(14,'::1','sarah.kp1005@gmail.com',56,'2022-05-16 09:53:35',1),(15,'::1','bintang_ar26@gmail.com',60,'2022-05-16 09:55:32',1),(16,'::1','mohsulaeman12@gmail.com',31,'2022-05-16 10:12:02',1),(17,'::1','mohsulaeman12@gmail.com',31,'2022-05-16 10:12:48',1),(18,'::1','rizky2004cool@gmail.com',NULL,'2022-05-17 05:17:40',0),(19,'::1','rizky2004cool@gmail.com',NULL,'2022-05-17 05:17:50',0),(20,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-17 05:18:08',1),(21,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-17 08:42:06',1),(22,'::1','rizky21001@mail.unpad.ac.id',NULL,'2022-05-17 08:42:50',0),(23,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-17 08:43:02',1),(24,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-17 22:46:02',1),(25,'::1','muhammad21024@mail.unpad.ac.id',13,'2022-05-17 22:59:09',1),(26,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-17 23:12:34',1),(27,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-18 03:15:31',1),(28,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-18 03:36:33',1),(29,'::1','muhammad21024@mail.unpad.ac.id',13,'2022-05-18 03:38:54',1),(30,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-18 03:49:34',1),(31,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-18 09:18:57',1),(32,'::1','muhammad21024@mail.unpad.ac.id',13,'2022-05-18 10:14:06',1),(33,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-18 11:03:29',1),(34,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-19 08:23:26',1),(35,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-19 08:37:16',1),(36,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-19 09:29:43',1),(37,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-19 22:34:51',1),(38,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-20 00:41:17',1),(39,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-20 00:44:31',1),(40,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-20 00:46:46',1),(41,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-20 06:05:55',1),(42,'::1','muhammad21024@mail.unpad.ac.id',13,'2022-05-20 06:20:51',1),(43,'::1','muhammad21024@mail.unpad.ac.id',NULL,'2022-05-20 06:25:26',0),(44,'::1','muhammad21024@mail.unpad.ac.id',13,'2022-05-20 06:25:33',1),(45,'::1','muhammad21024@mail.unpad.ac.id',13,'2022-05-20 06:30:32',1),(46,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-21 01:46:48',1),(47,'::1','fakhrifajarrr@gmail.com',NULL,'2022-05-21 01:54:14',0),(48,'::1','fakhrifajarrr@gmail.com',40,'2022-05-21 01:54:34',1),(49,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-21 02:16:15',1),(50,'::1','rizky21001@mail.unpad.ac.id',7,'2022-05-22 01:45:11',1);
/*!40000 ALTER TABLE `auth_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permissions`
--

DROP TABLE IF EXISTS `auth_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permissions`
--

LOCK TABLES `auth_permissions` WRITE;
/*!40000 ALTER TABLE `auth_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_reset_attempts`
--

DROP TABLE IF EXISTS `auth_reset_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_reset_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_reset_attempts`
--

LOCK TABLES `auth_reset_attempts` WRITE;
/*!40000 ALTER TABLE `auth_reset_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_reset_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_tokens_user_id_foreign` (`user_id`),
  KEY `selector` (`selector`),
  CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_users_permissions`
--

DROP TABLE IF EXISTS `auth_users_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) unsigned NOT NULL DEFAULT 0,
  `permission_id` int(11) unsigned NOT NULL DEFAULT 0,
  KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  KEY `user_id_permission_id` (`user_id`,`permission_id`),
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_users_permissions`
--

LOCK TABLES `auth_users_permissions` WRITE;
/*!40000 ALTER TABLE `auth_users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_users_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `id_list` smallint(6) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` tinytext DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `NPM` varchar(12) NOT NULL,
  `Kode_matkul` varchar(5) NOT NULL,
  `id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_list`),
  KEY `NPM` (`NPM`),
  KEY `Kode_matkul` (`Kode_matkul`),
  CONSTRAINT `list_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`),
  CONSTRAINT `list_ibfk_2` FOREIGN KEY (`Kode_matkul`) REFERENCES `matkul` (`kode_matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'Proyek Sisdat','Membuat Aplikasi CRUD dengan CI4','2022-05-24 23:59:59','140810210004','D10G4',7),(2,'Proyek Strukdat','Grid-based Game','2022-05-22 23:59:59','140810210010','D10G2',13),(3,'Proyek Strukdat','Grid-based Game','2022-05-22 23:59:59','140810210004','D10G2',7),(16,'Paper Statistika','Kirimnya ke email sir Yuyun PhD','2022-05-21 12:41:00','140810210004','D10E2',7),(39,'Proyek Orarkom','Bentar lagi deadline-nya','2022-05-27 14:11:00','140810210046','D10G3',40);
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` varchar(12) NOT NULL,
  `nama_mahasiswa` varchar(255) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `id_user` int(11) unsigned NOT NULL,
  PRIMARY KEY (`NPM`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('140810210001','Oriex Mawan Junnior','A',4),('140810210002','Elang Al Majid','B',5),('140810210003','Muhammad Ikhsan Fadhilah','A',6),('140810210004','Rizky Ramadhan Sudjarmono','B',7),('140810210005','Aliya Rahmania','A',8),('140810210006','Glory Cornelia Patining Kurik','B',9),('140810210007','Felicia Natanina Lingga','A',10),('140810210008','Nabila Sadiyyah Ahmadi','B',11),('140810210009','Ardes Zubka Putra','A',12),('140810210010','Muhammad Dzikri Alfian Zahir','B',13),('140810210011','Chienta Fleury Mahathereysa','A',14),('140810210012','Aryan Dafi Maulana','B',15),('140810210013','Muhammad Giat','A',16),('140810210015','Amir Salim','A',17),('140810210016','Frederick James Prakoso','B',18),('140810210017','Adinda Salsabila','A',19),('140810210018','Luthfi Ramadhan Yudiansyah','B',20),('140810210019','Raditya Muhamad Lacavi','A',21),('140810210020','Devina Dixie','B',22),('140810210021','Mohammad Zidan Yohanza','A',23),('140810210024','David Wijaya','B',24),('140810210025','Shafira Ramadhina Adifa','A',25),('140810210026','Guntur Eka Putra','B',26),('140810210028','Ken Almayda Fathurrahman','B',27),('140810210029','Rifqi Muhadzib Ahdan','A',28),('140810210030','Chairal Octavyanz Tanjung','B',29),('140810210032','Dandy Erlangga Aryaputra','B',30),('140810210033','Mohammad Sulaeman','A',31),('140810210034','Musaddad','B',32),('140810210035','Aliya Sania','A',33),('140810210036','Dheary Zikri Muhammad','B',34),('140810210037','Qurrota Ayuni Qamra Ariva','A',35),('140810210039','Ibrahim Dafi Iskandar','A',36),('140810210040','Raihan Muhammad Fuad Amin','B',37),('140810210041','Muhammad Fauzan Azhiima','A',38),('140810210042','Dhifan Fadhilah Aditya','B',39),('140810210046','Fakhri Fajar Ramadhan','B',40),('140810210047','Alifian Latif Muksit','A',41),('140810210048','Akmal Azzary Megaputra','B',42),('140810210049','Lazia Firli Adlisnandar','A',43),('140810210050','Hudzaifah Al Mutaz Billah','B',44),('140810210051','Satria Alief Putra Hidayat','A',45),('140810210052','Muhammad Rakha Al Rovi','B',46),('140810210053','Hermanu Widyatama','A',47),('140810210054','Shanzelig Putra Wijaya','B',48),('140810210055','Varian Avila Faldi','A',49),('140810210056','Daffa Yusranizar Arrifi','B',50),('140810210057','Rakha Farras Maulana','A',51),('140810210058','Muhammad Naufal Nur Ramadhan','B',52),('140810210059','Prames Ray Lapian','A',53),('140810210060','Gilman Nahdi Al-Fathir','B',54),('140810210062','Ahmad Yazid Ghossani','B',55),('140810210063','Sarah Khairunnisa Prihantoro','A',56),('140810210065','Zakia Noorardini','A',57),('140810210066','Sultan Ali Ilyasa','B',58),('140810210067','Raffanisa Kamila Zikri','A',59),('140810210068','Bintang Arya Pramudya','B',60),('140810217001','Andrew Orisar Boekorsyom','A',61);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matkul`
--

DROP TABLE IF EXISTS `matkul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matkul` (
  `kode_matkul` varchar(5) NOT NULL,
  `nama_matkul` tinytext DEFAULT NULL,
  PRIMARY KEY (`kode_matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matkul`
--

LOCK TABLES `matkul` WRITE;
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` VALUES ('D10A2','Kalkulus II'),('D10E2','Statistika'),('D10G2','Struktur Data'),('D10G3','Arsitektur dan Organisasi Komputer'),('D10G4','Sistem Database I'),('D10H2','Fisika Informatika');
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2017-11-20-223112','Myth\\Auth\\Database\\Migrations\\CreateAuthTables','default','Myth\\Auth',1652698966,1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` varchar(7) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'oriexj@gmail.com','Oriex','$2y$10$HBQNd4Xlw.to1HkE0NK/6.qxKn2tiarTwGFeyzYmu0Xp43nELRt0G',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 08:56:53','2022-05-16 08:56:53',NULL),(5,'almajidelang@gmail.com','Elang','$2y$10$xWP2d7SkDgaCQ0Yu8VvhP.s6KGM.dVqmSO6O4BHofz/R7rzbZw8xW',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 08:57:35','2022-05-16 08:57:35',NULL),(6,'fadhilahikhsan17@gmail.com','Ikhsan','$2y$10$I0ZNDGKHQcQsee19p048f.v.5oTBH7v5q1WarDLbj.RiA26DYM0Py',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 08:59:18','2022-05-16 08:59:18',NULL),(7,'rizky21001@mail.unpad.ac.id','Rizky','$2y$10$E3otv33GZFlu0c.p5DelmeZak3XXfyp2gMlj02S5BEe4aoBwdoIXG',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:00:00','2022-05-16 09:00:00',NULL),(8,'aliyarahmania.ar@gmail.com','Aliya','$2y$10$cWnOIhs1f4tc7Ragh5SA5erikJgbAaIvig05WWlEKHpqFBbyQwas.',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:00:26','2022-05-16 09:00:26',NULL),(9,'glorycornelia26@gmail.com','Glory','$2y$10$SC9ZR5iGuYoUI55a0bPcTOxj1JZVOJ17f4b6fyIBz72wdCFpjlJF.',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:00:57','2022-05-16 09:00:57',NULL),(10,'fel.natania@gmail.com','Felicia','$2y$10$0MUYQV06jkAQIyxCqzRpce.i/OUyKVgMWiDvsVJ7z2mF2fUju0qBC',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:01:27','2022-05-16 09:01:27',NULL),(11,'nabiladiyyah@gmail.com','Nabila','$2y$10$KPy1CfkAzKVdBWYu9EH1TujUwcO9UwZ23.8c7sx7pETNcJL50yV2i',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:01:49','2022-05-16 09:01:49',NULL),(12,'ardes21001@mail.unpad.ac.id','Ardes','$2y$10$ipprKVZEddPtIxvNQ6UJI.1y9hqGAkCCmfKj4YCIQiCBYeCPJWMl.',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:03:01','2022-05-16 09:03:01',NULL),(13,'muhammad21024@mail.unpad.ac.id','Dzikri','$2y$10$AnoVVuKHLjdi1I.lE2WrTONj05R74rVumZD.C2lZTCoETSmW5bBK2',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:03:58','2022-05-16 09:03:58',NULL),(14,'chientafleury@gmail.com','Chienta','$2y$10$bRiMTEfePTbqwl5HPW3fyumTIpdf0Tqyv4bd.hvd.APltMlEab7ia',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:04:24','2022-05-16 09:04:24',NULL),(15,'aryandafimaulana89@gmail.com','Aryan','$2y$10$crsHPWep8PynORviUBzWTuUrtIluhraXiZHmyfQ/0V.Dkqei8P8le',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:05:11','2022-05-16 09:05:11',NULL),(16,'muhammad21019@mail.unpad.ac.id','Giat','$2y$10$Ykdzf89mU4fz4/YF/3MIYeihGga3MtQjirZIwo1hFXHfD.HQDtWj6',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:06:21','2022-05-16 09:06:21',NULL),(17,'amirsalim2501@gmail.com','Amir','$2y$10$sAa1kJ77pdN5XoIyVtFPXONDp6o9qroDQ831FCIikdhksu25e9mIe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:06:51','2022-05-16 09:06:51',NULL),(18,'jamesprakoso891@gmail.com','James','$2y$10$F5hPlIUOifB0ExMa4iXDJOYcfAZ.mzsOi0pMtcI6s0kyJk8kv2vq.',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:10:27','2022-05-16 09:10:27',NULL),(19,'adinda21002@mail.unpad.ac.id','Adinda','$2y$10$LJxxu3HXuB7qWWZIY2pUcO6GX9Ff4FVXeLt.HUaKBpVNORijTgvEu',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:11:07','2022-05-16 09:11:07',NULL),(20,'luthfi21001@mail.unpad.ac.id','Luthfi','$2y$10$GRKMLppw.l7tgH3HSOW9Z..q9Cxp4Y3d9BXKNrDxEqgRvX2cnS.Ue',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:15:46','2022-05-16 09:15:46',NULL),(21,'raditya.lacavi@gmail.com','Raditya','$2y$10$yzQsCPenNgbOFesKPPRHxe5lrkI72CWqVhCavIV5.CZKtjpFGTYsu',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:16:15','2022-05-16 09:16:15',NULL),(22,'devinadixie14@gmail.com','Devina','$2y$10$80.W.IRIuNIYgGZdmA.LyeQPw6KrIjgKj77d018Xi/cvUh4cm9C.W',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:16:39','2022-05-16 09:16:39',NULL),(23,'zidan1juli@gmail.com','Zidan','$2y$10$BSresWfIRcoQymq9z37NK.hXptP5kRiDPLE6ROu9w1RD1f4hdD3Iu',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:21:47','2022-05-16 09:21:47',NULL),(24,'davewijaya2003@gmail.com','David','$2y$10$DSELW9WDEt4wa0CL6JaWM.ZRHoHQ.IPNYHS/bn.iNklhEsVGVp4.W',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:22:41','2022-05-16 09:22:41',NULL),(25,'firaradifa@gmail.com','Shafira','$2y$10$ucr0gVkwxPxg/9nKuOk8POxyR2v8PC8YajbqkK9JZOKgCMiRpKlfO',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:27:32','2022-05-16 09:27:32',NULL),(26,'guntureka1020@gmail.com','Guntur','$2y$10$0dGKa4z0XrgBUELmr4XlxeUl3R87ah8gAy3OILTk8Q49HUUcMiTX2',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:28:07','2022-05-16 09:28:07',NULL),(27,'almaydaken4@gmail.com','Ken','$2y$10$JvJFt94C1kOaFAP9.ily1eIbkljR1zshO7NG3aj1MbKp8lFERnTTW',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:28:30','2022-05-16 09:28:30',NULL),(28,'rifqiahdan03@gmail.com','Rifqi','$2y$10$3JBwwgTAKciRrUkWV0EoeuQCoI98ZAeTEtSjuGxdk3J1DS7cZmd9.',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:29:07','2022-05-16 09:29:07',NULL),(29,'chairaloktovian@gmail.com','Chairal','$2y$10$SXbAAOcR0rh0X4H8fd03veuVvnixvTAV7t0aTLgEq6/3p3z937IyS',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:29:38','2022-05-16 09:29:38',NULL),(30,'dandyaryaputra@gmail.com','Dandy','$2y$10$G/6UReR70QiRsVPfaiNLIuJZ0siFF9xi6lzoTF7a5rd1ZspuIAqba',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:30:22','2022-05-16 09:30:22',NULL),(31,'mohsulaeman12@gmail.com','Sulaeman','$2y$10$ou8GNzulkw8qLXu/mIJpfuCJA9./a.azTPM7q6LyL2eoQ8IyNraMe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:30:48','2022-05-16 09:30:48',NULL),(32,'musaddad21001@mail.unpad.ac.id','Musaddad','$2y$10$wmPMloR65keZvngQ8WSFLOp9GyQrE/zQaRqe25Lupr49xF/YIXU2e',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:33:11','2022-05-16 09:33:11',NULL),(33,'aliyasania27@gmail.com','Aliya Sania','$2y$10$c0bHjbpHeT4RxbXfGDlGwOg0RdziItxMpEeuIAGiliG8DF449o1hK',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:33:35','2022-05-16 09:33:35',NULL),(34,'dheary21001@mail.unpad.ac.id','Dheary','$2y$10$iSE0v.by8V1s6vzNAbh/uuaAFOi8xkJ4VQkiQIWLNP4PZKx1GTbP6',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:34:28','2022-05-16 09:34:28',NULL),(35,'qaqariva@gmail.com','Qurrota','$2y$10$L9kKTE5W5igIgA8Jqjd72uNjS1IkeyBcbBQz5/K50nw4bfUy0oQTe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:35:17','2022-05-16 09:35:17',NULL),(36,'ibrahimdafi.id@gmail.com','Dafi','$2y$10$Wes0hmbfKTEI.PVkYPdEieesZDdCrABAgFwhcTQ9cAZW9/dgrAZC2',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:35:45','2022-05-16 09:35:45',NULL),(37,'raihanmfa170803@gmail.com','Raihan','$2y$10$M7IxU0NjKkzTkjo/y6eI9e2wW3IjjsqjovwsJIdP1GZyzNVhGYpLa',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:36:05','2022-05-16 09:36:05',NULL),(38,'mfauzanazhima18@gmail.com','Fauzan','$2y$10$y6zsaNJeVkCj0bwtMrsYuecOCqxlpoK2EWHgpu1nP1ALMmlFN3j1C',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:38:11','2022-05-16 09:38:11',NULL),(39,'dhifanfadhilah822@gmail.com','Dhifan','$2y$10$r0f/4z2aijpGNJC08rKgnu72twyS7kUS2fisiWKJeliD9FO2aKF0e',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:38:45','2022-05-16 09:38:45',NULL),(40,'fakhrifajarrr@gmail.com','Fakhri','$2y$10$NjMtt2ySN9BVJXZMo0HI2.wqgaQDIQdpWiJEQbNCPoiNNfBfijDla',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:39:08','2022-05-16 09:39:08',NULL),(41,'alifianlatifmuksit01@gmail.com','Alifian','$2y$10$t89bu5yD8f3yPFZEN5Stp.q01L6tUTGSObNTPHx0eKeozEfRrZh.e',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:43:45','2022-05-16 09:43:45',NULL),(42,'amegaputra@gmail.com','Akmal','$2y$10$ncyLk4HVGq7aWU5WAM6.Hu7XLfFRZJsILvo3WXSj4keVk8J/5GsQe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:44:18','2022-05-16 09:44:18',NULL),(43,'lazia21001@mail.unpad.ac.id','Firli','$2y$10$jB7NuCmERn9RSZgTIdvXjeAUCdEj46ZZjR0C5jRSxWbYQ1KeqOtl2',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:44:58','2022-05-16 09:44:58',NULL),(44,'hudzaifahmutaz13@gmail.com','Mutaz','$2y$10$ObE.bzoMiFvckBcLaeGADOKZIhxda.y5VWJlbf7SJ6w77S79ZkTzG',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:45:31','2022-05-16 09:45:31',NULL),(45,'satrialief0@gmail.com','Satria','$2y$10$I7Foq7z/YF5Tl9HXbuKqBOPWc4puC926tGSMECd1YxX7tJgiX4NAq',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:46:03','2022-05-16 09:46:03',NULL),(46,'m.rakhaal@gmail.com','Rovi','$2y$10$iXBwu2iC4BF0VswtPuL7Zeq8LnBMuxrh9dwnVKHSQmc5.3jB87nfO',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:46:48','2022-05-16 09:46:48',NULL),(47,'hermanu.widyatama11@gmail.com','Hermanu','$2y$10$UE6nYsuszYdD67e9etFwS.pNRmsNkdQLVt5PIrCSeZBGgK4p.Ytt6',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:47:10','2022-05-16 09:47:10',NULL),(48,'shanzeliq.18@gmail.com','Shanzelig','$2y$10$DfTnunfBuainNg99atvzr.NorZlG81YEobuJCw3qz2oyFVKTiYLgC',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:47:28','2022-05-16 09:47:28',NULL),(49,'varian236@gmail.com','Varian','$2y$10$.cRhEQLo3XZHL6tcc3oPFuUQ5AglSz0/cGjbOGYgOZkp.N/Y38x0W',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:50:41','2022-05-16 09:50:41',NULL),(50,'daffa28.dn@gmail.com','Daffa','$2y$10$Y/V7aHOA9E3XWr3bM8WLIeDBUZ7sLdQfjXaBujevgh68uURMC3bAy',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:51:04','2022-05-16 09:51:04',NULL),(51,'rakhfarr@gmail.com','Rakha','$2y$10$v60VCtYJOYnOBaTEsHKZ4uvc8jtT1R2tgwGEH8uGwr5YsqQnxfIMy',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:51:25','2022-05-16 09:51:25',NULL),(52,'nurramadan35@gmail.com','Naufal','$2y$10$.mrj53lERZj4vk7.HogC.u1SRjUJEXP3sxkM3ySdiik291KeFKh1y',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:51:44','2022-05-16 09:51:44',NULL),(53,'prames1603@gmail.com','Prames','$2y$10$NV45qVwx.AlW5HO2M9d3aOZw45zKSK0Q13/AXrrZog2YdXcuFDYXW',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:52:05','2022-05-16 09:52:05',NULL),(54,'gilman21001@mail.unpad.ac.id','Gilman','$2y$10$PSm0zhvPWPBITBlLDR.IWeapBAixCnfwO4.rS7baUsDZDsTgnR6Xq',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:52:28','2022-05-16 09:52:28',NULL),(55,'ahmadyazid.ghossani03@gmail.com','Yazid','$2y$10$OyntDALCqVMf0mCKjVklRuk2ZEN4dLal74w6KnjqO5Fc9Kzh3VMZ2',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:52:48','2022-05-16 09:52:48',NULL),(56,'sarah.kp1005@gmail.com','Sarah','$2y$10$w7lQYRDGwTWlvUTDQZ4qa.VtysLLtmgw7/DTg9UCSy6ioqrWIpsJG',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:53:16','2022-05-16 09:53:16',NULL),(57,'zaqia.noorardini@icloud.com','Zakia','$2y$10$TMz55RVQnlKv8ip8UoVGCujWvjgXrO8oiYctGhJOfLuGq2XlB8zNy',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:54:13','2022-05-16 09:54:13',NULL),(58,'sultanaly13@gmail.com','Sultan','$2y$10$bHUKK6oHfgiHETxoyjcwCuNMddbq.o3obSJWYA2NVBZ8Z9y3owm3i',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:54:32','2022-05-16 09:54:32',NULL),(59,'raffanisa@gmail.com','Raffanisa','$2y$10$nJ/PkVm6.rgcK8E7nw85VepYLtOKbIq9wGrqJ42D9/m8n7d2aysfS',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:54:50','2022-05-16 09:54:50',NULL),(60,'bintang_ar26@gmail.com','Bintang','$2y$10$IFZw6b9LRGcJLAOgYg6QcuEjOM5lr.mRHnB6msx6Lbn0ZhNTR44LG',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:55:24','2022-05-16 09:55:24',NULL),(61,'andrewteto0@gmail.com','Andrew','$2y$10$6qIYI2BcHtVYY2I5UaCgHex77.bwBbkgGD2GQBG/jxuKxAGXm.J5C',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-05-16 09:56:10','2022-05-16 09:56:10',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 14:14:08
