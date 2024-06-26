CREATE DATABASE  IF NOT EXISTS `votacion_bd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `votacion_bd`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: votacion_bd
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
INSERT INTO `candidato` VALUES (1,'Juan Medina'),(2,'Maria larry'),(3,'Pedro Jose'),(4,'Rigo Medina');
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comuna`
--

DROP TABLE IF EXISTS `comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comuna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comuna`
--

LOCK TABLES `comuna` WRITE;
/*!40000 ALTER TABLE `comuna` DISABLE KEYS */;
INSERT INTO `comuna` VALUES (1,'Arica',1),(2,'Camarones',1),(3,'General Lagos',1),(4,'Putre',1),(5,'Alto Hospicio',2),(6,'Camiña',2),(7,'Colchane',2),(8,'Huara',2),(9,'Iquique',2),(10,'Pica',2),(11,'Pozo Almonte',2),(12,'Antofagasta',3),(13,'Calama',3),(14,'María Elena',3),(15,'Mejillones',3),(16,'Ollagüe',3),(17,'San Pedro de Atacama',3),(18,'Sierra Gorda',3),(19,'Taltal',3),(20,'Tocopilla',3),(21,'Alto del Carmen',4),(22,'Caldera',4),(23,'Chañaral',4),(24,'Copiapó',4),(25,'Diego de Almagro',4),(26,'Freirina',4),(27,'Huasco',4),(28,'Tierra Amarilla',4),(29,'Vallenar',4),(30,'Andacollo',5),(31,'Canela',5),(32,'Combarbalá',5),(33,'Coquimbo',5),(34,'Illapel',5),(35,'La Higuera',5),(36,'La Serena',5),(37,'Los Vilos',5),(38,'Monte Patria',5),(39,'Ovalle',5),(40,'Paiguano',5),(41,'Punitaqui',5),(42,'Río Hurtado',5),(43,'Salamanca',5),(44,'Vicuña',5),(45,'Algarrobo',6),(46,'Cabildo',6),(47,'Calera',6),(48,'Calle Larga',6),(49,'Cartagena',6),(50,'Casablanca',6),(51,'Catemu',6),(52,'Concón',6),(53,'El Quisco',6),(54,'El Tabo',6),(55,'Hijuelas',6),(56,'Isla de Pascua',6),(57,'Juan Fernández',6),(58,'La Cruz',6),(59,'La Ligua',6),(60,'Limache',6),(61,'Llaillay',6),(62,'Los Andes',6),(63,'Nogales',6),(64,'Olmué',6),(65,'Panquehue',6),(66,'Papudo',6),(67,'Petorca',6),(68,'Puchuncaví',6),(69,'Putaendo',6),(70,'Quillota',6),(71,'Quilpué',6),(72,'Quintero',6),(73,'Rinconada',6),(74,'San Antonio',6),(75,'San Esteban',6),(76,'San Felipe',6),(77,'Santa María',6),(78,'Santo Domingo',6),(79,'Valparaíso',6),(80,'Villa Alemana',6),(81,'Viña del Mar',6),(82,'Zapallar',6),(83,'Alhué',7),(84,'Buin',7),(85,'Calera de Tango',7),(86,'Cerrillos',7),(87,'Cerro Navia',7),(88,'Colina',7),(89,'Conchalí',7),(90,'Curacaví',7),(91,'El Bosque',7),(92,'El Monte',7),(93,'Estación Central',7),(94,'Huechuraba',7),(95,'Independencia',7),(96,'Isla de Maipo',7),(97,'La Cisterna',7),(98,'La Florida',7),(99,'La Granja',7),(100,'La Pintana',7),(101,'La Reina',7),(102,'Lampa',7),(103,'Las Condes',7),(104,'Lo Barnechea',7),(105,'Lo Espejo',7),(106,'Lo Prado',7),(107,'Macul',7),(108,'Maipú',7),(109,'María Pinto',7),(110,'Melipilla',7),(111,'Ñuñoa',7),(112,'Padre Hurtado',7),(113,'Paine',7),(114,'Pedro Aguirre Cerda',7),(115,'Peñaflor',7),(116,'Peñalolén',7),(117,'Pirque',7),(118,'Providencia',7),(119,'Pudahuel',7),(120,'Puente Alto',7),(121,'Quilicura',7),(122,'Quinta Normal',7),(123,'Recoleta',7),(124,'Renca',7),(125,'San Bernardo',7),(126,'San Joaquín',7),(127,'San José de Maipo',7),(128,'San Miguel',7),(129,'San Pedro',7),(130,'San Ramón',7),(131,'Santiago',7),(132,'Talagante',7),(133,'Tiltil',7),(134,'Vitacura',7),(135,'Chimbarongo',8),(136,'Chépica',8),(137,'Codegua',8),(138,'Coinco',8),(139,'Coltauco',8),(140,'Doñihue',8),(141,'Graneros',8),(142,'La Estrella',8),(143,'Las Cabras',8),(144,'Litueche',8),(145,'Lolol',8),(146,'Machalí',8),(147,'Malloa',8),(148,'Marchihue',8),(149,'Nancagua',8),(150,'Navidad',8),(151,'Olivar',8),(152,'Mostazal',8),(153,'Palmilla',8),(154,'Paredones',8),(155,'Peralillo',8),(156,'Peumo',8),(157,'Pichidegua',8),(158,'Pichilemu',8),(159,'Placilla',8),(160,'Pumanque',8),(161,'Quinta de Tilcoco',8),(162,'Rancagua',8),(163,'Rengo',8),(164,'Requínoa',8),(165,'San Fernando',8),(166,'San Vicente',8),(167,'Santa Cruz',8),(168,'Cauquenes',9),(169,'Chanco',9),(170,'Colbún',9),(171,'Constitución',9),(172,'Curepto',9),(173,'Curicó',9),(174,'Empedrado',9),(175,'Hualañé',9),(176,'Licantén',9),(177,'Linares',9),(178,'Longaví',9),(179,'Maule',9),(180,'Molina',9),(181,'Parral',9),(182,'Pelarco',9),(183,'Pelluhue',9),(184,'Pencahue',9),(185,'Rauco',9),(186,'Retiro',9),(187,'Romeral',9),(188,'Río Claro',9),(189,'Sagrada Familia',9),(190,'San Clemente',9),(191,'San Javier de Loncomilla',9),(192,'San Rafael',9),(193,'Talca',9),(194,'Teno',9),(195,'Vichuquén',9),(196,'Villa Alegre',9),(197,'Yerbas Buenas',9),(198,'Bulnes',10),(199,'Chillán Viejo',10),(200,'Chillán',10),(201,'Cobquecura',10),(202,'Coelemu',10),(203,'Coihueco',10),(204,'El Carmen',10),(205,'Ninhue',10),(206,'Ñiquén',10),(207,'Pemuco',10),(208,'Pinto',10),(209,'Portezuelo',10),(210,'Quillón',10),(211,'Quirihue',10),(212,'Ránquil',10),(213,'San Carlos',10),(214,'San Fabián',10),(215,'San Ignacio',10),(216,'San Nicolás',10),(217,'Treguaco',10),(218,'Yungay',10),(219,'Alto Biobío',11),(220,'Antuco',11),(221,'Arauco',11),(222,'Cabrero',11),(223,'Cañete',11),(224,'Chiguayante',11),(225,'Concepción',11),(226,'Contulmo',11),(227,'Coronel',11),(228,'Curanilahue',11),(229,'Florida',11),(230,'Hualpén',11),(231,'Hualqui',11),(232,'Laja',11),(233,'Lebu',11),(234,'Los Álamos',11),(235,'Los Ángeles',11),(236,'Lota',11),(237,'Mulchén',11),(238,'Nacimiento',11),(239,'Negrete',11),(240,'Penco',11),(241,'Quilaco',11),(242,'Quilleco',11),(243,'San Pedro de la Paz',11),(244,'San Rosendo',11),(245,'Santa Bárbara',11),(246,'Santa Juana',11),(247,'Talcahuano',11),(248,'Tirúa',11),(249,'Tomé',11),(250,'Tucapel',11),(251,'Yumbel',11),(252,'Angol',12),(253,'Carahue',12),(254,'Cholchol',12),(255,'Collipulli',12),(256,'Cunco',12),(257,'Curacautín',12),(258,'Curarrehue',12),(259,'Ercilla',12),(260,'Freire',12),(261,'Galvarino',12),(262,'Gorbea',12),(263,'Lautaro',12),(264,'Loncoche',12),(265,'Lonquimay',12),(266,'Los Sauces',12),(267,'Lumaco',12),(268,'Melipeuco',12),(269,'Nueva Imperial',12),(270,'Padre las Casas',12),(271,'Perquenco',12),(272,'Pitrufquén',12),(273,'Pucón',12),(274,'Purén',12),(275,'Renaico',12),(276,'Saavedra',12),(277,'Temuco',12),(278,'Teodoro Schmidt',12),(279,'Toltén',12),(280,'Traiguén',12),(281,'Victoria',12),(282,'Vilcún',12),(283,'Villarrica',12),(284,'Corral',13),(285,'Futrono',13),(286,'La Unión',13),(287,'Lago Ranco',13),(288,'Lanco',13),(289,'Los Lagos',13),(290,'Mariquina',13),(291,'Máfil',13),(292,'Paillaco',13),(293,'Panguipulli',13),(294,'Río Bueno',13),(295,'Valdivia',13),(296,'Ancud',14),(297,'Calbuco',14),(298,'Castro',14),(299,'Chaitén',14),(300,'Chonchi',14),(301,'Cochamó',14),(302,'Curaco de Vélez',14),(303,'Dalcahue',14),(304,'Fresia',14),(305,'Frutillar',14),(306,'Futaleufú',14),(307,'Hualaihué',14),(308,'Llanquihue',14),(309,'Los Muermos',14),(310,'Maullín',14),(311,'Osorno',14),(312,'Palena',14),(313,'Puerto Montt',14),(314,'Puerto Octay',14),(315,'Puerto Varas',14),(316,'Puqueldón',14),(317,'Purranque',14),(318,'Puyehue',14),(319,'Queilén',14),(320,'Quellón',14),(321,'Quemchi',14),(322,'Quinchao',14),(323,'Río Negro',14),(324,'San Juan de la Costa',14),(325,'San Pablo',14),(326,'Aysén',15),(327,'Chile Chico',15),(328,'Cisnes',15),(329,'Cochrane',15),(330,'Coyhaique',15),(331,'Guaitecas',15),(332,'Lago Verde',15),(333,'O’Higgins',15),(334,'Río Ibáñez',15),(335,'Tortel',15),(336,'Antártica',16),(337,'Cabo de Hornos',16),(338,'Laguna Blanca',16),(339,'Natales',16),(340,'Porvenir',16),(341,'Primavera',16),(342,'Punta Arenas',16),(343,'Río Verde',16),(344,'San Gregorio',16),(345,'Timaukel',16),(346,'Torres del Paine',16);
/*!40000 ALTER TABLE `comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuente`
--

DROP TABLE IF EXISTS `fuente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuente`
--

LOCK TABLES `fuente` WRITE;
/*!40000 ALTER TABLE `fuente` DISABLE KEYS */;
INSERT INTO `fuente` VALUES (1,'Web'),(2,'TV'),(3,'Redes Sociales'),(4,'Amigo');
/*!40000 ALTER TABLE `fuente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Arica y Parinacota'),(2,'Tarapacá'),(3,'Antofagasta'),(4,'Atacama'),(5,'Coquimbo'),(6,'Valparaíso'),(7,'Metropolitana de Santiago'),(8,'Libertador Gral. Bernardo O’Higgins'),(9,'Maule'),(10,'Ñuble'),(11,'Biobío'),(12,'Araucanía'),(13,'Los Ríos'),(14,'Los Lagos'),(15,'Aisén del Gral. Carlos Ibáñez del Campo'),(16,'Magallanes y de la Antártica Chilena');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votaciones`
--

DROP TABLE IF EXISTS `votaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombrevotacion` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rut` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comuna` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidato` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut_UNIQUE` (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votaciones`
--

LOCK TABLES `votaciones` WRITE;
/*!40000 ALTER TABLE `votaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `votaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 17:07:06
