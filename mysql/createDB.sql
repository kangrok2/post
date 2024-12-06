alter user 'root'@'localhost' identified by 'root';
alter user 'root'@'%' identified by 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
alter USER 'root'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'root';
FLUSH PRIVILEGES;
DROP DATABASE IF EXISTS pratice_board;
create database pratice_board;
use pratice_board;

CREATE TABLE post (
  `num` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(50) NOT NULL,
  `writer` VARCHAR(50) NOT NULL,
  `content` TEXT NOT NULL,
  `reg_date` DATETIME NOT NULL
  );