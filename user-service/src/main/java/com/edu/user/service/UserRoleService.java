package com.edu.user.service;

import com.edu.common.entity.UserRole;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhaojie
 * @since 2024-08-21
 */
public interface UserRoleService extends IService<UserRole> {
    boolean save(Long roleId, Long[] userIds);
    List<UserRole> getByRoleId(Long roleId);
}
