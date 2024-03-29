﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/cWsgSk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Contacts` (
    `contact_id` int  NOT NULL ,
    `name` varchar(50)  NOT NULL ,
    `surname` varchar(50)  NOT NULL ,
    `email` varchar(100)  NOT NULL ,
    PRIMARY KEY (
        `contact_id`
    )
);

CREATE TABLE `Category` (
    `category_id` varchar  NOT NULL ,
    `category` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `category_id`
    )
);

CREATE TABLE `Sub_Category` (
    `subcategory_id` varchar(10)  NOT NULL ,
    `subcategory` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `subcategory_id`
    )
);

CREATE TABLE `Campaign` (
    `cf_id` int  NOT NULL ,
    `contact_id` int  NOT NULL ,
    `company` varchar(100)  NOT NULL ,
    `description` varchar(100)  NOT NULL ,
    `goal` float  NOT NULL ,
    `pledge` float  NOT NULL ,
    `outcome` varchar(20)  NOT NULL ,
    `backers` int  NOT NULL ,
    `country` varchar(20)  NOT NULL ,
    `currency` varchar(10)  NOT NULL ,
    `launch_date` varchar(20)  NOT NULL ,
    `end_date` varchar(20)  NOT NULL ,
    `catgory_id` varchar(10)  NOT NULL ,
    `subcategory_id` str  NOT NULL 
);

ALTER TABLE `Campaign` ADD CONSTRAINT `fk_Campaign_contact_id` FOREIGN KEY(`contact_id`)
REFERENCES `Contacts` (`contact_id`);

ALTER TABLE `Campaign` ADD CONSTRAINT `fk_Campaign_catgory_id` FOREIGN KEY(`catgory_id`)
REFERENCES `Category` (`category_id`);

ALTER TABLE `Campaign` ADD CONSTRAINT `fk_Campaign_subcategory_id` FOREIGN KEY(`subcategory_id`)
REFERENCES `Sub_Category` (`subcategory_id`);

