/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/7/31 14:21:47                           */
/*==============================================================*/


drop table if exists EMD_Employee_Organization;

drop table if exists EMD_Employee_Personal;

drop table if exists EMD_Organization;

drop table if exists EMD_Organization_Map;

/*==============================================================*/
/* Table: EMD_Employee_Organization                             */
/*==============================================================*/
create table EMD_Employee_Organization
(
   Id                   int not null auto_increment comment '自增主键',
   EmployeeId           varchar(16) not null comment '工号',
   DPPassport           varchar(20) not null comment '点评通行证',
   Email                varchar(50) comment '公司邮箱',
   ManagerId            varchar(16) not null comment '上司工号',
   ManagerLoginId       int not null comment '上司LoginID',
   DepartmentId         int not null comment '部门ID',
   CityId               int not null comment '城市ID',
   EmployeeType         int not null comment '员工类型',
   IsSales              int not null comment '是否销售',
   Status               int not null comment '在职状态',
   EntryDate            datetime not null comment '入职日期',
   LeaveDate            datetime comment '离职日期',
   OfficeExtNo          varchar(20) comment '分机号',
   JobGrade             varchar(10) not null comment '职级',
   Seat                 varchar(100) comment '座位',
   AddTime              datetime not null,
   UpdateTime           datetime not null,
   primary key (Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '员工组织信息';



/*==============================================================*/
/* Table: EMD_Employee_Personal                                 */
/*==============================================================*/
create table EMD_Employee_Personal
(
   Id                   int not null auto_increment comment '自增主键',
   EmployeeId           varchar(16) not null comment '工号',
   LoginId              int not null comment 'LoginID',
   Name                 varchar(50) not null comment '中文姓名',
   PinYinXing           varchar(50) comment '拼音姓',
   PinYinMing           varchar(50) comment '拼音名',
   PinYinName           varchar(50) comment '拼音姓名',
   EnglishName          varchar(50) comment '英文姓名',
   Gender               int comment '性别',
   Birthday             datetime comment '生日',
   MobileNo             varchar(16) comment '手机',
   AddTime              datetime comment '新增记录时间',
   UpdateTime           datetime comment '更新记录时间',
   primary key (Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '员工个人信息';

/*==============================================================*/
/* Table: EMD_Organization                                      */
/*==============================================================*/
create table EMD_Organization
(
   Id                   int not null auto_increment comment '自增主键',
   OrganizationId       int not null comment '组织ID',
   OrganizationName     varchar(50) not null comment '组织名称',
   Inactive             int not null comment '失效（0-失效，1-有效）',
   Manager              varchar(10) comment '管理者工号',
   ManagerLoginId       int comment '管理者loginId',
   SuperiorOrganization int comment '上级组织',
   CostCenter           varchar(10) comment '成本中心',
   Level                int comment '级别（计算字段）',
   AddTime              datetime not null,
   UpdateTime           datetime not null,
   primary key (Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '组织信息表';

/*==============================================================*/
/* Table: EMD_Organization_Map                                  */
/*==============================================================*/
create table EMD_Organization_Map
(
   Id                   int not null auto_increment comment '自增主键',
   OrganizationId       int not null comment '组织ID',
   SysDepartmentId      int comment '原SYS生成的部门ID',
   AddTime              datetime not null,
   UpdateTime           datetime not null,
   primary key (Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '映射SYS中部门ID';

