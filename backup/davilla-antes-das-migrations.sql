-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: davilla
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('hG5P38WnYydJoX0hxADVKo26JVfItIJJZweoOLk7',NULL,'172.20.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJweXo3aUVxeWVsOHBUNFZnOXVPeG1lWGZPY3g5bzExclJkRHcyMENsIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDgxXC9hZG1pblwvY2F0ZWdvcmlhIiwicm91dGUiOiJhZG1pbi5jYXRlZ29yaWEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1779289178);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_banner` (
  `id_banner` int NOT NULL AUTO_INCREMENT,
  `nome_banner` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `titulo_banner` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo_banner` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `descricao_banner` text COLLATE utf8mb4_general_ci,
  `texto_botao_banner` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_botao_banner` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ordem_banner` int NOT NULL DEFAULT '0',
  `foto_banner` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status_banner` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banner`
--

LOCK TABLES `tbl_banner` WRITE;
/*!40000 ALTER TABLE `tbl_banner` DISABLE KEYS */;
INSERT INTO `tbl_banner` VALUES (1,'home-vitrine','Confeitaria saudável com sabor de verdade','Bolos, doces e kits especiais para momentos que merecem carinho','A The Gusta une apresentação, leveza e praticidade em uma experiência artesanal pensada para quem quer comer bem sem abrir mão do sabor.','Ver cardápio','/cardapio',1,'banner/doces.webp','ATIVO'),(2,'home-encomenda','Encomendas especiais para celebrar com mais leveza','Pedidos feitos com cuidado para aniversários, presentes e datas especiais','Organize seu pedido com mais praticidade e encontre opções que combinam com o seu momento.','Fazer pedido','/pedidos',2,'banner/chocolates.webp','ATIVO'),(3,'home-cafe','Seu café da tarde pode ser ainda mais especial','Combinações perfeitas entre bolos, doces e bebidas','Uma vitrine pensada para encantar no visual, no sabor e na experiência.','Entrar em contato','/contato',3,'banner/dunnuts.webp','ATIVO');
/*!40000 ALTER TABLE `tbl_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categorias`
--

DROP TABLE IF EXISTS `tbl_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_categoria` text COLLATE utf8mb4_general_ci NOT NULL,
  `status_categoria` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ATIVO',
  `ordem_categoria` int NOT NULL DEFAULT '0',
  `criado_em_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categorias`
--

LOCK TABLES `tbl_categorias` WRITE;
/*!40000 ALTER TABLE `tbl_categorias` DISABLE KEYS */;
INSERT INTO `tbl_categorias` VALUES (1,'Bolos Fit','Bolos artesanais com proposta mais leve, ideais para vitrine e encomendas especiais.','ATIVO',1,'2026-04-30 12:08:17','2026-05-27 14:55:10'),(2,'Doces Fit','Doces delicados e saborosos para presentear, celebrar ou adoçar o dia com equilíbrio.','ATIVO',2,'2026-04-30 12:08:17','2026-05-27 14:55:09'),(3,'Tortas Fit','Tortas leves e especiais, vendidas por fatia ou sob encomenda.','ATIVO',3,'2026-04-30 12:08:17','2026-05-27 14:55:09'),(4,'Bebidas','Bebidas quentes e cremosas para acompanhar a experiência da confeitaria.','ATIVO',4,'2026-04-30 12:08:17','2026-05-27 14:55:08'),(5,'Kits Presente','Kits especiais para presentear com praticidade, charme e sabor.','ATIVO',5,'2026-04-30 12:08:17','2026-05-27 14:55:08'),(6,'Pão','Pão','ATIVO',8,'2026-05-20 12:43:07','2026-05-27 14:54:51'),(7,'teste','teste','INATIVO',8,'2026-05-20 12:44:09','2026-05-28 11:39:07'),(8,'teste2','teste2','INATIVO',9,'2026-05-20 12:44:41','2026-05-28 11:39:08'),(9,'teste3','teste3','INATIVO',10,'2026-05-20 12:45:10','2026-05-28 11:39:08'),(10,'teste4','teste4','INATIVO',10,'2026-05-20 13:30:50','2026-05-28 11:39:10'),(11,'teste1111','teste12','INATIVO',11,'2026-05-20 13:30:49','2026-05-28 11:39:10');
/*!40000 ALTER TABLE `tbl_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clientes`
--

DROP TABLE IF EXISTS `tbl_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_cliente` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `cpf_cnpj_cliente` varchar(18) COLLATE utf8mb4_general_ci NOT NULL,
  `data_nasc_cliente` date NOT NULL,
  `endereco_cliente` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_cliente` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `complemento_cliente` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bairro_cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade_cliente` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `uf_cliente` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `cep_cliente` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `email_cliente` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `senha_cliente` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone_cliente` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status_cliente` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ATIVO',
  `criado_em_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf_cnpj_cliente` (`cpf_cnpj_cliente`),
  UNIQUE KEY `email_cliente` (`email_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clientes`
--

LOCK TABLES `tbl_clientes` WRITE;
/*!40000 ALTER TABLE `tbl_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contato`
--

DROP TABLE IF EXISTS `tbl_contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contato` (
  `id_contato` int NOT NULL AUTO_INCREMENT,
  `nome_contato` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_contato` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone_contato` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `assunto_contato` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `mensagem_contato` text COLLATE utf8mb4_general_ci NOT NULL,
  `status_contato` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ENVIADO',
  `criado_em_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contato`
--

LOCK TABLES `tbl_contato` WRITE;
/*!40000 ALTER TABLE `tbl_contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_controle_materia_prima`
--

DROP TABLE IF EXISTS `tbl_controle_materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_controle_materia_prima` (
  `id_controle` int NOT NULL AUTO_INCREMENT,
  `id_materia_prima` int NOT NULL,
  `tipo_controle` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `qtde_controle` double(10,3) NOT NULL,
  `data_controle` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `obs_controle` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_controle`),
  KEY `fk_controle_materia_prima_materia_prima` (`id_materia_prima`),
  CONSTRAINT `fk_controle_materia_prima_materia_prima` FOREIGN KEY (`id_materia_prima`) REFERENCES `tbl_materia_prima` (`id_materia_prima`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_controle_materia_prima`
--

LOCK TABLES `tbl_controle_materia_prima` WRITE;
/*!40000 ALTER TABLE `tbl_controle_materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_controle_materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fornecedores`
--

DROP TABLE IF EXISTS `tbl_fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_fornecedores` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `representante_fornecedor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_fornecedor` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone_fornecedor` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `status_fornecedor` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ATIVO',
  `criado_em_fornecedor` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_fonecedor` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE KEY `telefone_fornecedor` (`telefone_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fornecedores`
--

LOCK TABLES `tbl_fornecedores` WRITE;
/*!40000 ALTER TABLE `tbl_fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_itens_kit`
--

DROP TABLE IF EXISTS `tbl_itens_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_itens_kit` (
  `id_item_kit` int NOT NULL AUTO_INCREMENT,
  `id_kit` int NOT NULL,
  `id_produto` int NOT NULL,
  `status_item_kit` varchar(20) NOT NULL,
  `criado_em_item_kit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_item_kit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_item_kit`),
  KEY `fk_item_kit_kit` (`id_kit`),
  KEY `fk_item_kit_produto` (`id_produto`),
  CONSTRAINT `fk_item_kit_kit` FOREIGN KEY (`id_kit`) REFERENCES `tbl_kits` (`id_kit`),
  CONSTRAINT `fk_item_kit_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produtos` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_itens_kit`
--

LOCK TABLES `tbl_itens_kit` WRITE;
/*!40000 ALTER TABLE `tbl_itens_kit` DISABLE KEYS */;
INSERT INTO `tbl_itens_kit` VALUES (1,1,1,'ATIVO','2026-05-12 13:31:50','2026-05-12 13:31:50'),(2,1,2,'ATIVO','2026-05-12 13:32:32','2026-05-12 13:32:32'),(3,1,3,'ATIVO','2026-05-12 13:32:37','2026-05-12 13:32:37'),(4,2,7,'ATIVO','2026-05-12 13:33:04','2026-05-12 13:33:04'),(5,2,8,'ATIVO','2026-05-12 13:33:52','2026-05-12 13:33:52'),(6,3,9,'ATIVO','2026-05-12 13:34:12','2026-05-12 13:34:12'),(7,3,3,'ATIVO','2026-05-12 13:33:53','2026-05-12 13:33:53'),(8,3,1,'ATIVO','2026-05-12 13:34:38','2026-05-12 13:34:38'),(9,3,6,'ATIVO','2026-05-12 13:34:26','2026-05-12 13:34:26'),(10,3,7,'ATIVO','2026-05-12 13:35:09','2026-05-12 13:35:09');
/*!40000 ALTER TABLE `tbl_itens_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_itens_venda`
--

DROP TABLE IF EXISTS `tbl_itens_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_itens_venda` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `id_venda` int NOT NULL,
  `id_produto` int NOT NULL,
  `valor_unit_item` double(10,2) NOT NULL,
  `qtde_itens` double(10,2) NOT NULL,
  `status_item` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `atualizado_em_item` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_item`),
  KEY `fk_itens_venda_venda` (`id_venda`),
  KEY `fk_itens_venda_produto` (`id_produto`),
  CONSTRAINT `fk_itens_venda_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produtos` (`id_produto`),
  CONSTRAINT `fk_itens_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_vendas` (`id_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_itens_venda`
--

LOCK TABLES `tbl_itens_venda` WRITE;
/*!40000 ALTER TABLE `tbl_itens_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_itens_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kits`
--

DROP TABLE IF EXISTS `tbl_kits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kits` (
  `id_kit` int NOT NULL AUTO_INCREMENT,
  `nome_kit` varchar(30) NOT NULL,
  `descricao_kit` text NOT NULL,
  `foto_kit` varchar(100) NOT NULL,
  `slug_kit` varchar(30) NOT NULL,
  `criado_em_kit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_kit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kit`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kits`
--

LOCK TABLES `tbl_kits` WRITE;
/*!40000 ALTER TABLE `tbl_kits` DISABLE KEYS */;
INSERT INTO `tbl_kits` VALUES (1,'Kit Bolos','Um Kit com 3 Bolos Deliciosos','kit/kit-bolos.png','kit-bolos','2026-05-12 13:16:39','2026-05-12 13:16:39'),(2,'Kit Tortas','Um Kit com 2 tortas','kit/kit-tortas.png','kit-tortas','2026-05-12 13:20:35','2026-05-12 13:20:35'),(3,'Kit Café','Um Kit delicioso para você tomar café da manhã ou tarde','kit/kit-cafe.png','kit-cafe','2026-05-12 13:21:30','2026-05-12 13:21:30');
/*!40000 ALTER TABLE `tbl_kits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_materia_prima`
--

DROP TABLE IF EXISTS `tbl_materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_materia_prima` (
  `id_materia_prima` int NOT NULL AUTO_INCREMENT,
  `nome_materia_prima` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `unid_med_materia_prima` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `qtde_atual_materia_prima` double(10,3) NOT NULL,
  `id_fornecedor` int NOT NULL,
  `criado_em_materia_prima` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_materia_prima` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_materia_prima`),
  KEY `fk_materia_prima_fornecedor` (`id_fornecedor`),
  CONSTRAINT `fk_materia_prima_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `tbl_fornecedores` (`id_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_materia_prima`
--

LOCK TABLES `tbl_materia_prima` WRITE;
/*!40000 ALTER TABLE `tbl_materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produtos`
--

DROP TABLE IF EXISTS `tbl_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `slug_produto` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_categoria` int NOT NULL,
  `descricao_produto` text COLLATE utf8mb4_general_ci NOT NULL,
  `tamanho_produto` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `unid_med_produto` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `valor_produto` double(10,2) NOT NULL,
  `foto_produto` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `status_produto` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ATIVO',
  `destaque_produto` varchar(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NAO',
  `ordem_produto` int NOT NULL DEFAULT '0',
  `criado_em_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_produto`),
  KEY `fk_produto_categoria` (`id_categoria`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produtos`
--

LOCK TABLES `tbl_produtos` WRITE;
/*!40000 ALTER TABLE `tbl_produtos` DISABLE KEYS */;
INSERT INTO `tbl_produtos` VALUES (1,'Bolo Banana Fit','bolo-banana-fit',1,'Fatia de bolo de banana com canela, textura macia e preparo artesanal.','Médio','FT',14.90,'produto/bolo-banana-fit.png','ATIVO','SIM',1,'2026-04-30 12:07:29','2026-05-27 14:55:16'),(2,'Bolo Cacau Fit','bolo-cacau-fit',1,'Fatia de bolo de cacau com cobertura leve e sabor marcante.','Médio','FT',15.90,'produto/bolo-cacau-fit.png','ATIVO','SIM',2,'2026-04-30 12:07:29','2026-05-27 14:55:17'),(3,'Mini Bolo Cenoura','mini-bolo-cenoura',1,'Mini bolo de cenoura com cobertura de chocolate e apresentação delicada.','Pequeno','UN',18.90,'produto/mini-bolo-cenoura.png','ATIVO','NAO',3,'2026-04-30 12:07:29','2026-05-27 14:55:18'),(4,'Brownie Fit','brownie-fit',2,'Brownie artesanal com textura macia e uma proposta mais equilibrada.','Pequeno','UN',8.90,'produto/brownie-fit.png','ATIVO','SIM',4,'2026-04-30 12:07:29','2026-05-27 14:55:18'),(5,'Brigadeiro Fit','brigadeiro-fit',2,'Brigadeiro especial com sabor intenso e porção individual.','Pequeno','UN',4.50,'produto/brigadeiro-fit.png','ATIVO','NAO',5,'2026-04-30 12:07:29','2026-05-27 14:56:11'),(6,'Caixa 4 Doces Fit','caixa-4-doces-fit',2,'Caixa com 4 doces variados para presentear ou experimentar.','Pequeno','CX',24.90,'produto/caixa-4-doces-fit.png','ATIVO','SIM',6,'2026-04-30 12:07:29','2026-05-27 14:55:52'),(7,'Torta Limão Fit','torta-limao-fit',3,'Fatia de torta de limão com leveza, frescor e cremosidade.','Médio','FT',16.50,'produto/torta-limao-fit.png','ATIVO','SIM',7,'2026-04-30 12:07:29','2026-05-27 14:55:33'),(8,'Cheesecake Fit','cheesecake-fit',3,'Cheesecake com frutas vermelhas e apresentação elegante para vitrine.','Grande','UN',18.90,'produto/cheesecake-fit.png','ATIVO','NAO',8,'2026-04-30 12:07:29','2026-05-27 14:55:31'),(9,'Cafe Expresso','cafe-expresso',4,'Café expresso encorpado para acompanhar doces e bolos.','Pequeno','ML',6.50,'produto/cafe-expresso.png','ATIVO','NAO',9,'2026-04-30 12:07:29','2026-05-27 14:56:21'),(10,'Cappuccino Cremoso','cappuccino-cremoso',4,'Cappuccino cremoso com toque especial da casa.','Grande','ML',11.90,'produto/cappuccino-cremoso.png','ATIVO','SIM',10,'2026-04-30 12:07:29','2026-05-27 14:55:28'),(11,'Kit Presente Fit','kit-presente-fit',5,'Kit com mini bolo e doces selecionados para presentear com charme.','Grande','UN',54.90,'produto/kit-presente-fit.png','ATIVO','SIM',11,'2026-04-30 12:07:29','2026-05-27 14:55:25'),(12,'Kit Cafe Saudavel','kit-cafe-saudavel',5,'Kit com bebida e doces especiais para uma experiência acolhedora.','Grande','UN',59.90,'produto/kit-cafe-saudavel.png','ATIVO','NAO',12,'2026-04-30 12:07:29','2026-05-27 14:57:02'),(13,'PÃO','pao',6,'Pão Fit','Médio','UN',10.00,'produto/pao.webp','ATIVO','NAO',13,'2026-05-27 11:51:10','2026-05-27 14:36:15');
/*!40000 ALTER TABLE `tbl_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_usuario` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `senha_usuario` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `perfil_usuario` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_usuario` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `status_usuario` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `criado_em_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizado_em_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_usuario` (`email_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'Administrador','admin@thegusta.com','$2y$12$iHVcp4uF1jPAM/scfujvkul.uQkGjQsuvJc/1RpoQ8wKuAh.djQtG','Administrador','user/1780917619.jpg','Ativo','2026-06-02 14:29:29','2026-06-08 11:20:19');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vendas`
--

DROP TABLE IF EXISTS `tbl_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vendas` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_usuario` int NOT NULL,
  `data_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valor_venda` double(10,2) NOT NULL,
  `status_venda` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `data_entrega_venda` datetime NOT NULL,
  `atualizdo_em_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venda`),
  KEY `fk_venda_cliente` (`id_cliente`),
  KEY `fk_venda_usuario` (`id_usuario`),
  CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_clientes` (`id_cliente`),
  CONSTRAINT `fk_venda_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vendas`
--

LOCK TABLES `tbl_vendas` WRITE;
/*!40000 ALTER TABLE `tbl_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2026-09-10 12:06:49
