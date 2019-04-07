package cn.wsq.service.impl;

import cn.wsq.mapper.MenuMapper;
import cn.wsq.mapper.RoleMapper;
import cn.wsq.mapper.RoleMenuMapper;
import cn.wsq.pojo.Result;
import cn.wsq.pojo.RoleMenu;
import cn.wsq.pojo.TreeMenu;
import cn.wsq.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private RoleMenuMapper roleMenuMapper;
    @Override
    public List<TreeMenu> getMenuList() {
        List<TreeMenu> list = menuMapper.getList();
        return list;
    }
@Transactional
    @Override
    public Result saveMenu(int[] roleIds, int[] menuIds) {
       try {
           for (int i = 0; i < roleIds.length; i++) {
               //把旧的删除
               roleMenuMapper.deleteRoleById(roleIds[i]);
               for (int j = 0; j < menuIds.length; j++) {
                   RoleMenu roleMenu = new RoleMenu();
                   roleMenu.setMenuId(menuIds[j]);
                   roleMenu.setRoleId(roleIds[i]);
                   roleMenuMapper.saveRoleAndMenu(roleMenu);
               }
           }
       }catch(Exception e){
           e.printStackTrace();
           return new Result(500,"错误了");
       }
        return new Result(200,"成功了");
    }

    /**
     * 根据角色获取菜单
     * @param currentLine
     * @return
     */
    @Override
    public List<TreeMenu> getMenuList(int currentLine) {
        try {
            //选中的id
            int[] selectIds = roleMenuMapper.getMenuLists(currentLine);
            List<TreeMenu> list = menuMapper.getList();
            if(selectIds.length!=0) {
                for (TreeMenu menu : list) {
                    for (int id : selectIds) {
                        if (menu.getId() == id) {
                            menu.setChecked(true);
                        }
                    }
                    ;
                }
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
