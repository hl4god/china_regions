SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS province;
CREATE TABLE province (
  _id            int,
  name           varchar(64),
  province_id      varchar(12),
  pinyin         varchar(64),
  PRIMARY KEY (_id)
);


DROP TABLE IF EXISTS city;
CREATE TABLE city (
  _id           int,
  name          varchar(64),
  city_id       varchar(12),
  province_id   varchar(12),
  pinyin       varchar(64),
  PRIMARY KEY (_id)
);


DROP TABLE IF EXISTS country;
CREATE TABLE country (
  _id  int,
  name varchar(64),
  country_id varchar(12),
  city_id varchar(12),
  pinyin   varchar(64),
  PRIMARY KEY (_id)
);


DROP TABLE IF EXISTS town;
CREATE TABLE town (
  _id  int,
  name varchar(64),
  town_id varchar(12),
  country_id varchar(12),
  pinyin   varchar(80),
  PRIMARY KEY (_id)
);


DROP TABLE IF EXISTS village;
CREATE TABLE village (
  _id  int,
  name varchar(64),
  village_id varchar(12),
  town_id varchar(12),
  PRIMARY KEY (_id)
);