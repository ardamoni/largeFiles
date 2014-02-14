-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2014 at 11:10 AM
-- Server version: 5.5.32
-- PHP Version: 5.5.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `revenue20`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_district`
--

CREATE TABLE IF NOT EXISTS `area_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `regionid` int(2) NOT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `boundary` mediumtext,
  `districtnameTCPD` varchar(100) DEFAULT NULL,
  `districtnameCoA` varchar(100) DEFAULT NULL,
  `coa_regionid` varchar(2) DEFAULT NULL,
  `coa_districtid` varchar(2) DEFAULT NULL,
  `coa_disttypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `districtid` (`districtid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

-- --------------------------------------------------------

--
-- Table structure for table `area_region`
--

CREATE TABLE IF NOT EXISTS `area_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regionid` int(2) NOT NULL,
  `region_name` varchar(100) NOT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `coa_regionid` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regionid` (`regionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `area_subdistrict`
--

CREATE TABLE IF NOT EXISTS `area_subdistrict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subdistrictid` int(6) DEFAULT NULL,
  `subdistrict_name` varchar(100) NOT NULL,
  `districtid` int(4) NOT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `coa-districtid` varchar(2) DEFAULT NULL,
  `coa-submetroid` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subdistrictid` (`subdistrictid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Table structure for table `area_zone`
--

CREATE TABLE IF NOT EXISTS `area_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneid` int(8) NOT NULL,
  `zone_name` varchar(100) NOT NULL,
  `subdistrictid` int(6) NOT NULL,
  `activestatus` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zoneid` (`zoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE IF NOT EXISTS `balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `balance_history`
--

CREATE TABLE IF NOT EXISTS `balance_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `business_details`
--

CREATE TABLE IF NOT EXISTS `business_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `subdistrictid` int(6) DEFAULT NULL,
  `zoneid` int(8) DEFAULT NULL,
  `locality_code` varchar(11) DEFAULT NULL,
  `da_no` varchar(30) DEFAULT NULL,
  `landmark1` varchar(50) DEFAULT NULL,
  `landmark2` varchar(50) DEFAULT NULL,
  `floor` int(2) DEFAULT NULL,
  `doornumber` int(4) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `business_name` varchar(50) DEFAULT NULL,
  `business_certif` varchar(30) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `date_established` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activity_status` int(2) DEFAULT NULL,
  `area_m2` float DEFAULT NULL,
  `nr_employees_code` int(11) DEFAULT NULL,
  `environment_impact_code` int(11) DEFAULT NULL,
  `fee_fixing_business_code` int(11) DEFAULT NULL,
  `business_temporary_construction_code` int(11) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9440 ;

-- --------------------------------------------------------

--
-- Table structure for table `business_details_history`
--

CREATE TABLE IF NOT EXISTS `business_details_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `subdistrictid` int(6) DEFAULT NULL,
  `zoneid` int(8) DEFAULT NULL,
  `locality_code` varchar(11) DEFAULT NULL,
  `da_no` varchar(30) DEFAULT NULL,
  `landmark1` varchar(50) DEFAULT NULL,
  `landmark2` varchar(50) DEFAULT NULL,
  `floor` int(2) DEFAULT NULL,
  `doornumber` int(4) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `business_name` varchar(50) DEFAULT NULL,
  `business_certif` varchar(30) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `date_established` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activity_status` int(2) DEFAULT NULL,
  `area_m2` float DEFAULT NULL,
  `nr_employees_code` int(11) DEFAULT NULL,
  `environment_impact_code` int(11) DEFAULT NULL,
  `fee_fixing_business_code` int(11) DEFAULT NULL,
  `business_temporary_construction_code` int(11) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9440 ;

-- --------------------------------------------------------

--
-- Table structure for table `collector_zones`
--

CREATE TABLE IF NOT EXISTS `collector_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) DEFAULT NULL,
  `subdistrictid` int(6) NOT NULL,
  `polygon` mediumtext,
  `username` varchar(30) DEFAULT NULL,
  `zone_colour` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `demand_notice_record`
--

CREATE TABLE IF NOT EXISTS `demand_notice_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district_investment`
--

CREATE TABLE IF NOT EXISTS `district_investment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) NOT NULL,
  `investmentid` varchar(50) NOT NULL,
  `investment_name` varchar(100) NOT NULL,
  `investment_value` float DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `ownerid` int(12) DEFAULT NULL,
  `clientid` int(12) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `lastentry_person` varchar(30) DEFAULT NULL,
  `lastentry_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district_investment_history`
--

CREATE TABLE IF NOT EXISTS `district_investment_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) NOT NULL,
  `investmentid` varchar(50) NOT NULL,
  `investment_name` varchar(100) NOT NULL,
  `investment_value` float DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `ownerid` int(12) DEFAULT NULL,
  `clientid` int(12) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `lastentry_person` varchar(30) DEFAULT NULL,
  `lastentry_date` date DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district_land`
--

CREATE TABLE IF NOT EXISTS `district_land` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `upn` varchar(13) NOT NULL,
  `landid` varchar(50) NOT NULL,
  `land_name` varchar(100) NOT NULL,
  `land_value` float DEFAULT NULL,
  `assessed` int(11) DEFAULT NULL,
  `contractid` varchar(50) DEFAULT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `contract_value` float DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `ownerid` int(11) NOT NULL,
  `clientid` int(11) DEFAULT NULL,
  `fee_fixing_land_code` int(11) NOT NULL,
  `fee_fixing_property_code` int(11) NOT NULL,
  `fee_fixing_business_code` int(11) NOT NULL,
  `area_m2` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district_land_history`
--

CREATE TABLE IF NOT EXISTS `district_land_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `upn` varchar(13) NOT NULL,
  `landid` varchar(50) NOT NULL,
  `land_name` varchar(100) NOT NULL,
  `land_value` float DEFAULT NULL,
  `assessed` int(11) DEFAULT NULL,
  `contractid` varchar(50) DEFAULT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `contract_value` float DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `ownerid` int(11) NOT NULL,
  `clientid` int(11) DEFAULT NULL,
  `fee_fixing_land_code` int(11) NOT NULL,
  `fee_fixing_property_code` int(11) NOT NULL,
  `fee_fixing_business_code` int(11) NOT NULL,
  `area_m2` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district_rent`
--

CREATE TABLE IF NOT EXISTS `district_rent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) NOT NULL,
  `town` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `doornumber` varchar(30) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `locality_code` varchar(15) DEFAULT NULL,
  `landmark1` varchar(50) DEFAULT NULL,
  `landmark2` varchar(50) DEFAULT NULL,
  `rent_value` float DEFAULT NULL,
  `assessed` int(11) DEFAULT NULL,
  `contractid` varchar(50) DEFAULT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `contract_value` float DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `fee_fixing_rent_code` int(11) NOT NULL,
  `fee_fixing_business_code` int(11) NOT NULL,
  `area_m2` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upn` (`upn`,`subupn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district_rent_history`
--

CREATE TABLE IF NOT EXISTS `district_rent_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) NOT NULL,
  `town` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `doornumber` varchar(30) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `locality_code` varchar(15) DEFAULT NULL,
  `landmark1` varchar(50) DEFAULT NULL,
  `landmark2` varchar(50) DEFAULT NULL,
  `rent_value` float DEFAULT NULL,
  `assessed` int(11) DEFAULT NULL,
  `contractid` varchar(50) DEFAULT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `contract_value` float DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `fee_fixing_rent_code` int(11) NOT NULL,
  `fee_fixing_business_code` int(11) NOT NULL,
  `area_m2` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upn` (`upn`,`subupn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `due`
--

CREATE TABLE IF NOT EXISTS `due` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22596 ;

-- --------------------------------------------------------

--
-- Table structure for table `due_history`
--

CREATE TABLE IF NOT EXISTS `due_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_fines`
--

CREATE TABLE IF NOT EXISTS `fees_fines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) DEFAULT NULL,
  `code` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `value` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `year` int(5) NOT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_fines_guidelines`
--

CREATE TABLE IF NOT EXISTS `fees_fines_guidelines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) DEFAULT NULL,
  `code` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `value1` float DEFAULT NULL,
  `value2` float DEFAULT NULL,
  `value3` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_fixing_business`
--

CREATE TABLE IF NOT EXISTS `fee_fixing_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `year` int(5) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2744 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_fixing_guidelines`
--

CREATE TABLE IF NOT EXISTS `fee_fixing_guidelines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `revenue_item_code` int(4) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `value1` float DEFAULT NULL,
  `value2` float DEFAULT NULL,
  `value3` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_fixing_investment`
--

CREATE TABLE IF NOT EXISTS `fee_fixing_investment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `value` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `year` int(5) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_fixing_land`
--

CREATE TABLE IF NOT EXISTS `fee_fixing_land` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `value` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `year` int(5) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_fixing_property`
--

CREATE TABLE IF NOT EXISTS `fee_fixing_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `value` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `year` int(5) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=303 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_fixing_rent`
--

CREATE TABLE IF NOT EXISTS `fee_fixing_rent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtid` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `value` float DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `year` int(5) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_activity_status`
--

CREATE TABLE IF NOT EXISTS `hlp_activity_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(2) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_area_district_type`
--

CREATE TABLE IF NOT EXISTS `hlp_area_district_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_business_environment_impact`
--

CREATE TABLE IF NOT EXISTS `hlp_business_environment_impact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_business_temporary_construction`
--

CREATE TABLE IF NOT EXISTS `hlp_business_temporary_construction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_owners_clients`
--

CREATE TABLE IF NOT EXISTS `hlp_owners_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `tel3` varchar(15) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `email3` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9440 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_property_construction_material`
--

CREATE TABLE IF NOT EXISTS `hlp_property_construction_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_property_ownership`
--

CREATE TABLE IF NOT EXISTS `hlp_property_ownership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_property_roofing`
--

CREATE TABLE IF NOT EXISTS `hlp_property_roofing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_property_type`
--

CREATE TABLE IF NOT EXISTS `hlp_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_revenue_items`
--

CREATE TABLE IF NOT EXISTS `hlp_revenue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(4) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `hlp_unit`
--

CREATE TABLE IF NOT EXISTS `hlp_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kml_district_boundary_tcpd`
--

CREATE TABLE IF NOT EXISTS `kml_district_boundary_tcpd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boundary` mediumtext,
  `regionid` int(2) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `districtname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=217 ;

-- --------------------------------------------------------

--
-- Table structure for table `kml_parcel_boundary_tcpd`
--

CREATE TABLE IF NOT EXISTS `kml_parcel_boundary_tcpd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boundary` mediumtext,
  `lupmis_color` varchar(20) DEFAULT NULL,
  `upn` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `landuse` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `parcelOf` varchar(50) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upn` (`upn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34104 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_value` float DEFAULT NULL,
  `instalments` int(2) DEFAULT NULL,
  `instalment_order` int(2) DEFAULT NULL,
  `station_payment` varchar(20) DEFAULT NULL,
  `receipt_payment` varchar(30) DEFAULT NULL,
  `type_payment` varchar(30) DEFAULT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `paid_for` varchar(50) DEFAULT NULL,
  `demand_notice_no` varchar(30) DEFAULT NULL,
  `demand_notice_sent` date DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE IF NOT EXISTS `payment_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_value` float DEFAULT NULL,
  `instalments` int(2) DEFAULT NULL,
  `instalment_order` int(2) DEFAULT NULL,
  `station_payment` varchar(20) DEFAULT NULL,
  `receipt_payment` varchar(30) DEFAULT NULL,
  `type_payment` varchar(30) DEFAULT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `paid_for` varchar(50) DEFAULT NULL,
  `demand_notice_no` varchar(30) DEFAULT NULL,
  `demand_notice_sent` date DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `property_details`
--

CREATE TABLE IF NOT EXISTS `property_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `subdistrictid` int(6) DEFAULT NULL,
  `zoneid` int(8) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `doornumber` varchar(30) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `locality_code` varchar(15) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `nr_rooms` int(11) DEFAULT NULL,
  `year_completed` int(11) DEFAULT NULL,
  `property_type_code` int(11) DEFAULT NULL,
  `property_use_code` int(11) DEFAULT NULL,
  `nr_persons` int(11) DEFAULT NULL,
  `roofing_type_code` int(11) DEFAULT NULL,
  `ownership_type_code` int(11) DEFAULT NULL,
  `constr_material_type_code` int(11) DEFAULT NULL,
  `nr_storeys` int(11) DEFAULT NULL,
  `planningpermit` int(1) DEFAULT NULL,
  `buildingpermit` int(1) DEFAULT NULL,
  `fee_fixing_property_code` int(11) DEFAULT NULL,
  `area_m2` float DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `value_prop` float DEFAULT NULL,
  `assessed` int(11) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upn` (`upn`,`subupn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20530 ;

-- --------------------------------------------------------

--
-- Table structure for table `property_details_history`
--

CREATE TABLE IF NOT EXISTS `property_details_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `upn` varchar(13) NOT NULL,
  `subupn` varchar(20) DEFAULT NULL,
  `districtid` int(4) DEFAULT NULL,
  `subdistrictid` int(6) DEFAULT NULL,
  `zoneid` int(8) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `doornumber` varchar(30) DEFAULT NULL,
  `streetname` varchar(50) DEFAULT NULL,
  `locality_code` varchar(15) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `nr_rooms` int(11) DEFAULT NULL,
  `year_completed` int(11) DEFAULT NULL,
  `property_type_code` int(11) DEFAULT NULL,
  `property_use_code` int(11) DEFAULT NULL,
  `nr_persons` int(11) DEFAULT NULL,
  `roofing_type_code` int(11) DEFAULT NULL,
  `ownership_type_code` int(11) DEFAULT NULL,
  `constr_material_type_code` int(11) DEFAULT NULL,
  `nr_storeys` int(11) DEFAULT NULL,
  `planningpermit` int(1) DEFAULT NULL,
  `buildingpermit` int(1) DEFAULT NULL,
  `fee_fixing_property_code` int(11) DEFAULT NULL,
  `area_m2` float DEFAULT NULL,
  `activestatus` int(2) DEFAULT NULL,
  `value_prop` float DEFAULT NULL,
  `assessed` int(11) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `modification_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upn` (`upn`,`subupn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE IF NOT EXISTS `system_config` (
  `variable` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  UNIQUE KEY `variable` (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_labels`
--

CREATE TABLE IF NOT EXISTS `system_labels` (
  `id` varchar(50) NOT NULL,
  `lang` int(1) NOT NULL,
  `label` varchar(500) NOT NULL,
  `info` text,
  `error` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` varchar(50) NOT NULL,
  `starting` varchar(50) NOT NULL,
  `ending` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_roles`
--

CREATE TABLE IF NOT EXISTS `usr_roles` (
  `id` int(3) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_users`
--

CREATE TABLE IF NOT EXISTS `usr_users` (
  `username` varchar(30) NOT NULL,
  `pass` varchar(40) NOT NULL DEFAULT '670b14728ad9902aecba32e22fa4f6bd',
  `adminpass` varchar(40) NOT NULL DEFAULT '04fc711301f3c784d66955d98d399afb',
  `masterpass` varchar(40) NOT NULL DEFAULT '04fc711301f3c784d66955d98d399afb',
  `title` varchar(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `baselanguage` int(1) DEFAULT '0',
  `activestatus` int(2) DEFAULT NULL,
  `loged` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_user_district`
--

CREATE TABLE IF NOT EXISTS `usr_user_district` (
  `username` varchar(30) NOT NULL,
  `regionid` int(2) NOT NULL,
  `districtid` int(4) NOT NULL,
  KEY `username` (`username`,`districtid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_user_logs`
--

CREATE TABLE IF NOT EXISTS `usr_user_logs` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `activity` varchar(5) NOT NULL,
  `time` varchar(20) NOT NULL,
  `comments` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usr_user_region`
--

CREATE TABLE IF NOT EXISTS `usr_user_region` (
  `username` varchar(30) NOT NULL,
  `regionid` int(2) NOT NULL,
  KEY `username` (`username`,`regionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_user_role`
--

CREATE TABLE IF NOT EXISTS `usr_user_role` (
  `username` varchar(30) NOT NULL,
  `roleid` int(3) NOT NULL,
  KEY `username` (`username`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_user_subdistrict`
--

CREATE TABLE IF NOT EXISTS `usr_user_subdistrict` (
  `username` varchar(30) NOT NULL,
  `regionid` int(2) NOT NULL,
  `districtid` int(4) NOT NULL,
  `subdistrictid` int(6) NOT NULL,
  KEY `username` (`username`,`subdistrictid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_user_zone`
--

CREATE TABLE IF NOT EXISTS `usr_user_zone` (
  `username` varchar(30) NOT NULL,
  `regionid` int(2) NOT NULL,
  `districtid` int(4) NOT NULL,
  `subdistrictid` int(6) NOT NULL,
  `zoneid` int(8) NOT NULL,
  KEY `username` (`username`,`zoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
