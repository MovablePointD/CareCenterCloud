package com.edu.sysresource.mapper;

import com.edu.common.entity.SysResource;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 权限表 Mapper 接口
 * </p>
 *
 * @author limengya
 * @since 2024-08-09
 */
public interface SysResourceMapper extends BaseMapper<SysResource> {
    List<SysResource> getByUserId(Long userId);
}
