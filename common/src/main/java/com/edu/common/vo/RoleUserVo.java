package com.edu.common.vo;

import com.edu.common.entity.User;
import com.edu.common.entity.UserRole;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleUserVo {
    private List<User> userList;
    private List<UserRole> userRoleList;
}
