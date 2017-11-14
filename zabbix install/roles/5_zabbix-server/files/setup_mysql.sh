#! /bin/env bash


mysql –u root –p

create database zabbix character set utf8;

grant all privileges on zabbix.* to 'zabbix'@'localhost' identified by 'zabbix';

flush privileges;

use zabbix

source /usr/share/doc/zabbix-server-mysql-3.4.4/create.sql








