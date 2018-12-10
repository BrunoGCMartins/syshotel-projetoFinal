-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: syshotelweb
-- ------------------------------------------------------


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
-- Table structure for table `Apartamento`
--

DROP TABLE IF EXISTS `Apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Apartamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `andar` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Apartamento`
--

LOCK TABLES `Apartamento` WRITE;
/*!40000 ALTER TABLE `Apartamento` DISABLE KEYS */;
INSERT INTO `Apartamento` VALUES (1,32,'supimpa',23);
/*!40000 ALTER TABLE `Apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `endereco_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjj6qtrbuooa6vy5vcd9l5uevr` (`endereco_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'123131',NULL,'123sdfsf','asdf','1234','F',1);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente_Telefone`
--

DROP TABLE IF EXISTS `Cliente_Telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente_Telefone` (
  `Cliente_id` bigint(20) NOT NULL,
  `telefone_id` int(11) NOT NULL,
  UNIQUE KEY `UK_56plk4964pa4ia7a8hov45gx3` (`telefone_id`),
  KEY `FKmni3bdpvkp6da06i1fidy5uec` (`Cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente_Telefone`
--

LOCK TABLES `Cliente_Telefone` WRITE;
/*!40000 ALTER TABLE `Cliente_Telefone` DISABLE KEYS */;
INSERT INTO `Cliente_Telefone` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `Cliente_Telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Endereco`
--

DROP TABLE IF EXISTS `Endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `tipoLogradouro` varchar(255) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj42te00c47nq0xkn7sbcb4kqs` (`municipio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Endereco`
--

LOCK TABLES `Endereco` WRITE;
/*!40000 ALTER TABLE `Endereco` DISABLE KEYS */;
INSERT INTO `Endereco` VALUES (1,'asdf','12','asdf','asdf',23,'Avenida - AV',1);
/*!40000 ALTER TABLE `Endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estado`
--

DROP TABLE IF EXISTS `Estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estado`
--

LOCK TABLES `Estado` WRITE;
/*!40000 ALTER TABLE `Estado` DISABLE KEYS */;
INSERT INTO `Estado` VALUES (1,'asdf');
/*!40000 ALTER TABLE `Estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fornecedor`
--

DROP TABLE IF EXISTS `Fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedor`
--

LOCK TABLES `Fornecedor` WRITE;
/*!40000 ALTER TABLE `Fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fornecedor_Produto`
--

DROP TABLE IF EXISTS `Fornecedor_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fornecedor_Produto` (
  `Fornecedor_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  UNIQUE KEY `UK_nro6txtam3sv2rcvvl2nlksgj` (`produto_id`),
  KEY `FK2umggalsup1br43t2582fc20u` (`Fornecedor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedor_Produto`
--

LOCK TABLES `Fornecedor_Produto` WRITE;
/*!40000 ALTER TABLE `Fornecedor_Produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fornecedor_Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GrupoDeProduto`
--

DROP TABLE IF EXISTS `GrupoDeProduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GrupoDeProduto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrisao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GrupoDeProduto`
--

LOCK TABLES `GrupoDeProduto` WRITE;
/*!40000 ALTER TABLE `GrupoDeProduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `GrupoDeProduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GrupoDeProduto_Produto`
--

DROP TABLE IF EXISTS `GrupoDeProduto_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GrupoDeProduto_Produto` (
  `GrupoDeProduto_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  UNIQUE KEY `UK_13393476vr0h04ujxvlljie92` (`produto_id`),
  KEY `FKvt5d31d2uci4i7gqk2srvrxf` (`GrupoDeProduto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GrupoDeProduto_Produto`
--

LOCK TABLES `GrupoDeProduto_Produto` WRITE;
/*!40000 ALTER TABLE `GrupoDeProduto_Produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `GrupoDeProduto_Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hospedar`
--

DROP TABLE IF EXISTS `Hospedar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hospedar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataFim` date DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `estado` bit(1) NOT NULL,
  `Apartamento_id` int(11) DEFAULT NULL,
  `nome_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKore694uw6u66s95utdf9oveqm` (`Apartamento_id`),
  KEY `FKch7akvrrytx1njrlwk6yirr5b` (`nome_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hospedar`
--

LOCK TABLES `Hospedar` WRITE;
/*!40000 ALTER TABLE `Hospedar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hospedar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Municipio`
--

DROP TABLE IF EXISTS `Municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcyltklv9pfxdcxp9bocnun7v8` (`estado_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Municipio`
--

LOCK TABLES `Municipio` WRITE;
/*!40000 ALTER TABLE `Municipio` DISABLE KEYS */;
INSERT INTO `Municipio` VALUES (1,'asdf',1);
/*!40000 ALTER TABLE `Municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto_Fornecedor`
--

DROP TABLE IF EXISTS `Produto_Fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produto_Fornecedor` (
  `Produto_id` int(11) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  UNIQUE KEY `UK_eofnjdgh8rlyfh1yjbgvgdr8i` (`fornecedor_id`),
  KEY `FKh569sb3eeedgr14ir2i7bsj9k` (`Produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto_Fornecedor`
--

LOCK TABLES `Produto_Fornecedor` WRITE;
/*!40000 ALTER TABLE `Produto_Fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Produto_Fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserva`
--

DROP TABLE IF EXISTS `Reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataDeEntrada` date DEFAULT NULL,
  `dataDeSaida` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `apt_id` int(11) DEFAULT NULL,
  `cli_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdtk2mknr9wv6dbt1y2aq178j0` (`apt_id`),
  KEY `FK3i8s7ck3v8vh7q26tnpo4kq5p` (`cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva`
--

LOCK TABLES `Reserva` WRITE;
/*!40000 ALTER TABLE `Reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Telefone`
--

DROP TABLE IF EXISTS `Telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Telefone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Telefone`
--

LOCK TABLES `Telefone` WRITE;
/*!40000 ALTER TABLE `Telefone` DISABLE KEYS */;
INSERT INTO `Telefone` VALUES (1,'1231'),(2,'1231');
/*!40000 ALTER TABLE `Telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04  3:31:03
