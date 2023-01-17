/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : monarka

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 16/01/2023 23:42:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barrio
-- ----------------------------
DROP TABLE IF EXISTS `barrio`;
CREATE TABLE `barrio`  (
  `idBarrio` int NOT NULL,
  `descripcion` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `estatus` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'A',
  PRIMARY KEY (`idBarrio`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barrio
-- ----------------------------
INSERT INTO `barrio` VALUES (1, '1 de enero', 'A');
INSERT INTO `barrio` VALUES (2, '10 de Agosto', 'A');
INSERT INTO `barrio` VALUES (3, 'Hogar de Cristo', 'A');
INSERT INTO `barrio` VALUES (4, 'Eloy Alfaro', 'A');
INSERT INTO `barrio` VALUES (5, 'Villamil', 'A');
INSERT INTO `barrio` VALUES (6, 'Jimmy Candell', 'A');
INSERT INTO `barrio` VALUES (7, '9 de Octubre', 'A');
INSERT INTO `barrio` VALUES (8, 'San José', 'A');
INSERT INTO `barrio` VALUES (9, 'Barrio Central', 'A');
INSERT INTO `barrio` VALUES (10, 'Nuevo Atahualpa', 'A');
INSERT INTO `barrio` VALUES (11, '5 de Junio', 'A');
INSERT INTO `barrio` VALUES (12, 'Santa Elena', 'A');
INSERT INTO `barrio` VALUES (13, 'Ballenita', 'A');
INSERT INTO `barrio` VALUES (14, 'El tambo', 'A');
INSERT INTO `barrio` VALUES (15, 'Prosperida', 'A');
INSERT INTO `barrio` VALUES (16, 'Bajada de Chanduy', 'A');
INSERT INTO `barrio` VALUES (17, 'Ciénega', 'A');
INSERT INTO `barrio` VALUES (18, 'El Real', 'A');
INSERT INTO `barrio` VALUES (19, 'Engunga', 'A');
INSERT INTO `barrio` VALUES (20, 'Olmedo', 'A');
INSERT INTO `barrio` VALUES (21, 'Puerto de Chanduy', 'A');
INSERT INTO `barrio` VALUES (22, 'Pechiche', 'A');

-- ----------------------------
-- Table structure for canton
-- ----------------------------
DROP TABLE IF EXISTS `canton`;
CREATE TABLE `canton`  (
  `idCanton` int NOT NULL,
  `descripcion` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `estatus` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'A',
  PRIMARY KEY (`idCanton`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canton
-- ----------------------------
INSERT INTO `canton` VALUES (1, 'Santa Elena', 'A');
INSERT INTO `canton` VALUES (2, 'La Libertad', 'A');
INSERT INTO `canton` VALUES (3, 'Salinas', 'A');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `desCategoria` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statusCategoria` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  `image` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idCategoria`) USING BTREE,
  UNIQUE INDEX `desCategoria`(`desCategoria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'Chfles y papas', '1', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/Papa-frita-gaussiano.jpg?alt=media&token=6444f967-c985-4508-a4c4-d6a736076003');
INSERT INTO `categoria` VALUES (2, 'Dulces', '1', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/descarga.jpg?alt=media&token=4de1a9fb-3d9d-4664-ae1b-b178dd12184a');
INSERT INTO `categoria` VALUES (3, 'Galletas', '1', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/descarga%20(1).jpg?alt=media&token=4c47841b-2d68-42b6-840a-b16872144753');
INSERT INTO `categoria` VALUES (4, 'Bebidas', '1', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/Bebidas-resaca-generan-dia-despues_1606949871_143247983_1200x675.jpg?alt=media&token=86829654-c432-492a-9d96-51a5c9e43e76');
INSERT INTO `categoria` VALUES (5, 'Lo ultimo', '1', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/13266.jpg?alt=media&token=a2ab287f-f7ce-4cf7-9346-b299b6f2604a');
INSERT INTO `categoria` VALUES (25, 'Explorar', '1', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/pasillo-plasticos-supermercado-holanda-krjE--1240x698%40abc.jpg?alt=media&token=864b381f-6538-4e1f-adae-632d4025fb8a');
INSERT INTO `categoria` VALUES (26, NULL, '1', NULL);

-- ----------------------------
-- Table structure for detaproductocomen
-- ----------------------------
DROP TABLE IF EXISTS `detaproductocomen`;
CREATE TABLE `detaproductocomen`  (
  `idDetalleProComen` int NOT NULL AUTO_INCREMENT,
  `comentario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `comentariocliente` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `idUsuario` int NOT NULL,
  `idProducto` int NOT NULL,
  `fecha` date NULL DEFAULT NULL,
  `estatus` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  `estrellas` int NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalleProComen`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE,
  CONSTRAINT `detaproductocomen_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detaproductocomen_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detaproductocomen
-- ----------------------------

-- ----------------------------
-- Table structure for devolucion
-- ----------------------------
DROP TABLE IF EXISTS `devolucion`;
CREATE TABLE `devolucion`  (
  `iddevolucion` int NOT NULL AUTO_INCREMENT,
  `FolioVenta` int NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlFormatoDevolucion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaDevolucion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statusDevolucion` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `motivoDevolucion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iddevolucion`) USING BTREE,
  INDEX `fkdevolucionventa_idx`(`FolioVenta`) USING BTREE,
  CONSTRAINT `fkdevolucionventa` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devolucion
-- ----------------------------

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS `direccion`;
CREATE TABLE `direccion`  (
  `idDireccion` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `codigoPostalUsuario` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `municipio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `colonia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `callePrincipal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numeroExterior` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calle1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calle2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statusDireccion` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idDireccion`) USING BTREE,
  INDEX `direccion_usuario_idx`(`idUsuario`) USING BTREE,
  CONSTRAINT `direccion_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of direccion
-- ----------------------------

-- ----------------------------
-- Table structure for empresadelogistica
-- ----------------------------
DROP TABLE IF EXISTS `empresadelogistica`;
CREATE TABLE `empresadelogistica`  (
  `idempresaDeLogistica` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `direccionEmpresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `numeroTelefono` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombreResponsable` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rfcEmpresa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusEmpresaLogistica` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idempresaDeLogistica`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empresadelogistica
-- ----------------------------

-- ----------------------------
-- Table structure for imgproducto
-- ----------------------------
DROP TABLE IF EXISTS `imgproducto`;
CREATE TABLE `imgproducto`  (
  `idImgProducto` int NOT NULL AUTO_INCREMENT,
  `idProducto` int NOT NULL,
  `img1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idImgProducto`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE,
  CONSTRAINT `idProducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imgproducto
-- ----------------------------

-- ----------------------------
-- Table structure for livestreaming
-- ----------------------------
DROP TABLE IF EXISTS `livestreaming`;
CREATE TABLE `livestreaming`  (
  `idlivestreaming` int NOT NULL AUTO_INCREMENT,
  `idPromocion` int NOT NULL,
  `urlVideo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fechaLiveStream` datetime(0) NOT NULL,
  `urlRecursos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idlivestreaming`) USING BTREE,
  INDEX `fklivestreamingpromocion_idx`(`idPromocion`) USING BTREE,
  CONSTRAINT `fklivestreamingpromocion` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`idpromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of livestreaming
-- ----------------------------

-- ----------------------------
-- Table structure for logisticaventaentrega
-- ----------------------------
DROP TABLE IF EXISTS `logisticaventaentrega`;
CREATE TABLE `logisticaventaentrega`  (
  `idlogisticaVentaEntrega` int NOT NULL,
  `FolioVenta` int NOT NULL,
  `idEmpresaDeLogistica` int NOT NULL,
  `fechaEnvio` datetime(0) NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaRecepcionPaquete` datetime(0) NULL DEFAULT NULL,
  `rutaDeSeguimiento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `latitud` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `longitud` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idlogisticaVentaEntrega`) USING BTREE,
  INDEX `fkLogisticaVenta_idx`(`FolioVenta`) USING BTREE,
  INDEX `fkLogisticaEmpresa_idx`(`idEmpresaDeLogistica`) USING BTREE,
  CONSTRAINT `fkLogisticaEmpresa` FOREIGN KEY (`idEmpresaDeLogistica`) REFERENCES `empresadelogistica` (`idempresaDeLogistica`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkLogisticaVenta` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logisticaventaentrega
-- ----------------------------

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `idMarca` int NOT NULL AUTO_INCREMENT,
  `desMarca` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusMarca` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMarca`) USING BTREE,
  UNIQUE INDEX `desMarca`(`desMarca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (1, 'Yupi', '1');
INSERT INTO `marca` VALUES (2, 'Roskita', '1');
INSERT INTO `marca` VALUES (3, 'Chixcle', '1');
INSERT INTO `marca` VALUES (4, 'IPC', '1');
INSERT INTO `marca` VALUES (5, 'IPH', '1');
INSERT INTO `marca` VALUES (6, 'Portaincienso', '1');

-- ----------------------------
-- Table structure for membresia
-- ----------------------------
DROP TABLE IF EXISTS `membresia`;
CREATE TABLE `membresia`  (
  `idmembresia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fechaActivacion` datetime(0) NOT NULL,
  `fechaVencimiento` datetime(0) NOT NULL,
  `precio` float(8, 2) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idmembresia`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of membresia
-- ----------------------------

-- ----------------------------
-- Table structure for metodopago
-- ----------------------------
DROP TABLE IF EXISTS `metodopago`;
CREATE TABLE `metodopago`  (
  `idMetodoPago` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `numTarjeta` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expYear` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expMonth` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `codigoSeguridad` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusMetodoPago` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idMetodoPago`) USING BTREE,
  INDEX `metodoPago_user_idx`(`idUsuario`) USING BTREE,
  CONSTRAINT `metodo_pago_user` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metodopago
-- ----------------------------

-- ----------------------------
-- Table structure for notificacion
-- ----------------------------
DROP TABLE IF EXISTS `notificacion`;
CREATE TABLE `notificacion`  (
  `idnotificacion` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `tipo_notification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idnotificacion`) USING BTREE,
  INDEX `fknotificationusuario_idx`(`idUsuario`) USING BTREE,
  CONSTRAINT `fknotificationusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notificacion
-- ----------------------------

-- ----------------------------
-- Table structure for paginapago
-- ----------------------------
DROP TABLE IF EXISTS `paginapago`;
CREATE TABLE `paginapago`  (
  `idpaginaPago` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `observacion` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `linkPago` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statusPaginaPago` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpaginaPago`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paginapago
-- ----------------------------

-- ----------------------------
-- Table structure for parroquia
-- ----------------------------
DROP TABLE IF EXISTS `parroquia`;
CREATE TABLE `parroquia`  (
  `idParroquia` int NOT NULL,
  `descripcion` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `estatus` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'A',
  PRIMARY KEY (`idParroquia`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parroquia
-- ----------------------------
INSERT INTO `parroquia` VALUES (1, 'Atahualpa', 'A');
INSERT INTO `parroquia` VALUES (2, 'Santa Elena', 'A');
INSERT INTO `parroquia` VALUES (3, 'Ballenita', 'A');
INSERT INTO `parroquia` VALUES (4, 'Ancon', 'A');
INSERT INTO `parroquia` VALUES (5, 'Chanduy', 'A');
INSERT INTO `parroquia` VALUES (6, 'Colonche', 'A');
INSERT INTO `parroquia` VALUES (7, 'Manglaralto', 'A');
INSERT INTO `parroquia` VALUES (8, 'Simon Bolivar', 'A');
INSERT INTO `parroquia` VALUES (9, 'La Libertad', 'A');
INSERT INTO `parroquia` VALUES (10, 'Carlos Espinoza Larrea', 'A');
INSERT INTO `parroquia` VALUES (11, 'Gral. Alberto Enriquez Gallo', 'A');
INSERT INTO `parroquia` VALUES (12, 'Vicente Rocafuerte', 'A');
INSERT INTO `parroquia` VALUES (13, 'Santa Rosa', 'A');
INSERT INTO `parroquia` VALUES (14, 'Salinas', 'A');
INSERT INTO `parroquia` VALUES (15, 'Anconcito', 'A');
INSERT INTO `parroquia` VALUES (16, 'Jose Luis Tamayo - Muey', 'A');

-- ----------------------------
-- Table structure for permiso
-- ----------------------------
DROP TABLE IF EXISTS `permiso`;
CREATE TABLE `permiso`  (
  `idPermiso` int NOT NULL AUTO_INCREMENT,
  `desPermiso` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusPermiso` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idPermiso`) USING BTREE,
  UNIQUE INDEX `desPermiso`(`desPermiso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permiso
-- ----------------------------
INSERT INTO `permiso` VALUES (1, 'CLIENTE', '1');
INSERT INTO `permiso` VALUES (2, 'ADMIN', '1');
INSERT INTO `permiso` VALUES (3, 'REPARTIDOR', '1');

-- ----------------------------
-- Table structure for preferenciasbusquedas
-- ----------------------------
DROP TABLE IF EXISTS `preferenciasbusquedas`;
CREATE TABLE `preferenciasbusquedas`  (
  `idpreferenciasbusquedas` int NOT NULL AUTO_INCREMENT,
  `ultimasBusquedas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idpreferenciasbusquedas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of preferenciasbusquedas
-- ----------------------------

-- ----------------------------
-- Table structure for preferenciasiniciales
-- ----------------------------
DROP TABLE IF EXISTS `preferenciasiniciales`;
CREATE TABLE `preferenciasiniciales`  (
  `idpreferenciasiniciales` int NOT NULL AUTO_INCREMENT,
  `pasatiempo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deporte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `instrumentoFavorito` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `comidaFavorita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpreferenciasiniciales`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of preferenciasiniciales
-- ----------------------------

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idCategoria` int NOT NULL,
  `idMarca` int NOT NULL,
  `nombreProducto` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desProducto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `precioUnitarioProducto` float(8, 2) NOT NULL DEFAULT 0.00,
  `imagenProducto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `fechaAlojadoProducto` date NOT NULL,
  `stockRealProducto` float(8, 2) NOT NULL,
  `statusProducto` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `urlVideo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlDocumento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE,
  INDEX `pm`(`idMarca`) USING BTREE,
  INDEX `pc`(`idCategoria`) USING BTREE,
  INDEX `pu`(`idUsuario`) USING BTREE,
  CONSTRAINT `pc` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pm` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pu` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (72, 160, 4, 2, 'Jugo de limon', 'Jugo concentrado de limon natural', 20.50, 'https://imagenlimon.com/', '2023-01-12', 100.00, '1', NULL, NULL);

-- ----------------------------
-- Table structure for productocarrito
-- ----------------------------
DROP TABLE IF EXISTS `productocarrito`;
CREATE TABLE `productocarrito`  (
  `idproductocarrito` int NOT NULL AUTO_INCREMENT,
  `idProducto` int NOT NULL,
  `idUsuario` int NOT NULL,
  `cantidadProducto` int NOT NULL,
  `statusProductoCarrito` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subtotal` float NULL DEFAULT NULL,
  `vendido` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idproductocarrito`) USING BTREE,
  INDEX `fkproducto_idx`(`idProducto`) USING BTREE,
  INDEX `fkusuario_idx`(`idUsuario`) USING BTREE,
  CONSTRAINT `fkproducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productocarrito
-- ----------------------------

-- ----------------------------
-- Table structure for productocarritoventa
-- ----------------------------
DROP TABLE IF EXISTS `productocarritoventa`;
CREATE TABLE `productocarritoventa`  (
  `idproductocarritoventa` int NOT NULL AUTO_INCREMENT,
  `idproductocarrito` int NOT NULL,
  `FolioVenta` int NOT NULL,
  PRIMARY KEY (`idproductocarritoventa`) USING BTREE,
  INDEX `fkpcvproductocarrito_idx`(`idproductocarrito`) USING BTREE,
  INDEX `fkpcvventa_idx`(`FolioVenta`) USING BTREE,
  CONSTRAINT `fkpcvproductocarrito` FOREIGN KEY (`idproductocarrito`) REFERENCES `productocarrito` (`idproductocarrito`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkpcvventa` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productocarritoventa
-- ----------------------------

-- ----------------------------
-- Table structure for promocion
-- ----------------------------
DROP TABLE IF EXISTS `promocion`;
CREATE TABLE `promocion`  (
  `idpromocion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `porcentaje` float(8, 2) NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `statusPromocion` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpromocion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promocion
-- ----------------------------

-- ----------------------------
-- Table structure for promocionproducto
-- ----------------------------
DROP TABLE IF EXISTS `promocionproducto`;
CREATE TABLE `promocionproducto`  (
  `idpromocionproducto` int NOT NULL AUTO_INCREMENT,
  `idPromocion` int NOT NULL,
  `idProducto` int NOT NULL,
  PRIMARY KEY (`idpromocionproducto`) USING BTREE,
  INDEX `fkpromproducto_idx`(`idProducto`) USING BTREE,
  INDEX `fkprompromocion_idx`(`idPromocion`) USING BTREE,
  CONSTRAINT `fkpromproducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkprompromocion` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`idpromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promocionproducto
-- ----------------------------

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia`  (
  `idProvincia` int NOT NULL,
  `descripcion` varchar(75) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `estatus` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'A',
  PRIMARY KEY (`idProvincia`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO `provincia` VALUES (1, 'Santa Elena', 'A');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol`  (
  `idRole` int NOT NULL AUTO_INCREMENT,
  `desRole` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusRole` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idRole`) USING BTREE,
  UNIQUE INDEX `desRole`(`desRole`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES (1, 'CLIENTE', '1');
INSERT INTO `rol` VALUES (2, 'ADMIN', '1');
INSERT INTO `rol` VALUES (3, 'REPARTIDOR', '1');

-- ----------------------------
-- Table structure for rolpermiso
-- ----------------------------
DROP TABLE IF EXISTS `rolpermiso`;
CREATE TABLE `rolpermiso`  (
  `idRolPermisoUsuario` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idRol` int NOT NULL,
  `idPermiso` int NOT NULL,
  PRIMARY KEY (`idRolPermisoUsuario`) USING BTREE,
  INDEX `rpu`(`idUsuario`) USING BTREE,
  INDEX `rpp`(`idPermiso`) USING BTREE,
  INDEX `rpr`(`idRol`) USING BTREE,
  CONSTRAINT `rpp` FOREIGN KEY (`idPermiso`) REFERENCES `permiso` (`idPermiso`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rpr` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRole`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rpu` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rolpermiso
-- ----------------------------
INSERT INTO `rolpermiso` VALUES (38, 156, 1, 1);
INSERT INTO `rolpermiso` VALUES (39, 157, 1, 1);
INSERT INTO `rolpermiso` VALUES (40, 156, 2, 2);
INSERT INTO `rolpermiso` VALUES (41, 158, 1, 1);
INSERT INTO `rolpermiso` VALUES (42, 159, 1, 1);
INSERT INTO `rolpermiso` VALUES (43, 160, 1, 1);
INSERT INTO `rolpermiso` VALUES (44, 161, 1, 1);
INSERT INTO `rolpermiso` VALUES (45, 162, 1, 1);
INSERT INTO `rolpermiso` VALUES (46, 163, 1, 1);
INSERT INTO `rolpermiso` VALUES (47, 163, 2, 2);
INSERT INTO `rolpermiso` VALUES (48, 163, 3, 3);
INSERT INTO `rolpermiso` VALUES (49, 164, 1, 1);
INSERT INTO `rolpermiso` VALUES (50, 164, 2, 2);
INSERT INTO `rolpermiso` VALUES (51, 164, 3, 3);

-- ----------------------------
-- Table structure for tarjetamonarka
-- ----------------------------
DROP TABLE IF EXISTS `tarjetamonarka`;
CREATE TABLE `tarjetamonarka`  (
  `idtarjetamonarka` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `numTarjeta` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL,
  `fechaVencimiento` datetime(0) NOT NULL,
  `cvc` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL,
  `saldo` float(8, 2) NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL,
  `statusTarjetaCodeway` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idtarjetamonarka`) USING BTREE,
  INDEX `fktarjetausuario_idx`(`idUsuario`) USING BTREE,
  CONSTRAINT `fktarjetausuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tarjetamonarka
-- ----------------------------

-- ----------------------------
-- Table structure for temporada
-- ----------------------------
DROP TABLE IF EXISTS `temporada`;
CREATE TABLE `temporada`  (
  `idtemporada` int NOT NULL AUTO_INCREMENT,
  `idPromocion` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fechaInicio` datetime(0) NOT NULL,
  `fechaTermino` datetime(0) NOT NULL,
  PRIMARY KEY (`idtemporada`) USING BTREE,
  INDEX `fktemporadapromocion_idx`(`idPromocion`) USING BTREE,
  CONSTRAINT `fktemporadapromocion` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`idpromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temporada
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido1Usuario` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emailUsuario` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contraUsuario` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `confirmaContraUsuario` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apellido2Usuario` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imagenUsuario` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telefonoUsuario` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaRegistroUsuario` datetime(0) NOT NULL,
  `statusUsuario` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rfeUsuario` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaNacimiento` date NULL DEFAULT NULL,
  `codeActive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `clienidpaypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pk_mercadopago` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `accessTokenMpago` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tokenFCM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idProvincia` int NULL DEFAULT NULL,
  `idCanton` int NULL DEFAULT NULL,
  `idParroquia` int NULL DEFAULT NULL,
  `idBarrio` int NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE,
  INDEX `fx_provincia_idx`(`idProvincia`) USING BTREE,
  INDEX `fx_canton_idx`(`idCanton`) USING BTREE,
  INDEX `fx_parroquia_idx`(`idParroquia`) USING BTREE,
  INDEX `fx_barrio_idx`(`idBarrio`) USING BTREE,
  CONSTRAINT `fx_barrio` FOREIGN KEY (`idBarrio`) REFERENCES `barrio` (`idBarrio`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fx_canton` FOREIGN KEY (`idCanton`) REFERENCES `canton` (`idCanton`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fx_parroquia` FOREIGN KEY (`idParroquia`) REFERENCES `parroquia` (`idParroquia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fx_provincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (156, 'Cristiano', 'Ronaldo', 'guzman@gmail.com', '$2a$08$InDDpXcFOXZduJ3yr7xdl.5u9KypmxukEHRqCH0K/OJd6Wi64H2.W', '123456', 'guzman', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/image_1673587900295?alt=media&token=372331b9-690f-4e08-bf88-c3e468c0428f', '123456', '2023-01-10 00:00:00', '0', NULL, NULL, 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjE1NiwiZW1haWxVc3VhcmlvIjoiZ3V6bWFuQGdtYWlsLmNvbSIsImlhdCI6MTY3MzY2NjAwNH0.Iq_Heyc8vl9EaZ_HsaHlaDJ7fnioDbVaqmLjfYFX4vs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (157, 'joaquin', 'escobar', 'jglpablo@gmail.com', '$2a$08$EKx6.86AHLsXjhwcgJjYC.m./lp2deQM.FQnt9HjjgtKEwWS6.EX.', '123456', 'gavidia', '', '1234567890', '2023-01-10 00:00:00', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (158, 'Lionel Andres', 'Messi', 'messi@gmail.com', '$2a$08$QQf.58DRpTIA8G2SybNv2.UOw0rbbUW6VTxT8.Ze2qWCjt87Qwx02', '123456', 'Cuccitini', NULL, '1234567890', '2023-01-11 00:00:00', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (159, 'Messi Andres', 'Leonel', 'elbicho@gmail.com', '$2a$08$pc1IvYMS9VN07OlgESvCSeirFj3gb/g2mI3/bdV5dNWfwyUeQ.Hsm', '123456', 'Bicho', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/image_1673475450966?alt=media&token=1896bda8-b6ec-4c40-a7f3-5509991e420c', '1234567890', '2023-01-11 00:00:00', '0', NULL, NULL, 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjE1OSwiZW1haWxVc3VhcmlvIjoiZWxiaWNob0BnbWFpbC5jb20iLCJpYXQiOjE2NzM0NzUyODd9.tdAwJYAVttz-vU2HwOvMpHFZMS9Xfk0iO3YZ3zjQnRQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (160, 'Yorely', 'Guadalupe', 'yorely@gmail.com', '$2a$08$t1Nk3opT8ZotBsn09YC0.eH.ldVqUAtR6R1wt65T7hzLfyd5tMfPO', '123456', 'Damian', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/image_1673478058060?alt=media&token=9a9a85fe-72a6-4b5d-9493-1dbe4510cd56', '1234567890', '2023-01-11 00:00:00', '0', NULL, NULL, 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjE2MCwiZW1haWxVc3VhcmlvIjoieW9yZWx5QGdtYWlsLmNvbSIsImlhdCI6MTY3MzY3MTgwM30.sTCsxQ0D8UyxBkrZv9rTnekF7r-dcIxlriDXJUDCHmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (161, 'pablo', 'gr', 'pablo@gmail.com', '$2a$08$uOND74EkhFXUCOAkZem7kekc.X6xhXlu4n3ci1tDdCxXvQPa444bq', '123456', 'gr', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/image_1673594825606?alt=media&token=38a277e4-090f-4735-a776-5db5c5df6405', '1234567890', '2023-01-13 00:00:00', '0', NULL, NULL, 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjE2MSwiZW1haWxVc3VhcmlvIjoicGFibG9AZ21haWwuY29tIiwiaWF0IjoxNjczNTk1NDA5fQ.GnuhesTfEk8LupTrTosW6lqawjcxuA0lQucsS3prEyc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (162, 'Fernando Emmanuel ', 'Velasco ', 'fervelalcantara@gmail.com', '$2a$08$2A4L4LKldC/0VKqbcVhN5eJeGZngykj4iCXRfwTNGDSl5fSHJnsO.', '123456', '1234566', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/image_1673671042931?alt=media&token=28750656-baf0-4f3a-b914-1f5d74887ab3', '3319691235', '2023-01-13 00:00:00', '0', NULL, NULL, 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjE2MiwiZW1haWxVc3VhcmlvIjoiZmVydmVsYWxjYW50YXJhQGdtYWlsLmNvbSIsImlhdCI6MTY3MzY3MTQ2OH0.QAhkGmXcZ5mS0BVS7vYOJOKabr5Q3vIyas_V03fHGe8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (163, 'Fernando ', 'Velasco Alcántara ', 'fervelalcantara@gmail.com', '$2a$08$pmHiZO3yLpaEmB3yCirurOe4TDa2./JCJi.YyktbtkQ.73EBsU1qS', '123456', '12356daf', NULL, '3319691235', '2023-01-13 00:00:00', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (164, 'Juan Alberto', 'García Márquez', 'alberto@gmail.com', '$2a$08$bZHmPVFIXGOCpnWJbKAyDOnxMzcrkCGmThOcN2TZXamGs5IDdclr.', '123456', 'Espinoza10', 'https://firebasestorage.googleapis.com/v0/b/monarkastorage.appspot.com/o/image_1673672070509?alt=media&token=4a6255a3-4a5f-4856-b46b-f10d522091b5', '0987654321', '2023-01-13 00:00:00', '0', NULL, NULL, 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjE2NCwiZW1haWxVc3VhcmlvIjoiYWxiZXJ0b0BnbWFpbC5jb20iLCJpYXQiOjE2NzM2NzIzODh9.YX9ErdvXReij5AI34dkF56reXa00_V9092tWNS_Uepk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for usuariomembresia
-- ----------------------------
DROP TABLE IF EXISTS `usuariomembresia`;
CREATE TABLE `usuariomembresia`  (
  `idusuariomembresia` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idMembresia` int NOT NULL,
  PRIMARY KEY (`idusuariomembresia`) USING BTREE,
  INDEX `fkumusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkummembresia_idx`(`idMembresia`) USING BTREE,
  CONSTRAINT `fkummembresia` FOREIGN KEY (`idMembresia`) REFERENCES `membresia` (`idmembresia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkumusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuariomembresia
-- ----------------------------

-- ----------------------------
-- Table structure for usuariopreferencias
-- ----------------------------
DROP TABLE IF EXISTS `usuariopreferencias`;
CREATE TABLE `usuariopreferencias`  (
  `idusuariopreferencias` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idPreferenciasBusquedas` int NOT NULL,
  PRIMARY KEY (`idusuariopreferencias`) USING BTREE,
  INDEX `fkprefusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkprefbusquedas_idx`(`idPreferenciasBusquedas`) USING BTREE,
  CONSTRAINT `fkprefbusquedas` FOREIGN KEY (`idPreferenciasBusquedas`) REFERENCES `preferenciasbusquedas` (`idpreferenciasbusquedas`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkprefusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuariopreferencias
-- ----------------------------

-- ----------------------------
-- Table structure for usuariopreferenciasiniciales
-- ----------------------------
DROP TABLE IF EXISTS `usuariopreferenciasiniciales`;
CREATE TABLE `usuariopreferenciasiniciales`  (
  `idusuariopreferenciasiniciales` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idpreferenciasiniciales` int NOT NULL,
  PRIMARY KEY (`idusuariopreferenciasiniciales`) USING BTREE,
  INDEX `fkupiusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkupipreferenciasiniciales_idx`(`idpreferenciasiniciales`) USING BTREE,
  CONSTRAINT `fkupipreferenciasiniciales` FOREIGN KEY (`idpreferenciasiniciales`) REFERENCES `preferenciasiniciales` (`idpreferenciasiniciales`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkupiusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuariopreferenciasiniciales
-- ----------------------------

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta`  (
  `FolioVenta` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idpaginaPago` int NOT NULL,
  `claveTransaccion` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paypalDatos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fechaVenta` datetime(0) NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `totalVendido` float(8, 2) NOT NULL,
  `direccionEntrega` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusVenta` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`FolioVenta`) USING BTREE,
  INDEX `fkusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkventapaginapago_idx`(`idpaginaPago`) USING BTREE,
  CONSTRAINT `fkventapaginapago` FOREIGN KEY (`idpaginaPago`) REFERENCES `paginapago` (`idpaginaPago`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkventausuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of venta
-- ----------------------------

-- ----------------------------
-- Procedure structure for psActDatFalUsu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActDatFalUsu`;
delimiter ;;
CREATE PROCEDURE `psActDatFalUsu`(`PidUAct` INT)
BEGIN
	SELECT
	usuario.idUsuario,
	usuario.nombreUsuario,
	usuario.apellido1Usuario,
	usuario.apellido2Usuario,	
	usuario.contraUsuario,
	usuario.confirmaContraUsuario,	
	usuario.direccionUsuario,
	usuario.codigoPostalUsuario,
	usuario.telefonoUsuario,
	usuario.rfeUsuario,
	usuario.fechaNacimiento
	FROM
	usuario
	WHERE usuario.idUsuario = PidUAct;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActualizarImgsProd
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActualizarImgsProd`;
delimiter ;;
CREATE PROCEDURE `psActualizarImgsProd`(`pIdProducto` INT, `img1` VARCHAR(150),`img2` VARCHAR(150), `img3` VARCHAR(150), `img4` VARCHAR(150))
BEGIN
  UPDATE imgproducto SET imgproducto.img1 = img1,
  imgproducto.img2 = img2,
  imgproducto.img3 = img3,
  imgproducto.img4 = img4
  WHERE imgproducto.idProducto =pIdProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActualizarProdcuto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActualizarProdcuto`;
delimiter ;;
CREATE PROCEDURE `psActualizarProdcuto`(`PnombreActP` VARCHAR(150), `PdescripActP` VARCHAR(255), `PprecioUActP` FLOAT(8,2), `PimagenActP` VARCHAR(255), `PstockActP` FLOAT(8,2), `PmarcaActP` INT, `PcategoriaActP` INT, `PidProductoActP` INT)
BEGIN 	
	UPDATE producto SET producto.nombreProducto = PnombreActP,
	 producto.desProducto = PdescripActP,
	 producto.precioUnitarioProducto = PprecioUActP,
	 producto.imagenProducto = PimagenActP,
	 producto.stockRealProducto = PstockActP,
	 producto.idMarca = PmarcaActP,	 
	 producto.idCategoria = PcategoriaActP 
	WHERE  producto.idProducto = PidProductoActP AND producto.statusProducto = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActuImgs
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActuImgs`;
delimiter ;;
CREATE PROCEDURE `psActuImgs`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psBusIdProduCU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psBusIdProduCU`;
delimiter ;;
CREATE PROCEDURE `psBusIdProduCU`(`PidProUmC` INT)
BEGIN 
	SELECT producto.idUsuario FROM producto
	WHERE producto.idProducto = PidProUmC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psCateAct
-- ----------------------------
DROP PROCEDURE IF EXISTS `psCateAct`;
delimiter ;;
CREATE PROCEDURE `psCateAct`()
BEGIN		
	SELECT categoria.idCategoria,categoria.desCategoria FROM categoria WHERE categoria.statusCategoria = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psConsultaUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psConsultaUsuario`;
delimiter ;;
CREATE PROCEDURE `psConsultaUsuario`(`PdesContra` VARCHAR(16), `PdesEmail` VARCHAR(245))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
								
IF EXISTS(SELECT usuario.emailUsuario, usuario.contraUsuario  FROM usuario WHERE usuario.contraUsuario = PdesContra AND usuario.emailUsuario = PdesEmail) THEN 
		SELECT "Datos Correcto"  AS "Mensaje";		
ELSE			
			SELECT "Datos incorrectos" AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psDateActual
-- ----------------------------
DROP PROCEDURE IF EXISTS `psDateActual`;
delimiter ;;
CREATE PROCEDURE `psDateActual`()
BEGIN 
SELECT CURDATE();
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psDatFalUsu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psDatFalUsu`;
delimiter ;;
CREATE PROCEDURE `psDatFalUsu`(`Pape2U` VARCHAR(200), `PdirecU` VARCHAR(150), `PcpU` VARCHAR(5), `Ptelefono` VARCHAR(55), `PRFC` VARCHAR(13), `PfeNa` DATE, `PidU` INT)
BEGIN
	UPDATE usuario SET 
	usuario.apellido2Usuario = Pape2U, 
	usuario.direccionUsuario = PdirecU,
	usuario.codigoPostalUsuario = PcpU,
	usuario.telefonoUsuario = Ptelefono,
	usuario.rfeUsuario = PRFC,
	usuario.fechaNacimiento = PfeNa
	WHERE usuario.idUsuario = PidU;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psEliProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `psEliProduct`;
delimiter ;;
CREATE PROCEDURE `psEliProduct`(`Pidrod` INT)
BEGIN 
	UPDATE producto SET stockRealProducto = '0', producto.statusProducto ='0' WHERE producto.idProducto=Pidrod;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psEliProductoCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psEliProductoCarrito`;
delimiter ;;
CREATE PROCEDURE `psEliProductoCarrito`(`pIdProductoCarrito` INT)
BEGIN
   UPDATE productocarrito SET statusProductoCarrito="0", cantidadProducto=0 WHERE productocarrito.idproductocarrito=pIdProductoCarrito;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psEmailConfirm
-- ----------------------------
DROP PROCEDURE IF EXISTS `psEmailConfirm`;
delimiter ;;
CREATE PROCEDURE `psEmailConfirm`(`Pid` INT,`Pcodi` VARCHAR(20), `Pemail` VARCHAR(245))
BEGIN
UPDATE usuario SET usuario.statusUsuario = '1' WHERE (usuario.idUsuario = Pid) AND (usuario.codeActive = Pcodi) AND (usuario.emailUsuario = Pemail);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFeActD
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFeActD`;
delimiter ;;
CREATE PROCEDURE `psFeActD`()
BEGIN
select CURDATE();
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFilterProductsByCategory
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFilterProductsByCategory`;
delimiter ;;
CREATE PROCEDURE `psFilterProductsByCategory`(`PidCategory` INT)
BEGIN
	#Routine body goes here...
		SELECT
			P.idProducto,
			P.nombreProducto,
			P.desProducto,
			P.precioUnitarioProducto,
			P.imagenProducto,
			P.idCategoria
		FROM
			producto AS P
		INNER JOIN
			categoria AS C
		ON
			P.idCategoria = C.idCategoria
		WHERE
			C.idCategoria = PidCategory;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFiltroCorreo
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFiltroCorreo`;
delimiter ;;
CREATE PROCEDURE `psFiltroCorreo`(`Pemail` VARCHAR(245))
BEGIN
	SELECT * FROM usuario WHERE usuario.emailUsuario = Pemail;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFiltroEmail
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFiltroEmail`;
delimiter ;;
CREATE PROCEDURE `psFiltroEmail`(IN `Pemail` VARCHAR(245))
  NO SQL 
SELECT * FROM usuario
WHERE usuario.emailUsuario = Pemail
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psImagenUsuarioPerfil
-- ----------------------------
DROP PROCEDURE IF EXISTS `psImagenUsuarioPerfil`;
delimiter ;;
CREATE PROCEDURE `psImagenUsuarioPerfil`(`PdiUser` INT)
BEGIN 
	SELECT usuario.imagenUsuario FROM usuario WHERE usuario.idUsuario = PdiUser AND usuario.statusUsuario='1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psIMpagoData
-- ----------------------------
DROP PROCEDURE IF EXISTS `psIMpagoData`;
delimiter ;;
CREATE PROCEDURE `psIMpagoData`(`pIdUsuario` INT,`pKmercadopago` VARCHAR(255),`pAccessTokenMpago` VARCHAR(255))
BEGIN

UPDATE usuario SET
usuario.pk_mercadopago= pKmercadopago,
usuario.accessTokenMpago = pAccessTokenMpago
WHERE usuario.idUsuario=pIdUsuario;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsCarrito`;
delimiter ;;
CREATE PROCEDURE `psInsCarrito`(`PFolioVenta` INT, `PidProducto` INT, `PprecioUnitario` FLOAT, `PcantidadProducto` FLOAT)
BEGIN 
		INSERT INTO carrito
		VALUES (
		null,
		PFolioVenta,
		PidProducto,
		PprecioUnitario,
		PcantidadProducto,
		'1');
		UPDATE producto SET stockRealProducto = stockRealProducto - PcantidadProducto WHERE producto.idProducto=PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsCarritoVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsCarritoVenta`;
delimiter ;;
CREATE PROCEDURE `psInsCarritoVenta`(`PIdCarrito` INT,`PFolioVenta` INT)
BEGIN
  INSERT INTO carritoventa
  (idCarrito, FolioVenta)
  VALUES (PIdCarrito,PFolioVenta);
  
  SELECT last_insert_id() AS idCarritoVenta;
  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsClienIdU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsClienIdU`;
delimiter ;;
CREATE PROCEDURE `psInsClienIdU`(`PidUsuaCpay` INT, `PclienId` VARCHAR(255))
BEGIN
	UPDATE usuario SET usuario.clienidpaypal = PclienId WHERE usuario.idUsuario = PidUsuaCpay;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInserImgs
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInserImgs`;
delimiter ;;
CREATE PROCEDURE `psInserImgs`(`PidPro` INT, `Pimg1` VARCHAR(255), `Pimg2` VARCHAR(255), `Pimg3` VARCHAR(255), `Pimg4` VARCHAR(255))
BEGIN
	INSERT imgproducto VALUES(DEFAULT,PidPro,Pimg1,Pimg2,Pimg3,Pimg4);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertCarritoUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertCarritoUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertCarritoUsuario`(`spIdUsuario` INT,`spPrecioUnitario` FLOAT,`spCantidadProducto` FLOAT, `spStatusCarrito` VARCHAR(1))
BEGIN

IF EXISTS (SELECT*FROM carrito WHERE idUsuario=spIdUsuario)
THEN
  SELECT "El carrito ya existe" AS Mensaje;
ELSE
INSERT INTO carrito (idUsuario, precioUnitario,cantidadProducto,statusCarrito)
VALUES(spIdUsuario,spPrecioUnitario,spCantidadProducto,spStatusCarrito);
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertCategoria`;
delimiter ;;
CREATE PROCEDURE `psInsertCategoria`(`PdesCategoria` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
									
IF EXISTS(SELECT categoria.desCategoria FROM categoria WHERE categoria.desCategoria = PdesCategoria) THEN 
		SELECT CONCAT('Categoría  Ya Existente: ', PdesCategoria)  AS "Mensaje";		
ROLLBACK;
ELSE

			INSERT categoria VALUES(
												DEFAULT,
												UPPER(PdesCategoria),
												'1');
			COMMIT;
			SELECT CONCAT('Categoría insertada con éxito!!!: ',  PdesCategoria)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertComenCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertComenCliente`;
delimiter ;;
CREATE PROCEDURE `psInsertComenCliente`(`PComentarioCliente` TEXT,`Pestrellas` INT, `PidUsuario` INT, `PidProducto` INT)
BEGIN
INSERT detaproductocomen (comentariocliente,estrellas, idUsuario, idProducto, fecha)
					VALUES (PComentarioCliente, Pestrellas, PidUsuario, PidProducto, NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertComenUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertComenUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertComenUsuario`(`PComentario` TEXT, `PidUsuario` INT, `PidProducto` INT)
BEGIN
	INSERT detaproductocomen (comentario, idUsuario, idProducto, fecha)
					VALUES (PComentario, PidUsuario, PidProducto, NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertFormaPago
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertFormaPago`;
delimiter ;;
CREATE PROCEDURE `psInsertFormaPago`(`PdesFormaPago` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 	
		SELECT "HA OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;			
	SET AUTOCOMMIT=0;
					
IF EXISTS(SELECT formapago.desFormaPago FROM formapago WHERE formapago.desFormaPago = PdesFormaPago) THEN 
		SELECT CONCAT('Forma de Pago ya existente : ',  PdesFormaPago)  AS "Mensaje";
ROLLBACK;
ELSE

			INSERT formapago VALUES(
												DEFAULT,
												UPPER(PdesFormaPago),
												'1');	
			COMMIT;
			SELECT CONCAT('Forma de Pago insertada con éxito!!!: ',  PdesFormaPago)  AS "Aviso";
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertMarca`;
delimiter ;;
CREATE PROCEDURE `psInsertMarca`(`PdesMarca` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "HA OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
										
IF EXISTS(SELECT marca.desMarca FROM marca WHERE marca.desMarca = PdesMarca) THEN 
		SELECT CONCAT('Marca ya existente : ',  PdesMarca)  AS "Mensaje";
		ROLLBACK;
ELSE

			INSERT marca VALUES(
												DEFAULT,
												UPPER(PdesMarca),
												'1');			
			COMMIT;
			SELECT CONCAT('Marca insertada con éxito!!!: ',  PdesMarca)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertPermisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertPermisos`;
delimiter ;;
CREATE PROCEDURE `psInsertPermisos`(`PdesPermiso` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
					
IF EXISTS(SELECT permiso.desPermiso FROM permiso  WHERE permiso.desPermiso = PdesPermiso) THEN 
		SELECT CONCAT('Permiso Ya Existente: ',PdesPermiso) AS "Mensaje";
	ROLLBACK;		
ELSE

			INSERT permiso VALUES(
												DEFAULT,
												UPPER(PdesPermiso),
												'1');
			COMMIT;
			SELECT CONCAT('Permiso insertado con exito!!!',PdesPermiso) AS "Aviso";
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertProducto`;
delimiter ;;
CREATE PROCEDURE `psInsertProducto`(`PnombrePro` VARCHAR(200), `PdesPro` VARCHAR(200), `PpreuniPro` DOUBLE, `PcanPro` DOUBLE, `PimagePro` VARCHAR(240), `PidMarcaPro` INT, `PidCategoriaPro` INT, `PidUsuarioPro` INT)
BEGIN
	INSERT producto (
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.stockRealProducto,
	producto.imagenProducto,
	producto.idMarca,
	producto.idCategoria,
	producto.idUsuario,
	producto.fechaAlojadoProducto,
	producto.statusProducto)
	VALUES(
	DEFAULT,
	PnombrePro,
	PdesPro,
	PpreuniPro,
	PcanPro,
	PimagePro,
	PidMarcaPro,
	PidCategoriaPro,
	PidUsuarioPro,
	NOW(),
	'1'
	);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertProductoCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertProductoCarrito`;
delimiter ;;
CREATE PROCEDURE `psInsertProductoCarrito`(`spIdProducto` INT, `spIdCarrito` INT, `spCantidadProducto` INT)
BEGIN

IF EXISTS (SELECT*FROM productocarrito WHERE (idProducto=spIdProducto AND statusProductoCarrito ="1" AND idCarrito = spIdCarrito))
THEN
  SELECT "Ya has agregado este producto a tu carrito" AS Mensaje;
ELSE

INSERT INTO productoCarrito (idProducto,idCarrito,cantidadProducto, statusProductoCarrito)
VALUES(spIdProducto,spIdCarrito,spCantidadProducto,"1");

END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertRoles
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertRoles`;
delimiter ;;
CREATE PROCEDURE `psInsertRoles`(`PdesRol` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
	
IF EXISTS(SELECT rol.desRole FROM rol WHERE  rol.desRole = PdesRol) THEN 
		SELECT CONCAT('Rol Ya Existente: ', PdesRol) AS "Mensaje";
	ROLLBACK;
ELSE

			INSERT rol VALUES(
												DEFAULT,
												UPPER(PdesRol),
												'1');
			COMMIT;
			SELECT CONCAT('Rol insertado con exito!!! ', PdesRol) AS "Aviso";			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertRolPermisoMovil
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertRolPermisoMovil`;
delimiter ;;
CREATE PROCEDURE `psInsertRolPermisoMovil`(`id` INT(9))
BEGIN
    INSERT INTO rolpermiso(
        rolpermiso.idRolPermisoUsuario,
        rolpermiso.idUsuario,
        rolPermiso.idRol,
        rolpermiso.idPermiso
    )VALUES(DEFAULT,id,1,1);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertTokenFCM
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertTokenFCM`;
delimiter ;;
CREATE PROCEDURE `psInsertTokenFCM`(`pIdUsuario` INT, `pTokenFCM` VARCHAR(255))
BEGIN

UPDATE usuario SET
usuario.tokenFCM= pTokenFCM
WHERE usuario.idUsuario=pIdUsuario;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuario`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `Pape2Usu` VARCHAR(150), `PemailUsu` VARCHAR(245), `PfotoUsu` VARCHAR(245), `PdireccionUsu` VARCHAR(255), `PcodigoPostalUsu` VARCHAR(5), `PtelefonoUsu` VARCHAR(15), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PrfcUsu` VARCHAR(13))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE			
			INSERT usuario VALUES(
														DEFAULT,
														PnombreUsu,
														Pape1Usu,
														Pape2Usu,
														PemailUsu,
														PfotoUsu,
														PdireccionUsu,
														PcodigoPostalUsu,
														PtelefonoUsu,
														PcontraUsu,
														PConfircontraUsu,
														NOW(),
														'1',
														PrfcUsu);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuarioFer
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuarioFer`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuarioFer`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `Pape2Usu` VARCHAR(150), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PprovinciaUsu` INT(2), `PcantonUsu` INT(2), `PparroquiaUsu` INT(2), `PbarrioComUsu` INT(2), `PemailUsu` VARCHAR(245), `PtelUsu` VARCHAR(245))
BEGIN
	
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "Mensaje";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
								apellido2Usuario,
								contraUsuario,
								confirmaContraUsuario,
								emailUsuario,
								telefonoUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								idProvincia,
								idCanton,
								idParroquia,
								idBarrio)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
								Pape2Usu,
								PcontraUsu,
								PConfircontraUsu,
								PemailUsu,
								PtelUsu,
								CURRENT_DATE,
								'0',
								PprovinciaUsu,
								PcantonUsu,
								PparroquiaUsu,
								PbarrioComUsu
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Mensaje";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuarioFer2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuarioFer2`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuarioFer2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `Pape2Usu` VARCHAR(150), `PcontraUsu` VARCHAR(100), `PConfircontraUsu` VARCHAR(100),`PemailUsu` VARCHAR(245), `PtelUsu` VARCHAR(245))
BEGIN
	
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "Mensaje";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
								apellido2Usuario,
								contraUsuario,
								confirmaContraUsuario,
								emailUsuario,
								telefonoUsuario,
								fechaRegistroUsuario,
								statusUsuario
								)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
								Pape2Usu,
								PcontraUsu,
								PcontraUsu,
								PemailUsu,
								PtelUsu,
								CURRENT_DATE,
								'0'
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Mensaje";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuarioFer3
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuarioFer3`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuarioFer3`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `Pape2Usu` VARCHAR(150), `PcontraUsu` VARCHAR(100), `PConfircontraUsu` VARCHAR(100),`PemailUsu` VARCHAR(245), `PtelUsu` VARCHAR(245))
BEGIN
	
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "Mensaje";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
								apellido2Usuario,
								contraUsuario,
								confirmaContraUsuario,
								emailUsuario,
								telefonoUsuario,
								fechaRegistroUsuario,
								statusUsuario
								)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
								Pape2Usu,
								PcontraUsu,
								PConfircontraUsu,
								PemailUsu,
								PtelUsu,
								CURRENT_DATE,
								'0'
								);
								
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Mensaje";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuariov1
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuariov1`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuariov1`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `PemailUsu` VARCHAR(245), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PcodeEmail` VARCHAR(21))
BEGIN
	
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "Mensaje";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
								emailUsuario,
								contraUsuario,
								confirmaContraUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								codeActive)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
								PemailUsu,
								PcontraUsu,
								PConfircontraUsu,
								NOW(),
								'0',
								PcodeEmail	
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Mensaje";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuariov2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuariov2`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuariov2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(200),`Pape2Usu` VARCHAR(200),`PemailUsu` VARCHAR (200),`PcontraUsu` VARCHAR(200),`PurlPhoto` VARCHAR(245))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
                apellido2Usuario,
								emailUsuario,
                contraUsuario,
                confirmaContraUsuario,
                imagenUsuario,
								fechaRegistroUsuario,
								statusUsuario)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
                Pape2Usu,
								PemailUsu,
                PcontraUsu,
                PcontraUsu,
                PurlPhoto,
								NOW(),
								'1'
								);
			COMMIT;
			SELECT CONCAT('Se realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertv2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertv2`;
delimiter ;;
CREATE PROCEDURE `psInsertv2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(200),`Pape2Usu` VARCHAR(200),`PemailUsu` VARCHAR (200))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
                                apellido2Usuario,
								emailUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								codeActive)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
                                Pape2Usu,
								PemailUsu,
								NOW(),
								'1'
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsProductoCarritov2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsProductoCarritov2`;
delimiter ;;
CREATE PROCEDURE `psInsProductoCarritov2`(`spIdProducto` INT,`spIdUsuario` INT, `spCantidadProducto` INT)
BEGIN
   IF EXISTS (SELECT*FROM productocarrito WHERE (idProducto=spIdProducto AND statusProductoCarrito ="1" AND idUsuario=spIdUsuario AND vendido="0"))
  THEN
  SELECT "Ya has agregado este producto a tu carrito" AS Mensaje;
ELSE

INSERT INTO productoCarrito (idProducto,idUsuario,cantidadProducto, statusProductoCarrito,vendido)
VALUES(spIdProducto,spIdUsuario,spCantidadProducto,"1","0");

END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsProductoCarritoVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsProductoCarritoVenta`;
delimiter ;;
CREATE PROCEDURE `psInsProductoCarritoVenta`(`PIdProductoCarrito` INT,`PFolioVenta` INT)
BEGIN

INSERT INTO productocarritoventa
(
 idproductocarrito,
 FolioVenta
) VALUES(
 PIdProductoCarrito,
 PFolioVenta
);

UPDATE productocarrito
SET vendido ="1"
WHERE idproductocarrito=PIdProductoCarrito;

SELECT LAST_INSERT_ID() as idProductoCarrito;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsVenta`;
delimiter ;;
CREATE PROCEDURE `psInsVenta`(`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT)
BEGIN 

	INSERT INTO venta (
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
		statusVenta) 
	VALUES (
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
	'1');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsVentav2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsVentav2`;
delimiter ;;
CREATE PROCEDURE `psInsVentav2`(`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT)
BEGIN

INSERT INTO venta (
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
		statusVenta) 
	VALUES (
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
	'1');
    
    SELECT LAST_INSERT_ID() as FolioVenta;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsVentav3
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsVentav3`;
delimiter ;;
CREATE PROCEDURE `psInsVentav3`(`PIdUsuario` INT,`PIdPaginaPago` INT,`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT, `PDireccionEntrega` VARCHAR(250))
BEGIN

INSERT INTO venta (
        idUsuario,
        idpaginaPago,
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
        direccionEntrega,
		statusVenta) 
	VALUES (
    PIdUsuario,
    PIdPaginaPago,
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
    PDireccionEntrega,
	'1');
    
    SELECT LAST_INSERT_ID() as FolioVenta;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psLoginUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psLoginUser`;
delimiter ;;
CREATE PROCEDURE `psLoginUser`(IN `Pcontra` VARCHAR(16), IN `PemailUsu` VARCHAR(245))
BEGIN 
	SELECT usuario.idUsuario AS 'IdUsuario',
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS 'Nombre' ,
				usuario.emailUsuario AS 'Email',
				usuario.contraUsuario AS 'Contra'
FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psLoginUserv2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psLoginUserv2`;
delimiter ;;
CREATE PROCEDURE `psLoginUserv2`(IN `Pcontra` VARCHAR(16), IN `PemailUsu` VARCHAR(245))
BEGIN

   IF EXISTS(SELECT usuario.idUsuario,
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario),
				usuario.emailUsuario ,
				usuario.contraUsuario 
   FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu AND usuario.statusUsuario="1") THEN
   SELECT usuario.idUsuario AS 'IdUsuario',
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS 'Nombre' ,
				usuario.emailUsuario AS 'Email',
				usuario.contraUsuario AS 'Contra'
   FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu AND usuario.statusUsuario="1";
   ELSE
      SELECT CONCAT('Debes activar tu cuenta para poder ingresar!!!: ')  AS "Nombre";
   END IF;
   
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMarcaAct
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMarcaAct`;
delimiter ;;
CREATE PROCEDURE `psMarcaAct`()
BEGIN	
	SELECT marca.idMarca,marca.desMarca FROM marca WHERE marca.statusMarca = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActProducto`;
delimiter ;;
CREATE PROCEDURE `psMosActProducto`(`PidPro` INT, `PidUsu` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	marca.idMarca,
	marca.desMarca,
	categoria.idCategoria,
	categoria.desCategoria,
	producto.idUsuario
	FROM
	producto
	INNER JOIN marca ON marca.idMarca = producto.idMarca
	INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria
	WHERE  producto.idProducto = PidPro  AND producto.idUsuario = PidUsu ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActProImg
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActProImg`;
delimiter ;;
CREATE PROCEDURE `psMosActProImg`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4,
	imgproducto.idImgProducto,
	producto.idUsuario,
	producto.statusProducto,
	producto.stockRealProducto
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActProImg4
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActProImg4`;
delimiter ;;
CREATE PROCEDURE `psMosActProImg4`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4	
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActuImgsc
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActuImgsc`;
delimiter ;;
CREATE PROCEDURE `psMosActuImgsc`(`PidProImg` INT)
BEGIN

		SELECT
		imgproducto.idProducto,
		imgproducto.img1,
		imgproducto.img2,
		imgproducto.img3,
		imgproducto.img4,
		producto.nombreProducto,		
		producto.imagenProducto
		FROM
		producto
		INNER JOIN imgproducto ON imgproducto.idProducto = producto.idProducto
		WHERE  producto.idProducto = PidProImg;	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosCarritoByIdUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosCarritoByIdUser`;
delimiter ;;
CREATE PROCEDURE `psMosCarritoByIdUser`(`pIdUser` INT)
BEGIN
  SELECT idCarrito FROM storecode.carrito
  WHERE carrito.idUsuario=pIdUser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosCliidU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosCliidU`;
delimiter ;;
CREATE PROCEDURE `psMosCliidU`(`PidMosUsuaConpay` INT)
BEGIN
	SELECT usuario.clienidpaypal  FROM usuario WHERE usuario.idUsuario= PidMosUsuaConpay;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComenCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComenCliente`;
delimiter ;;
CREATE PROCEDURE `psMosComenCliente`(`PidProducto` INT)
BEGIN
SELECT
	CONCAT(usuario.nombreUsuario,' ',
			usuario.apellido1Usuario) AS nombre,
	detaproductocomen.comentariocliente AS comentario,
    detaproductocomen.estrellas,
	usuario.imagenUsuario,
	detaproductocomen.fecha
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  (detaproductocomen.idProducto = PidProducto && detaproductocomen.comentariocliente IS NOT NULL) ORDER BY detaproductocomen.fecha DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComenProdu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComenProdu`;
delimiter ;;
CREATE PROCEDURE `psMosComenProdu`(`PidProducto` INT)
BEGIN
	SELECT
	CONCAT(usuario.nombreUsuario,' ',
			usuario.apellido1Usuario) AS nombre,
	detaproductocomen.comentario,
    detaproductocomen.estrellas,
	usuario.imagenUsuario,
	detaproductocomen.fecha
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  (detaproductocomen.idProducto = PidProducto && detaproductocomen.comentario IS NOT NULL) ORDER BY detaproductocomen.fecha DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComentarioImagen
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComentarioImagen`;
delimiter ;;
CREATE PROCEDURE `psMosComentarioImagen`(`PidProducto` INT)
BEGIN
	SELECT	
	usuario.imagenUsuario	
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  detaproductocomen.idProducto = PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComentarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComentarios`;
delimiter ;;
CREATE PROCEDURE `psMosComentarios`(`PidProducto` INT)
BEGIN
	SELECT
	usuario.emailUsuario AS usuario	
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  detaproductocomen.idProducto = PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosIDpCPAl
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosIDpCPAl`;
delimiter ;;
CREATE PROCEDURE `psMosIDpCPAl`(`idProMPaL` INT)
BEGIN 
	SELECT
	usuario.clienidpaypal
	FROM
	usuario
	INNER JOIN producto ON usuario.idUsuario = producto.idUsuario
	WHERE producto.idProducto = idProMPaL;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosIdUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosIdUser`;
delimiter ;;
CREATE PROCEDURE `psMosIdUser`(`Pemail` VARCHAR(200))
BEGIN
  SELECT idUsuario FROM usuario WHERE usuario.emailUsuario=Pemail;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosItemsByFolioVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosItemsByFolioVenta`;
delimiter ;;
CREATE PROCEDURE `psMosItemsByFolioVenta`(`pFolioVenta` INT)
BEGIN

SELECT producto.nombreProducto,producto.desProducto, producto.imagenProducto, producto.precioUnitarioProducto,productocarrito.cantidadProducto, venta.FolioVenta, venta.claveTransaccion, venta.totalVendido 
FROM venta 

INNER JOIN productocarritoventa ON venta.FolioVenta= productocarritoventa.FolioVenta
INNER JOIN productocarrito ON productocarritoventa.idproductocarrito = productocarrito.idproductocarrito 
INNER JOIN producto ON productocarrito.idproducto = producto.idProducto AND productocarrito.vendido = "1" AND productocarrito.cantidadProducto >0

WHERE venta.FolioVenta= pFolioVenta;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosNomCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosNomCliente`;
delimiter ;;
CREATE PROCEDURE `psMosNomCliente`(`PidVenta` INT)
SELECT venta.correo AS 'Cliente' FROM Venta WHERE venta.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdaUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdaUsuario`;
delimiter ;;
CREATE PROCEDURE `psMosProdaUsuario`(`PidUsuario` INT)
BEGIN 
			SELECT
			producto.idProducto,
			producto.nombreProducto ,
			producto.desProducto ,
			producto.precioUnitarioProducto ,
			producto.imagenProducto ,
			IF(producto.stockRealProducto = '0', 'Agotado',producto.stockRealProducto) AS 'stockRealProducto',						
			IF(producto.statusProducto = '1', 'Activo','Inactivo') AS 'statusProducto',
			marca.desMarca AS 'idMarca',
			categoria.desCategoria AS 'idCategoria',
            producto.idUsuario
			FROM producto
			INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria 
			INNER JOIN marca ON marca.idMarca = producto.idMarca
			WHERE producto.idUsuario = PidUsuario AND producto.statusProducto = 1 AND producto.stockRealProducto > 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdImgAgregar
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdImgAgregar`;
delimiter ;;
CREATE PROCEDURE `psMosProdImgAgregar`(`PidUsuarioAI` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	producto.idUsuario
	FROM
	producto
	INNER JOIN imgproducto ON imgproducto.idProducto = producto.idProducto
	WHERE producto.idUsuario = PidUsuarioAI AND producto.statusProducto = '1' AND imgproducto.idImgProducto = '' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdInCard
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdInCard`;
delimiter ;;
CREATE PROCEDURE `psMosProdInCard`(`spIdUsuario` INT)
BEGIN
  SELECT productocarrito.idproductocarrito, producto.idProducto, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, producto.stockRealProducto, productocarrito.cantidadProducto
  FROM productocarrito
  INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
  WHERE productocarrito.idUsuario = spIdUsuario AND productocarrito.statusProductoCarrito="1" AND productocarrito.vendido= "0"
  ORDER BY producto.idUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdInCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdInCarrito`;
delimiter ;;
CREATE PROCEDURE `psMosProdInCarrito`(`spIdUsuario` INT)
BEGIN

SELECT producto.idProducto, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, productocarrito.cantidadProducto
FROM carrito
INNER JOIN productocarrito ON carrito.idCarrito=productocarrito.idCarrito 
INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
WHERE carrito.idUsuario = spIdUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdInCarritoGroupByVendedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdInCarritoGroupByVendedor`;
delimiter ;;
CREATE PROCEDURE `psMosProdInCarritoGroupByVendedor`(`spIdUsuario` INT)
BEGIN

SELECT productocarrito.idproductocarrito, producto.idProducto, productocarrito.idCarrito, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, producto.stockRealProducto, productocarrito.cantidadProducto
FROM carrito
INNER JOIN productocarrito ON carrito.idCarrito=productocarrito.idCarrito 
INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
WHERE carrito.idUsuario = spIdUsuario AND productocarrito.statusProductoCarrito="1"
ORDER BY producto.idUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdToUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdToUser`;
delimiter ;;
CREATE PROCEDURE `psMosProdToUser`(`PidUsuario` INT)
BEGIN
 SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
    producto.fechaAlojadoProducto,
	producto.stockRealProducto,
    producto.statusProducto,
    producto.idMarca,
    producto.idCategoria,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1 AND producto.idUsuario!= PidUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProducto`;
delimiter ;;
CREATE PROCEDURE `psMosProducto`()
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoComple
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoComple`;
delimiter ;;
CREATE PROCEDURE `psMosProductoComple`(`PidPro` INT)
BEGIN 
		SELECT
		producto.idProducto,
		producto.nombreProducto,
		producto.desProducto,
		producto.precioUnitarioProducto,
		producto.imagenProducto,
		producto.fechaAlojadoProducto,
		producto.stockRealProducto,
		producto.statusProducto,
		marca.desMarca,
		categoria.desCategoria,
		CONCAT(usuario.nombreUsuario,' ', 
						usuario.apellido1Usuario) AS Vendedor,
						usuario.emailUsuario as 'Email Vendedor'
		FROM 
		producto
		INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria
		INNER JOIN marca ON marca.idMarca = producto.idMarca
		INNER JOIN usuario ON usuario.idUsuario = producto.idUsuario
		WHERE producto.idProducto=PidPro;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoCompleImg
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoCompleImg`;
delimiter ;;
CREATE PROCEDURE `psMosProductoCompleImg`(`PidProimg` INT)
BEGIN 
		SELECT * FROM imgproducto WHERE idProducto = PidProimg;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoConUsu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoConUsu`;
delimiter ;;
CREATE PROCEDURE `psMosProductoConUsu`(`PidUsuMosNo` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1 AND producto.idUsuario <> PidUsuMosNo; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoConUsuFCPSU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoConUsuFCPSU`;
delimiter ;;
CREATE PROCEDURE `psMosProductoConUsuFCPSU`(`PidUM` INT, `PidMP` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' 
	AND producto.stockRealProducto >= 1 	
	AND producto.idUsuario = PidUM
	AND producto.idProducto <> PidMP; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProIns
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProIns`;
delimiter ;;
CREATE PROCEDURE `psMosProIns`(`PidPro` INT, `PidUsu` INT)
BEGIN 
		SELECT
		producto.idProducto,
		producto.nombreProducto,
		producto.desProducto,
		producto.idUsuario
		FROM
		producto
		WHERE producto.idProducto = PidPro AND producto.idUsuario = PidUsu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicket
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicket`;
delimiter ;;
CREATE PROCEDURE `psMosTicket`(`PidVenta` INT)
SELECT
venta.correo AS 'Cliente',
producto.nombreProducto AS 'Producto',
carrito.precioUnitario AS 'Precio Unitario',
carrito.cantidadProducto AS 'Cantidad de Productos',
venta.totalVendido AS 'Total'
FROM carrito
INNER JOIN venta ON venta.FolioVenta = carrito.FolioVenta
INNER JOIN producto ON producto.idProducto = carrito.idProducto
WHERE venta.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicketFechav
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicketFechav`;
delimiter ;;
CREATE PROCEDURE `psMosTicketFechav`(`PidVF` INT)
BEGIN 
SELECT fechaVenta FROM venta WHERE FolioVenta = PidVF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicketProductos
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicketProductos`;
delimiter ;;
CREATE PROCEDURE `psMosTicketProductos`(`PidVenta` INT)
SELECT
	producto.nombreProducto AS 'Producto',
	carrito.precioUnitario AS 'Precio Unitario',
	carrito.cantidadProducto AS 'Cantidad de Productos'
	FROM carrito
	INNER JOIN producto ON producto.idProducto = carrito.idProducto
	WHERE carrito.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicketUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicketUsuario`;
delimiter ;;
CREATE PROCEDURE `psMosTicketUsuario`(`PidUsuNom` INT)
BEGIN 
			SELECT CONCAT(nombreUsuario," ",
apellido1Usuario) AS nombre
FROM usuario WHERE usuario.idUsuario = PidUsuNom;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTotalVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTotalVenta`;
delimiter ;;
CREATE PROCEDURE `psMosTotalVenta`(`PidVenta` INT)
SELECT venta.totalVendido AS 'Total' FROM Venta WHERE venta.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosVendedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosVendedor`;
delimiter ;;
CREATE PROCEDURE `psMosVendedor`(`pIdUsuario` INT)
BEGIN
SELECT idUsuario, nombreUsuario, apellido1Usuario,
emailUsuario,contraUsuario,confirmaContraUsuario,apellido2Usuario, imagenUsuario,
telefonoUsuario, statusUsuario,rfeUsuario,fechaNacimiento,codeActive, clienidpaypal,
pk_mercadopago, accessTokenMpago, tokenFCM FROM usuario
WHERE usuario.idUsuario= pIdUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosVentaByUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosVentaByUser`;
delimiter ;;
CREATE PROCEDURE `psMosVentaByUser`(`pIdUser` INT)
BEGIN

SELECT producto.nombreProducto,producto.desProducto, producto.imagenProducto,productocarrito.cantidadProducto, venta.FolioVenta, venta.claveTransaccion, venta.totalVendido 
FROM productocarrito 


INNER JOIN productocarritoventa ON productocarrito.idproductocarrito= productocarritoventa.idproductocarrito
INNER JOIN venta ON productocarritoventa.FolioVenta = venta.FolioVenta

INNER JOIN producto ON productocarrito.idproducto = producto.idProducto AND productocarrito.vendido = "1" AND productocarrito.cantidadProducto >0



WHERE productocarrito.idUsuario= pIdUser;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosVentaByUserv2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosVentaByUserv2`;
delimiter ;;
CREATE PROCEDURE `psMosVentaByUserv2`(`pIdUser` INT)
BEGIN

SELECT venta.FolioVenta,venta.idUsuario,venta.idpaginaPago, venta.claveTransaccion,venta.paypalDatos, venta.fechaVenta, venta.correo, venta.totalVendido, venta.direccionEntrega
FROM venta


WHERE idUsuario= pIdUser;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectClientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectClientes`;
delimiter ;;
CREATE PROCEDURE `psSelectClientes`()
BEGIN
	SELECT
	usuario.idUsuario AS "No.",
	CONCAT(usuario.nombreUsuario," ",
					usuario.apellido1Usuario) AS 'Nombre',
	usuario.emailUsuario AS 'Correo',
	usuario.fechaRegistroUsuario AS 'Fecha de Registro',
	IF(usuario.statusUsuario = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectConCiplU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectConCiplU`;
delimiter ;;
CREATE PROCEDURE `psSelectConCiplU`(`PidUsuaConpay` INT)
BEGIN
	SELECT COUNT(usuario.clienidpaypal)AS contador FROM usuario WHERE usuario.idUsuario= PidUsuaConpay;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectUsuarioEmail
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectUsuarioEmail`;
delimiter ;;
CREATE PROCEDURE `psSelectUsuarioEmail`(`pEmailUsu` VARCHAR(245),`pPassUsu` VARCHAR(100))
BEGIN
	#Routine body goes here...
		SELECT 
			idUsuario,
			emailUsuario,
			nombreUsuario,
			apellido1Usuario,
			imagenUsuario,
			telefonoUsuario,
			contraUsuario,
			codeActive
		FROM 
			usuario 
		WHERE 
			emailUsuario = pEmailUsu;		
	ROLLBACK;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateDaFa
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateDaFa`;
delimiter ;;
CREATE PROCEDURE `psUpdateDaFa`(`PidUsuario` INT)
BEGIN 
SELECT usuario.idUsuario,
usuario.apellido2Usuario,
usuario.direccionUsuario,
usuario.codigoPostalUsuario,
usuario.telefonoUsuario,
usuario.rfeUsuario,
usuario.fechaNacimiento 
FROM usuario WHERE usuario.idUsuario = PidUsuario AND usuario.statusUsuario ='1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateImagenP
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateImagenP`;
delimiter ;;
CREATE PROCEDURE `psUpdateImagenP`(`PidUser` INT, `PimagenPro` VARCHAR(245))
BEGIN 
UPDATE usuario SET usuario.imagenusuario = PimagenPro
WHERE usuario.idUsuario= PidUser AND usuario.statusUsuario = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateStatusUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateStatusUser`;
delimiter ;;
CREATE PROCEDURE `psUpdateStatusUser`(`pIdUser` INT)
BEGIN
    UPDATE usuario SET
    usuario.statusUsuario = 0
    WHERE idUsuario = pIdUser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateStockProductSelled
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateStockProductSelled`;
delimiter ;;
CREATE PROCEDURE `psUpdateStockProductSelled`(`pIdProductoCarrito` INT,`pidProducto` INT,`pCantidadSelled` FLOAT)
BEGIN
   UPDATE productocarrito SET statusProductoCarrito="0" WHERE productocarrito.idproductocarrito=pIdProductoCarrito;

   UPDATE producto SET stockRealProducto = stockRealProducto - PcantidadSelled WHERE producto.idProducto=PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateUsuarioT
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateUsuarioT`;
delimiter ;;
CREATE PROCEDURE `psUpdateUsuarioT`(`PnombreUAct` VARCHAR(200), `Papellido1UAct` VARCHAR(150), `Papellido2UAct` VARCHAR(150), `PcontraUAct` VARCHAR(16), `PconfirmcontraUAct` VARCHAR(16), `PtelUAct` VARCHAR(15), `PrfcUAct` VARCHAR(13), `PfechaUAct` DATE, `PidUAct` INT)
BEGIN
	UPDATE usuario SET 
	usuario.nombreUsuario = PnombreUAct,
	usuario.apellido1Usuario = Papellido1UAct,
	usuario.apellido2Usuario = Papellido2UAct,
	usuario.contraUsuario = PcontraUAct,
	usuario.confirmaContraUsuario = PconfirmcontraUAct,
	usuario.telefonoUsuario = PtelUAct,
	usuario.rfeUsuario = PrfcUAct,
	usuario.fechaNacimiento = PfechaUAct
	WHERE usuario.idUsuario = PidUAct;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psValidacionActivoE
-- ----------------------------
DROP PROCEDURE IF EXISTS `psValidacionActivoE`;
delimiter ;;
CREATE PROCEDURE `psValidacionActivoE`(`Pcorreo` VARCHAR(245), `Pstatus` VARCHAR(1))
BEGIN 
SELECT * FROM usuario WHERE usuario.emailUsuario = Pcorreo AND usuario.statusUsuario = Pstatus;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
