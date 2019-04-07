package cn.wsq.mapper;

import cn.wsq.pojo.RoleMenu;
import cn.wsq.pojo.TreeMenu;

import java.util.List;

public interface RoleMenuMapper {
    public void saveRoleAndMenu(RoleMenu roleMenu);

    int[] getMenuLists(int currentLine);
    void deleteRoleById(int id);
}
