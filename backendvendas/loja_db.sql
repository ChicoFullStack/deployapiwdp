-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: loja_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` bigint NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime NOT NULL,
  `imagem_desktop` varchar(255) NOT NULL,
  `imagem_mobile` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (16,'moda-intima',NULL,'2025-01-06 14:29:19','https://api.codigocapixaba.com.br:5000/uploads/Produtos/1/imagem-05.webp','http://maria.name'),(17,'vinhos',NULL,'2025-01-06 14:31:22','https://api.codigocapixaba.com.br:5000/uploads/Produtos/4/imagem-05.webp','http://mallie.net'),(18,'perfumaria',NULL,'2025-01-06 14:32:03','https://api.codigocapixaba.com.br:5000/uploads/Produtos/7/imagem-01.webp','https://aditya.net');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` bigint NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (19,NULL,'2025-01-06 14:32:55','vinhos'),(20,NULL,'2025-01-06 14:33:27','Perfumes'),(21,NULL,'2025-01-06 14:33:38','Moda Intima'),(22,NULL,'2025-01-06 14:33:45','Suplementos');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desconto`
--

DROP TABLE IF EXISTS `desconto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desconto` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `porcentagem` double DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pedido_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgm61rj1h5k827gkvq33arorun` (`pedido_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desconto`
--

LOCK TABLES `desconto` WRITE;
/*!40000 ALTER TABLE `desconto` DISABLE KEYS */;
/*!40000 ALTER TABLE `desconto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_produto`
--

DROP TABLE IF EXISTS `detalhes_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalhes_produto` (
  `id` bigint NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `produto_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKisu74dfow0a95q8r1p9mkicoc` (`produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_produto`
--

LOCK TABLES `detalhes_produto` WRITE;
/*!40000 ALTER TABLE `detalhes_produto` DISABLE KEYS */;
INSERT INTO `detalhes_produto` VALUES (24,NULL,NULL,'Microfibra','Material principal',23),(25,NULL,NULL,'Calcinhas Plus Size','Linha',23),(26,NULL,NULL,'presente calçola tamanho maior senhora cobre bumbum tanga','Modelo',23),(27,NULL,NULL,'Feminino','Gênero',23),(28,NULL,NULL,'Adultos','Idade',23),(29,NULL,NULL,'Adultos','Idade',23),(30,NULL,NULL,'Poliéster/Elastano','Composição',23),(31,NULL,NULL,'Calçola','Tipo de calcinha',23),(32,NULL,NULL,'Cintura alta','Tipo de cintura da calcinha',23),(36,NULL,NULL,'Microfibra','Material principal',35),(37,NULL,NULL,'Calcinhas Plus Size','Linha',35),(38,NULL,NULL,'presente calçola tamanho maior senhora cobre bumbum tanga','Modelo',35),(39,NULL,NULL,'Feminino','Gênero',35),(40,NULL,NULL,'Adultos','Idade',35),(41,NULL,NULL,'Adultos','Idade',35),(42,NULL,NULL,'Poliéster/Elastano','Composição',35),(43,NULL,NULL,'Calçola','Tipo de calcinha',35),(44,NULL,NULL,'Cintura alta','Tipo de cintura da calcinha',35),(48,NULL,NULL,'Microfibra','Material principal',47),(49,NULL,NULL,'Calcinhas Plus Size','Linha',47),(50,NULL,NULL,'presente calçola tamanho maior senhora cobre bumbum tanga','Modelo',47),(51,NULL,NULL,'Feminino','Gênero',47),(52,NULL,NULL,'Adultos','Idade',47),(53,NULL,NULL,'Adultos','Idade',47),(54,NULL,NULL,'Poliéster/Elastano','Composição',47),(55,NULL,NULL,'Calçola','Tipo de calcinha',47),(56,NULL,NULL,'Cintura alta','Tipo de cintura da calcinha',47),(60,NULL,NULL,'Microfibra','Material principal',59),(61,NULL,NULL,'Calcinhas Plus Size','Linha',59),(62,NULL,NULL,'presente calçola tamanho maior senhora cobre bumbum tanga','Modelo',59),(63,NULL,NULL,'Feminino','Gênero',59),(64,NULL,NULL,'Adultos','Idade',59),(65,NULL,NULL,'Adultos','Idade',59),(66,NULL,NULL,'Poliéster/Elastano','Composição',59),(67,NULL,NULL,'Calçola','Tipo de calcinha',59),(68,NULL,NULL,'Cintura alta','Tipo de cintura da calcinha',59),(72,NULL,NULL,'Microfibra','Material principal',71),(73,NULL,NULL,'Calcinhas Plus Size','Linha',71),(74,NULL,NULL,'presente calçola tamanho maior senhora cobre bumbum tanga','Modelo',71),(75,NULL,NULL,'Feminino','Gênero',71),(76,NULL,NULL,'Adultos','Idade',71),(77,NULL,NULL,'Adultos','Idade',71),(78,NULL,NULL,'Poliéster/Elastano','Composição',71),(79,NULL,NULL,'Calçola','Tipo de calcinha',71),(80,NULL,NULL,'Cintura alta','Tipo de cintura da calcinha',71);
/*!40000 ALTER TABLE `detalhes_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` bigint NOT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `is_primary` bit(1) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `pessoa_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn1l2g0b74rqd9ywu29sva9sy9` (`pessoa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (6,'Centro','51010-370','East Rowland','',NULL,'2025-01-06 14:25:25',NULL,'Drake River','482','CE',1),(7,'Centro','51010-370','South Tylermouth','',NULL,'2025-01-06 14:25:47',NULL,'Julius Brook','699','PB',1),(8,'Centro','51010-370','Cape Coral','',NULL,'2025-01-06 14:25:54',NULL,'Raynor Valleys','127','PR',2),(9,'Centro','51010-370','West Vancebury','',NULL,'2025-01-06 14:25:55',NULL,'Pfannerstill Port','81','PA',2),(10,'Centro','51010-370','Gleichnerchester','',NULL,'2025-01-06 14:25:59',NULL,'Price Glen','537','BA',3),(11,'Centro','51010-370','Lebsacktown','',NULL,'2025-01-06 14:26:00',NULL,'Simeon Extension','191','RJ',3),(12,'Centro','51010-370','West Danyka','',NULL,'2025-01-06 14:26:04',NULL,'Keeling Causeway','825','SP',4),(13,'Centro','51010-370','Kautzerburgh','',NULL,'2025-01-06 14:26:05',NULL,'Lois Walks','778','RS',4),(14,'Centro','51010-370','Euless','',NULL,'2025-01-06 14:26:10',NULL,'Abbott Ford','687','MT',5),(15,'Centro','51010-370','Meggiemouth','',NULL,'2025-01-06 14:26:11',NULL,'Liliana Circle','647','PA',5),(97,'Centro','51010-370','Lancaster','',NULL,'2025-01-06 15:04:18',NULL,'Rowe Divide','300','PE',5);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorito`
--

DROP TABLE IF EXISTS `favorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorito` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `pessoa_id` bigint DEFAULT NULL,
  `produto_id` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorito`
--

LOCK TABLES `favorito` WRITE;
/*!40000 ALTER TABLE `favorito` DISABLE KEYS */;
INSERT INTO `favorito` VALUES (83,'2025-01-06 14:41:45',1,23,NULL),(84,'2025-01-06 14:41:52',1,35,NULL),(85,'2025-01-06 14:42:01',2,47,NULL),(86,'2025-01-06 14:42:05',2,59,NULL);
/*!40000 ALTER TABLE `favorito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (98);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pedido` (
  `id` bigint NOT NULL,
  `preco` double DEFAULT NULL,
  `preco_total` double DEFAULT NULL,
  `produto_id` bigint DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `pedido_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK60ym08cfoysa17wrn1swyiuda` (`pedido_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pedido`
--

LOCK TABLES `item_pedido` WRITE;
/*!40000 ALTER TABLE `item_pedido` DISABLE KEYS */;
INSERT INTO `item_pedido` VALUES (92,10,50,23,5,91),(93,10,90,35,9,91),(95,10,50,71,5,94),(96,10,90,59,9,94);
/*!40000 ALTER TABLE `item_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` bigint NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (87,NULL,'2025-01-06 14:44:08','Boyle, Lind and Jerde'),(88,NULL,'2025-01-06 14:45:17','Moen - Abbott'),(89,NULL,'2025-01-06 14:45:19','Hansen Group'),(90,NULL,'2025-01-06 14:45:21','Abernathy - Kihn');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `endereco_id` bigint DEFAULT NULL,
  `pessoa_id` bigint DEFAULT NULL,
  `preco_total` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (91,'2025-01-06 14:47:16',6,1,140,'PENDENTE',NULL),(94,'2025-01-06 14:48:08',13,3,140,'PENDENTE',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` bigint NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `codigo_recuperacao_senha` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_envio_codigo` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `data_nasc` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `role` int DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `tel_fixo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/390.jpg','771-992-3242',NULL,'61786419',NULL,NULL,'2025-01-06 14:07:04','28/11/1990','Angie.Johnson95@gmail.com','Ms.','Sarah Langosh MD',1,'$2a$10$XopHJ9GdNOE2AWom./7e0.S/3cABvs/yvHCsKJs/7sAedber9gUa.','703-435-5840'),(2,'https://avatars.githubusercontent.com/u/98746600','384-788-0411',NULL,'55278186',NULL,NULL,'2025-01-06 14:13:52','28/11/1990','Emile37@hotmail.com','Miss','Dr. Lee Crist',1,'$2a$10$1.hjn1OXed.g4TWAlXDpuulcnHAWVt2zUPulWvabDj73ReHe5pSXy','422-303-9950'),(3,'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/892.jpg','714-757-2376',NULL,'35984145',NULL,NULL,'2025-01-06 14:14:03','28/11/1990','Ezequiel.Hayes@gmail.com','Mrs.','Francis Friesen PhD',0,'$2a$10$rvNFIKLmZqEKu6iS2STEpO25Qv3CSN0Q6ch6NJQf6sjrLMIQktXWi','524-313-4802'),(4,'https://avatars.githubusercontent.com/u/57818884','366-614-7769',NULL,'37364464',NULL,NULL,'2025-01-06 14:14:08','28/11/1990','Yadira_Collins47@hotmail.com','Mrs.','Gene Kautzer',0,'$2a$10$tbGc5HLN.rdQwdi1eYJZLuokSeSnSXLXjJe3bVRvbC6/azvjVcTO.','834-674-3985'),(5,'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1092.jpg','574-221-6075',NULL,'02025057',NULL,NULL,'2025-01-06 14:14:14','28/11/1990','Joanne_Barrows@yahoo.com','Mr.','Johnnie Lesch',2,'$2a$10$MxPge8YaHtL7uYRsrK40GeBsScWpl0XzoJJXoM3L6FVIRTgaysO.a','990-352-7167');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` bigint NOT NULL,
  `avaliacao` double DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `codigosku` varchar(255) NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `descricao` text NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `preco_promocional` double DEFAULT NULL,
  `quantidade_estoque` int DEFAULT NULL,
  `unidades_vendidas` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (23,NULL,'Games','UXIUUMC1EIF',NULL,'2025-01-06 14:36:01','Descubra o equilíbrio perfeito entre conforto e estilo com o Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra. Feitas para oferecer um ajuste perfeito e um toque suave, essas calcinhas são ideais para mulheres que buscam uma lingerie que combine elegância e bem-estar. O cós alto proporciona uma cobertura segura e confortável, enquanto a microfibra garante um caimento leve e respirável.  Proporciona maior cobertura e suporte, modelando a cintura e oferecendo uma sensação de segurança durante o uso. A microfibra é conhecida pelo seu toque suave, leveza e capacidade de absorção, garantindo conforto e frescor ao longo do dia. Desenvolvidas especialmente para atender todos os tamanhos, essas calcinhas oferecem um ajuste confortável e perfeito para diferentes tipos de corpo.  Composição: 92% Poliéster, 8% Elastano  Tamanhos Disponíveis: M, G, GG, 48, 50, 52, 54, 56, 58, 60 e 62.  MEDIDAS: M: Cintura 70-77 cm, Quadril 95-102 cm G: Cintura 78-85 cm, Quadril 103-110 cm GG: Cintura 86-93 cm, Quadril 111-118 cm 48: Cintura 94-101 cm, Quadril 119-126 cm 50: Cintura 102-109 cm, Quadril 127-134 cm 52: Cintura 110-117 cm, Quadril 135-142 cm 54: Cintura 118-125 cm, Quadril 143-150 cm 56: Cintura 126-133 cm, Quadril 151-158 cm 58: Cintura 134-141 cm, Quadril 159-166 cm 60: Cintura 142-149 cm, Quadril 167-174 cm 62: Cintura 150-157 cm, Quadril 175-182 cm  RECOMENDAÇÕES: - Não lavar com alvejantes - Não usar máquina de secar - Não passar - Não usar máquina de lavar - Somente lavagem manual  Perguntas Frequentes:  O cós alto é confortável para o uso diário? Sim, o cós alto oferece um ajuste seguro e confortável, sem apertar ou causar desconforto.  A microfibra é adequada para climas quentes? Sim, a microfibra é leve e respirável, ideal para manter a sensação de frescor mesmo em dias quentes.  As calcinhas marcam sob roupas justas? Não, o tecido de microfibra e a modelagem foram projetados para um caimento suave, sem marcas visíveis.  Adquira já o seu Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra e experimente o conforto e a elegância que você merece!','Stroman - Herzog','Abernathy',70.41,78.13,25,NULL),(35,NULL,'Jewelery','VBZIPAY1',NULL,'2025-01-06 14:37:25','Descubra o equilíbrio perfeito entre conforto e estilo com o Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra. Feitas para oferecer um ajuste perfeito e um toque suave, essas calcinhas são ideais para mulheres que buscam uma lingerie que combine elegância e bem-estar. O cós alto proporciona uma cobertura segura e confortável, enquanto a microfibra garante um caimento leve e respirável.  Proporciona maior cobertura e suporte, modelando a cintura e oferecendo uma sensação de segurança durante o uso. A microfibra é conhecida pelo seu toque suave, leveza e capacidade de absorção, garantindo conforto e frescor ao longo do dia. Desenvolvidas especialmente para atender todos os tamanhos, essas calcinhas oferecem um ajuste confortável e perfeito para diferentes tipos de corpo.  Composição: 92% Poliéster, 8% Elastano  Tamanhos Disponíveis: M, G, GG, 48, 50, 52, 54, 56, 58, 60 e 62.  MEDIDAS: M: Cintura 70-77 cm, Quadril 95-102 cm G: Cintura 78-85 cm, Quadril 103-110 cm GG: Cintura 86-93 cm, Quadril 111-118 cm 48: Cintura 94-101 cm, Quadril 119-126 cm 50: Cintura 102-109 cm, Quadril 127-134 cm 52: Cintura 110-117 cm, Quadril 135-142 cm 54: Cintura 118-125 cm, Quadril 143-150 cm 56: Cintura 126-133 cm, Quadril 151-158 cm 58: Cintura 134-141 cm, Quadril 159-166 cm 60: Cintura 142-149 cm, Quadril 167-174 cm 62: Cintura 150-157 cm, Quadril 175-182 cm  RECOMENDAÇÕES: - Não lavar com alvejantes - Não usar máquina de secar - Não passar - Não usar máquina de lavar - Somente lavagem manual  Perguntas Frequentes:  O cós alto é confortável para o uso diário? Sim, o cós alto oferece um ajuste seguro e confortável, sem apertar ou causar desconforto.  A microfibra é adequada para climas quentes? Sim, a microfibra é leve e respirável, ideal para manter a sensação de frescor mesmo em dias quentes.  As calcinhas marcam sob roupas justas? Não, o tecido de microfibra e a modelagem foram projetados para um caimento suave, sem marcas visíveis.  Adquira já o seu Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra e experimente o conforto e a elegância que você merece!','Erdman - Beier','Hane',413.98,78.13,14,NULL),(47,NULL,'Books','PZOOVEW1',NULL,'2025-01-06 14:37:58','Descubra o equilíbrio perfeito entre conforto e estilo com o Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra. Feitas para oferecer um ajuste perfeito e um toque suave, essas calcinhas são ideais para mulheres que buscam uma lingerie que combine elegância e bem-estar. O cós alto proporciona uma cobertura segura e confortável, enquanto a microfibra garante um caimento leve e respirável.  Proporciona maior cobertura e suporte, modelando a cintura e oferecendo uma sensação de segurança durante o uso. A microfibra é conhecida pelo seu toque suave, leveza e capacidade de absorção, garantindo conforto e frescor ao longo do dia. Desenvolvidas especialmente para atender todos os tamanhos, essas calcinhas oferecem um ajuste confortável e perfeito para diferentes tipos de corpo.  Composição: 92% Poliéster, 8% Elastano  Tamanhos Disponíveis: M, G, GG, 48, 50, 52, 54, 56, 58, 60 e 62.  MEDIDAS: M: Cintura 70-77 cm, Quadril 95-102 cm G: Cintura 78-85 cm, Quadril 103-110 cm GG: Cintura 86-93 cm, Quadril 111-118 cm 48: Cintura 94-101 cm, Quadril 119-126 cm 50: Cintura 102-109 cm, Quadril 127-134 cm 52: Cintura 110-117 cm, Quadril 135-142 cm 54: Cintura 118-125 cm, Quadril 143-150 cm 56: Cintura 126-133 cm, Quadril 151-158 cm 58: Cintura 134-141 cm, Quadril 159-166 cm 60: Cintura 142-149 cm, Quadril 167-174 cm 62: Cintura 150-157 cm, Quadril 175-182 cm  RECOMENDAÇÕES: - Não lavar com alvejantes - Não usar máquina de secar - Não passar - Não usar máquina de lavar - Somente lavagem manual  Perguntas Frequentes:  O cós alto é confortável para o uso diário? Sim, o cós alto oferece um ajuste seguro e confortável, sem apertar ou causar desconforto.  A microfibra é adequada para climas quentes? Sim, a microfibra é leve e respirável, ideal para manter a sensação de frescor mesmo em dias quentes.  As calcinhas marcam sob roupas justas? Não, o tecido de microfibra e a modelagem foram projetados para um caimento suave, sem marcas visíveis.  Adquira já o seu Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra e experimente o conforto e a elegância que você merece!','Schuppe, Macejkovic and Reynolds','Reilly',3.97,78.13,62,NULL),(59,NULL,'Electronics','TPYACGB1',NULL,'2025-01-06 14:38:24','Descubra o equilíbrio perfeito entre conforto e estilo com o Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra. Feitas para oferecer um ajuste perfeito e um toque suave, essas calcinhas são ideais para mulheres que buscam uma lingerie que combine elegância e bem-estar. O cós alto proporciona uma cobertura segura e confortável, enquanto a microfibra garante um caimento leve e respirável.  Proporciona maior cobertura e suporte, modelando a cintura e oferecendo uma sensação de segurança durante o uso. A microfibra é conhecida pelo seu toque suave, leveza e capacidade de absorção, garantindo conforto e frescor ao longo do dia. Desenvolvidas especialmente para atender todos os tamanhos, essas calcinhas oferecem um ajuste confortável e perfeito para diferentes tipos de corpo.  Composição: 92% Poliéster, 8% Elastano  Tamanhos Disponíveis: M, G, GG, 48, 50, 52, 54, 56, 58, 60 e 62.  MEDIDAS: M: Cintura 70-77 cm, Quadril 95-102 cm G: Cintura 78-85 cm, Quadril 103-110 cm GG: Cintura 86-93 cm, Quadril 111-118 cm 48: Cintura 94-101 cm, Quadril 119-126 cm 50: Cintura 102-109 cm, Quadril 127-134 cm 52: Cintura 110-117 cm, Quadril 135-142 cm 54: Cintura 118-125 cm, Quadril 143-150 cm 56: Cintura 126-133 cm, Quadril 151-158 cm 58: Cintura 134-141 cm, Quadril 159-166 cm 60: Cintura 142-149 cm, Quadril 167-174 cm 62: Cintura 150-157 cm, Quadril 175-182 cm  RECOMENDAÇÕES: - Não lavar com alvejantes - Não usar máquina de secar - Não passar - Não usar máquina de lavar - Somente lavagem manual  Perguntas Frequentes:  O cós alto é confortável para o uso diário? Sim, o cós alto oferece um ajuste seguro e confortável, sem apertar ou causar desconforto.  A microfibra é adequada para climas quentes? Sim, a microfibra é leve e respirável, ideal para manter a sensação de frescor mesmo em dias quentes.  As calcinhas marcam sob roupas justas? Não, o tecido de microfibra e a modelagem foram projetados para um caimento suave, sem marcas visíveis.  Adquira já o seu Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra e experimente o conforto e a elegância que você merece!','Bauch - Gulgowski','Kessler',150.75,78.13,482,NULL),(71,NULL,'Automotive','POOOBIM1',NULL,'2025-01-06 14:38:52','Descubra o equilíbrio perfeito entre conforto e estilo com o Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra. Feitas para oferecer um ajuste perfeito e um toque suave, essas calcinhas são ideais para mulheres que buscam uma lingerie que combine elegância e bem-estar. O cós alto proporciona uma cobertura segura e confortável, enquanto a microfibra garante um caimento leve e respirável.  Proporciona maior cobertura e suporte, modelando a cintura e oferecendo uma sensação de segurança durante o uso. A microfibra é conhecida pelo seu toque suave, leveza e capacidade de absorção, garantindo conforto e frescor ao longo do dia. Desenvolvidas especialmente para atender todos os tamanhos, essas calcinhas oferecem um ajuste confortável e perfeito para diferentes tipos de corpo.  Composição: 92% Poliéster, 8% Elastano  Tamanhos Disponíveis: M, G, GG, 48, 50, 52, 54, 56, 58, 60 e 62.  MEDIDAS: M: Cintura 70-77 cm, Quadril 95-102 cm G: Cintura 78-85 cm, Quadril 103-110 cm GG: Cintura 86-93 cm, Quadril 111-118 cm 48: Cintura 94-101 cm, Quadril 119-126 cm 50: Cintura 102-109 cm, Quadril 127-134 cm 52: Cintura 110-117 cm, Quadril 135-142 cm 54: Cintura 118-125 cm, Quadril 143-150 cm 56: Cintura 126-133 cm, Quadril 151-158 cm 58: Cintura 134-141 cm, Quadril 159-166 cm 60: Cintura 142-149 cm, Quadril 167-174 cm 62: Cintura 150-157 cm, Quadril 175-182 cm  RECOMENDAÇÕES: - Não lavar com alvejantes - Não usar máquina de secar - Não passar - Não usar máquina de lavar - Somente lavagem manual  Perguntas Frequentes:  O cós alto é confortável para o uso diário? Sim, o cós alto oferece um ajuste seguro e confortável, sem apertar ou causar desconforto.  A microfibra é adequada para climas quentes? Sim, a microfibra é leve e respirável, ideal para manter a sensação de frescor mesmo em dias quentes.  As calcinhas marcam sob roupas justas? Não, o tecido de microfibra e a modelagem foram projetados para um caimento suave, sem marcas visíveis.  Adquira já o seu Kit de 10 Calcinhas Plus Size Cós Alto em Microfibra e experimente o conforto e a elegância que você merece!','Feil Inc','Dooley',729.82,78.13,329,NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_cores`
--

DROP TABLE IF EXISTS `produto_cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_cores` (
  `produto_id` bigint NOT NULL,
  `cores` varchar(255) DEFAULT NULL,
  KEY `FKe5pct5q5cd4t6css98vdcpryh` (`produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_cores`
--

LOCK TABLES `produto_cores` WRITE;
/*!40000 ALTER TABLE `produto_cores` DISABLE KEYS */;
INSERT INTO `produto_cores` VALUES (23,'Cores variadas'),(23,'Preto'),(23,'Bege'),(23,'5 pretas 5 beges'),(35,'Cores variadas'),(35,'Preto'),(35,'Bege'),(35,'5 pretas 5 beges'),(47,'Cores variadas'),(47,'Preto'),(47,'Bege'),(47,'5 pretas 5 beges'),(59,'Cores variadas'),(59,'Preto'),(59,'Bege'),(59,'5 pretas 5 beges'),(71,'Cores variadas'),(71,'Preto'),(71,'Bege'),(71,'5 pretas 5 beges');
/*!40000 ALTER TABLE `produto_cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_imagens`
--

DROP TABLE IF EXISTS `produto_imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_imagens` (
  `id` bigint NOT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `produto_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg8laoe7wod2vuf03jn914tuli` (`produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_imagens`
--

LOCK TABLES `produto_imagens` WRITE;
/*!40000 ALTER TABLE `produto_imagens` DISABLE KEYS */;
INSERT INTO `produto_imagens` VALUES (33,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/3/imagem-03.webp',23),(34,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/4/imagem-03.webp',23),(45,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/7/imagem-02.webp',35),(46,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/7/imagem-01.webp',35),(57,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/6/imagem-01.webp',47),(58,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/6/imagem-04.webp',47),(69,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/5/imagem-04.webp',59),(70,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/5/imagem-05.webp',59),(81,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/4/imagem-05.webp',71),(82,NULL,NULL,'https://api.codigocapixaba.com.br:5000/uploads/Produtos/4/imagem-04.webp',71);
/*!40000 ALTER TABLE `produto_imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_sub_categorias`
--

DROP TABLE IF EXISTS `produto_sub_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_sub_categorias` (
  `produto_id` bigint NOT NULL,
  `sub_categorias` varchar(255) NOT NULL,
  KEY `FKb56v1sciar5kos6s1kqagxxsm` (`produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_sub_categorias`
--

LOCK TABLES `produto_sub_categorias` WRITE;
/*!40000 ALTER TABLE `produto_sub_categorias` DISABLE KEYS */;
INSERT INTO `produto_sub_categorias` VALUES (23,'Calcinha Plus Size'),(23,'Calcinhas'),(23,'Lingerie'),(23,'Roupa Intima'),(35,'Calcinha Plus Size'),(35,'Calcinhas'),(35,'Lingerie'),(35,'Roupa Intima'),(47,'Calcinha Plus Size'),(47,'Calcinhas'),(47,'Lingerie'),(47,'Roupa Intima'),(59,'Calcinha Plus Size'),(59,'Calcinhas'),(59,'Lingerie'),(59,'Roupa Intima'),(71,'Calcinha Plus Size'),(71,'Calcinhas'),(71,'Lingerie'),(71,'Roupa Intima');
/*!40000 ALTER TABLE `produto_sub_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_tamanhos`
--

DROP TABLE IF EXISTS `produto_tamanhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_tamanhos` (
  `produto_id` bigint NOT NULL,
  `tamanhos` varchar(255) DEFAULT NULL,
  KEY `FKa6j4bjsqod8yib38dtlqv95w9` (`produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_tamanhos`
--

LOCK TABLES `produto_tamanhos` WRITE;
/*!40000 ALTER TABLE `produto_tamanhos` DISABLE KEYS */;
INSERT INTO `produto_tamanhos` VALUES (23,'XG'),(23,'XGG'),(23,'G3'),(23,'G7'),(23,'G8'),(23,'M'),(23,'P'),(35,'XG'),(35,'XGG'),(35,'G3'),(35,'G7'),(35,'G8'),(35,'M'),(35,'P'),(47,'XG'),(47,'XGG'),(47,'G3'),(47,'G7'),(47,'G8'),(47,'M'),(47,'P'),(59,'XG'),(59,'XGG'),(59,'G3'),(59,'G7'),(59,'G8'),(59,'M'),(59,'P'),(71,'XG'),(71,'XGG'),(71,'G3'),(71,'G7'),(71,'G8'),(71,'M'),(71,'P');
/*!40000 ALTER TABLE `produto_tamanhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'loja_db'
--

--
-- Dumping routines for database 'loja_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 15:05:55
