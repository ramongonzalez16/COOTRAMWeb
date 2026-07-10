/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 10.4.32-MariaDB : Database - cootram
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cootram` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `cootram`;

/*Table structure for table `conduce` */

DROP TABLE IF EXISTS `conduce`;

CREATE TABLE `conduce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consecutivo` bigint(50) NOT NULL,
  `id_valor_conduce` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Conduce_X_Valor_Conduce` (`id_valor_conduce`),
  CONSTRAINT `Conduce_X_Valor_Conduce` FOREIGN KEY (`id_valor_conduce`) REFERENCES `valor_conduce` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `conduce` */

insert  into `conduce`(`id`,`consecutivo`,`id_valor_conduce`) values (2,5000,1);

/*Table structure for table `conductor` */

DROP TABLE IF EXISTS `conductor`;

CREATE TABLE `conductor` (
  `cedula` bigint(20) NOT NULL,
  `fecha_long_pase` float NOT NULL,
  `id_tipo_conductor` bigint(20) NOT NULL,
  PRIMARY KEY (`cedula`),
  KEY `id_tipo_conductor` (`id_tipo_conductor`),
  CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`id_tipo_conductor`) REFERENCES `tipo_conductor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `conductor` */

insert  into `conductor`(`cedula`,`fecha_long_pase`,`id_tipo_conductor`) values (1,0,1),(2,0,2),(3,0,2),(12333,1754200000000,1),(4294811,1644300000000,1),(4379431,1699070000000,2),(4399700,1648180000000,2),(4423436,1712380000000,2),(4464241,1643690000000,2),(4464880,1657080000000,2),(4465039,1677560000000,1),(4465310,1656740000000,2),(4465553,1655700000000,2),(4465792,1660800000000,2),(4466030,1671660000000,1),(4466031,1657340000000,1),(4466299,1703740000000,1),(4466484,1702180000000,2),(4511836,1657860000000,1),(4531649,1656130000000,2),(4532876,1676960000000,2),(4587776,1643090000000,2),(6349023,1779250000000,2),(7519031,1658470000000,2),(7519523,1649480000000,2),(7525718,1685770000000,2),(7528682,1648180000000,1),(9739244,1743740000000,1),(9800417,1740810000000,2),(14219092,1657950000000,2),(14870991,1663130000000,1),(14900055,1818820000000,1),(15887737,1721110000000,1),(18330046,1657770000000,2),(18410077,1660110000000,1),(18410190,1893470000000,2),(18410207,1658210000000,2),(18410228,1670540000000,2),(18410638,1713160000000,2),(18411026,1679180000000,1),(18411057,1724560000000,2),(18411095,1709870000000,2),(18411277,1893470000000,2),(18411292,1677730000000,2),(18411293,1684210000000,2),(18411323,1677730000000,2),(18411834,1722060000000,2),(18411920,1673930000000,2),(18412153,1697780000000,2),(18412154,1687760000000,2),(18412347,1672030000000,2),(18412419,1694410000000,2),(18412501,1656050000000,1),(18412677,1656310000000,1),(18413017,1724130000000,2),(18413154,1671510000000,2),(18413193,1610150000000,2),(18413454,1691040000000,2),(18413522,1694240000000,1),(18413796,1688190000000,1),(18413874,1719090000000,2),(18413987,1657260000000,1),(18414259,1706500000000,1),(18414293,1705640000000,2),(18414503,1643950000000,2),(18414548,1708840000000,2),(18414603,1646610000000,1),(18414635,1689570000000,1),(18414659,1653630000000,2),(18414946,1746940000000,1),(18415224,1740200000000,2),(18415376,1668230000000,2),(18415576,1693200000000,2),(18416064,1674450000000,1),(18416218,1697690000000,2),(18416671,1715660000000,1),(18417000,1706830000000,1),(18417066,1706940000000,1),(18417082,1745300000000,2),(18417178,1656820000000,2),(18417210,1713160000000,2),(18417342,1690090000000,1),(18417543,1733700000000,2),(18418424,1673330000000,2),(18418919,1722830000000,2),(18419060,1657080000000,1),(18419078,1675140000000,1),(18419765,1747370000000,2),(18419924,1893470000000,2),(18420468,1694930000000,2),(18468617,1674450000000,2),(18497736,1653370000000,2),(70720585,1658550000000,1),(70781477,1656390000000,2),(73154206,1669350000000,2),(79576641,1695960000000,2),(80104463,1673760000000,2),(94100010,1660280000000,2),(94279737,1680760000000,1),(94502203,1739770000000,2),(96351508,1701580000000,2),(1005278571,1728710000000,2),(1005278632,1708580000000,2),(1094895208,1674540000000,2),(1094972998,1661660000000,2),(1097400330,1673670000000,2),(1097720069,1665900000000,2),(1097721269,1674880000000,2),(1097721787,1725250000000,2),(1097724610,1664860000000,1),(1113593109,1808200000000,2),(1116238287,1744000000000,2),(1193033295,1692590000000,2);

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `departamento` */

insert  into `departamento`(`id`,`descripcion`) values (1,'Quindío');

/*Table structure for table `encuesta` */

DROP TABLE IF EXISTS `encuesta`;

CREATE TABLE `encuesta` (
  `id` bigint(20) NOT NULL,
  `fecha` float NOT NULL,
  `id_conductor` bigint(20) NOT NULL,
  `id_operador` bigint(20) NOT NULL,
  `primera_medida` float NOT NULL,
  `segunta_medida` float NOT NULL,
  `observaciones` varchar(500) NOT NULL,
  `conclusion` varchar(500) NOT NULL,
  `id_municipio` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Ecuesta_X_Municipio` (`id_municipio`),
  KEY `Encuesta_X_Usuario` (`id_operador`),
  KEY `Encuesta_X_Conductor` (`id_conductor`),
  CONSTRAINT `Ecuesta_X_Municipio` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id`),
  CONSTRAINT `Encuesta_X_Conductor` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`cedula`),
  CONSTRAINT `Encuesta_X_Usuario` FOREIGN KEY (`id_operador`) REFERENCES `usuario` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `encuesta` */

/*Table structure for table `estado_seleccion` */

DROP TABLE IF EXISTS `estado_seleccion`;

CREATE TABLE `estado_seleccion` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `estado_seleccion` */

insert  into `estado_seleccion`(`id`,`descripcion`) values (1,'Seleccionado'),(2,'Sin seleccionar');

/*Table structure for table `estado_tarjeta_operacional` */

DROP TABLE IF EXISTS `estado_tarjeta_operacional`;

CREATE TABLE `estado_tarjeta_operacional` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `estado_tarjeta_operacional` */

insert  into `estado_tarjeta_operacional`(`id`,`descripcion`) values (1,'Activa'),(2,'Vencida');

/*Table structure for table `estado_vehiculo` */

DROP TABLE IF EXISTS `estado_vehiculo`;

CREATE TABLE `estado_vehiculo` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `estado_vehiculo` */

insert  into `estado_vehiculo`(`id`,`descripcion`) values (1,'Activo'),(2,'Inactivo');

/*Table structure for table `formato_alcoholemia` */

DROP TABLE IF EXISTS `formato_alcoholemia`;

CREATE TABLE `formato_alcoholemia` (
  `id` bigint(20) NOT NULL,
  `fecha_long_elaboracion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `formato_alcoholemia` */

insert  into `formato_alcoholemia`(`id`,`fecha_long_elaboracion`) values (1,678258000000);

/*Table structure for table `horario` */

DROP TABLE IF EXISTS `horario`;

CREATE TABLE `horario` (
  `id` bigint(20) NOT NULL,
  `id_ruta` bigint(20) NOT NULL,
  `hora_parqueo` varchar(7) NOT NULL,
  `hora_salida` varchar(7) NOT NULL,
  `id_vehiculo` varchar(7) NOT NULL,
  `fecha_long` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Horario_X_Vehiculo` (`id_vehiculo`),
  KEY `Ruta_X_Horario` (`id_ruta`),
  CONSTRAINT `Horario_X_Vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`placa`),
  CONSTRAINT `Ruta_X_Horario` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `horario` */

/*Table structure for table `multa` */

DROP TABLE IF EXISTS `multa`;

CREATE TABLE `multa` (
  `id` bigint(20) NOT NULL,
  `id_horario` bigint(20) NOT NULL,
  `id_valor_multa` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Multa_X_Valor_Multa` (`id_valor_multa`),
  KEY `Multa_X_Horario` (`id_horario`),
  CONSTRAINT `Multa_X_Horario` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id`),
  CONSTRAINT `Multa_X_Valor_Multa` FOREIGN KEY (`id_valor_multa`) REFERENCES `valor_multa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `multa` */

/*Table structure for table `municipio` */

DROP TABLE IF EXISTS `municipio`;

CREATE TABLE `municipio` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_departamento` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Municipio_X_Departamento` (`id_departamento`),
  CONSTRAINT `Municipio_X_Departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `municipio` */

insert  into `municipio`(`id`,`descripcion`,`id_departamento`) values (1,'Armenia',1),(2,'Montenegro',1),(3,'Quimbaya',1);

/*Table structure for table `parqueadero` */

DROP TABLE IF EXISTS `parqueadero`;

CREATE TABLE `parqueadero` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `parqueadero` */

insert  into `parqueadero`(`id`,`descripcion`) values (1,'Morelia'),(2,'Río'),(3,'Tapao'),(4,'Buses');

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `cedula` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `persona` */

insert  into `persona`(`cedula`,`nombre`,`direccion`,`telefono`) values (1,'COOTRAM','PRINCIPAL','1234567890'),(2,'MICROBUS PARA ASIGNAR TURNO','NINGUNA','1234567890'),(3,'TRANSARMENIA','NINGUNA','1234567890'),(12333,'jorge','calle 10#1840','3226249128'),(4294811,'FRANCO ARCILA JOSÉ RAUL','B/ El Carmen carrera 8 # 23 + 70','3116243472'),(4379431,'ALVARO OBDULIO CARDONA CASTAÑEDA','CALLE 17 CR 7 NUMERO 447','3127909961'),(4399700,'Varela Segura Jose Ivan','B/ Alfonso Lopez Calle 12 #','311626075'),(4423436,'GOMEZ GARCIA JORGE ALBEIRO ','Carrera 7 # 5 + 35; Quimbaya','3128451094'),(4464241,'MONROY ALZATE JOSÉ EVELIO','B/ Villa Juliana mz I casa 3','3233932538'),(4464880,'LEÓN ORFENIO PARRA GRAJALES','V/ El castillo finca El Manazano','3113842604'),(4465039,'EDITAR NOMBRE','EDITAR DIRECCION','1'),(4465310,'RIOS ROJAS SAUL ','V/ Puerto Samaria Caserio','3205516033'),(4465553,'SEPULVEDA GUSTAVO','Calle 20 # 18 + 65','3113886560'),(4465792,'GONZALEZ GUZMAN JULIO CESAR','B/ Colón calle 21 # 8 + 41','3148422992'),(4466030,'MARTINEZ GUTIERREZ LUIS EDUARDO ','B/ El Cacique mz D casa 26','3117611590'),(4466031,'GIRALDO GOMEZ ADIEL','B/ Goretti calle 25 # 4 + 05','3116417490'),(4466299,'NIETO VELASQUEZ DÓLARNET ','BARRIO FUNDADORES MZ B CASA 4','3127667202'),(4466484,'CASTRILLON DEVIA JULIO CESAR','B/ Colón mz A casa 13','3146925078'),(4511836,'GILBERTO MAJIA MARTINEZ','BARAYA FINCA LA MARINA','3152798770'),(4531649,'ARIAS RAMIREZ AZAEL','V/ Vigias Finca Sinapopa','3117215980'),(4532876,'WILSON GIRALDO VALENCIA','B/ Caicedonia calle 11 # 2 + 47','3108351382'),(4587776,'RESTREPO MONROY OTONIEL','B/ Alamos del Carmen mz 2 casa 4','3136362194'),(6349023,'POR EDITAR NOMBRE','POR EDITAR DIRECCION','555555555'),(7519031,'OROZCO TRUJILLO HERNAN','V/ Pueblo rico finca El Vergel','3127784095'),(7519523,'OSPINA VALENCIA JOSE ALBEIRO','B/ Ciudad Dorada mz 4 casa 4, Armenia','3142158645'),(7525718,'CASTAÑEDA CORTES JOSÉ DEL CARMEN','B/ Guaduales de la Villa mz 23 casa 4','3117283648'),(7528682,'GOMEZ GONZALEZ JOSÉ ROBERTO','B/ Centro carrera 4 # 11 + 31','3105425327'),(9739244,'BEDOYA GRANADA YONY FABIAN','B/ Uribe calle 22 # 13B + 38','3177728924'),(9800417,'SANCHEZ DIAZ FABIAN','B/centenario mz 16 casa 14','3128816465'),(14219092,'DÍAZ SAAVEDRA REINALDO ','Los Robles mz G casa 22','3148580317'),(14870991,'MENESES ECHEVERRY GUSTAVO ','B/ Colón calle 22 # 10 + 21','3137220265'),(14900055,'POR EDITAR NOMBRE','POR EDITAR DIRECCION','555555555'),(15887737,'VICTOR MANUEL PAVON TORRES','MZ H CASA 1 LA JULIA','3106128588'),(18330046,'HERNANDEZ MORALES HUGO ','B/ La Pista carrera 4 # 25 +51 ','3140505576'),(18410077,'RAMIREZ PARRA ARTEMO','B/ Colón Calle 21 # 8 + 58 segundo piso','3128668748'),(18410190,'JOSE FREDIZ OSORIO PATIÑO','CRA 4#27+36 LA PISTA MONTENEGO','3116778485'),(18410207,'CASTRILLON DEVIA RODRIGO','Llenar','3146925078'),(18410228,'ECHEVERRY ORTEGA URIEL','B/Villa juliana mz 1 etapa 1','3115558576'),(18410638,'VILLADA MAXIMINO','B/ La Graciela calle 16 # 7 + 17','3128031978'),(18411026,'HECTOR JAIME HIDALGO JIMENEZ','CR 4  2520 LA PISTA','3104155909'),(18411057,'CRUZ OSORNO HERNAN ANTONIO ','V/ El Laurel mz 2 casa 16','3103535531'),(18411095,'GIRALDO VALENCIA WILMAN','Carrera 4# 24 + 18','3122878145'),(18411277,'ALBEIRO AGUIRRE CASTILLO','POR EDITAR DIRECCION','5555555555'),(18411292,'RODAS MARIN EDILSON','B/ Centro calle 16 # 4 + 41','3218297408'),(18411293,'Villegas Lopez Alberto Antonio','Clle 23 # 7+23','3103770174'),(18411323,'RODAS MARIN OSCAR','cra 4 numero        centro','3116045732'),(18411834,'OSORIO PATIÑO JOSE RAMIRO','B/ La Pista carrera 4 # 27 + 36','3044232662'),(18411920,'PORRAS GIRALDO RUBEN DARIO','B/ Goretti carrera 5 # 24 + 42','3137032625'),(18412153,'NIETO VELASQUEZ OSCAR','B/ El Carmen carrera 8 # 24 +54','3162590964'),(18412154,'HERRERA MOSCOSO FABIO','B/ La Graciela calle 15 # 8 + 26','3217648929'),(18412347,'OSSA OCAMPO WILLIAM','B/ La Pista carrera 4 # 25 + 36','3136379665'),(18412419,'AGUIRRE CASTILLO FERNEY ','Popóro Bloque 5 apto 501','3217590388'),(18412501,'VEGA FUENTES MANUEL CORNELIO','Calle 21 # 6 +10','3113969310'),(18412677,'MESA GONZALEZ ALDEMAR','B/ Uribe mz 1 casa 3 por el hueco','3118574396'),(18413017,'LEÓN CRUZ LUIS FERNEY','Carrera 9 #18 +20','3104399462'),(18413154,'ROJAS MEDINA JORGE ISAAC','B/ La Pista carrera 4 # 23 + 53','3105324209'),(18413193,'luis hernan escobar','barrio centenario mz 18 casa 6','3206498064'),(18413454,'RODAS VELASQUEZ GUSTAVO','Mz 3 casa 10 Uribe','320759593'),(18413522,'ARCE MALDONADO JOSÉ DULFAY','B/ Tomás Cipriano mz F casa 1','3137996174'),(18413796,'ORONDA TOLOSA JHON FABER','B/La Julia mz A casa 13','3226905735'),(18413874,'ARGEMIRO GARCIA','FINCA LA CABAÑA VERDA MORELIA ALTA','3116243280'),(18413987,'CASTAÑO GOMEZ JAVIER','B/ La Pista carrera 3 # 22 +43','3158415469'),(18414259,'GUZMAN FUENTES JUAN DE JESUS','B/ Comuneros mz 28 casa 9','3227685879'),(18414293,'JHON  JAIRO BOLIVAR MEJIA','BARRIO TOMAS CIPRIANO MZ D CASA 9','3113336186'),(18414503,'BOBADILLA CELIS CARLOS ALBERTO','Calle 10 # 14 + 14 Pueblo njuevo','3234353116'),(18414548,'ECHEVERRY URIBE HUBER','B/ Los Robles mz G casa 9','3113358711'),(18414603,'NORBEY LOPEZ OSORIO','CR 5 # 2442 EL GORETTY','3106436857'),(18414635,'VEGA FUENTES JOSÉ FERNEY','B/ La Graciela calle 15 # 9 + 31','3113889040'),(18414659,'VALENCIA GOMEZ EPIFANIO','V/ La Cabaña casa 12','3116169613'),(18414946,'NORIEL GUZMAN','VEREDA LA ESPERANZA FINCA PALERMO','3218385721'),(18415224,'FABIO AUGUSTO SANCHEZ CADAVID','CALLE 10B1136 LA AVANZADA','3164086648'),(18415376,'Nieto Tabares Ariel','B/ Centenario Mz17 +15','3146579653'),(18415570,'Marco Tulio Ocampo','Calle 22 Numero 8 26','3206852081'),(18415576,'OCAMPO MUÑOZ MARCO TULIO','B/ Colón calle 22 # 8 + 26','3206852081'),(18416064,'MADRID ALVAREZ JOSE MANUEL ','B/ Comuneros mz 27 casa 4','3113746527'),(18416218,'GARCIA RINCON JHON JAIRO','cra 4 la pista 2344','3146243335'),(18416671,'MOSCOSO VEGA FERNANDO','B/ La Graciela calle 15 # 9 + 36','3113381433'),(18417000,'JOSE DAVIV VANEGAS PEREZ','CRA 4 LA PISTA','3112273432'),(18417066,'JORGE IVAN TEJADA','BARRIO ALAMOS MNA2CASA 8','3043711605'),(18417082,'SANCHEZ DIAZ FREDY PASTOR','B/ La Graciela calle 10 # 9 + 16','3148346928'),(18417178,'GUEVARA CASTAÑEDA JAVIER DARIO','B/ Luis Carlos Flores mz 1 casa14 ','3113566240'),(18417210,'RIOS ROJAS FABIANO','B/VILLA GERUSALEN MZ B CASA 11','3162743056'),(18417342,'SANCHEZ MONTES PEDRO ANTONIO','B/ La Graciela carrera 8 # 14 + 38','3113435845'),(18417543,'JULIO CESAR GONZALES LONDOÑO','MZ L CASA 7 BARRIO LA JULIA','3233385033'),(18418424,'QUINTERO GARCIA JUAN PABLO ','vereda el giante caserio casa 6','3122416243'),(18418919,'CARLOS ALBERTO VALLEJO LOAIZA','CALEE 14 NUMERO 1439 BARRIO VILLA CLAUDIA','3127180113'),(18419060,'SANCHEZ MONTES JOSÉ EDILSON','Carrera 8 # 14 +38','3216928312'),(18419078,'ROBERTO GUEVARA CASTAÑEDA','MZNA4NRO12','3147544828'),(18419765,'MANUEL AUGUSTO ROJAS PATIÑO','VALLE 16  NUMERO 845','3225484035'),(18419924,'JHON FREDDY GOMEZ GARCIA','POR EDITAR DIRECCION','3217760036'),(18420468,'CAMELO CUARTAS JOAN ALONSO','Llenar','3217386305'),(18468617,'LOPEZ OSORIO HERNANDO ','V/ gigante casa 10','3105029046'),(18497736,'MENESES OSSA WALTER','B/ Colón calle 22 # 10 + 21','3136927836'),(70720585,'AGUIRRE CASTILLO JOSÉ ABELARDO','B/ Jorge Eliecer Gaitán Calle 10 # 2 + 33','3136668645'),(70781477,'CARDONA VARGAS LUIS HERNANDO','V/ La Esperanza Finca Santa Helena','3207809892'),(73154206,'JIMENEZ QUINTERO FRANCISCO ANTONIO','B/ Caldas calle 10 # 11 + 60','3116294569'),(79576641,'MOSQUERA GUEVARA JHON JAIRO','V/ Pueblo Rico Caserio','3117099731'),(80104463,'SEPULVEDA CASTILLO JUAN CARLOS','Carrera 7 # 21 +24','3219873990'),(94100010,'BOLIVAR MEJÍA JORGE ELIECER','B/ Colón mz A casa6','3122559112'),(94279737,'wilmer mejia','barrio villa marlen mz 5 casa 5','3226249128'),(94502203,'EDWIN ALEXIS GARCES MEJIA','VEREDA PUEBLO RICO CASERIO','3185905758'),(96351508,'GONZALEZ GONZALEZ JOSÉ GUILLERMO','Calle 15 # 9 + 36','3113317234'),(1005278571,'alberth jiovanny bolivar morales','barrio comuneros mz 17 casa 19','3112736265'),(1005278632,'MENDOZA TANGARIFE JHON DEIVER ','B/ Luis carlo florez mz 4 casa # 28','3128853510'),(1054856297,'JHON KEVIN YEPES','MZ 10 CASA 3 CENTENARIO PISO2','3218831755'),(1094895208,'OSORIO CASTAÑEDA JAMES DAVID','vereda cantores finca el crucero','3214796671'),(1094972998,'TORRES SUAREZ JHON EIDER','Portal de Popóro T.4 Apto 33','3136621481'),(1097400330,'CASTAÑO JARAMILLO DIEGO FERNANDO ','B/ EL CARMEN CRA7 # 23+19 PISO 2','3124365322'),(1097720069,'GUILLEN ORTIZ JORGE IVAN','B/ Colón mz A casa 20','3128116856'),(1097721269,'CASTAÑO SALAZAR  VICTOR ADRIAN ','Llenar','3127816646'),(1097721748,'Reymonz González','Calle 36 # 27 -22, La Clarita; Armenia','3244369202'),(1097721787,'RODRIGUEZ MARIN JHONATAN','Barrio la julia mz a casa 10','3117522640'),(1097724459,'Yamileth','V/ El Gigante casa 8','3226249128'),(1097724610,'JHON EDWIN QUINTERO GAVIRIA','Llenar','3135022090'),(1113593109,'POR EDITAR NOMBRE','POR EDITAR DIRECCION','555555555'),(1116238287,'JHON ALBERTH GOMEZ ZALASAR','CLLE 22A 10B27','3152739361'),(1193033295,'MADRID CARDENAS ESTEVEN','Comuneros mz 27 casa 4','3234360407');

/*Table structure for table `planilla_ocasional` */

DROP TABLE IF EXISTS `planilla_ocasional`;

CREATE TABLE `planilla_ocasional` (
  `id` bigint(20) NOT NULL,
  `id_vehiculo` varchar(7) NOT NULL,
  `fecha_long` float NOT NULL,
  `valor_planilla` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Planila_Ocasional_X_Vehiculo` (`id_vehiculo`),
  KEY `Planilla_Ocasional_X_Valor_Planilla` (`valor_planilla`),
  CONSTRAINT `Planila_Ocasional_X_Vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `planilla_ocasional` */

/*Table structure for table `pregunta` */

DROP TABLE IF EXISTS `pregunta`;

CREATE TABLE `pregunta` (
  `id` bigint(20) NOT NULL,
  `enunciado` varchar(150) NOT NULL,
  `id_formato_alcoholemia` bigint(20) NOT NULL,
  `id_tipo_regunta` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Formato_Alcoholemia_X_Pregunta` (`id_formato_alcoholemia`),
  KEY `Pregunta_X_Tipo_Pregunta` (`id_tipo_regunta`),
  CONSTRAINT `Formato_Alcoholemia_X_Pregunta` FOREIGN KEY (`id_formato_alcoholemia`) REFERENCES `formato_alcoholemia` (`id`),
  CONSTRAINT `Pregunta_X_Tipo_Pregunta` FOREIGN KEY (`id_tipo_regunta`) REFERENCES `tipo_pregunta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pregunta` */

/*Table structure for table `programacion` */

DROP TABLE IF EXISTS `programacion`;

CREATE TABLE `programacion` (
  `id` bigint(20) NOT NULL,
  `id_ruta` bigint(20) NOT NULL,
  `dia_semana` int(2) NOT NULL,
  `hora_parqueo` varchar(7) NOT NULL,
  `hora_salida` varchar(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Programacion_X_Ruta` (`id_ruta`),
  CONSTRAINT `Programacion_X_Ruta` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `programacion` */

/*Table structure for table `respuesta` */

DROP TABLE IF EXISTS `respuesta`;

CREATE TABLE `respuesta` (
  `id` bigint(20) NOT NULL,
  `enunciado` varchar(150) NOT NULL,
  `id_pregunta` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Pregunta_X_Respuesta` (`id_pregunta`),
  CONSTRAINT `Pregunta_X_Respuesta` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `respuesta` */

/*Table structure for table `respuesta_seleccion_multiple` */

DROP TABLE IF EXISTS `respuesta_seleccion_multiple`;

CREATE TABLE `respuesta_seleccion_multiple` (
  `id_encuesta` bigint(20) NOT NULL,
  `id_respuesta` bigint(20) NOT NULL,
  `id_estado_seleccion` bigint(20) NOT NULL,
  PRIMARY KEY (`id_encuesta`,`id_respuesta`),
  KEY `Respuesta_Seleccion_Multiple_X_Estado_Seleccion` (`id_estado_seleccion`),
  KEY `Respuesta_seleccion_Multiple_X_Respuesta` (`id_respuesta`),
  CONSTRAINT `Respuesta_Seleccion_Multiple_X_Encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id`),
  CONSTRAINT `Respuesta_Seleccion_Multiple_X_Estado_Seleccion` FOREIGN KEY (`id_estado_seleccion`) REFERENCES `estado_seleccion` (`id`),
  CONSTRAINT `Respuesta_seleccion_Multiple_X_Respuesta` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `respuesta_seleccion_multiple` */

/*Table structure for table `respuesta_seleccion_unica` */

DROP TABLE IF EXISTS `respuesta_seleccion_unica`;

CREATE TABLE `respuesta_seleccion_unica` (
  `id_encuesta` bigint(20) NOT NULL,
  `id_respuesta` bigint(20) NOT NULL,
  PRIMARY KEY (`id_encuesta`,`id_respuesta`),
  KEY `Respuesta_Seleccion_Unica_X_Respuesta` (`id_respuesta`),
  CONSTRAINT `Respuesta_Seleccion_Unica_X_Encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id`),
  CONSTRAINT `Respuesta_Seleccion_Unica_X_Respuesta` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `respuesta_seleccion_unica` */

/*Table structure for table `ruta` */

DROP TABLE IF EXISTS `ruta`;

CREATE TABLE `ruta` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_parqueadero` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_conductor` (`id_parqueadero`),
  CONSTRAINT `Ruta_X_Parqueadero` FOREIGN KEY (`id_parqueadero`) REFERENCES `parqueadero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ruta` */

insert  into `ruta`(`id`,`descripcion`,`id_parqueadero`) values (1,'Las Brisas',1),(2,'La Julia',1),(3,'La Morelia',1),(4,'La siria',1),(5,'Pueblo Rico',1),(6,'Batallón',2),(7,'Cantores',2),(8,'Tapao Esmeralda',2),(9,'Esperanza',2),(10,'Gigante',2),(11,'Potosí',2),(12,'Pueblo tapao',2),(13,'Calabria',3),(14,'Española',3),(15,'Filandia',3),(16,'Laurel',3),(17,'Obligados Calabria',3),(18,'Obligados Filandia',3),(19,'Ocaso',3),(20,'Río',3),(21,'Río domingo',3),(22,'San Isidro',3),(23,'Tebaida',4),(24,'Armenia',4),(25,'Circasia',4);

/*Table structure for table `subruta` */

DROP TABLE IF EXISTS `subruta`;

CREATE TABLE `subruta` (
  `id_ruta` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`,`id_ruta`),
  KEY `id_tipo_conductor` (`id_ruta`),
  CONSTRAINT `Ruta_X_Subruta` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `subruta` */

insert  into `subruta`(`id_ruta`,`id`,`descripcion`,`precio`) values (1,1,'Santana',3500),(2,1,'Julia',5900),(3,1,'Alta',5900),(4,1,'La cabaña',3800),(5,1,'Pueblo rico',3700),(6,1,'Baraya',3400),(7,1,'Baraya',3400),(8,1,'Baraya',3400),(9,1,'Baraya',3400),(10,1,'Baraya',3400),(11,1,'Baraya',3400),(12,1,'Baraya',3400),(13,1,'Santana',3500),(14,1,'Santana',3500),(15,1,'Morelia alta',5900),(16,1,'Santana',3500),(17,1,'Santana',3500),(18,1,'Morelia alta',5900),(19,1,'Santana',3500),(20,1,'Baraya',3400),(21,1,'Baraya',3400),(22,1,'Baraya',3400),(23,1,'Pueblo tapao',3400),(24,1,'Baraya',3400),(25,1,'La Frontera',3500),(1,2,'Carmelita',5400),(3,2,'Baja',5400),(4,2,'La siria',3800),(6,2,'Crucero',3400),(7,2,'Crucero',3400),(8,2,'Crucero',3400),(9,2,'Crucero',3400),(10,2,'Castillo',3800),(11,2,'Crucero',3400),(12,2,'Crucero',3400),(13,2,'Laurel',5100),(14,2,'Laurel',5100),(15,2,'Morelia Baja',5400),(16,2,'Laurel',5100),(17,2,'Laurel',5100),(18,2,'Morelia Baja',5400),(19,2,'Laurel',5100),(20,2,'Castillo',3800),(21,2,'Castillo',3800),(22,2,'Castillo',3800),(23,2,'Entrada Batallón',4000),(24,2,'Crucero',3400),(25,2,'El Caribe',3800),(1,3,'Brisas',5900),(6,3,'Pueblo tapao',3400),(7,3,'Cantores',5400),(8,3,'Camelias',3400),(9,3,'Esperanza',5400),(10,3,'Gigante',5400),(11,3,'Pueblo tapao',3400),(12,3,'Pueblo tapao',3400),(13,3,'Calabria',5300),(14,3,'La española',5300),(15,3,'Partidas',5900),(16,3,'Española',5300),(17,3,'Calabria',5300),(18,3,'Partidas',5900),(19,3,'La española',5300),(20,3,'Cachonal',4500),(21,3,'Cachonal',4500),(22,3,'Cachonal',4500),(23,3,'Batallon',4700),(24,3,'Pueblo tapao',3400),(25,3,'La Cabaña',3800),(6,4,'Entrada batallón',4000),(8,4,'Esmeralda',5400),(11,4,'Entrada Batallón',4000),(15,4,'Los pinos',6900),(18,4,'Los pinos',6900),(19,4,'Ocaso',6900),(20,4,'Calle larga',5300),(21,4,'Calle larga',5300),(22,4,'Calle larga',5300),(23,4,'El Prado',4600),(24,4,'Armenia',4600),(25,4,'La Siria',3800),(6,5,'Batallon',4700),(8,5,'Pueblo tapao',3400),(11,5,'El Prado',4600),(15,5,'Cauchera',6900),(18,5,'Cauchera',6900),(20,5,'Darien',6300),(21,5,'Darien',6300),(22,5,'Darien',6300),(23,5,'San Jose',4800),(25,5,'La Bahía',4000),(11,6,'San Jose',4800),(15,6,'Filandia',7600),(18,6,'Filandia',7600),(20,6,'Salto',6300),(21,6,'Salto',6300),(22,6,'Salto',6300),(23,6,'Tebaida',5500),(25,6,'Corozal',4000),(11,7,'Potosí',6300),(20,7,'Puerto granja',6300),(21,7,'Puerto granja',6300),(22,7,'Puerto granja',6300),(25,7,'Buena Vista',4000),(20,8,'Napoles',6300),(21,8,'Napoles',6300),(22,8,'Napoles',6300),(25,8,'Antena',4000),(20,9,'Cuzco',6800),(21,9,'Cuzco',6800),(22,9,'Cuzco',6800),(25,9,'La Zulia',4100),(20,10,'Puerto samaria',7600),(21,10,'Puerto samaria',7600),(22,10,'Puerto samaria',7600),(25,10,'Alto De La Cruz',4100),(22,11,'Porvenir',13000),(25,11,'Llanadas',4100),(22,12,'San isidro',15000),(25,12,'Cristalina',4200),(25,13,'Circasia',4600);

/*Table structure for table `tarjeta_operacional` */

DROP TABLE IF EXISTS `tarjeta_operacional`;

CREATE TABLE `tarjeta_operacional` (
  `id` bigint(20) NOT NULL,
  `fecha_long` float NOT NULL,
  `id_estado_tarjeta_operacional` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estado_tarjeta_operacional` (`id_estado_tarjeta_operacional`),
  CONSTRAINT `tarjeta_operacional_ibfk_1` FOREIGN KEY (`id_estado_tarjeta_operacional`) REFERENCES `estado_tarjeta_operacional` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tarjeta_operacional` */

/*Table structure for table `tipo_conductor` */

DROP TABLE IF EXISTS `tipo_conductor`;

CREATE TABLE `tipo_conductor` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_conductor` */

insert  into `tipo_conductor`(`id`,`descripcion`) values (1,'Asociado'),(2,'Empleado');

/*Table structure for table `tipo_pregunta` */

DROP TABLE IF EXISTS `tipo_pregunta`;

CREATE TABLE `tipo_pregunta` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_pregunta` */

insert  into `tipo_pregunta`(`id`,`descripcion`) values (1,'Selección única'),(2,'Selección múltiple');

/*Table structure for table `tipo_usuario` */

DROP TABLE IF EXISTS `tipo_usuario`;

CREATE TABLE `tipo_usuario` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_usuario` */

insert  into `tipo_usuario`(`id`,`descripcion`) values (1,'Administrador'),(2,'Usuario');

/*Table structure for table `tipo_vehiculo` */

DROP TABLE IF EXISTS `tipo_vehiculo`;

CREATE TABLE `tipo_vehiculo` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_vehiculo` */

insert  into `tipo_vehiculo`(`id`,`descripcion`) values (1,'Bus'),(2,'Taxi'),(3,'Willy\'s');

/*Table structure for table `tiquete` */

DROP TABLE IF EXISTS `tiquete`;

CREATE TABLE `tiquete` (
  `id` bigint(20) NOT NULL,
  `id_viaje` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `id_viaje` (`id_viaje`),
  CONSTRAINT `Tiquete_X_Viaje` FOREIGN KEY (`id_viaje`) REFERENCES `viaje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tiquete` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `cedula` bigint(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `recordatorio` varchar(50) NOT NULL,
  `id_tipo_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`cedula`),
  KEY `id_tipo_usuario` (`id_tipo_usuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`cedula`,`usuario`,`contrasena`,`recordatorio`,`id_tipo_usuario`) values (1097721748,'reymonz','51186','T. I. Parte 2',1);

/*Table structure for table `valor_conduce` */

DROP TABLE IF EXISTS `valor_conduce`;

CREATE TABLE `valor_conduce` (
  `id` bigint(20) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `valor_conduce` */

insert  into `valor_conduce`(`id`,`valor`) values (1,4000);

/*Table structure for table `valor_multa` */

DROP TABLE IF EXISTS `valor_multa`;

CREATE TABLE `valor_multa` (
  `id` bigint(20) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `valor_multa` */

insert  into `valor_multa`(`id`,`valor`) values (1,20000);

/*Table structure for table `vehiculo` */

DROP TABLE IF EXISTS `vehiculo`;

CREATE TABLE `vehiculo` (
  `placa` varchar(7) NOT NULL,
  `interno` int(4) unsigned zerofill NOT NULL,
  `id_tipo_vehiculo` bigint(20) NOT NULL,
  `sillas_disponibles` int(2) NOT NULL,
  `fecha_preventiva` date NOT NULL,
  `fecha_soat` date NOT NULL,
  `fecha_tecno` date NOT NULL,
  `id_tarjeta_operacional` bigint(20) NOT NULL,
  `id_estado_vehiculo` bigint(20) NOT NULL,
  `cedula_conductor` bigint(20) NOT NULL,
  `id_parqueadero` bigint(20) NOT NULL,
  PRIMARY KEY (`placa`),
  KEY `Conductor_X_Vehiculo` (`cedula_conductor`),
  KEY `id_estado_vehiculo` (`id_estado_vehiculo`),
  KEY `id_parqueadero` (`id_parqueadero`),
  KEY `Tarjeta_Operacional_X_Vehiculo` (`id_tarjeta_operacional`),
  KEY `id_tipo_vehiculo` (`id_tipo_vehiculo`),
  CONSTRAINT `Conductor_X_Vehiculo` FOREIGN KEY (`cedula_conductor`) REFERENCES `conductor` (`cedula`),
  CONSTRAINT `Tarjeta_Operacional_X_Vehiculo` FOREIGN KEY (`id_tarjeta_operacional`) REFERENCES `tarjeta_operacional` (`id`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_estado_vehiculo`) REFERENCES `estado_vehiculo` (`id`),
  CONSTRAINT `vehiculo_ibfk_2` FOREIGN KEY (`id_parqueadero`) REFERENCES `parqueadero` (`id`),
  CONSTRAINT `vehiculo_ibfk_3` FOREIGN KEY (`id_tipo_vehiculo`) REFERENCES `tipo_vehiculo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vehiculo` */

/*Table structure for table `viaje` */

DROP TABLE IF EXISTS `viaje`;

CREATE TABLE `viaje` (
  `id` bigint(20) NOT NULL,
  `id_horario` bigint(20) NOT NULL,
  `id_subruta` bigint(20) NOT NULL,
  `id_conduce` bigint(20) NOT NULL,
  `total_pasajeros` int(2) NOT NULL,
  `menor_edad` tinyint(1) NOT NULL,
  `numero_menor_edad` int(2) NOT NULL,
  `id_Tiquete` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Viaje_X_Horario` (`id_horario`),
  KEY `Viaje_X_Subruta` (`id_subruta`),
  KEY `Viaje_X_Conduce` (`id_conduce`),
  CONSTRAINT `Viaje_X_Conduce` FOREIGN KEY (`id_conduce`) REFERENCES `conduce` (`id`),
  CONSTRAINT `Viaje_X_Horario` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id`),
  CONSTRAINT `Viaje_X_Subruta` FOREIGN KEY (`id_subruta`) REFERENCES `subruta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `viaje` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
