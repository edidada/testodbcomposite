/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `person_name_extras_aliases`;

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `email_recipient` VARCHAR(255) NOT NULL,
  `email_domain` VARCHAR(255) NOT NULL,
  `name_first` TEXT NOT NULL,
  `name_last` TEXT NOT NULL,
  `name_title` TEXT NOT NULL,
  `name_extras_nickname` TEXT NOT NULL,
  `phone_first` TEXT NOT NULL,
  `phone_second` TEXT NOT NULL,
  PRIMARY KEY (`email_recipient`,
               `email_domain`))
 ENGINE=InnoDB;

CREATE TABLE `person_name_extras_aliases` (
  `object_id_recipient` VARCHAR(255) NOT NULL,
  `object_id_domain` VARCHAR(255) NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value_first` TEXT NOT NULL,
  `value_last` TEXT NOT NULL,
  CONSTRAINT `person_name_extras_aliases_object_id_fk`
    FOREIGN KEY (`object_id_recipient`,
                 `object_id_domain`)
    REFERENCES `person` (`email_recipient`,
                         `email_domain`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `person_name_extras_aliases` (
    `object_id_recipient`,
    `object_id_domain`);

CREATE INDEX `index_i`
  ON `person_name_extras_aliases` (`index`);

