/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.1.32-community : Database - project_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project_db`;

/*Table structure for table `chat_tb` */

DROP TABLE IF EXISTS `chat_tb`;

CREATE TABLE `chat_tb` (
  `Chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `From_id` int(11) DEFAULT NULL,
  `To_id` int(11) DEFAULT NULL,
  `Chat` varchar(80) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  PRIMARY KEY (`Chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_tb` */

/*Table structure for table `feedback_tb` */

DROP TABLE IF EXISTS `feedback_tb`;

CREATE TABLE `feedback_tb` (
  `Feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(30) DEFAULT NULL,
  `Feedback` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Feed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `feedback_tb` */

insert  into `feedback_tb`(`Feed_id`,`User_name`,`Feedback`,`Date`) values 
(1,'Minnu','good,need to improve','2019-03-05'),
(2,'Anjali','super','2019-03-12');

/*Table structure for table `friends_tb` */

DROP TABLE IF EXISTS `friends_tb`;

CREATE TABLE `friends_tb` (
  `Req_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Friend_id` int(11) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends_tb` */

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `img_id` int(11) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gallery` */

/*Table structure for table `login_tb` */

DROP TABLE IF EXISTS `login_tb`;

CREATE TABLE `login_tb` (
  `Login_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login_tb` */

insert  into `login_tb`(`Login_id`,`User_name`,`Password`,`Type`) values 
(0,'Admin','admin','admin'),
(1,'Minnu','minnu123','user'),
(2,'Anjali','anju@2','user'),
(3,'Amru','amru111','blocked'),
(4,'Diljith','dil222','blocked');

/*Table structure for table `notification_tb` */

DROP TABLE IF EXISTS `notification_tb`;

CREATE TABLE `notification_tb` (
  `N_id` int(11) NOT NULL AUTO_INCREMENT,
  `Notification` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  PRIMARY KEY (`N_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notification_tb` */

/*Table structure for table `post_tb` */

DROP TABLE IF EXISTS `post_tb`;

CREATE TABLE `post_tb` (
  `Post_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Image` varchar(40) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post_tb` */

/*Table structure for table `reg_tb` */

DROP TABLE IF EXISTS `reg_tb`;

CREATE TABLE `reg_tb` (
  `U_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `photo` varchar(80) DEFAULT NULL,
  `Face_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `reg_tb` */

insert  into `reg_tb`(`U_id`,`Name`,`Address`,`Gender`,`Age`,`DOB`,`Email`,`Mobile`,`photo`,`Face_id`) values 
(1,'Minnu','raroth','Female',23,'23/7/1995','minnu@gmail.com',9087654321,'C:\\Users\\lenovo\\Pictures',1),
(2,'Anjali','Pootholi','Female',22,'24/3/1996','anju@gmail.com',9946982684,'C:\\Users\\lenovo\\Pictures',2),
(3,'Amru','krishnaa','Female',21,'23/7/1997','amru@gmail.com',8099765432,'C:\\Users\\lenovo\\Pictures',3),
(4,'Dijith','madathil','Male',25,'11/10/1993','Diljith123@gmail.com',9088675422,'C:\\Users\\lenovo\\Pictures',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
