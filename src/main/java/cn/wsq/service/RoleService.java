package cn.wsq.service;

import cn.wsq.pojo.Result;
import cn.wsq.pojo.Role;
import cn.wsq.pojo.TableResult;

public interface RoleService {
    TableResult<Role> getRoleList(int offset, int limit);

    Result saveOrUpdateRole(Role role, int[] ids);

    Result deleteRole(int[] id);
}
