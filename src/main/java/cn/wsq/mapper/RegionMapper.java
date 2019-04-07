package cn.wsq.mapper;

import cn.wsq.pojo.Region;

import java.util.List;

public interface RegionMapper {
    public List<Region> getList();

    void updateRegion(Region id);

    void deleteRegion(int id);

    void addRegion(Region region);
}
