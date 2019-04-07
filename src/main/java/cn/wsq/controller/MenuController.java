package cn.wsq.controller;

import cn.wsq.pojo.Result;
import cn.wsq.pojo.TreeMenu;
import cn.wsq.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("menu")
public class MenuController {
    @Autowired
    private MenuService menuService;
    @RequestMapping("getMenuTree")
    @ResponseBody
    public List<TreeMenu> getMenuTree(int currentLine){
        List<TreeMenu> treeMenuList =null;
        if(currentLine!=-1){
            treeMenuList=menuService.getMenuList(currentLine);
        }else{
           treeMenuList = menuService.getMenuList();
        }

        return treeMenuList;
    }

    /**
     * 保存权限
     * @param roleIds 角色id
     * @param menuIds 菜单id
     * @return
     */
    @RequestMapping("saveMenu")
    @ResponseBody
    public Result saveMenu(int[] roleIds,int[] menuIds){
        return menuService.saveMenu(roleIds,menuIds);
    }
}
