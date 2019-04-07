package cn.wsq.controller;

import cn.wsq.pojo.Region;
import cn.wsq.pojo.Result;
import cn.wsq.pojo.Tree;
import cn.wsq.service.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("region")
public class RegionalController {
	@Autowired
	private RegionService regionService;
	@ResponseBody
	@RequestMapping("getTree")
	public List<Region> getTree(){
        List<Region> list = regionService.getList();
        return list;
	}
	@ResponseBody
	@RequestMapping("addTree")
	public Result addRegion(Region region){
		return regionService.addRegion(region);
	}
	@ResponseBody
	@RequestMapping("deleteTree")
	public Result deleteTree(Region region){
		return regionService.deleteRegion(region.getId());
	}
	@ResponseBody
	@RequestMapping("updateTree")
	public Result updateTree(Region region){
		return regionService.updateRegion(region);
	}

}
