-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `VICE_PRESIDENT`
--

DROP TABLE IF EXISTS `VICE_PRESIDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VICE_PRESIDENT` (
  `pName` varchar(45) NOT NULL,
  `vName` varchar(45) NOT NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`pName`,`vName`,`StartYear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VICE_PRESIDENT`
--

LOCK TABLES `VICE_PRESIDENT` WRITE;
/*!40000 ALTER TABLE `VICE_PRESIDENT` DISABLE KEYS */;
INSERT INTO `VICE_PRESIDENT` VALUES ('Abraham Lincoln','Andrew Johnson',1865,0),('Abraham Lincoln','Hannibal Hamlin',1861,1865),('Andrew Jackson','John C. Calhoun',1829,1832),('Andrew Jackson','Martin Van',1833,1837),('Andrew Jackson','None',1832,1833),('Andrew Johnson','None',1865,1869),('Barack Obama','Joe Biden',2009,2016),('Benjamin Harrison','Levi P. Morton',1889,1893),('Bill Clinton','Al Gore',1993,2001),('Calvin Coolidge','Charles Dawes',1925,1929),('Calvin Coolidge','None',1923,1925),('Chester Arthur','None',1881,1885),('Dwight D. Eisenhower','Richard Nixon',1953,1961),('Franklin D. Roosevelt','Harry S. Truman',1945,0),('Franklin D. Roosevelt','Henry A. Wallace',1941,1945),('Franklin D. Roosevelt','John Nance',1933,1941),('Franklin Pierce','None',1853,1857),('Franklin Pierce','William King',1853,0),('George Bush','Dan Quayle',1989,1993),('George W. Bush','Dick Cheney',2001,2009),('George Washington','John Adams',1789,1797),('Gerald Ford','Nelson Rockefeller',1974,1977),('Gerald Ford','None',1974,0),('Grover Cleveland','Adlai E. Stevenson',1893,1897),('Grover Cleveland','None',1885,1889),('Grover Cleveland','Thomas Hendricks',1885,0),('Harry S. Truman','Alben Barkley',1949,1953),('Harry S. Truman','None',1945,1949),('Herbert Hoover','Charles Curtis',1929,1933),('James A. Garfield','Chester Arthur',1881,0),('James Buchanan','John C. Breckinridge',1857,1861),('James K. Polk','George M. Dallas',1845,1849),('James Madison','Elbridge Gerry',1813,1814),('James Madison','George Clinton',1809,1812),('James Madison','None',1812,1813),('James Madison','None',1814,1817),('James Monroe','Daniel D. Tompkins',1817,1825),('Jimmy Carter','Walter Mondale',1977,1981),('John Adams','Thomas Jefferson',1797,1801),('John F. Kennedy','Lyndon B. Johnson',1961,1963),('John Quincy','John C. Calhoun',1825,1829),('John Tyler','None',1841,1845),('Lyndon B. Johnson','Hubert Humphrey',1965,1969),('Lyndon B. Johnson','None',1963,1965),('Martin Van','Richard M. Johnson',1837,1841),('Millard Fillmore','None',1850,1853),('Richard Nixon','Gerald Ford',1973,1974),('Richard Nixon','None',1973,0),('Richard Nixon','Spiro Agnew',1969,1973),('Ronald Reagan','George Bush',1981,1989),('Rutherford B. Hayes','William Wheeler',1877,1881),('Theodore Roosevelt','Charles Fairbanks',1905,1909),('Theodore Roosevelt','None',1901,1905),('Thomas Jefferson','Aaron Burr',1801,1805),('Thomas Jefferson','George Clinton',1805,1809),('Ulysses S. Grant','Henry Wilson',1873,1875),('Ulysses S. Grant','None',1875,1877),('Ulysses S. Grant','Schuyler Colfax',1869,1873),('Warren G. Harding','Calvin Coolidge',1921,1923),('William Henry','John Tyler',1841,0),('William Howard','James S. Sherman',1909,1912),('William Howard','None',1912,1913),('William McKinley','Garret Hobart',1897,1899),('William McKinley','None',1899,1901),('William McKinley','Theodore Roosevelt',1901,0),('Woodrow Wilson','Thomas R. Marshall',1913,1921),('Zachary Taylor','Millard Fillmore',1849,1850);
/*!40000 ALTER TABLE `VICE_PRESIDENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-06 19:49:49
