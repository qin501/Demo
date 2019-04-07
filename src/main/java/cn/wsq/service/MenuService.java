package cn.wsq.service;

import cn.wsq.pojo.Result;
import cn.wsq.pojo.TreeMenu;

import java.util.List;

public interface MenuService {
    List<TreeMenu> getMenuList();

    Result saveMenu(int[] roleIds, int[] menuIds);

    List<TreeMenu> getMenuList(int currentLine);
}
