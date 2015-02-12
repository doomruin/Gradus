
create table EP_GiftDeclare_Confirm
(
   Id                   int not null auto_increment comment '自增主键',
   LoginId              int comment '用户的loginId',
   AddTime              datetime comment '记录新增时间',
   UpdateTime           datetime comment '记录更新时间',
   primary key (Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '存放阳光平台用户确认记录';

