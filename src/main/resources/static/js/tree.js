//下面是tree的操作
var zTreeObj;
var treeId;
var setting={
    view: {
        enable: true,
        showLine: true,//显示节点之间的连线
    },
    data:{
        simpleData:{
            enable:true//使用简单的list<treenode>格式
        }
    },edit:{
        enable:false,
    },check:{
        enable:true,//这里设置是否显示复选框
        //chkboxType: {"Y":'',"N":""}//设置复选框是否与父/子级相关联
    },callback:{
        onCheck:onCheck
    }
}
    function treeShow(loadUrl,treeID,data){
        treeId=treeID;
        $.ajax({
            async:true,//是否异步
            cache:false,//是否使用缓存
            type:'get',//请求方式post
            data:data,
            dataType:'json',//数据传输格式
            url:loadUrl,
            success:function(data){
                treeShow1(data);
            },error:function () {
                toastr.error("服务器异常加载失败");
            }
        });
    };
    //显示tree
    function treeShow1(data){
        zTreeObj=$.fn.zTree.init($("#"+treeId),setting,data);
        zTreeObj.expandAll(true);
    };
//选中的结点
var nodes=[];
function onCheck(e,treeID,treeNode) {
    var treeObj=$.fn.zTree.getZTreeObj(treeID);
    nodes=treeObj.getCheckedNodes(true);
}