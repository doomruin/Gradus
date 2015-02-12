ALTER TABLE DP_Account ADD Office1 VARCHAR(50) COMMENT '1号Office365邮箱';
ALTER TABLE DP_Account ADD Office1Status TINYINT COMMENT '1号Office365邮箱状态, 初始化 0, 激活 1, 暂停 2, 删除 3';
ALTER TABLE DP_Account ADD Office1LicenseType TINYINT COMMENT '1号Office365邮箱的许可类型,如果许可类型为E1，那么值为 0，如果许可类型为E3，那么值为 1';
ALTER TABLE DP_Account ADD Office2 VARCHAR(50) COMMENT '2号Office365邮箱';
ALTER TABLE DP_Account ADD Office2Status TINYINT COMMENT '2号Office365邮箱状态, 初始化 0, 激活 1, 暂停 2, 删除 3';
ALTER TABLE DP_Account ADD Office2LicenseType TINYINT COMMENT '2号Office365邮箱的许可类型,如果许可类型为E1，那么值为 0，如果许可类型为E3，那么值为 1';
ALTER TABLE DP_Account ADD Office2Type TINYINT COMMENT '2号Office邮箱的账号类型，别名为 0 ，物理邮箱 为 1';