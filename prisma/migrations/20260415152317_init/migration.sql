-- CreateTable
CREATE TABLE `usuarios` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(100) NOT NULL,
    `correo` VARCHAR(150) NOT NULL,
    `contrasena` VARCHAR(255) NOT NULL,
    `creado_en` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `usuarios_correo_key`(`correo`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `especies` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_comun` VARCHAR(120) NOT NULL,
    `nombre_cientifico` VARCHAR(150) NOT NULL,
    `descripcion` TEXT NULL,

    UNIQUE INDEX `especies_nombre_cientifico_key`(`nombre_cientifico`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `avistamientos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fecha` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `ubicacion` VARCHAR(150) NOT NULL,
    `cantidad` INTEGER NOT NULL DEFAULT 1,
    `observacion` TEXT NULL,
    `especie_id` INTEGER NOT NULL,

    INDEX `idx_avistamientos_especie_id`(`especie_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `avistamientos` ADD CONSTRAINT `avistamientos_especie_id_fkey` FOREIGN KEY (`especie_id`) REFERENCES `especies`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
