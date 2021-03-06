<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"
 session="true"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <base href="<%=path %>/"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>增容申请</title>
</head>
<link rel="stylesheet" href="css/font-awesome-4.4.0/css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <img src="img/logo@2x.png" alt="logo" class="img-responsive center-block" />
            </div>
        </div>
    </div>
</nav>
<div class="text-center">
    <h3>增容申请</h3>
</div>
<div class="col-lg-12">
    <div class="jumbotron">
        <div class="container">
            <p style="font-size: 14px;">您需要提供资料：客户报装申请、身份证复印件、电费结清依据（当月电费发票）、负荷清单。</p>
        </div>
    </div>
</div>
<div class="col-lg-12">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">
                	个人信息填写
            </h3>
        </div>
        <div class="panel-body">
            <form id="zrsqForm" class="form-horizontal" method="post" action="<%=path %>/powerBusinessInfo/add.do">
                <input type="hidden" name="mapVo['businessType']" value="zrsq"/>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" placeholder="请输入您的姓名" name="mapVo['customerName']">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Currentload" class="col-sm-2 control-label">现有负荷 (kw)</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="Currentload" placeholder="请输入现有负荷" name="mapVo['charge']">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Newload" class="col-sm-2 control-label">新增负荷  (kw)</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="Newload" placeholder="请输入新增负荷" name="mapVo['increaseCharge']">
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">用电地址</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="address" placeholder="请输入用电地址" name="mapVo['electricityAddress']">
                    </div>
                </div>
                <div class="form-group">
                    <label for="IDcard" class="col-sm-2 control-label">身份证</label>
                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="IDcard" placeholder="请输入您的身份证号码" name="mapVo['identityCardNumber']">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">电话</label>
                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="phone" placeholder="请输入您的电话号码" name="mapVo['phoneNumber']">
                    </div>
                </div>
                <div class="text-center">
                    <p>
                        <button type="submit" form="zrsqForm" class="btn btn-primary">
                            <span><i class="fa fa-check-square-o"></i> 提交</span>
                        </button>
                    </p>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/PowerBusValidation.js"></script>
<script type="text/javascript" >
	var numericValidatorOption = {
			message : "负荷值只能是数字"
	};
    Validation.enable("#zrsqForm",{
    	"mapVo['charge']" : {
    		validators : { 
    			notEmpty : { 
    				message : "当前负荷不能为空"
    			},
    			numeric : numericValidatorOption,
    		}
    	},
    	"mapVo['increaseCharge']" : {
    		validators : { 
    			notEmpty : { 
    				message : "新增负荷不能为空"
    			},
    			numeric : numericValidatorOption,
    		}
    	}
    });
</script>
</body>
</html>