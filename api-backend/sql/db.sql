-- 接口信息
use my_db;
create table if not exists my_db.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestHeader` text null comment '请求头',
    `responseHeader` varchar(256) null comment '响应头',
    `status` int default 0 not null comment '接口状态(0 - 关闭 1 - 开启)',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDeleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
    ) comment '接口信息';

insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('吴君浩', '邹浩', 'www.audra-kilback.biz', '韩瑾瑜', '冯展鹏', 0, '邵绍齐', 553682063);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邱浩', '田鑫磊', 'www.alberto-hackett.net', '覃远航', '秦智渊', 0, '周胤祥', 616567);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('范弘文', '钟鹏飞', 'www.kathlyn-renner.name', '姚天磊', '许泽洋', 0, '莫建辉', 690388359);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('朱思远', '金思聪', 'www.yvette-howe.io', '魏越彬', '吕智渊', 0, '田明辉', 74);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('贺明哲', '周立轩', 'www.elden-murray.info', '万子轩', '姚黎昕', 0, '郭明杰', 9);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('董驰', '周志泽', 'www.shin-harris.name', '周泽洋', '毛苑博', 0, '廖健雄', 8671);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('崔明', '崔致远', 'www.micheline-abshire.info', '阎煜城', '秦立轩', 0, '陶智辉', 150);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('朱黎昕', '朱烨磊', 'www.sheron-dickinson.com', '崔立辉', '许昊天', 0, '谢耀杰', 4);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('莫子骞', '史文轩', 'www.sharice-trantow.co', '崔昊焱', '沈越彬', 0, '彭峻熙', 515);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('赵煜祺', '史鑫鹏', 'www.adan-carroll.biz', '黎浩', '邵俊驰', 0, '唐楷瑞', 58130);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('周晋鹏', '姜烨霖', 'www.irena-pollich.org', '熊炎彬', '雷彬', 0, '高炎彬', 9112648349);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邓立轩', '邵鑫磊', 'www.wendell-huel.co', '刘苑博', '段弘文', 0, '唐雨泽', 315880);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('侯思淼', '彭烨华', 'www.rossie-windler.biz', '邵晟睿', '尹思淼', 0, '彭浩然', 17103);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('丁鑫磊', '万文', 'www.teena-russel.biz', '薛鑫鹏', '龚思源', 0, '韩雪松', 849725559);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('夏瑞霖', '吕煜城', 'www.annetta-denesik.io', '郝文昊', '崔皓轩', 0, '赵明轩', 551742);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('潘正豪', '杜浩宇', 'www.concepcion-bruen.org', '董雨泽', '贾烨霖', 0, '雷懿轩', 9346811795);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('张昊天', '李煜城', 'www.junior-schuster.info', '阎立果', '黎雨泽', 0, '陈弘文', 337998);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('杜明轩', '郭昊天', 'www.jarred-bartell.com', '郑思', '钟泽洋', 0, '孟思淼', 393133854);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('刘金鑫', '傅果', 'www.chantay-reichert.co', '孟浩然', '于伟诚', 0, '段伟泽', 978563);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('丁鑫磊', '高明辉', 'www.vaughn-boyle.info', '陶雨泽', '丁绍齐', 0, '钱烨霖', 534494);

create table if not exists my_db.`user_interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `userId` bigint not null comment '调用用户 id ',
    `interfaceInfoId` bigint not null comment '接口 id ',
    `totalNum` int default 0 not null comment '总调用次数',
    `leftNum` int default 0 not null comment '剩余调用次数',
    `status` int default 0 not null comment '0-正常，1-禁用',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDeleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '用户调用接口关系';