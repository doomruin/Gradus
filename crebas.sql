/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/11/14 16:10:23                          */
/*==============================================================*/


drop table if exists DoubanMovie;

/*==============================================================*/
/* Table: DoubanMovie                                           */
/*==============================================================*/
create table DoubanMovie
(
   id                   int not null auto_increment,
   doubanId             int,
   rate                 float,
   reviewCount          int,
   title                varchar(50),
   originalTitle        varchar(50),
   info                 varchar(500),
   summary              varchar(800),
   primary key (id)
);

