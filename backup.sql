-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: fotografia
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add fotografia',7,'add_fotografia'),(26,'Can change fotografia',7,'change_fotografia'),(27,'Can delete fotografia',7,'delete_fotografia'),(28,'Can view fotografia',7,'view_fotografia'),(29,'Can add usuario',8,'add_usuario'),(30,'Can change usuario',8,'change_usuario'),(31,'Can delete usuario',8,'delete_usuario'),(32,'Can view usuario',8,'view_usuario'),(33,'Can add imagem_ perfil',9,'add_imagem_perfil'),(34,'Can change imagem_ perfil',9,'change_imagem_perfil'),(35,'Can delete imagem_ perfil',9,'delete_imagem_perfil'),(36,'Can view imagem_ perfil',9,'view_imagem_perfil'),(37,'Can add user profile',10,'add_userprofile'),(38,'Can change user profile',10,'change_userprofile'),(39,'Can delete user profile',10,'delete_userprofile'),(40,'Can view user profile',10,'view_userprofile'),(41,'Can add categoria',11,'add_categoria'),(42,'Can change categoria',11,'change_categoria'),(43,'Can delete categoria',11,'delete_categoria'),(44,'Can view categoria',11,'view_categoria'),(45,'Can add albuns',12,'add_albuns'),(46,'Can change albuns',12,'change_albuns'),(47,'Can delete albuns',12,'delete_albuns'),(48,'Can view albuns',12,'view_albuns');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$HIOxmOmocBNa5CiNM59KdM$goslFc7lPjS+qpLkgwzSxLJWoRKhdIWCMEDuSvtOsGQ=','2024-09-02 23:58:12.714471',1,'admin','','','admin@gmail.com',1,1,'2024-08-20 13:57:09.038899'),(2,'pbkdf2_sha256$720000$IIfQAIUfX4CLbXQkYGvJFB$hLgdVDovG+gnCjMxgK7Kdz4v1NseqR9sDlH1uIuULTQ=','2024-08-20 17:08:36.831768',0,'ronald','','','ronald@gmail.com',0,1,'2024-08-20 17:07:03.300922'),(3,'pbkdf2_sha256$720000$Cr6TPI4kfLAdUFSOKSxlGn$4R0i8MHErFivhdgDhqScT11HBxlF30zYPA6hiDj5sMw=','2024-09-02 22:42:41.928492',0,'admin2','','','felipe_94ramos@hotmail.com',0,1,'2024-09-02 22:36:11.993255');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_fotografo_albuns`
--

DROP TABLE IF EXISTS `dashboard_fotografo_albuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_fotografo_albuns` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Nome_Album` varchar(50) NOT NULL,
  `categoria_id` bigint NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_fotografo__categoria_id_10f39c81_fk_dashboard` (`categoria_id`),
  CONSTRAINT `dashboard_fotografo__categoria_id_10f39c81_fk_dashboard` FOREIGN KEY (`categoria_id`) REFERENCES `dashboard_fotografo_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_fotografo_albuns`
--

LOCK TABLES `dashboard_fotografo_albuns` WRITE;
/*!40000 ALTER TABLE `dashboard_fotografo_albuns` DISABLE KEYS */;
INSERT INTO `dashboard_fotografo_albuns` VALUES (104,'Teste de exporta├º├úo de banco de dados ',20,''),(105,'',20,'imagem_album/2024-09-02-104.jpg');
/*!40000 ALTER TABLE `dashboard_fotografo_albuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_fotografo_categoria`
--

DROP TABLE IF EXISTS `dashboard_fotografo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_fotografo_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_fotografo_categoria`
--

LOCK TABLES `dashboard_fotografo_categoria` WRITE;
/*!40000 ALTER TABLE `dashboard_fotografo_categoria` DISABLE KEYS */;
INSERT INTO `dashboard_fotografo_categoria` VALUES (20,'Retrato (Portrait)'),(21,'Paisagem (Landscape)'),(22,'Natureza (Nature)');
/*!40000 ALTER TABLE `dashboard_fotografo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_fotografo_userprofile`
--

DROP TABLE IF EXISTS `dashboard_fotografo_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_fotografo_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `dashboard_fotografo_userprofile_user_id_46090418_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_fotografo_userprofile`
--

LOCK TABLES `dashboard_fotografo_userprofile` WRITE;
/*!40000 ALTER TABLE `dashboard_fotografo_userprofile` DISABLE KEYS */;
INSERT INTO `dashboard_fotografo_userprofile` VALUES (1,'luis','ramos','ramossuporteemti@gmail.com','Senac','profile_images/20220221_084845.jpg',1),(2,'admin2','p','felipe_94ramos@hotmail.com','Senac','profile_images/20191021_105455.jpg',3);
/*!40000 ALTER TABLE `dashboard_fotografo_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-20 13:58:46.340845','1','imagem_Perfil object (1)',1,'[{\"added\": {}}]',9,1),(2,'2024-08-20 16:47:23.448020','1','luis Ramos',3,'',9,1),(3,'2024-08-31 22:36:43.688490','1','Retrato (Portrait)',1,'[{\"added\": {}}]',11,1),(4,'2024-08-31 22:36:58.357889','2','Paisagem (Landscape)',1,'[{\"added\": {}}]',11,1),(5,'2024-08-31 22:37:11.593517','3','Natureza (Nature)',1,'[{\"added\": {}}]',11,1),(6,'2024-08-31 22:37:21.015485','4','Arquitetura (Architecture)',1,'[{\"added\": {}}]',11,1),(7,'2024-08-31 22:37:36.267441','5','Fotojornalismo (Photojournalism)',1,'[{\"added\": {}}]',11,1),(8,'2024-08-31 22:37:49.152487','6','Fotografia de Rua (Street Photography)',1,'[{\"added\": {}}]',11,1),(9,'2024-08-31 22:37:59.875514','7','Esportes (Sports)',1,'[{\"added\": {}}]',11,1),(10,'2024-08-31 22:38:24.602238','8','Moda (Fashion)',1,'[{\"added\": {}}]',11,1),(11,'2024-08-31 22:38:33.591244','9','Produto (Product)',1,'[{\"added\": {}}]',11,1),(12,'2024-08-31 22:38:41.691068','10','Casamento (Wedding)',1,'[{\"added\": {}}]',11,1),(13,'2024-08-31 22:38:49.763041','11','Comida (Food)',1,'[{\"added\": {}}]',11,1),(14,'2024-08-31 22:38:56.777019','12','Vida Selvagem (Wildlife)',1,'[{\"added\": {}}]',11,1),(15,'2024-08-31 22:39:06.020523','13','Fotografia A├®rea (Aerial)',1,'[{\"added\": {}}]',11,1),(16,'2024-08-31 22:39:13.238282','14','Arte Conceitual (Conceptual)',1,'[{\"added\": {}}]',11,1),(17,'2024-08-31 22:39:23.563444','15','Documental (Documentary)',1,'[{\"added\": {}}]',11,1),(18,'2024-08-31 22:39:31.554259','16','Moda Infantil (ChildrenÔÇÖs Fashion)',1,'[{\"added\": {}}]',11,1),(19,'2024-08-31 22:39:42.900680','17','Fotografia Subaqu├ítica (Underwater)',1,'[{\"added\": {}}]',11,1),(20,'2024-08-31 22:39:50.795414','18','Fotografia de Noite (Night Photography)',1,'[{\"added\": {}}]',11,1),(21,'2024-08-31 22:39:57.818943','19','Astrofotografia (Astrophotography)',1,'[{\"added\": {}}]',11,1),(22,'2024-09-01 21:25:38.868524','71','Albuns object (71)',3,'',12,1),(23,'2024-09-01 21:25:38.884363','70','Albuns object (70)',3,'',12,1),(24,'2024-09-01 21:25:38.896287','69','Albuns object (69)',3,'',12,1),(25,'2024-09-01 21:25:38.900812','68','Albuns object (68)',3,'',12,1),(26,'2024-09-01 21:25:38.907004','67','Albuns object (67)',3,'',12,1),(27,'2024-09-01 21:25:38.912934','66','Albuns object (66)',3,'',12,1),(28,'2024-09-01 21:25:38.916157','65','Albuns object (65)',3,'',12,1),(29,'2024-09-01 21:25:38.921705','64','Albuns object (64)',3,'',12,1),(30,'2024-09-01 21:25:38.924653','63','Albuns object (63)',3,'',12,1),(31,'2024-09-01 21:25:38.927684','62','Albuns object (62)',3,'',12,1),(32,'2024-09-01 21:25:38.931782','61','Albuns object (61)',3,'',12,1),(33,'2024-09-01 21:25:38.938279','60','Albuns object (60)',3,'',12,1),(34,'2024-09-01 21:25:38.941971','59','Albuns object (59)',3,'',12,1),(35,'2024-09-01 21:25:38.945263','58','Albuns object (58)',3,'',12,1),(36,'2024-09-01 21:25:38.948612','57','Albuns object (57)',3,'',12,1),(37,'2024-09-01 21:25:38.952794','56','Albuns object (56)',3,'',12,1),(38,'2024-09-01 21:25:38.955409','55','Albuns object (55)',3,'',12,1),(39,'2024-09-01 21:25:38.958665','54','Albuns object (54)',3,'',12,1),(40,'2024-09-01 21:25:38.960763','52','Albuns object (52)',3,'',12,1),(41,'2024-09-01 21:25:38.963425','50','Albuns object (50)',3,'',12,1),(42,'2024-09-01 21:25:38.966121','49','Albuns object (49)',3,'',12,1),(43,'2024-09-01 21:25:38.969925','48','Albuns object (48)',3,'',12,1),(44,'2024-09-01 21:25:38.972987','47','Albuns object (47)',3,'',12,1),(45,'2024-09-01 21:25:38.975925','46','Albuns object (46)',3,'',12,1),(46,'2024-09-01 21:25:38.979066','45','Albuns object (45)',3,'',12,1),(47,'2024-09-01 21:25:38.982301','44','Albuns object (44)',3,'',12,1),(48,'2024-09-01 21:25:38.985349','43','Albuns object (43)',3,'',12,1),(49,'2024-09-01 21:25:38.989332','42','Albuns object (42)',3,'',12,1),(50,'2024-09-01 21:25:38.993067','41','Albuns object (41)',3,'',12,1),(51,'2024-09-01 21:25:38.995609','40','Albuns object (40)',3,'',12,1),(52,'2024-09-01 21:25:39.006602','39','Albuns object (39)',3,'',12,1),(53,'2024-09-01 21:25:39.011185','38','Albuns object (38)',3,'',12,1),(54,'2024-09-01 21:25:39.014747','37','Albuns object (37)',3,'',12,1),(55,'2024-09-01 21:25:39.020112','36','Albuns object (36)',3,'',12,1),(56,'2024-09-01 21:25:39.021445','35','Albuns object (35)',3,'',12,1),(57,'2024-09-01 21:25:39.025634','34','Albuns object (34)',3,'',12,1),(58,'2024-09-01 21:25:39.028028','33','Albuns object (33)',3,'',12,1),(59,'2024-09-01 21:25:39.033900','32','Albuns object (32)',3,'',12,1),(60,'2024-09-01 21:25:39.037123','31','Albuns object (31)',3,'',12,1),(61,'2024-09-01 21:25:39.043268','30','Albuns object (30)',3,'',12,1),(62,'2024-09-01 21:25:39.051276','29','Albuns object (29)',3,'',12,1),(63,'2024-09-01 21:25:39.054987','28','Albuns object (28)',3,'',12,1),(64,'2024-09-01 21:25:39.058969','27','Albuns object (27)',3,'',12,1),(65,'2024-09-01 21:25:39.062835','26','Albuns object (26)',3,'',12,1),(66,'2024-09-01 21:25:39.068916','25','Albuns object (25)',3,'',12,1),(67,'2024-09-01 21:25:39.072870','24','Albuns object (24)',3,'',12,1),(68,'2024-09-01 21:25:39.075004','23','Albuns object (23)',3,'',12,1),(69,'2024-09-01 21:25:39.079907','22','Albuns object (22)',3,'',12,1),(70,'2024-09-01 21:25:39.085032','21','Albuns object (21)',3,'',12,1),(71,'2024-09-01 21:25:39.090887','20','Albuns object (20)',3,'',12,1),(72,'2024-09-01 21:25:39.095186','19','Albuns object (19)',3,'',12,1),(73,'2024-09-01 21:25:39.098953','18','Albuns object (18)',3,'',12,1),(74,'2024-09-01 21:25:39.102958','17','Albuns object (17)',3,'',12,1),(75,'2024-09-01 21:25:39.106011','16','Albuns object (16)',3,'',12,1),(76,'2024-09-01 21:25:39.108961','15','Albuns object (15)',3,'',12,1),(77,'2024-09-01 21:25:39.113951','14','Albuns object (14)',3,'',12,1),(78,'2024-09-01 21:25:39.119147','13','Albuns object (13)',3,'',12,1),(79,'2024-09-01 21:25:39.124032','12','Albuns object (12)',3,'',12,1),(80,'2024-09-01 21:25:39.128000','11','Albuns object (11)',3,'',12,1),(81,'2024-09-01 21:25:39.135294','10','Albuns object (10)',3,'',12,1),(82,'2024-09-01 21:25:39.139104','9','Albuns object (9)',3,'',12,1),(83,'2024-09-01 21:25:39.143981','8','Albuns object (8)',3,'',12,1),(84,'2024-09-01 21:25:39.149235','7','Albuns object (7)',3,'',12,1),(85,'2024-09-01 21:25:39.155727','6','Albuns object (6)',3,'',12,1),(86,'2024-09-01 21:25:39.160788','5','Albuns object (5)',3,'',12,1),(87,'2024-09-01 21:25:39.165468','4','Albuns object (4)',3,'',12,1),(88,'2024-09-01 21:25:39.168771','3','Albuns object (3)',3,'',12,1),(89,'2024-09-01 21:25:39.171794','2','Albuns object (2)',3,'',12,1),(90,'2024-09-01 21:25:39.176343','1','Albuns object (1)',3,'',12,1),(91,'2024-09-02 10:49:47.216313','86','Albuns object (86)',3,'',12,1),(92,'2024-09-02 10:49:47.225624','85','Albuns object (85)',3,'',12,1),(93,'2024-09-02 10:49:47.230750','84','Albuns object (84)',3,'',12,1),(94,'2024-09-02 10:49:47.230750','83','Albuns object (83)',3,'',12,1),(95,'2024-09-02 10:49:47.239257','82','Albuns object (82)',3,'',12,1),(96,'2024-09-02 10:49:47.247007','81','Albuns object (81)',3,'',12,1),(97,'2024-09-02 10:49:47.247515','80','Albuns object (80)',3,'',12,1),(98,'2024-09-02 10:49:47.247515','79','Albuns object (79)',3,'',12,1),(99,'2024-09-02 10:49:47.255028','78','Albuns object (78)',3,'',12,1),(100,'2024-09-02 10:49:47.261052','77','Albuns object (77)',3,'',12,1),(101,'2024-09-02 10:49:47.263484','76','Albuns object (76)',3,'',12,1),(102,'2024-09-02 10:49:47.263484','75','Albuns object (75)',3,'',12,1),(103,'2024-09-02 10:49:47.270993','74','Albuns object (74)',3,'',12,1),(104,'2024-09-02 10:49:47.275984','73','Albuns object (73)',3,'',12,1),(105,'2024-09-02 10:49:47.279332','72','Albuns object (72)',3,'',12,1),(106,'2024-09-02 10:50:03.294665','19','Astrofotografia (Astrophotography)',3,'',11,1),(107,'2024-09-02 10:50:03.311519','18','Fotografia de Noite (Night Photography)',3,'',11,1),(108,'2024-09-02 10:50:03.311519','17','Fotografia Subaqu├ítica (Underwater)',3,'',11,1),(109,'2024-09-02 10:50:03.311519','16','Moda Infantil (ChildrenÔÇÖs Fashion)',3,'',11,1),(110,'2024-09-02 10:50:03.319070','15','Documental (Documentary)',3,'',11,1),(111,'2024-09-02 10:50:03.321721','14','Arte Conceitual (Conceptual)',3,'',11,1),(112,'2024-09-02 10:50:03.324951','13','Fotografia A├®rea (Aerial)',3,'',11,1),(113,'2024-09-02 10:50:03.327746','12','Vida Selvagem (Wildlife)',3,'',11,1),(114,'2024-09-02 10:50:03.327746','11','Comida (Food)',3,'',11,1),(115,'2024-09-02 10:50:03.327746','10','Casamento (Wedding)',3,'',11,1),(116,'2024-09-02 10:50:03.343056','9','Produto (Product)',3,'',11,1),(117,'2024-09-02 10:50:03.347086','8','Moda (Fashion)',3,'',11,1),(118,'2024-09-02 10:50:03.347086','7','Esportes (Sports)',3,'',11,1),(119,'2024-09-02 10:50:03.355937','6','Fotografia de Rua (Street Photography)',3,'',11,1),(120,'2024-09-02 10:50:03.359721','5','Fotojornalismo (Photojournalism)',3,'',11,1),(121,'2024-09-02 10:50:03.362681','4','Arquitetura (Architecture)',3,'',11,1),(122,'2024-09-02 10:50:03.362681','3','Natureza (Nature)',3,'',11,1),(123,'2024-09-02 10:50:03.370686','2','Paisagem (Landscape)',3,'',11,1),(124,'2024-09-02 10:50:03.370686','1','Retrato (Portrait)',3,'',11,1),(125,'2024-09-02 10:50:15.962594','20','Retrato (Portrait)',1,'[{\"added\": {}}]',11,1),(126,'2024-09-02 13:35:21.602482','89','Albuns object (89)',3,'',12,1),(127,'2024-09-02 13:35:21.609161','88','Albuns object (88)',3,'',12,1),(128,'2024-09-02 13:35:21.616753','87','Albuns object (87)',3,'',12,1),(129,'2024-09-02 17:40:45.731611','101','Albuns object (101)',3,'',12,1),(130,'2024-09-02 17:40:45.756154','100','Albuns object (100)',3,'',12,1),(131,'2024-09-02 17:40:45.760560','99','Albuns object (99)',3,'',12,1),(132,'2024-09-02 17:40:45.767312','98','Albuns object (98)',3,'',12,1),(133,'2024-09-02 17:40:45.771848','97','Albuns object (97)',3,'',12,1),(134,'2024-09-02 17:40:45.775790','96','Albuns object (96)',3,'',12,1),(135,'2024-09-02 17:40:45.779232','95','Albuns object (95)',3,'',12,1),(136,'2024-09-02 17:40:45.782118','94','Albuns object (94)',3,'',12,1),(137,'2024-09-02 17:40:45.785270','93','Albuns object (93)',3,'',12,1),(138,'2024-09-02 17:40:45.787830','92','Albuns object (92)',3,'',12,1),(139,'2024-09-02 17:40:45.791360','91','Albuns object (91)',3,'',12,1),(140,'2024-09-02 17:40:45.793926','90','Albuns object (90)',3,'',12,1),(141,'2024-09-02 17:41:31.744934','21','Paisagem (Landscape)',1,'[{\"added\": {}}]',11,1),(142,'2024-09-02 17:41:43.288129','22','Natureza (Nature)',1,'[{\"added\": {}}]',11,1),(143,'2024-09-03 00:00:50.307289','103','Albuns object (103)',3,'',12,1),(144,'2024-09-03 00:00:50.320319','102','Albuns object (102)',3,'',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'dashboard_fotografo','albuns'),(11,'dashboard_fotografo','categoria'),(10,'dashboard_fotografo','userprofile'),(9,'imagens','imagem_perfil'),(6,'sessions','session'),(7,'usuarios','fotografia'),(8,'usuarios','usuario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-13 23:48:15.811486'),(2,'auth','0001_initial','2024-08-13 23:48:16.918898'),(3,'admin','0001_initial','2024-08-13 23:48:17.107794'),(4,'admin','0002_logentry_remove_auto_add','2024-08-13 23:48:17.112486'),(5,'admin','0003_logentry_add_action_flag_choices','2024-08-13 23:48:17.127922'),(6,'contenttypes','0002_remove_content_type_name','2024-08-13 23:48:17.277961'),(7,'auth','0002_alter_permission_name_max_length','2024-08-13 23:48:17.380843'),(8,'auth','0003_alter_user_email_max_length','2024-08-13 23:48:17.458693'),(9,'auth','0004_alter_user_username_opts','2024-08-13 23:48:17.562889'),(10,'auth','0005_alter_user_last_login_null','2024-08-13 23:48:17.686727'),(11,'auth','0006_require_contenttypes_0002','2024-08-13 23:48:17.691412'),(12,'auth','0007_alter_validators_add_error_messages','2024-08-13 23:48:17.710899'),(13,'auth','0008_alter_user_username_max_length','2024-08-13 23:48:17.827222'),(14,'auth','0009_alter_user_last_name_max_length','2024-08-13 23:48:17.980921'),(15,'auth','0010_alter_group_name_max_length','2024-08-13 23:48:18.031352'),(16,'auth','0011_update_proxy_permissions','2024-08-13 23:48:18.053544'),(17,'auth','0012_alter_user_first_name_max_length','2024-08-13 23:48:18.167206'),(18,'sessions','0001_initial','2024-08-13 23:48:18.233557'),(19,'usuarios','0001_initial','2024-08-13 23:48:18.274496'),(20,'usuarios','0002_usuario','2024-08-13 23:48:18.340178'),(21,'imagens','0001_initial','2024-08-20 13:32:32.629139'),(22,'imagens','0002_imagem_perfil_user','2024-08-20 16:32:02.974775'),(23,'dashboard_fotografo','0001_initial','2024-08-24 13:53:30.006407'),(24,'dashboard_fotografo','0002_categoria','2024-08-31 22:31:36.853546'),(25,'dashboard_fotografo','0003_albuns','2024-08-31 23:11:24.942152'),(26,'dashboard_fotografo','0004_albuns_imagem','2024-09-01 00:07:27.923422');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5krly8rgmzaxmfk7i7to9dca8g1lmdfx','.eJxVjMsOwiAUBf-FtSG0QAGX7v0Gch9cqZo2Ke3K-O_apAvdnpk5L5VhW2veWlnyyOqsOnX63RDoUaYd8B2m26xpntZlRL0r-qBNX2cuz8vh_h1UaPVb2w5dCol4GDAk7xgwosQIaE0Q4whFkk3k2feGAwrZQAwkpnjoBdX7A_g7OSs:1slGw0:4Ma4k58pQZhecKAhZplqUcT-MC6l9wesP_nlUHMjBxg','2024-09-16 23:58:12.725481'),('olf90jd4mogijkxzzkj268dv7ehawnwn','.eJxVjMsOwiAUBf-FtSG0QAGX7v0Gch9cqZo2Ke3K-O_apAvdnpk5L5VhW2veWlnyyOqsOnX63RDoUaYd8B2m26xpntZlRL0r-qBNX2cuz8vh_h1UaPVb2w5dCol4GDAk7xgwosQIaE0Q4whFkk3k2feGAwrZQAwkpnjoBdX7A_g7OSs:1sisuO:ktcAMSnB-WPlFdthX_XcjbkfVJWRs3TJ6ZDVo5QQwCM','2024-09-10 09:54:40.793742');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 21:10:11
