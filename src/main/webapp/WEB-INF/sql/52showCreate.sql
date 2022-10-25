CREATE DATABASE mydb4;
USE mydb4;
SHOW CREATE TABLE Movie; -- 내가 만든 테이블 확인할때
CREATE TABLE `Movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT '0',
  `releaseDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3; -- copt field로 붙여서 만들어진 코드 보기

SHOW CREATE TABLE Director;
CREATE TABLE `Director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SHOW CREATE TABLE Movie_has_Director;
CREATE TABLE `Movie_has_Director` (
  `MovieId` int(11) NOT NULL,
  `DirectorId` int(11) NOT NULL,
  PRIMARY KEY (`MovieId`,`DirectorId`),
  KEY `fk_Movie_has_Director_Director1_idx` (`DirectorId`),
  KEY `fk_Movie_has_Director_Movie_idx` (`MovieId`),
  CONSTRAINT `fk_Movie_has_Director_Director1` FOREIGN KEY (`DirectorId`) REFERENCES `Director` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movie_has_Director_Movie` FOREIGN KEY (`MovieId`) REFERENCES `Movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SHOW CREATE TABLE Movie;

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT '0',
  `releaseDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3