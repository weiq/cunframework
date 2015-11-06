$(function(){
    var ztreeObj,dataTable;
    var setting = {
        async: {
            enable: true,
            url:ctx+"/admin/sys/organization/organization/ajax/load",
            autoParam:["id", "name=n", "level=lv"],
            otherParam:{"otherParam":"zTreeAsyncTest"}
        },
        view: {
            showLine: true
        },
        data: {
            simpleData: {
                enable: true
            }
        },
        view : {
            expandSpeed : "",
            fontCss : function(treeId, treeNode) {
                return (!!treeNode.highlight) ? {
                    color : "#333",
                    "font-weight" : "bold"
                } : {
                    color : "#333",
                    "font-weight" : "normal"
                };
            }
        },
        callback : {
            //onClick : nodeClick
        }
    };
    
    dataTable = $('#table').dataTable({  
        'dom': '<"table_filter"f>rt<"lh35"i><"lh35"l>p'
    });
    
    ztreeObj = $.fn.zTree.init($("#organizationTree"), setting);
});