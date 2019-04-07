package cn.wsq.mapper;

import cn.wsq.pojo.Role;

import java.util.List;

public interface RoleMapper {
    List<Role> getRole();

    void saveRole(Role role);

    void updateRole(Role role);

    void deleteRole(int id);
}
