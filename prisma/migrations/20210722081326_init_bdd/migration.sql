-- CreateTable
CREATE TABLE `projects` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `logo` VARCHAR(500),
    `title` VARCHAR(50) NOT NULL,
    `date` VARCHAR(255) NOT NULL,
    `description` VARCHAR(500) NOT NULL,
    `picture` VARCHAR(500),

    UNIQUE INDEX `projects.description_unique`(`description`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tag` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nameTag` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `tag.nameTag_unique`(`nameTag`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tagProjects` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tagId` INTEGER NOT NULL,
    `projetcsId` INTEGER NOT NULL,

    UNIQUE INDEX `tagProjects.projetcsId_unique`(`projetcsId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tagProjects` ADD FOREIGN KEY (`tagId`) REFERENCES `tag`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tagProjects` ADD FOREIGN KEY (`projetcsId`) REFERENCES `projects`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
