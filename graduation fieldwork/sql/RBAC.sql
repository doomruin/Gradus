/*查找本应无效的RolePermission*/
#select * from RBAC_RolePermission where (PermissionId in (SELECT Id from RBAC_Permission where `Status` = 1)) AND `Status` = 0;
/*查找本应无效的UserRole*/
#select * from RBAC_UserRole WHERE (RoleId in (SELECT Id from RBAC_Role where `Status` = 1)) AND `Status` = 0;
/*查找本应无效的Manage*/
#select * from RBAC_Manage where (ReferenceId in (SELECT Id from RBAC_Role where `Status` = 1)) and ReferenceType = 1 and `Status` = 0;
#select * from RBAC_Manage where (ReferenceId in (SELECT Id from RBAC_Permission where `Status` = 1)) and ReferenceType = 2 and `Status` = 0;

/*处理本应无效的UserRole*/
#update RBAC_UserRole SET `Status` = 1 WHERE (RoleId in (SELECT Id from RBAC_Role where `Status` = 1)) AND `Status` = 0;
/*处理本应无效的RolePermission*/
#update RBAC_RolePermission SET `Status` = 1 where (PermissionId in (SELECT Id from RBAC_Permission where `Status` = 1)) AND `Status` = 0;
/*处理本应无效的Manage*/
#update RBAC_Manage SET `Status` = 1 where (ReferenceId in (SELECT Id from RBAC_Role where `Status` = 1)) and ReferenceType = 1 and `Status` = 0;
#update RBAC_Manage SET `Status` = 1 where (ReferenceId in (SELECT Id from RBAC_Permission where `Status` = 1)) and ReferenceType = 2 and `Status` = 0;