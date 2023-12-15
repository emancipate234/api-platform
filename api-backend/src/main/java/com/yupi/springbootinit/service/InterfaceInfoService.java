package com.yupi.springbootinit.service;

import com.baomidou.mybatisplus.extension.service.IService;

import com.zyh.apicommon.model.entity.InterfaceInfo;

/**
* @author 张亚豪
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2023-11-17 13:52:30
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {
    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

}
