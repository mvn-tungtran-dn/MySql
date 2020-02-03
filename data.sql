-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: baitap
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_blog_1_idx` (`user_id`),
  KEY `fk_blog_2_idx` (`category_id`),
  CONSTRAINT `fk_blog_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_blog_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,1,1,'Delectus veritatis consequuntur ut dolore perferendis.',4,1,'Natus dolorum fugit aut. Ut ad eos iusto omnis qui.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(2,1,5,'Molestiae adipisci ratione ea quis.',29,1,'Dicta fugiat voluptatem adipisci nobis eos accusantium. Odio eos optio culpa non beatae ea eos.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(3,3,3,'Voluptates perspiciatis nemo omnis molestias.',4,1,'Sit eos minima veritatis adipisci. A saepe minus quae autem rerum. Deleniti aut similique ullam ut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(4,1,8,'Quae vero sunt dolores maxime qui molestias minus rem.',22,1,'Quas in sapiente reiciendis sequi voluptatem vel ducimus. Harum beatae magnam impedit hic.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(5,3,3,'Tempora at aliquid est sint quam doloremque placeat.',14,1,'Sed qui dolorem dolorem nostrum amet. Labore excepturi numquam rem quas rerum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(6,3,8,'Adipisci libero commodi aperiam aperiam.',21,1,'Mollitia nesciunt possimus est unde et. Vero illum ducimus ut eos voluptates occaecati.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(7,3,2,'Consequuntur quis nemo eligendi molestiae.',3,1,'Repellendus ea aut explicabo ut omnis accusamus laborum. Soluta id magnam ut aspernatur ullam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(8,1,6,'Et autem dolores sit cumque reiciendis qui.',20,1,'Qui non consequatur sed et occaecati impedit qui. Vel expedita rerum ut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(9,3,6,'Aut perferendis reiciendis rerum enim ut commodi.',23,1,'Dolores nam iure ea ipsam et mollitia. Veniam rerum quas neque ut minima et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(10,2,1,'Nihil ut ipsum architecto natus distinctio fuga et deserunt.',27,1,'Reprehenderit dolorum ratione repudiandae voluptatem nisi in qui et. Aut vitae qui asperiores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(11,2,3,'Est consectetur voluptates laborum amet molestiae mollitia officiis sit.',26,0,'Doloremque porro molestias sed nisi vel. Sit veritatis eveniet est magnam esse laboriosam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(12,1,7,'Alias in alias hic exercitationem enim et cumque dolorum.',4,0,'Aut enim laudantium et facilis corporis. Facilis officia natus consectetur eligendi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(13,1,1,'Esse dolor dolorem saepe nobis quis laborum.',24,1,'Fugiat asperiores nam in qui. Sint omnis et illo commodi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(14,2,6,'Quaerat aspernatur omnis cupiditate eos odio quo quas.',9,1,'Iusto dolor magni quia voluptatem et sed. Sit nostrum quas reiciendis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(15,2,6,'Molestias repellat dolores et sed aut debitis veritatis nisi.',20,1,'Quam perspiciatis nihil similique excepturi quis non cum natus. Sunt sunt et quidem esse ad.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(16,2,4,'Quas officiis ipsum sit nesciunt est tenetur.',15,1,'Reprehenderit vel amet nesciunt et quam dolores qui. Aperiam quis earum quisquam occaecati.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(17,1,4,'Enim consectetur autem ut.',21,1,'Error libero ab ea similique. At non omnis vel a. Incidunt omnis distinctio quia dolorum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(18,3,2,'Commodi error et repellendus non.',1,1,'Voluptas et nostrum velit quisquam. Laborum error et perferendis saepe illo vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(19,1,6,'Distinctio quia dolor dolor quia consectetur adipisci.',17,1,'Fugit qui sit facilis. Minus provident eaque distinctio sunt eveniet et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(20,2,9,'Sed eos molestiae ipsa vero ut.',15,1,'Sequi quam nam deleniti et eum. Aliquid voluptas aut eaque corporis consequatur et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(21,1,4,'Voluptatem nisi voluptatibus at itaque.',27,1,'Doloribus corrupti enim quia dolor sit consequatur neque. Nisi enim magni hic quam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(22,3,7,'Ut veniam non et natus.',7,1,'Et ea labore voluptates culpa itaque et. Harum ut dolor accusamus. Illo facere eos eos.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(23,1,9,'Ad eveniet quis rem aspernatur eos optio assumenda.',2,1,'Rerum a dolorem consequuntur exercitationem libero unde est. Tempora sit voluptatem cumque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(24,1,3,'Omnis autem nulla rerum animi.',22,1,'Aut nesciunt earum quibusdam quasi asperiores. Occaecati non dolorum sit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(25,1,1,'Ipsam soluta consequatur quo corporis accusamus.',13,0,'Aspernatur odio corporis esse. In vel ab eaque. Sed est veniam qui.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(26,3,3,'Quis omnis quaerat nostrum sit numquam recusandae.',25,1,'Laborum facere ratione fugit officia molestiae eos qui. Quod qui reprehenderit nihil aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(27,1,7,'Et et consequuntur expedita.',25,1,'Libero totam tempore ut eos quis laborum. Maxime veniam vero doloribus quis et non.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(28,1,8,'Dolorem esse numquam nihil.',23,1,'Ducimus rem delectus autem ut. Quam voluptatem quos veritatis pariatur porro. Et est ad nihil sint.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(29,2,9,'Eum veniam facilis quis placeat.',5,0,'Quos a id et. Aut fuga iste distinctio laudantium nemo minus. Ducimus facilis sunt non non et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(30,3,1,'Incidunt labore dolorem dolorem in nihil at qui.',17,1,'Quia aliquid corrupti quia velit sed ut. Cum voluptatum nihil earum quis harum praesentium.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(31,2,2,'Deserunt veritatis quis in a nisi qui aut.',0,1,'Quia at quis a expedita dolor voluptatem. Atque quod minus rem. Eius natus eum minima est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(32,3,2,'Et eaque sunt dolores voluptatem quae laborum.',17,0,'Natus deleniti velit quia eum eligendi sed. Dolore enim minus ut vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(33,1,8,'Autem quaerat qui laboriosam et odit voluptatibus.',5,1,'Dolor sint voluptas rerum odit deleniti. Tempore sed reprehenderit maxime.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(34,3,1,'Necessitatibus ipsam accusamus aspernatur architecto.',19,0,'Et dicta quam qui neque illum. Quia sed eos dolorem non. Quo et neque fugiat omnis est quis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(35,3,2,'In temporibus porro ea facilis mollitia nobis.',18,1,'Nostrum enim error animi asperiores. Asperiores et rem recusandae iusto et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(36,2,4,'Ad quasi perspiciatis necessitatibus ex dolor minima perspiciatis.',23,1,'Et nulla voluptatem aut sit. Modi nisi fugiat id assumenda.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(37,2,1,'Culpa et enim possimus nihil porro.',8,1,'Voluptatem earum beatae vel illo dolorem eum officiis ad. Optio quo veniam amet vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(38,1,9,'Alias itaque in expedita architecto voluptas totam modi.',13,0,'Quos et illo dolorum quae voluptatem architecto. Assumenda deserunt velit illum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(39,3,1,'Reprehenderit fugit qui velit esse id.',13,0,'Ut qui aut quidem quo at labore. Possimus fugiat nostrum nam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(40,3,9,'Doloribus beatae illum autem magnam minima a unde qui.',2,1,'Commodi veritatis deleniti laborum corporis numquam. Consequatur nihil sint possimus sunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(41,3,11,'A Brief Overview.',22,1,'We communicate with modern computers by clicking, tapping, sliding, hovering, typing, shaking, and speaking. Through simple gestures, we are able to command the computer.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(42,1,12,'What is an interface?',23,1,'According to the online Merriam Webster dictionary, an interface is \"a system that is used for operating a computer: a system that controls the way information is shown to a computer user and the way the user is able to work with the computer.\"','2017-06-22 08:30:30','2017-06-22 08:30:30'),(43,2,13,'CLI Display',23,2,'The command line can be the default interface for a computer, but most personal computers use a program (like Terminal) within the desktop graphical interface to provide the command line interface','2017-06-22 08:30:30','2017-06-22 08:30:30'),(44,3,14,'CLI Input',24,3,'The second component of this textual interface is the input','2017-06-22 08:30:30','2017-06-22 08:30:30');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Explicabo itaque nihil harum neque voluptatem.','Omnis consequatur ut et. Commodi quas nisi facere neque veniam excepturi. Inventore autem enim dolorem et unde excepturi.'),(2,'Placeat voluptas error quia molestiae repudiandae dolorum ex nesciunt.','Doloremque et sit quia sapiente delectus. Numquam nemo magni perspiciatis sapiente ut. Culpa sit blanditiis et voluptatem unde eaque harum. Veniam voluptatem numquam officia adipisci odit.'),(3,'aaaaaaaa','Ut sed deleniti dolorem tenetur et. Dolor consequatur aut nihil. Corporis aut ad qui dolores earum vero.');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `target_table` varchar(20) NOT NULL,
  `target_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_comment_1_idx` (`user_id`),
  CONSTRAINT `fk_comment_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'news',8,3,'In quis voluptatem sed numquam id eos tempora.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(2,'news',12,5,'Voluptatem ullam necessitatibus quisquam architecto non delectus.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(3,'news',11,4,'Cumque aut ab aliquam sit molestiae quaerat quia nobis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(4,'blog',11,5,'Reprehenderit et quod ex dolorum architecto at.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(5,'blog',25,1,'Autem optio voluptatem animi tempora.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(6,'news',26,3,'Dolores fuga omnis quos cupiditate unde.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(7,'blog',19,2,'Cupiditate adipisci est et nemo vero quia provident.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(8,'news',23,8,'Facere eum aperiam itaque et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(9,'news',24,2,'Alias consequuntur dolor dolores sapiente deserunt ullam consequatur ducimus.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(10,'blog',23,6,'Omnis iusto alias sed optio quia assumenda.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(11,'blog',20,4,'Architecto eos aut explicabo.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(12,'blog',20,4,'Qui nam aut optio est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(13,'blog',15,9,'Adipisci soluta illo dolorum sit accusamus dolorem voluptatem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(14,'news',22,8,'Aut illum provident totam harum ad tempore facilis tempore.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(15,'news',29,4,'Et et sint sint assumenda temporibus.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(16,'news',29,8,'Nesciunt soluta sed quod sapiente et debitis recusandae culpa.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(17,'news',5,7,'Eligendi repudiandae laborum soluta dolores sapiente est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(18,'blog',27,9,'Fuga voluptatem quae enim est et deleniti sed.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(19,'blog',26,6,'Error quia eaque accusamus quaerat veritatis pariatur quos.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(20,'news',2,9,'Corporis et et quia.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(21,'blog',11,7,'Incidunt eum minima autem nulla unde.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(22,'news',11,8,'Magnam aut itaque vel et voluptatum dicta.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(23,'blog',7,4,'Consequatur ut quisquam velit velit sint rerum eos alias.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(24,'blog',1,2,'Sed sit minima ducimus pariatur odio ipsam ut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(25,'blog',25,2,'Quia voluptas ea recusandae magnam ab sed.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(26,'blog',10,4,'Consequatur quis qui aut id quo dolor.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(27,'blog',24,2,'Modi quia et recusandae.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(28,'blog',8,1,'Dolor sunt quia sunt praesentium consequatur quaerat nobis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(29,'news',13,4,'Cumque enim veniam quisquam quam provident.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(30,'news',20,4,'Assumenda ipsam qui laborum hic ipsam aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(31,'news',2,8,'Voluptates alias culpa maxime veritatis impedit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(32,'news',30,2,'Et commodi tempora voluptas fugiat tempora ut facere et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(33,'blog',22,9,'Repellendus optio velit laudantium fugiat aspernatur et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(34,'news',30,5,'Animi sed ea eum et molestiae.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(35,'news',2,6,'Est et animi minima accusamus harum alias.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(36,'news',1,4,'Sit neque quae tempora quidem magnam odio aut eligendi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(37,'news',8,2,'Culpa expedita molestiae est odit itaque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(38,'blog',28,5,'Eos culpa ut ut blanditiis cumque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(39,'news',29,3,'Praesentium iste quaerat et numquam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(40,'news',5,5,'Reprehenderit minima et qui et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(41,'blog',5,4,'Corrupti sed et est fugiat impedit atque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(42,'news',16,7,'Officia repellat maiores velit dolorum porro ipsum eos et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(43,'news',8,4,'Voluptate vel blanditiis itaque qui omnis officia.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(44,'news',3,6,'Iure inventore autem soluta natus laudantium velit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(45,'blog',2,9,'Dicta eos ad fugiat et officia.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(46,'blog',10,5,'Voluptate nostrum dolor laudantium ullam nisi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(47,'blog',3,5,'Ut voluptatem sit maxime fugit consequatur itaque natus.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(48,'news',3,1,'Cumque voluptatem aspernatur esse et aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(49,'news',30,1,'Qui perspiciatis ipsam voluptas blanditiis quidem hic.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(50,'blog',27,4,'Sunt hic ut labore hic.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(51,'blog',19,4,'Similique possimus deleniti qui mollitia nesciunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(52,'news',11,6,'Deleniti suscipit omnis quia tenetur cupiditate corporis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(54,'blog',16,3,'Soluta expedita commodi voluptate ea non.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(55,'blog',3,5,'Quidem officiis molestiae occaecati ut rerum veritatis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(56,'news',14,8,'Fuga deleniti veniam aut molestias.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(57,'news',3,1,'Nihil distinctio delectus non enim veritatis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(58,'blog',18,8,'Provident quae id tenetur velit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(59,'blog',7,1,'Dolores vitae iure optio qui.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(60,'news',21,4,'Commodi est dolorem dolore rem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(61,'blog',2,8,'Rerum temporibus unde sit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(62,'blog',8,2,'Ducimus quia numquam quidem minus voluptate pariatur.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(63,'news',1,5,'Est voluptas sapiente consequatur odio sed sed ratione.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(64,'blog',28,4,'Animi ut architecto velit sunt vel tempore impedit tempore.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(65,'blog',20,1,'Voluptatibus illum aut quaerat sit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(66,'blog',30,8,'Est asperiores ea perferendis nihil et est animi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(67,'news',4,4,'Dolor voluptate in temporibus aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(68,'news',19,9,'Dolorum dicta sed rem nihil.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(69,'blog',3,8,'Ut placeat atque eaque quisquam saepe voluptas ut sed.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(70,'blog',1,4,'Nemo quisquam saepe sed accusantium et doloremque quasi porro.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(71,'news',19,2,'Eum sit est velit ratione totam atque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(72,'news',18,1,'Iure quaerat ratione quod minus cumque et eligendi voluptas.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(73,'news',9,1,'Modi debitis nam aut neque illo accusantium.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(74,'news',13,2,'Incidunt asperiores eum sed id.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(75,'blog',25,2,'Tempore saepe aut saepe quia qui.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(76,'blog',17,9,'A vel necessitatibus voluptas exercitationem nihil amet rerum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(77,'blog',27,9,'Nobis quos perferendis delectus aliquid modi iure et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(78,'news',12,4,'Illum earum possimus nihil alias aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(79,'news',25,2,'Quidem sed vitae aliquid inventore.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(80,'news',15,3,'Perferendis voluptas amet consectetur earum molestias.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(81,'blog',24,9,'Expedita quia mollitia magnam ex iusto consequuntur.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(82,'news',7,9,'Suscipit sit molestiae omnis qui quaerat architecto.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(83,'news',29,9,'Assumenda architecto sed tenetur eos ratione.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(84,'blog',15,9,'Doloribus suscipit quibusdam iusto eos voluptas voluptas itaque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(85,'news',12,1,'Et in veniam et vel doloremque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(86,'news',1,9,'Deleniti nostrum nam omnis dolores itaque non nobis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(87,'news',9,3,'Adipisci nobis quibusdam non error vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(88,'news',17,9,'Quod hic illum debitis est ut vel quasi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(89,'blog',10,3,'Et error error voluptas quia enim velit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(90,'news',19,8,'Aliquam sed excepturi dignissimos natus non at.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(91,'news',1,9,'Voluptatibus eos culpa dolor suscipit ut aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(92,'news',26,8,'Quia quis ab et et ducimus modi debitis sed.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(93,'news',3,3,'Eaque qui voluptas ipsum officia eum dolorem nemo.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(94,'news',23,4,'Deserunt architecto asperiores est est et quis culpa perferendis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(95,'blog',30,2,'Tempora iusto illum maxime sunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(97,'blog',26,9,'Velit sed vel est ad blanditiis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(98,'news',21,5,'Ad perferendis nulla suscipit aut quasi sunt et velit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(99,'blog',10,2,'Pariatur commodi commodi placeat aut voluptas.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(100,'blog',13,3,'Consequatur est nihil ea consequatur a ut.','2017-06-22 08:30:30','2017-06-22 08:30:30');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_follow_1_idx` (`from_user_id`),
  KEY `fk_follow_2_idx` (`to_user_id`),
  CONSTRAINT `fk_follow_1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_follow_2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (1,9,1,'2017-06-22 08:30:30'),(2,7,2,'2017-06-22 08:30:30'),(3,1,2,'2017-06-22 08:30:30'),(4,4,2,'2017-06-22 08:30:30'),(5,6,2,'2017-06-22 08:30:30'),(6,1,3,'2017-06-22 08:30:30'),(7,10,3,'2017-06-22 08:30:30'),(8,7,3,'2017-06-22 08:30:30'),(9,1,6,'2017-06-22 08:30:30'),(10,9,6,'2017-06-22 08:30:30'),(11,1,7,'2017-06-22 08:30:30'),(12,8,9,'2017-06-22 08:30:30'),(13,1,10,'2017-06-22 08:30:30'),(14,3,10,'2017-06-22 08:30:30'),(15,2,10,'2017-06-22 08:30:30');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_news_1_idx` (`category_id`),
  CONSTRAINT `fk_news_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,3,'Et sed pariatur qui quia officiis.',12,1,'Omnis veritatis accusantium totam ut amet eos unde omnis. Deleniti ea sequi in.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(2,2,'Iure in doloremque odio nemo.',9,1,'Repudiandae sed qui earum corrupti. Quasi aut repudiandae vel excepturi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(3,1,'Doloribus tenetur dolore tempora sit veniam voluptas quaerat.',13,1,'Alias velit quo nihil vero quia. Ratione voluptatem veritatis sunt optio cumque ab.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(4,2,'Magnam sequi quae ea illo voluptatibus blanditiis.',23,1,'Eaque magni qui et non. Sit magni nostrum et aut et. Omnis doloribus odio consectetur est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(5,1,'Officiis repellendus beatae necessitatibus.',29,1,'Doloremque omnis in autem ea et soluta. Omnis aut omnis et possimus nihil eligendi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(6,1,'Quia nesciunt tempore odit.',19,0,'Dicta quidem et ullam nisi sit qui et. Est laborum et sint quibusdam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(7,1,'Saepe fugit id cumque ad.',15,1,'Quaerat aliquid officiis eveniet dolore molestias qui est et. Ducimus qui modi ut odio esse.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(8,1,'Deserunt quae molestiae expedita.',15,0,'Est deleniti itaque quia voluptates distinctio ut. Mollitia est commodi consequuntur.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(9,3,'Optio eos sed qui vitae distinctio quidem eius.',17,1,'Iure ex sequi labore aspernatur. Nihil natus earum ut ipsam ut eaque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(10,1,'Repellendus est sunt doloribus placeat deleniti consequuntur repellat.',14,1,'Qui est tempora quis praesentium mollitia. Culpa culpa ut et nam maiores. Earum et in et quis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(11,2,'Enim odit quaerat non corporis beatae alias.',22,1,'Inventore id saepe minima. Ut in tenetur dolor ab. Facilis molestias sequi sequi deserunt aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(12,3,'Ipsam vel ut accusantium et porro autem voluptas illo.',21,1,'Aliquid quia ut quam tempore. Iusto voluptatem nihil corrupti harum non nobis sed.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(13,2,'Perferendis ut quam sint alias odio quia temporibus neque.',25,0,'Beatae reiciendis voluptas est laudantium molestiae. Minima qui perferendis suscipit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(14,2,'Et expedita cupiditate corrupti.',1,1,'At tempore repellat eum sit in fuga error. Sint ipsam ducimus voluptatem hic voluptatem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(15,1,'Laboriosam et quia suscipit velit recusandae.',5,1,'Occaecati sint id iure porro incidunt corporis unde. Minima explicabo eius adipisci.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(16,3,'Perferendis non quidem sunt alias.',22,0,'Necessitatibus laboriosam rem nemo quia alias ipsum. Non reiciendis deleniti consequatur et harum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(17,1,'Et reiciendis natus eum qui.',28,0,'Eligendi commodi aperiam nesciunt. Minus beatae omnis asperiores asperiores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(18,2,'Maxime non provident odit perferendis autem.',13,0,'Odit eum laboriosam cupiditate. Ducimus animi aliquid laborum aut. Eius modi quasi aperiam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(19,3,'Nostrum deleniti suscipit dolores architecto quasi quae aut.',16,1,'Minima voluptatem autem ullam natus. Et ex eius sequi ullam. Est tempore qui sunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(20,1,'Officiis modi omnis modi enim.',18,0,'Voluptatum minima id deserunt. Et qui et est adipisci.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(21,1,'Sed cumque beatae beatae distinctio nisi cum.',9,0,'Labore aliquam quae qui expedita qui. Et doloremque sint perspiciatis quibusdam omnis neque sit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(22,1,'Sit blanditiis molestiae excepturi est minima incidunt.',7,0,'Doloremque voluptatem itaque ea at inventore commodi ipsa. Nisi qui quos aut nesciunt ab.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(23,2,'Deserunt est sed autem.',30,1,'Suscipit qui omnis voluptatum. Et praesentium minima nemo at. Voluptatibus et dicta dolores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(24,2,'Odio fuga neque neque qui blanditiis.',8,1,'Distinctio eum consectetur qui amet sunt possimus. Hic nam quo ratione dolor neque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(25,1,'Tempora voluptatem ab libero eligendi.',21,0,'Sit omnis et similique et dolor. Sunt excepturi rem quis quis omnis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(26,2,'Ducimus quia dolores cum omnis sunt tenetur architecto beatae.',29,1,'Placeat voluptates eveniet delectus illo. Autem voluptatibus assumenda magni aliquid.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(27,3,'Expedita et minus dolor.',15,1,'Iste asperiores minus eos. Hic est et eaque veniam. Nobis eos quia reiciendis est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(28,1,'Ut nulla aut aut omnis quia corporis omnis perspiciatis.',9,0,'Quam et blanditiis reiciendis vitae. Ea et et id alias. Molestiae velit sed id vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(29,2,'Commodi est dolor animi quod aut molestiae molestiae ut.',5,1,'Quae ab ut cum aperiam incidunt aut in fuga. Libero accusamus architecto commodi omnis dolore.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(30,1,'Quis culpa vitae atque voluptas suscipit.',6,1,'Dolorum eos voluptatibus esse est. Omnis odit voluptas ipsum repudiandae qui placeat.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(31,2,'Incidunt similique sed eum vel.',8,1,'Error et culpa architecto reiciendis non aut incidunt. Voluptas id molestias aut dolores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(32,3,'Soluta rerum veritatis tempore et alias quo autem.',20,0,'Aliquid excepturi cumque molestias consequatur nulla ea consequatur odit. Et quis ut quasi dolorem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(33,1,'Animi quisquam nihil animi unde nisi aut aspernatur necessitatibus.',25,0,'Id iste id est eaque dolorem magnam. Perspiciatis minus enim non. Et excepturi deleniti tempora.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(34,2,'Officiis alias dolor illum atque beatae.',29,1,'Non nam soluta perspiciatis non. Veritatis eligendi non adipisci.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(35,3,'Sint sequi vitae porro.',3,1,'Ducimus rerum et in ut accusamus vel ullam quidem. Qui vel veniam qui autem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(36,3,'Consequatur hic dolorum consectetur maxime delectus temporibus.',17,1,'Id et sunt commodi reprehenderit voluptas. Et similique cumque placeat dolores numquam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(37,3,'Ducimus voluptatibus qui voluptas dolores nemo.',27,1,'Qui excepturi debitis est quod. Consequatur tempora nostrum esse. Molestiae sed qui dicta nesciunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(38,2,'Pariatur hic commodi et beatae deleniti ut consectetur molestiae.',5,1,'Et adipisci odio laboriosam dolor. Quis sapiente error praesentium.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(39,1,'Recusandae repellat possimus architecto nobis ad.',4,0,'Incidunt accusamus natus neque laborum eos. Ea voluptate suscipit enim asperiores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(40,1,'Voluptas minima voluptatem a vitae beatae.',9,1,'Sit est voluptates adipisci non cum amet. Dolorum rem illum sed dicta aut.','2017-06-22 08:30:30','2017-06-22 08:30:30');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Em. Ph??ng Ph?ng','bnguyen@example.com',4,1,'2017-06-22 08:30:30'),(2,'Ch?. Khoa Ph??ng','dieu.hua@example.net',3,1,'2017-06-22 08:30:30'),(3,'?inh Long','ndao@example.net',1,0,'2017-06-22 08:30:30'),(4,'Ma Qu?ng V?','minh82@example.com',1,1,'2017-06-22 08:30:30'),(5,'Bác. T?ng Di?u Nhung','lan53@example.net',2,0,'2017-06-22 08:30:30'),(6,'C?. Tri?u Li?u','tho.du@example.com',2,0,'2017-06-22 08:30:30'),(7,'H? Bào','kkhuong@example.com',3,0,'2017-06-22 08:30:30'),(8,'Anh. Tào Ng?c Khi?u','sinh.can@example.org',1,1,'2017-06-22 08:30:30'),(9,'?oàn Th?o','trach.doan@example.org',3,1,'2017-06-22 08:30:30'),(10,'??ng ??c Nguyên','ohan@example.org',3,1,'2017-06-22 08:30:30'),(11,'??ng ??c Khieu','ohan@example.com',5,1,'2017-11-22 08:30:30'),(12,'V?n Khiêu','khieu@example.com',4,1,'2017-10-22 08:30:30'),(13,'Lê Khi?u','cori@example.com',6,1,'2017-11-20 07:30:30'),(14,'Phan Khi?u','ohara@example.com',5,1,'2017-10-21 08:30:30');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-13 17:05:15
