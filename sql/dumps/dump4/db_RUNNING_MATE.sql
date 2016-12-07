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
-- Table structure for table `RUNNING_MATE`
--

DROP TABLE IF EXISTS `RUNNING_MATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RUNNING_MATE` (
  `cName` varchar(45) NOT NULL,
  `rName` varchar(45) NOT NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`cName`,`rName`,`StartYear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RUNNING_MATE`
--

LOCK TABLES `RUNNING_MATE` WRITE;
/*!40000 ALTER TABLE `RUNNING_MATE` DISABLE KEYS */;
INSERT INTO `RUNNING_MATE` VALUES ('Abraham Lincoln','Andrew Johnson',1864,1868),('Abraham Lincoln','Hannibal Hamlin',1860,1864),('Adlai Stevenson II','Estes Kefauver',1956,1960),('Adlai Stevenson II','John Sparkman',1952,1956),('Al Gore','Joe Lieberman',2000,2004),('Al Smith','Joseph Robinson',1928,1932),('Alf Landon','Frank Knox',1936,1940),('Allan L. Benson','George Kirkpatrick',1916,1920),('Alson Streeter','Charles Cunningham',1888,1892),('Alton B. Parker','Henry G. Davis',1904,1908),('Andrew Jackson','John C. Calhoun',1824,1828),('Andrew Jackson','John C. Calhoun',1828,1832),('Andrew Jackson','Martin Van Buren',1832,1836),('Barack Obama','Joe Biden',2008,2012),('Barack Obama','Joe Biden',2012,2016),('Barry Goldwater','William E. Miller',1964,1968),('Benjamin F. Butler','Absolom M. West',1884,1888),('Benjamin Harrison','Levi P. Morton',1888,1892),('Benjamin Harrison','Whitelaw Reid',1892,1896),('Bill Clinton','Al Gore',1992,1996),('Bill Clinton','Al Gore',1996,2000),('Bob Dole','Jack Kemp',1996,2000),('Calvin Coolidge','Charles G. Dawes',1924,1928),('Charles Evans Hughes','Charles W. Fairbanks',1916,1920),('Charles Pinckney','Rufus King',1804,1808),('Charles Pinckney','Rufus King',1808,1812),('Clinton B. Fisk','John A. Brooks',1888,1892),('Daniel Webster','Francis Granger',1836,1840),('DeWitt Clinton','Jared Ingersoll',1812,1816),('Donald Trump','Mike Pence',2016,2020),('Dwight D. Eisenhower','Richard Nixon',1952,1956),('Dwight D. Eisenhower','Richard Nixon',1956,1960),('Ed Clark','David Koch',1980,1984),('Eugene V. Debs','Ben Hanford',1904,1908),('Eugene V. Debs','Ben Hanford',1908,1912),('Eugene V. Debs','Emil Seidel',1912,1916),('Eugene V. Debs','Seymour Stedman',1920,1924),('Eugene W. Chafin','Aaron S. Watkins',1908,1912),('Eugene W. Chafin','Aaron S. Watkins',1912,1916),('Frank Hanly','Ira Landrith',1916,1920),('Franklin D. Roosevelt','Harry Truman',1944,1948),('Franklin D. Roosevelt','Henry Wallace',1940,1944),('Franklin D. Roosevelt','John Garner',1932,1936),('Franklin D. Roosevelt','John Garner',1936,1940),('Franklin Pierce','William R. King',1852,1856),('Gary Johnson','William Weld',2016,2020),('George B. McClellan','George H. Pendleton',1864,1868),('George Bush','Dan Quayle',1988,1992),('George Bush','Dan Quayle',1992,1996),('George Clinton','James Monroe',1808,1812),('George McGovern','Sargent Shriver',1972,1976),('George W. Bush','Dick Cheney',2000,2004),('George W. Bush','Dick Cheney',2004,2008),('George Wallace','Curtis LeMay',1968,1972),('George Washington','John Adams',1789,1793),('George Washington','John Adams',1792,1796),('Gerald Ford','Bob Dole',1976,1980),('Grover Cleveland','Adlai Stevenson I',1892,1896),('Grover Cleveland','Allen G. Thurman',1888,1892),('Grover Cleveland','Thomas A. Hendricks',1884,1888),('Harry F. Byrd','Strom Thurmond',1960,1964),('Harry S. Truman','Alben Barkley',1948,1952),('Henry A. Wallace','Glen H. Taylor',1948,1952),('Henry Clay','John Sergeant',1832,1836),('Henry Clay','Nathan Sanford',1824,1828),('Henry Clay','Theodore Frelinghuysen',1844,1848),('Herbert Hoover','Charles Curtis',1928,1932),('Herbert Hoover','Charles Curtis',1932,1936),('Hillary Clinton','Tim Kaine',2016,2020),('Horace Greeley','Benjamin G. Brown',1872,1876),('Horatio Seymour','Francis Blair',1868,1872),('Hubert Humphrey','Edmund Muskie',1968,1972),('Hugh Lawson White','John Tyler',1836,1840),('James A. Garfield','Chester A. Arthur',1880,1884),('James B. Weaver','Barzillai Chambers',1880,1884),('James B. Weaver','James G. Field',1892,1896),('James Buchanan','John C. Breckinridge',1856,1860),('James G. Birney','Thomas Morris',1844,1848),('James G. Blaine','John A. Logan',1884,1888),('James K. Polk','George M. Dallas',1844,1848),('James M. Cox','Franklin Roosevelt',1920,1924),('James Madison','Elbridge Gerry',1812,1816),('James Madison','George Clinton',1808,1812),('James Monroe','Daniel D. Tompkins',1816,1820),('James Monroe','Daniel D. Tompkins',1820,1824),('James Monroe','None',1808,1812),('Jill Stein','Ajamu Baraka',2016,2020),('Jimmy Carter','Walter Mondale',1976,1980),('Jimmy Carter','Walter Mondale',1980,1984),('John Adams','Charles Pinckney',1800,1804),('John Adams','Thomas Pinckney',1796,1800),('John B. Anderson','Patrick Lucey',1980,1984),('John Bell','Edward Everett',1860,1864),('John Bidwell','James B. Cranfill',1892,1896),('John C. Breckinridge','Joseph Lane',1860,1864),('John C. Fremont','William L. Dayton',1856,1860),('John F. Kennedy','Lyndon Johnson',1960,1964),('John Floyd','Henry Lee',1832,1836),('John G. Schmitz','Thomas J. Anderson',1972,1976),('John G. Woolley','Henry B. Metcalf',1900,1904),('John Kerry','John Edwards',2004,2008),('John McCain','Sarah Palin',2008,2012),('John P. Hale','George W. Julian',1852,1856),('John Q. Adams','John C. Calhoun',1824,1828),('John Q. Adams','Richard Rush',1828,1832),('John St. John','William Daniel',1884,1888),('John W. Davis','Charles W. Bryan',1924,1928),('Lewis Cass','William Butler',1848,1852),('Lyndon B. Johnson','Hubert Humphrey',1964,1968),('Martin Van Buren','Charles F. Adams',1848,1852),('Martin Van Buren','None',1840,1844),('Martin Van Buren','Richard Johnson',1836,1840),('Michael Dukakis','Lloyd Bentsen',1988,1992),('Millard Fillmore','Andrew J. Donelson',1856,1860),('Mitt Romney','Paul Ryan',2012,2016),('Norman Thomas','James H. Maurer',1932,1936),('Ralph Nader','Winona LaDuke',2000,2004),('Richard M. Nixon','Henry Cabot Lodge Jr.',1960,1964),('Richard M. Nixon','Spiro Agnew',1968,1972),('Richard M. Nixon','Spiro Agnew',1972,1976),('Robert La Follette','Burton K. Wheeler',1924,1928),('Ronald Reagan','George H.W. Bush',1980,1984),('Ronald Reagan','George H.W. Bush',1984,1988),('Ross Perot','James Stockdale',1992,1996),('Ross Perot','Pat Choate',1996,2000),('Rufus King','John Howard',1816,1820),('Rufus King','William Davie',1812,1816),('Rutherford B. Hayes','William A. Wheeler',1876,1880),('Samuel Tilden','Thomas A. Hendricks',1876,1880),('Silas C. Swallow','George W. Carroll',1904,1908),('Stephen A. Douglas','Herschel V. Johnson',1860,1864),('Strom Thurmond','Fielding L. Wright',1948,1952),('Theodore Roosevelt','Charles W. Fairbanks',1904,1908),('Theodore Roosevelt','Hiram Johnson',1912,1916),('Thomas E. Dewey','Earl Warren',1948,1952),('Thomas E. Dewey','John W. Bricker',1944,1948),('Thomas Jefferson','Aaron Burr',1796,1800),('Thomas Jefferson','Aaron Burr',1800,1804),('Thomas Jefferson','George Clinton',1804,1808),('Ulysses S. Grant','Henry Wilson',1872,1876),('Ulysses S. Grant','Schuyler Colfax',1868,1872),('Walter Mondale','Geraldine Ferraro',1984,1988),('Warren G. Harding','Calvin Coolidge',1920,1924),('Wendell Willkie','Charles L. McNary',1940,1944),('William H. Crawford','Nathaniel Macon',1824,1828),('William H. Taft','James S. Sherman',1908,1912),('William H. Taft','James S. Sherman',1912,1916),('William Henry Harrison','Francis Granger',1836,1840),('William Henry Harrison','John Tyler',1840,1844),('William Jennings Bryan','Adlai Stevenson I',1900,1904),('William Jennings Bryan','Arthur Sewall',1896,1900),('William Jennings Bryan','John W. Kern',1908,1912),('William Lemke','Thomas C. OBrien',1936,1940),('William McKinley','Garret Hobart',1896,1900),('William McKinley','Theodore Roosevelt',1900,1904),('William Wirt','Amos Ellmaker',1832,1836),('Willie Mangum','John Tyler',1836,1840),('Winfield S. Hancock','William English',1880,1884),('Winfield Scott','William A. Graham',1852,1856),('Woodrow Wilson','Thomas R. Marshall',1912,1916),('Woodrow Wilson','Thomas R. Marshall',1916,1920),('Zachary Taylor','Millard Fillmore',1848,1852);
/*!40000 ALTER TABLE `RUNNING_MATE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-06 19:49:50
