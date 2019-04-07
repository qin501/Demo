package cn.wsq.service;

import cn.wsq.mapper.RegionMapper;
import cn.wsq.pojo.Region;
import cn.wsq.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegionService {
    @Autowired
    private RegionMapper regionMapper;
    public List<Region> getList(){
        System.out.println("aaa");
        return regionMapper.getList();
    }

    public Result updateRegion(Region region) {
        try {
            regionMapper.updateRegion(region);
        }catch(Exception e){
            return new Result(500,"失败了");
        }
        return new Result(200,"成功了");
    }

    public Result deleteRegion(int id) {
        try {
            regionMapper.deleteRegion(id);
        }catch(Exception e){
            return new Result(500,"失败了");
        }
        return new Result(200,"成功了");
    }

    public Result addRegion(Region region) {
        try {
            regionMapper.addRegion(region);
        }catch(Exception e){
            return new Result(500,"失败了");
        }
        return new Result(200,region);
    }
}
