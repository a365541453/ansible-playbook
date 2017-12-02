#! /bin/env bash
mysql -u root -e'
create database zabbix character set utf8;
use zabbix;
grant all privileges on zabbix.* to "zabbix"@"%" IDENTIFIED BY "zabbix";
use mysql;
delete from user where user=" ";
flush privileges;
use zabbix;
source /usr/share/doc/zabbix-server-mysql-3.4.4/create.sql'