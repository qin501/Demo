package cn.wsq.controller;

import cn.wsq.pojo.Result;
import cn.wsq.pojo.Role;
import cn.wsq.pojo.TableResult;
import cn.wsq.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    /**
     *
     * @param offset 从第几条开始
     * @param limit 查询多少条记录
     * @return
     */
    @RequestMapping("getRoleList")
    @ResponseBody
    public TableResult<Role> getRoleList(@RequestParam(defaultValue = "0") int offset,@RequestParam(defaultValue = "10") int limit){
        return roleService.getRoleList(offset,limit);
    }

    /**
     * 保存和更新权限
     * @param role
     * @param ids
     * @return
     */
    @RequestMapping("saveOrUpdateRole")
    @ResponseBody
    public Result saveOrUpdateRole(Role role,int[] ids){
        return roleService.saveOrUpdateRole(role,ids);
    }
    @ResponseBody
    @RequestMapping("deleteRole")
    public Result deleteRole(int[] id){
        return roleService.deleteRole(id);
    }

}
