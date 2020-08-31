<div class="dms-search">
    <form class="form-horizontal">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="form-group">
                            <label class="control-label col-xs-4 ">代码</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control" id="positionCode" name="positionCode">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="form-group">
                            <label class="control-label col-xs-4">名称</label>

                            <div class="col-xs-8">
                                <input type="text" class="form-control" id="positionName" name="positionName">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="form-group">
                            <label class="control-label col-xs-4">有效状态</label>
                            <div class="col-xs-8">
                                <select id="validStatus" name="validStatus" class="bs-select form-control" data-value="10011001" data-dictCode="1001">
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="form-group">
                            <label class=" control-label col-xs-4" style="text-align:right;" >所属组织</label>
                            <div class="col-xs-8" data-tableSelectConfig="true" id="dealerInfo">
                                <div class="input-group" >
                                    <input id="orgName" type="text"  name="orgName" class="form-control" data-fieldName="ORG_NAME" />
                                    <input id="orgCode"  type="hidden" name="orgCode" data-fieldName="ORG_CODE" />
                                    <input id="orgId"  type="hidden" name="orgId" data-fieldName="ORG_ID" />
                                    <span class="input-group-btn">
										<button class="btn default btn-sm" type="button"
                                                data-url="dcs/orgUser/channelMng/personnelMng/orgTree.html"
                                                data-toggle="modal" data-width="modal-sm">
											<i class="fa fa-sitemap"></i>
										</button>
										<button class="btn default input-clear" type="button">
											<i class="fa fa-close"></i>
										</button>
									</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-xs-12 ">
                        <div class="query-btn">
                            <a href="javascript:;" class="btn blue"><i class="fa fa-search"></i>查询</a>
                            <a href="javascript:;" class="btn blue"><i class="fa fa-undo"></i>重置</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default table-panel">
            <div class="panel-heading">
                <div class="pannel-name">列表信息</div>
                <div class="pannel-button">
                    <div class="btn-group btn-group-sm">
                        <a data-url="manage/position/add.html" data-width="modal-sm" class="btn btn-outline"
                           id="addPosition" data-toggle="modal">
                            <i class="fa fa-plus-square"></i>新增
                        </a>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover" id="dms_table2"></table>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">

    $(document).one("onload.dms", function (event, container) {
        new Datatable().initPagination({
            src: "dms_table2",
            container: container,
            url: dmsCommon.getDmsPath()["manage_root"] + "/positions",
            rowID: "position_id",
            sortName: "position_id",
            sortOrder: "asc",
            autoHeight: false,
            columns: [
                {field: "position_id", title: "操作", operateFormat: [
                    {type: "edit",title: "编辑", operateIcon:'[编辑]',url: "manage/position/edit.html",openWidth:"modal-lg",isShow: function (value, row, index) {
                        return true;
                    }},
                    {type: "detail",title: "查看", operateIcon:'[查看]',url: "manage/position/edit.html",openWidth:"modal-lg",doubleClick: true},
                  ]
                },
                {field: "position_code", title: "职位代码"},
                {field: "position_name", title: "职位名称"},
                {field: "login_way", title: "职位类型",codeFormat: {type:"dict",codeType:"5078"}},
                {field: "org_name", title: "绑定组织"},
                {field: "org_type", title: "组织类型",codeFormat: {type:"dict",codeType:"1506"}},
                {field: "valid_status", title: "是否有效",codeFormat: {type:"dict",codeType:"1001"}},
                {field : "plan_end_date",title : "活动结束日期",dateFormat : {format:"YYYY-MM-DD "}}
            ]

        });

    });

</script>