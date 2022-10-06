
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*
SET set's one of MySQL variables. Some of them are system variables some of them are user variables.

SQL_MODE is a system variables.

NO_AUTO_VALUE_ON_ZERO affects handling of AUTO_INCREMENT columns. Normally, you generate the next sequence number for the column by inserting either NULL or 0 into it.

SET time_zone = "+00:00" Sets the session timezone on UTC.

*/


/*
utf8_general_ci is a legacy collation that does not support expansions, contractions, or ignorable characters. It can make only one-to-one comparisons between characters.8
*/


CREATE TABLE IF NOT EXISTS ADMIN (
  id int(11) NOT NULL,
  UserName varchar(100) NOT NULL,
  Password varchar(100) NOT NULL,
  updationDate timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO ADMIN (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2022-05-26 12:22:38');





CREATE TABLE IF NOT EXISTS RESERVATION (
  id int(11) NOT NULL,
  userEmail varchar(100) DEFAULT NULL,
  VehicleId int(11) DEFAULT NULL,
  FromDate varchar(20) DEFAULT NULL,
  ToDate varchar(20) DEFAULT NULL,
  message varchar(255) DEFAULT NULL,
  Status int(11) DEFAULT NULL,
  PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO RESERVATION (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'sharifali0926@gmail.com', '1', '20/05/2022', '22/05/2022', 'booked', '2', '2022-05-31 21:04:57');

CREATE TABLE IF NOT EXISTS CARBRANDS (
  id int(11) NOT NULL,
  BrandName varchar(120) NOT NULL,
  CreationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO CARBRANDS (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2022-05-26 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2022-05-26 16:24:50', NULL),
(3, 'Audi', '2022-05-26 16:25:03', NULL),
(4, 'Nissan', '2022-05-26 16:25:13', NULL),
(5, 'Toyota', '2022-05-26 16:25:24', NULL),
(7, 'Marutiu', '2022-05-26 06:22:13', NULL),
(8, 'SUZUKI', '2022-05-28 23:49:58', NULL);




CREATE TABLE IF NOT EXISTS CONTACTUSINFO (
  id int(11) NOT NULL,
  Address tinytext,
  EmailId varchar(255) DEFAULT NULL,
  ContactNo char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO CONTACTUSINFO (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'PESHAWER HAYATABAD', 'P200130@pwr.nu.edu.pk', '03060985318');


CREATE TABLE IF NOT EXISTS CONTACTUSQUERY (
  id int(11) NOT NULL,
  name varchar(100) DEFAULT NULL,
  EmailId varchar(120) DEFAULT NULL,
  ContactNumber char(11) DEFAULT NULL,
  Message longtext,
  PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO CONTACTUSQUERY (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-05-18 10:03:07', 1),
(2, 'sharif', 'sharifali0926@gmail.com', '03060985318', 'HI HOW ARE I NEED HONDA CIVIC/', '2022-06-02 16:21:06', '1');





CREATE TABLE IF NOT EXISTS PAGES (
  id int(11) NOT NULL,
  PageName varchar(255) DEFAULT NULL,
  type varchar(255) NOT NULL DEFAULT '',
  detail longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


INSERT INTO PAGES (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', ' <p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#770000\"></font><br><br></strong><span style=\"font-size: large;\">SHARIF CAR RENTAL SERVICE</span><font size=\"2\">: Our company car policy describes our guidelines for using company cars. A “company car” is any type of vehicle our company assigns to employees to support their transportation needs for their jobs. Company cars belong to our company and we want to make sure our employees use them properly. </font></p>\r\n '),
(2, 'Privacy Policy', 'privacy', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">If employees are involved in an accident with a company car, they should contact our HR department immediately, so we can get in touch with our insurance provider. Employees shouldn’t accept responsibility or guarantee payment to another party in an accident without company authorization.

Employees should follow legal guidelines for exchanging information with other drivers and call local police if accidents are serious.</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"text-align: justify; font-size: large;\">SHARIF CAR RENTAL SERVICE</span><font size=\"2\" style=\"text-align: justify;\">: Our company car policy describes our guidelines for using company cars. A “company car” is any type of vehicle our company assigns to employees to support their transportation needs for their jobs. Company cars belong to our company and we want to make sure our employees use them properly.</font>'),
(4, 'FAQs', 'faqs', '<span style=\"text-align: justify; font-size: large;\">SHARIF CAR RENTAL SERVICE</span><font size=\"2\" style=\"text-align: justify;\">: Our company car policy describes our guidelines for using company cars. A “company car” is any type of vehicle our company assigns to employees to support their transportation needs for their jobs. Company cars belong to our company and we want to make sure our employees use them properly.</font>');



CREATE TABLE IF NOT EXISTS SUBSCRIBERS (
  id int(11) NOT NULL,
  SubscriberEmail varchar(120) DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO SUBSCRIBERS (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'P200130@pwr.nu.edu.ok', '2022-05-29 00:26:40'),
(2, 'P200119@PWR.NU.EDU.PK', '2022-06-02 16:38:20');

CREATE TABLE IF NOT EXISTS TESTIMONIAL(
  id int(11) NOT NULL,
  UserEmail varchar(100) NOT NULL,
  Testimonial mediumtext NOT NULL,
  PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO TESTIMONIAL (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2022-05-26 07:44:31', 1),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2022-05-26 07:46:05', 1);




CREATE TABLE IF NOT EXISTS CUSTOMERS (
  id int(11) NOT NULL,
  FullName varchar(120) DEFAULT NULL,
  EmailId varchar(100) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  ContactNo char(11) DEFAULT NULL,
  dob varchar(100) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(100) DEFAULT NULL,
  Country varchar(100) DEFAULT NULL,
  RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO CUSTOMERS (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(4, 'ALI', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'PKL', 'XYZ', 'XYZ', '2022-05-28 20:03:36', '2022-06-03 19:18:14'),
(5, 'sharif', 'sharifali0926@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '3060985318', NULL, NULL,  NULL,  NULL, '2022-05-28 19:07:59', NULL),
(6,'Taha Abbas','p200119@pwr.nu.edu.pk','ac812175fbea1db0550899be0d571eec','0300368911',NULL,NULL,NULL,NULL,'2022-06-03 12:36:51',NULL);
	



CREATE TABLE IF NOT EXISTS VEHICLES (
  id int(11) NOT NULL,
  VehiclesTitle varchar(150) DEFAULT NULL,
  VehiclesBrand int(11) DEFAULT NULL,
  VehiclesOverview longtext,
  PricePerDay int(11) DEFAULT NULL,
  FuelType varchar(100) DEFAULT NULL,
  ModelYear int(6) DEFAULT NULL,
  SeatingCapacity int(11) DEFAULT NULL,
  Vimage1 varchar(120) DEFAULT NULL,
  Vimage2 varchar(120) DEFAULT NULL,
  Vimage3 varchar(120) DEFAULT NULL,
  Vimage4 varchar(120) DEFAULT NULL,
  Vimage5 varchar(120) DEFAULT NULL,
  AirConditioner int(11) DEFAULT NULL,
  PowerDoorLocks int(11) DEFAULT NULL,
  AntiLockBrakingSystem int(11) DEFAULT NULL,
  BrakeAssist int(11) DEFAULT NULL,
  PowerSteering int(11) DEFAULT NULL,
  DriverAirbag int(11) DEFAULT NULL,
  PassengerAirbag int(11) DEFAULT NULL,
  PowerWindows int(11) DEFAULT NULL,
  CDPlayer int(11) DEFAULT NULL,
  CentralLocking int(11) DEFAULT NULL,
  CrashSensor int(11) DEFAULT NULL,
  LeatherSeats int(11) DEFAULT NULL,
  RegDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


INSERT INTO VEHICLES (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'SWIFT', '8', 'The Suzuki Swift began in 1983 as a marketing and manufacturing rebadge of the Suzuki Cultus, a supermini (or subcompact) manufactured and marketed worldwide across three generations and four body configurations—three-door hatchback, four-door sedan, five-door hatchback and two-door convertible—and using the Suzuki G engine family.\r\n\r\n', '4000', 'Petrol', '2015', '6', 'SUZUKI.png', 'SUZUKI1.jpeg', 'SUZUKI3.jpeg', 'SUZUKI4.jpeg', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2022-06-28 16:46:23', '2022-05-28 23:54:41'),
(2, 'ALTUS', '5', 'HI WELCOME TO SHARIF CAR RENTAL SERVICE', '5000', 'Petrol', '2022', '5', 'HONDA.png', 'HONDA1.jpeg', 'HONDA2.jpeg', 'HONDA2.png', 'HONDA4.jpeg', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2022-06-02 16:19:04', NULL),

(3, 'alto', '5', 'alto car', '200', 'Petrol', '2020', '5', 'BMW1.jpeg', 'BMW3.jpeg', 'BMW5.jpeg', 'HONDA2.png', '', '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-06-03 16:49:46', NULL);






ALTER TABLE ADMIN
  ADD PRIMARY KEY (id);


ALTER TABLE RESERVATION
  ADD PRIMARY KEY (id);


ALTER TABLE CARBRANDS
  ADD PRIMARY KEY (id);


ALTER TABLE CONTACTUSINFO
  ADD PRIMARY KEY (id);


ALTER TABLE CONTACTUSQUERY
  ADD PRIMARY KEY (id);


ALTER TABLE PAGES
  ADD PRIMARY KEY (id);


ALTER TABLE SUBSCRIBERS
  ADD PRIMARY KEY (id);


ALTER TABLE TESTIMONIAL
  ADD PRIMARY KEY (id);


ALTER TABLE CUSTOMERS
  ADD PRIMARY KEY (id);


ALTER TABLE VEHICLES
  ADD PRIMARY KEY (id);


ALTER TABLE ADMIN
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE RESERVATION
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;

ALTER TABLE CARBRANDS
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;

ALTER TABLE CONTACTUSINFO
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE CONTACTUSQUERY
  MODIFY id  int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE PAGES
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;

ALTER TABLE SUBSCRIBERS
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;

ALTER TABLE TESTIMONIAL
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;

ALTER TABLE CUSTOMERS
  MODIFY id  int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;

ALTER TABLE VEHICLES
  MODIFY id  int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;


	

	
	
	
