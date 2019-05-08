<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/4/9
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset=utf-8" />
    <title>确认订单</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
 <script type="text/javascript">
/*省市联动*/
        $(function () {
            var parent_area_code = $("#parent_area_code");
            var city = $("#city");
            parent_area_code.change(function () {
                $.ajax({
                    url:"${pageContext.request.contextPath}/order/getOder1.do",
                    type:"get",
                    datatype:"json",
                    data:{
                        parent_area_code:  parent_area_code.val(),
                    },
                success:function (data) {
                    var dataobj = eval(data);
                     city.html("");
                    $.each(dataobj,function (key,val) {
                        var area_name= val.area_name;
                        $("#city").append("<option value='"+area_name+"'>"+area_name+"</option>");

                    })
                }
                })
            })
        })
    </script>
    <script type="text/javascript">
        /*更改用户收货地址*/
        function updateAddr(uid) {

            var phone = $("#phone");
            var name = $("#name");
            var code = $("#code");
            var add1=$("#parent_area_code option:selected").html();
            var add2=$("#city option:selected");
            var add3=$("#town");
            $.ajax({
                url:"${pageContext.request.contextPath}/order/getNewAddr.do?uid="+uid,
                type:"get",
                datatype:"json",
                data:{
                    phone:phone.val(),
                    name:name.val(),
                    code:code.val(),
                    add1:add1,
                    add2:add2.val(),
                    add3:add3.val(),
                },
                success:function (data) {
                    var dataobj = eval(data);
                    $.each(dataobj,function (key,val) {
                        var phone = val.phone;
                        var name = val.name;
                        var addr = val.addr.split("-");
                        var add1=addr[0];
                        var add2=addr[1];
                        var add3=addr[2];
                        $("#sname").html(name);
                        $("#sphone").html(phone);
                        $("#p").html(add1);
                        $("#p1").html(add2);
                        $("#c").html(add3);
                    })
                    $("#hidd").hide();
                }
            })

        }
    </script>
</head>

<body style="position:relative;">

<!--header-->
<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购<a href="注册.html">【${su.username}】</a>
        </p>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/cate/selectCateName.do">返回首页</a><span>|</span>
            <a href="index.html"> 个人中心</a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/getCart.do">我的购物车</a><span>|</span>
            <a href="我的订单.html">我的订单</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>

<!--logo search weweima-->
<div class="logo-search w1200">
    <div class="logo-box f-l">
        <div class="logo f-l">
            <a href="index.html" title="中林logo"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a>
        </div>
        <div class="shangjia f-l">
            <a href="JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            <a href="JavaScript:;" class="shangjia-a2">商家入口</a>
            <div class="select-city">
                <div class="sl-city-top">
                    <p class="f-l">切换城市</p>
                    <a class="close-select-city f-r" href="JavaScript:;">
                        <img src="${pageContext.request.contextPath}/images/close-select-city.gif" />
                    </a>
                </div>
                <div class="sl-city-con">
                    <p>西北</p>
                    <dl>
                        <dt>重庆市</dt>
                        <dd>
                            <a href="JavaScript:;">长寿区</a>
                            <a href="JavaScript:;">娇子</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>新疆</dt>
                        <dd>
                            <a href="JavaScript:;">齐乌鲁木</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>甘肃</dt>
                        <dd>
                            <a href="JavaScript:;">兰州</a>
                            <a href="JavaScript:;">甘南</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>宁夏</dt>
                        <dd>
                            <a href="JavaScript:;">银川</a>
                            <a href="JavaScript:;">固原</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>青海</dt>
                        <dd>
                            <a href="JavaScript:;">西宁</a>
                            <a href="JavaScript:;">海南</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="erweima f-r">
        <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif" /></a>
    </div>
    <div class="search f-r">
        <form action="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}" method="post">
        <div class="search-info">
            <input  type="text" placeholder="请输入商品名称"name="pname" value="${allProduct.pname}"/>
            <button>搜索</button>
            <div style="clear:both;"></div>
        </div>
        <ul class="search-ul">
            <li><a href="JavaScript:;">绿豆</a></li>
            <div style="clear:both;"></div>
        </ul>
        </form>
    </div>
    <div style="clear:both;"></div>
</div>


<!--内容开始-->
<div class="payment-interface w1200" >


    <div class="pay-info">
        <div class="info-tit">
            <h3>选择收货地址</h3>
        </div>
        <ul class="pay-dz">
            <li class="current">
                <h4><span class="sp1" id="p">${sessionScope.a}</span>
                    <span class="sp1" id="p1">${sessionScope.b}</span>
                    <span class="sp2" id="c">${sessionScope.c}</span>
                    （<span class="sp3" id="sname">${su.name}</span> 收）
                </h4>
                <p><span class="sp1"></span>
                    <span class="sp2" id="sphone">电话：${su.phone}</span>
                </p>
            </li>

            <div style="clear:both;"></div>
        </ul>
        <button class="pay-xdz-btn">修改地址</button>
    </div>
    <div class="pay-info">



        <div class="info-tit" style="border-bottom:0;">
            <h3>订单信息</h3>
        </div>
    </div>

    <div class="cart-con-info">
        <div class="cart-con-tit" style="margin:20px 0 5px;">
            <p class="p1" style="width:400px;">
                <span></span>
            </p>
            <p class="p3" style="width:45px;"></p>
            <p class="p4" style="width:120px;">数量</p>
            <p class="p8" style="width:135px;">运费</p>
            <p class="p5">单价（元）</p>
            <p class="p6" style="width:178px;">金额（元）</p>
            <p class="p7">配送方式</p>
        </div>
        <form action="${pageContext.request.contextPath}/order/creatOrder.do" method="post">
            <input type="hidden" name="uid" value="${su.uid}">
        <c:forEach items="${sessionScope.cart.cartItems}" var="cartItem" >
        <div class="info-mid">
            <div class="mid-tu f-l">
                <a href="#"><img src="http://localhost:80/manager/${cartItem.product.pimage}" width="80px" height="80px"/></a>
            </div>
            <div class="mid-font f-l" style="margin-right:300px;">
                <a href="#">${cartItem.product.pname}</a>
            </div>
            <div class="mid-sl f-l" style="margin: 10px 54px 0px 0px">
                <span  style="margin-right:30px;">${cartItem.proCount}</span>
            </div>
            <p class="mid-dj f-l">￥:0.00</p>
            <p class="mid-yunfei f-l"  style="margin-right:105px;">¥:${cartItem.product.shop_price}</p>
            <p class="mid-je f-l"  style="margin-right:50px;">￥:${cartItem.total}</p>
            <div class="mid-chaozuo f-l">
                <select>
                    <option>送货上门</option>
                    <option>快递包邮</option>
                </select>
            </div>
            <div style="clear:both;"></div>
        </div>
        </c:forEach>

        <div class="info-tijiao">
            <p class="p1">实付款：<span>¥${cart.subTotal}</span></p>
            <input type="hidden" name="total" value="${cart.subTotal}">
            <button type="submit" class="btn">提交订单</button>
        </div>
        </form>
    </div>

</div>

<!--底部一块-->
<div class="footer-box">
    <ul class="footer-info1 w1200">
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif" /></a>
            </div>
            <h3><a href="JavaScript:;">号码保障</a></h3>
            <P>所有会员，手机短信验证</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif" /></a>
            </div>
            <h3><a href="JavaScript:;">6*12小时客服</a></h3>
            <P>有任何问题随时免费资讯</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif" /></a>
            </div>
            <h3><a href="JavaScript:;">专业专攻</a></h3>
            <P>我们只专注于建筑行业的信息服务</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif" /></a>
            </div>
            <h3><a href="JavaScript:;">注册有礼</a></h3>
            <P>随时随地注册有大礼包</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif" /></a>
            </div>
            <h3><a href="JavaScript:;">值得信赖</a></h3>
            <P>专业的产品，专业的团队</P>
        </li>
        <div style="clear:both;"></div>
    </ul>
    <div class="footer-info2 w1200">
        <div class="ft-if2-left f-l">
            <dl>
                <dt><a href="6-1服务协议.html">新手上路</a></dt>
                <dd>
                    <a href="6-1服务协议.html">购物流程</a>
                    <a href="6-1服务协议.html">在线支付</a>
                    <a href="6-1服务协议.html">投诉与建议</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="6-1服务协议.html">配送方式</a></dt>
                <dd>
                    <a href="6-1服务协议.html">货到付款区域</a>
                    <a href="6-1服务协议.html">配送费标准</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="6-1服务协议.html">购物指南</a></dt>
                <dd>
                    <a href="6-1服务协议.html">订购流程</a>
                    <a href="6-1服务协议.html">购物常见问题</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="6-1服务协议.html">售后服务</a></dt>
                <dd>
                    <a href="6-1服务协议.html">售后服务保障</a>
                    <a href="6-1服务协议.html">退换货政策总则</a>
                    <a href="6-1服务协议.html">自营商品退换细则</a>
                </dd>
            </dl>
            <div style="clear:both;"></div>
        </div>
        <div class="ft-if2-right f-r">
            <h3>400-2298-223</h3>
            <p>周一至周日  9:00-24:00</p>
            <p>（仅收市话费）</p>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="footer-info3 w1200">
        <p>
            <a href="#">免责条款</a><span>|</span>
            <a href="#">隐私保护</a><span>|</span>
            <a href="#">咨询热点</a><span>|</span>
            <a href="#">联系我们</a><span>|</span>
            <a href="#">公司简介</a>
        </p>
        <p>
            <a href="#">沪ICP备13044278号</a><span>|</span>
            <a href="#">合字B1.B2-20130004</a><span>|</span>
            <a href="#">营业执照</a><span>|</span>
            <a href="#">互联网药品信息服务资格证</a><span>|</span>
            <a href="#">互联网药品交易服务资格证</a>
        </p>
        <div class="ft-if3-tu1">
            <a href="#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif" /></a>
            <a href="#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif" /></a>
            <a href="#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif" /></a>
        </div>
    </div>
</div>

<!--确认订单（修改地址）-->
<div class="confirmation-tanchuang" xgdz1="" id="hidd">
    <div class="tanchuang-bg"></div>
    <div class="tanchuang-con">
        <div class="tc-title">
            <h3>修改地址</h3>
            <a href="" dz-guan=""><img src="${pageContext.request.contextPath}/images/close-select-city.gif" /></a>
            <div style="clear:both;"></div>
        </div>
        <ul class="tc-con2">
            <li class="tc-li1">
                <p class="l-p">所在地区<span>*</span></p>
                <div class="xl-dz">
                    <div class="dz-left f-l">
                        <select id="parent_area_code"  >      
                                <option value="--" selected="selected">--请选择地区--</option>
                           <%-- <c:forEach items="${userAddr}" var="ss"> 
                                    <option  value="${ss.area_code}"><span >${ss.area_name}</span></option>
                            </c:forEach>--%>
                            <c:forEach items="${userAddr}" var="ss"> 
                                    <option  value="${ss.area_code}"><span >${ss.area_name}</span></option>${ss}
                            </c:forEach>
                        </select>
                        <select id="city" >      
                                <option value="--" selected="selected" >--请选择城市--</option>
                        </select>

                    </div>
                    <div class="dz-right f-l">
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">详细地址<span>*</span></p>
                <textarea class="textarea1" placeholder="" id="town">${sessionScope.c}</textarea>
                <div style="clear:both;"></div>
            <li class="tc-li1">
                <p class="l-p">邮政编码<span>*</span></p>
                <input type="text" value="${su.code}" id="code" name="code" placeholder="请填写邮政编码"/>
                <div style="clear:both;"></div>
                </li>

            </li>
            <li class="tc-li1">
                <p class="l-p">收货人姓名<span>*</span></p>
                <input type="text" id="name" name="name" value="${su.name}"placeholder="请填写收货人名字"/>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">联系电话<span>*</span></p>
                <input type="text" id="phone" name="phone" value="${su.phone}" placeholder="请填写收货人电话"/>
                <div style="clear:both;"></div>
            </li>
        </ul>
        <button class="btn-pst2" onclick="updateAddr(${su.uid})" type="submit">保存</button>
    </div>
</div>
</body>
</html>

