/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/6/6 15:31:53                            */
/*==============================================================*/
create database mall;
use mall;
SET NAMES utf8;

drop table if exists tb_goods;

drop table if exists tb_goodstype;

/*==============================================================*/
/* Table: tb_goods                                              */
/*==============================================================*/
create table tb_goods
(
   id                   int not null auto_increment,
   name                 varchar(32),
   typeid               int,
   price                double,
   count                int,
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: tb_goodstype                                          */
/*==============================================================*/
create table tb_goodstype
(
   id                   int not null auto_increment,
   name                 varchar(64),
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table tb_goods add constraint FK_Reference_1 foreign key (typeid)
      references tb_goodstype (id) on delete restrict on update restrict;

