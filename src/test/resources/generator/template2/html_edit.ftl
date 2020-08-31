<div class="dms-edit ajaxrest" data-url="/activityplancreatemng/getactivityplancreateinfobyplanid/{[plan_Id]}" data-model="marketSupport" data-pageInitCallBack="true">
    <form class="form-horizontal">
        <div class="modal-header">
            <div class="modal-title">活动方案建立(品牌)</div>
            <div class="modal-close">
                <a data-dismiss="modal" class="btn btn-lg"> <i
                            class="fa fa-remove"></i></a>
            </div>
        </div>
        <div class="modal-body" id= "changeModalBody">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="pannel-name">方案信息</div>
                    <div class="pannel-tools">
                        <a href="javascript:;" class="expand"> <i
                                    class="fa fa-chevron-down"></i></a>
                    </div>
                    <input type="hidden" id="requestMethod"  name="requestMethod" value="update" />
                    <input type="hidden" id="planId"  name="planId" value="{[plan_Id]}" />
                    <input type="hidden" id="planOrgId"  name="planOrgId" data-fieldName="plan_org_id" />
                </div>
                <div class="panel-body">
                    <div class="row ">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">品牌</label>
                                <div class="col-xs-8">
                                    <input type="text" class="form-control required" disabled  id="brandName" data-fieldName="mainBrandName"  name="brandName">
                                    <input type="hidden" class="form-control required" disabled  id="brandId" data-fieldName="mainBrandId" name="brandId">
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" id="otherBrandIdsDiv">
                            <div class="form-group">
                                <label class="control-label col-xs-4">协同品牌</label>
                                <div class="col-xs-8">
                                    <select id="otherBrandIds" class="bs-select form-control"
                                            name="otherBrandIds" data-url="/productData/querypositionbrands"
                                            data-model="factoryBase" data-labelValue="BRAND_ID"
                                            data-lableDesc="BRAND_NAME" multiple data-live-search="true"
                                            data-size="4" data-existsDefault="false" data-fieldName="other_brand_ids"  >
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">活动名称</label>
                                <div class="col-xs-8">
                                    <input type="text" class="form-control required  "  id="planName" data-fieldName="PLAN_NAME" name="planName" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">活动主题</label>
                                <div class="col-xs-8">
                                    <input type="text" class="form-control required"  id="planSubject" name="planSubject" data-fieldName="PLAN_SUBJECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">车厂方案编号</label>
                                <div class="col-xs-8">
                                    <input type="text" class="form-control systemCode required"  id="mainPlanCode" data-fieldName="MAIN_PLAN_CODE" name="mainPlanCode" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">方案管理部门</label>
                                <div class="col-xs-8">
                                    <select id="dutyOrgType" name="dutyOrgType" data-fieldName="DUTY_ORG_TYPE"
                                            class="bs-select form-control required" data-dictCode="5947" >
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">方案类别</label>
                                <div class="col-xs-8">
                                    <select id="planType" name="planType" data-fieldName="PLAN_TYPE" data-excludeItems="59491002"
                                            class="bs-select form-control required" data-dictCode="5949" >
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">方案开始时间</label>
                                <div class="col-xs-8">
                                    <div class="input-group date date-picker required"  data-orientation="top right">
                                        <input id="planStartDate" name="planStartDate" readonly data-fieldName="PLAN_START_DATE"
                                               class="form-control required" type="text" value="" />
                                        <span class="input-group-btn">
											<button class="btn default date-set" type="button">
												<i class="fa fa-calendar"></i>
											</button>
				                            <button class="btn default date-reset" type="button">
				                                <i class="fa fa-times"></i>
				                            </button>
									    </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">方案结束时间</label>
                                <div class="col-xs-8">
                                    <div class="input-group date date-picker required"  data-orientation="top right">
                                        <input id="planEndDate" name="planEndDate" readonly data-fieldName="PLAN_END_DATE"
                                               class="form-control required" type="text" value="" />
                                        <span class="input-group-btn">
											<button class="btn default date-set" type="button">
												<i class="fa fa-calendar"></i>
											</button>
				                            <button class="btn default date-reset" type="button">
				                                <i class="fa fa-times"></i>
				                            </button>
									    </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">方案活动形式</label>
                                <div class="col-xs-8">
                                    <select id="planForm" name="planForm" data-fieldName="PLAN_FORM"
                                            class="bs-select form-control required" data-dictCode="5966"
                                            data-fieldName="AG_TYPE">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">方案提报截止时间</label>
                                <div class="col-xs-8">
                                    <div class="input-group date date-picker required"  data-orientation="top right">
                                        <input id="planReferDate" name="planReferDate" readonly data-fieldName="PLAN_REFER_DATE"
                                               class="form-control required" type="text" value="" />
                                        <span class="input-group-btn">
											<button class="btn default date-set" type="button">
												<i class="fa fa-calendar"></i>
											</button>
				                            <button class="btn default date-reset" type="button">
				                                <i class="fa fa-times"></i>
				                            </button>
									    </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">费用类型</label>
                                <div class="col-xs-8">
                                    <select id="feeType" name="feeType" data-fieldName="FEE_TYPE"
                                            class="bs-select form-control required" data-dictCode="5967" >
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">预算总金额</label>
                                <div class="col-xs-8">
                                    <input type="text" class="form-control required money" name="planTotalMoney" id="planTotalMoney" data-fieldName="PLAN_TOTAL_MONEY" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4">活动目的</label>
                                <div class="col-xs-8">
                                    <textarea name="planPurpose" id="planPurpose" data-fieldName="PLAN_PURPOSE" rows="5" cols="60"  /></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-xs-12 col-sm-12 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4 col-xs-4">活动内容简介</label>
                                <div class="col-xs-8 col-xs-8">
                                    <textarea data-fieldName="PLAN_CONTENT" name="planContent" id="planContent"  rows="5" cols="60" /></textarea>
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
                        <tr>
                            <td style="text-align: right; padding-left: 1px; padding-right: 1px;"
                                colspan="4">支持金额：</td>
                            <td style="text-align: left;">
                                <input type="text" class="form-control  "
                                       id="planSupportAmountSum" name="planSupportAmountSum" data-fieldName="SUM_AMOUNT" />
                            </td>
                            <td style="text-align: right; padding-left: 1px; padding-right: 1px;"
                                colspan="4">销售考核：</td>
                            <td style="text-align: left;">
                                <input type="text" class="form-control  "
                                       id="planSalesNumSum" name="planSalesNumSum" data-fieldName="SUM_ALL_CUSTOMER" />
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
                            <div class="btn-group btn-group-sm">
                                <a data-url="dcs/marketSupport/activityMng/planMng/depotPlanCreateMng/inputFiles.html"  data-beforeShowEvent='true'
                                   class="btn btn-outline" data-width="modal-lg" data-toggle="modal">
                                    <i class="fa fa-upload"></i>新增
                                </a>
                            </div>
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
            <div class="panel panel-default" id="rejectedDiv" >
                <div class="panel-body">
                    <div class="row ">
                        <div class="col-xs-12 col-sm-12 col-lg-4">
                            <div class="form-group">
                                <label class="control-label col-xs-4 col-xs-4">驳回原因</label>
                                <div class="col-xs-8 col-xs-8">
                                    <textarea class= "out" readonly data-fieldName="REJECT_CAUSE" name="rejectCause" id="rejectCause"  rows="5" cols="60" /></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
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
    $(document) .one( "onload.dms", function(event, container) {
        //方案范围
        new Datatable().initLocale({
            src : "activityPlanScopeList",
            container:container,
            rowID : "ACTIVITY_SCOPE_ID",
            autoHeight:false,
            isQueryFirst:false,
            columns : [
                {field : "ACTIVITY_SCOPE_ID",inputField:"activityScopeId",title : "操作",operateFormat : [
                        {type : "localDel",isShow:function(value, row, index){
                                return true;
                            },isShow: function (value, row, index) {
                                if(value){
                                    return false;
                                }else{
                                    return true;
                                }
                            }},
                        {type:"event",title : "删除",onclick:function(value, row, index,self){
                                $(self).confirm("是否确认删除？",function(){
                                    var attachmentId = row.ATTACHMENT_ID
                                    dmsCommon.ajaxRestRequest({
                                        url:dmsCommon.getDmsPath()["marketSupport"]+"/activityplancreatemng/deleteactivityplanscopebyid/"+value,
                                        type:'DELETE',
                                        async:false,
                                        sucessCallBack:function(data){
                                            $("#activityPlanScopeList",container).dmsTable().refreshTableWithForm();
                                        }
                                    });
                                });
                            },operateIcon:'<i class="glyphicon glyphicon-lg glyphicon-remove"></i>',disableHidden:true,isShow: function (value, row, index) {
                                if(!value){
                                    return false;
                                }else{
                                    return true;
                                }
                            }
                        }],inputHiddenFormat : {}},
                {field : "AREA_NAME",inputField:"areaName",title : "区域",sortable : false,inputHiddenFormat : {}},
                {field : "ORG_CODE",inputField:"orgCode",title : "经销商代码",sortable : false},
                {field : "ORG_NAME",inputField:"orgId",title : "经销商名称",sortable : false,inputHiddenFormat : {hiddenField:"ORG_ID"}},
                {field : "PLAN_SUPPORT_AMOUNT",inputField:"planSupportAmount",title : "支持金额",sortable : false,inputHiddenFormat : {},inputNumberFormat : {validate:{validateClass:"money required"}}},
                {field : "PLAN_SALES_NUM",inputField:"planSalesNum",title : "销售考核 ",sortable : false,inputNumberFormat : {validate:{validateClass:"digits required"}}}
            ],
            onLoadSuccess : function() {

            }
        });


        //附件列表
        new Datatable().initPagination({
            src : "activityPlanAttachMentList",
            container:container,
            rowID : "FILE_ID",
            pageSize:5,
            autoHeight:false,
            isQueryFirst:false,
            columns : [  {field : "FILE_ID",title : "操作",operateFormat : [
                    {type:"event",title : "删除",onclick:function(value, row, index,self){
                            $(self).confirm("是否确认删除？",function(){
                                var attachmentId = row.ATTACHMENT_ID
                                dmsCommon.ajaxRestRequest({
                                    url:dmsCommon.getDmsPath()["marketSupport"]+"/activityplancreatemng/deleteAttachMentInfoById/"+attachmentId,
                                    type:'DELETE',
                                    async:false,
                                    sucessCallBack:function(data){
                                        $("#activityPlanAttachMentList",container).dmsTable().refreshTableWithForm();
                                    }
                                });
                            });
                        },operateIcon:'<i class="glyphicon glyphicon-lg glyphicon-remove"></i>',disableHidden:true}]},
                {field : "ATTACHMENT_NAME",title : "附件名称",formatter : function (value,row,index){
                        var key = row.ATTACHMENT_URL;
                        var fileName = row.ATTACHMENT_NAME;
                        var id = "down" + row.ATTACHMENT_ID;
                        /* 	  							var netUrl = dmsCommon.getDmsFuncIdUrl(dmsCommon.getDmsPath()["factoryBase"]+"/fdfsfile/readfilebykey?key="+key+"&fileName="+fileName);
                         */	  							var netUrl = dmsCommon.getDmsFuncIdUrl(dmsCommon.getDmsPath()["factoryBase"]+"/fdfsfile/downfilebykey?key="+key+"&fileName="+fileName);

                        //window.location.href = netUrl;href = "+netUrl+"
                        var aTag = "<a id='"+id+"' href = "+netUrl+">"+value+"</a>";
                        return aTag;

                    }}

            ],
            onLoadSuccess : function() {
                var tableRows = $("#activityPlanAttachMentList").dmsTable().getRowDataByIndex();
                for (var i in tableRows){
                    var row_temp = tableRows[i];
                    var id_temp = "down" + row_temp.ATTACHMENT_ID;
                    var key = row_temp.ATTACHMENT_URL;
                    var fileName = row_temp.ATTACHMENT_NAME;
                    dmsCommon.ajaxRestRequest({
                        url:dmsCommon.getDmsPath()["factoryBase"]+"/fdfsfile/checkfilepath",
                        type:'get',
                        async:false,
                        data:{"key":key,"fileName":fileName},
                        sucessCallBack:function(data){
                            if(!data){//data = true:校验成功，false：失败
                                $("#"+id_temp ,container).attr("href","javascript:dmsCommon.tip({status:'warning',msg:'该附件已失效'});");
                            }
                        }
                    });
                }
            }
        });


        //新增页面的回调函数
        $("a[data-callBack='true']",container).on("callBack.dms",function(event,response){
            //关闭窗口
            $("a[data-dismiss='modal']",container).click();
            //刷新表格
            $("#activityPlanCreateList",getElementContext()).dmsTable().refreshTableWithForm();

        });

        $("a[data-beforeShowEvent='true']",container).on("beforeShow.dms",function(event,returnResult){


            var brandId = $("#brandId",container).val();
            //传入主键ID
            var map = {plan_id:{[plan_id]},brandId:brandId};
            $(this).data("pageData",map);
            returnResult.status = true;
        });

        //当修改页面初始化完成后的回调函数
        $("div[data-pageInitCallBack='true']", container).on("callBack.dms",function(event, response) {
            dealerId=$("#dealerId", container).val();
            //方案范围
            $("#activityPlanScopeList", container).dmsTable().refreshUrl(dmsCommon.getDmsPath()["marketSupport"] + "/activityplancreatemng/getActivityPlanScopeListByPlanId/{[plan_Id]}");

            //附件
            $("#activityPlanAttachMentList", container).dmsTable().refreshUrl(dmsCommon.getDmsPath()["marketSupport"] + "/activityplancreatemng/getAttachmentPageInfo/{[plan_Id]}");


        });

        //事件点击
        $("#activityPlanAttachMentListA",container).on("dms.click",function(event){
            $("#activityPlanAttachMentList",container).dmsTable().appendBlankRow();

        });


        //提交前执行的函数
        $("a[data-beforeRequest='true']",container).on("beforeRequest.dms",function(event,returnResult){

            var planScopeList = $("#activityPlanScopeList",container).dmsTable().getRowDataByIndex();

            //1.校验方案截止时间必须等于大于方案开始时间
            var planReferDate = $("#planReferDate",container).val();
            var planStartDate = $("#planStartDate",container).val();
            var planEndDate = $("#planEndDate",container).val();

            var start=new Date(planStartDate.replace(/-/g,"\/"));
            var end=new Date(planEndDate.replace(/-/g,"\/"));
            var refer=new Date(planReferDate.replace(/-/g,"\/"));

            if(start <= refer ){
                dmsCommon.tip({status:"warning",msg:"方案开始时间不能早于方案提报截止时间"});//总共的状态类型：info、success、error、warning
                returnResult.status = false;
                return ;
            }else if (start >= end ){
                dmsCommon.tip({status:"warning",msg:"方案开始时间不能晚于结束时间"});//总共的状态类型：info、success、error、warning
                returnResult.status = false;
                return ;
            }

            //2.方案提报截止时间不能早于今天！
            var nowDate = new Date();
            if(refer <= nowDate){
                dmsCommon.tip({status:"warning",msg:"方案提报截止时间不能早于今天"});//总共的状态类型：info、success、error、warning
                returnResult.status = false;
                return ;
            }

            //3.请选择参加活动的代理商
            var planScopeLength = $("#activityPlanScopeList",container).dmsTable().getTableRows();
            if(planScopeLength == 0){
                dmsCommon.tip({status:"warning",msg:"请选择参加活动的代理商"});//总共的状态类型：info、success、error、warning
                returnResult.status = false;
                return ;
            }
            //4.支持金额不能为0！

            var planTotalMoney = Number($("#planTotalMoney",container).val());
            if(planTotalMoney == 0){
                dmsCommon.tip({status:"warning",msg:"预算总金额不能为0！"});//总共的状态类型：info、success、error、warning
                returnResult.status = false;
                return ;
            }
            //5.代理商金额之和超过预算总金额
            var planScopeMoney = 0;
            for(var i in planScopeList){
                var temp = $("#planSupportAmount"+i,container).val() == '' ? 0 : $("#planSupportAmount"+i,container).val() ;
                planScopeMoney += Number(temp);
            }

            if(planTotalMoney < planScopeMoney){
                dmsCommon.tip({status:"warning",msg:"方案范围支持金额之和超过预算总金额"});//总共的状态类型：info、success、error、warning
                returnResult.status = false;
                return ;
            }

            returnResult.status = true;
        });
    });

</script>
