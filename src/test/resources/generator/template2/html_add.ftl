<div class="dms-add">
    <form class="form-horizontal">
        <div class="modal-header">
            <div class="modal-title">职务信息新增</div>
            <div class="modal-close">
                <a data-dismiss="modal" class="btn btn-lg">
                    <i class="fa fa-remove"></i></a>
            </div>
        </div>
        <div class="modal-body">
            <div class="panel panel-default">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="control-label col-xs-4">职务代码</label>
                                <div class="col-xs-8">
                                    <input id="positionCode" name="positionCode"
                                           class="form-control required systemCode" minlength="4" maxlength="30"
                                           type="text"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="control-label col-xs-4">职务名称</label>
                                <div class="col-xs-8">
                                    <input id="positionName" name="positionName" class="form-control required"
                                           maxlength="60" type="text"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="control-label col-xs-4">职务描述</label>

                                <div class="col-xs-8">
                                    <textarea name="positionDesc" class="form-control" id="positionDesc" rows="3"
                                              cols="" maxlength="300"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 ">
                            <div class="form-group">
                                <label class="control-label col-xs-4">职位类型</label>
                                <div class="col-xs-8">
                                    <select id="loginWay" name="loginWay"
                                            class="bs-select form-control required" data-dictCode="5078"
                                            data-value="" data-existsDefault="true">
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <div class="pannel-name">方案范围</div>
                    <div class="pannel-button">
                        <div class="btn-group btn-group-sm">
                            <a data-url="dcs/dcsCommon/activityPlanMultiDealerChoose.html"  data-beforeShowEvent='true'
                               class="btn btn-outline" data-width="modal-lg" data-toggle="modal">
                                <i class="fa fa-plus-square"></i>新增
                            </a>
                        </div>
                    </div>
                    <div class="pannel-tools">
                        <a href="javascript:;" class="expand"> <i
                                    class="fa fa-chevron-down"></i></a>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-bordered table-hover table-responsive">
                        <tr>
                            <td style="text-align: left; padding-left: 1px; padding-right: 1px;" colspan="12" >
                                <span style="color:red;">请先确定活动代理商范围再输入支持金额或销售考核</span>	：
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="panel-body">
                    <table
                            class="table table-striped table-bordered table-hover table-responsive"
                            id="activityPlanScopeList"></table>
                </div>
            </div>
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <div class="pannel-name">方案附件</div>
                    <div class="pannel-button">
                        <div class="btn-group btn-group-sm">
                            <a class="btn btn-outline" href="javascript:;" data-onclickEvent="true" id="activityPlanAttachMentListA">
                                <i class="fa fa-plus-square"></i> 新增
                            </a>
                        </div>
                    </div>
                    <div class="pannel-tools">

                        <a href="javascript:;" class="expand"> <i
                                    class="fa fa-chevron-down"></i></a>
                    </div>
                </div>
                <div class="panel-body">
                    <table
                            class="table table-striped table-bordered table-hover table-responsive"
                            id="activityPlanAttachMentList"></table>
                </div>
            </div>
        </div>
        <div class="modal-footer center-block">
            <a  data-url="/activityplancreatemng/modifilyactivityplaninfo/save"
                data-beforeRequest='true'
                data-fileUploadBtn="true"
                data-model="marketSupport"
                data-method="POST"
                data-callBack='true'
                class="btn blue"
                data-toggle="confirmation">
                <i  class="fa fa-save"></i>保存
            </a>
            <a  data-url="/activityplancreatemng/modifilyactivityplaninfo/submitAudit"
                data-beforeRequest='true'
                data-fileUploadBtn="true"
                data-model="marketSupport"
                data-method="POST"
                data-callBack='true'
                class="btn blue"
                data-toggle="confirmation">
                <i  class="fa fa-save"></i>提交审批
            </a>
            <a data-dismiss="modal" class="btn blue">
                <i class="fa fa-undo"></i>返回
            </a>
        </div>
    </form>
</div>

<script type="text/javascript">


    //方案范围
    new Datatable().initLocale({
        src : "activityPlanScopeList",
        container:container,
        rowID : "EXTEND_ID",
        autoHeight:false,
        isQueryFirst:false,
        columns : [
            {field : "ACTIVITY_SCOPE_ID",inputField:"activityScopeId",title : "操作",operateFormat : [
                    {type : "localDel",isShow:function(value, row, index){
                            return true;
                        }}],inputHiddenFormat : {}},
            {field : "AREA_NAME",inputField:"areaName",title : "区域",sortable : false,inputHiddenFormat : {}},
            {field : "ORG_CODE",inputField:"orgCode",title : "经销商代码",sortable : false},
            {field : "ORG_NAME",inputField:"orgId",title : "经销商名称",sortable : false,inputHiddenFormat : {hiddenField:"ORG_ID"}},
            {field : "PLAN_SUPPORT_AMOUNT",inputField:"planSupportAmount",title : "支持金额",sortable : false,inputHiddenFormat : {},inputNumberFormat : {validate:{validateClass:"money required"}}},
            {field : "PLAN_SALES_NUM",inputField:"planSalesNum",title : "销售考核 ",sortable : false,inputNumberFormat : {validate:{validateClass:"digits required"}}}
        ],
        onLoadSuccess : function() {

        }
    });
    $(function(){
        $('#activityPlanScopeList').bootstrapTable('hideColumn','DEALER_ID');
    });
    //附件列表
    new Datatable().initPagination({
        src : "activityPlanAttachMentList",
        container:container,
        rowID : "TR_ID",
        pageSize:5,
        autoHeight:false,
        isQueryFirst:false,
        columns : [
            {field : "",inputField:"",title : "操作",operateFormat : [
                    {type : "localDel",isShow:function(value, row, index){
                            return true;
                        }}],inputHiddenFormat : {}},
            {field : "dmsFileIds",inputField:"dmsFileIds",title : "附件",minWidth:50,inputFileFormat : {validate:{otherAttr:'data-fileAppUrl="dcs_fdfs"',validateClass:"required"}}}
        ]
    });

    //页面加载后初始化
    $(document).one("onload.dms", function (event, container) {
        //新增页面的回调函数
        $("a[data-callBack='true']", container).on("callBack.dms", function (event, response) {
            //关闭窗口
            $("a[data-dismiss='modal']", container).trigger("click", true);
            //刷新表格
            $("#dms_table2", getElementContext()).dmsTable().refreshTableWithForm();
        });
    });
</script>
