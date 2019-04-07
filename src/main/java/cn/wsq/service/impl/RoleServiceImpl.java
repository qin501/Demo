package cn.wsq.service.impl;

import cn.wsq.mapper.RoleMapper;
import cn.wsq.mapper.RoleMenuMapper;
import cn.wsq.pojo.Result;
import cn.wsq.pojo.Role;
import cn.wsq.pojo.RoleMenu;
import cn.wsq.pojo.TableResult;
import cn.wsq.service.RoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private RoleMenuMapper roleMenuMapper;

    /**
     * 获取所有角色
     * @param offset
     * @param limit
     * @return
     */
    @Override
    public TableResult<Role> getRoleList(int offset, int limit) {
        TableResult<Role> table=new TableResult<Role>();
        PageHelper.startPage(offset/limit+1,limit);
        List<Role> role = roleMapper.getRole();
        PageInfo<Role> pageInfo = new PageInfo<>(role);
        table.setRows(role);
        table.setTotal((int) pageInfo.getTotal());
        return table;
    }
    @Transactional
    @Override
    public Result saveOrUpdateRole(Role role, int[] ids) {
        //添加
        if(role.getId()==0){
            roleMapper.saveRole(role);
        //修改
        }else{
            roleMapper.updateRole(role);
            //删除旧的权限
            roleMenuMapper.deleteRoleById(role.getId());
        }
        //添加权限
        if(ids.length!=0){
            for(int i=0;i<ids.length;i++){
                RoleMenu roleMenu=new RoleMenu();
                roleMenu.setRoleId(role.getId());
                roleMenu.setMenuId(ids[i]);
                roleMenuMapper.saveRoleAndMenu(roleMenu);
            }
        }

        return new Result(200,"成功了");
    }

    /**
     * 删除角色
     * @param id
     * @return
     */
    @Override
    public Result deleteRole(int[] id) {
        for(int i=0;i<id.length;i++){
            roleMapper.deleteRole(id[i]);
            //把权限也删除了
            roleMenuMapper.deleteRoleById(id[i]);
        }
         return new Result(200,"成功了");
    }
}
