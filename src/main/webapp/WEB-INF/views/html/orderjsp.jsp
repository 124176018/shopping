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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>确认订单</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
 <script type="text/javascript">
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
                        alert(area_name);
                        $("#city").append("<option value='"+area_name+"'>"+area_name+"</option>");

                    })
                }
                })
            })
        })
    </script>
</head>

<body style="position:relative;">

<!--header-->
<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购，请登录  <a href="注册.html">【免费注册】</a>
        </p>
        <p class="hd-p2 f-r">
            <a href="index.html">返回首页 (个人中心)</a><span>|</span>
            <a href="购物车.html">我的购物车</a><span>|</span>
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
<div class="payment-interface w1200">
    <div class="pay-info">
        <div class="info-tit">
            <h3>选择收货地址</h3>
        </div>
        <ul class="pay-dz">
            <li class="current">
                <h4><span class="sp1">${sessionScope.a}${sessionScope.b}</span>
                    <span class="sp2">${sessionScope.c}</span>
                    （<span class="sp3">${su.username}</span> 收）
                </h4>
                <p><span class="sp1"></span>
                    <span class="sp2">电话：${su.phone}</span>
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
                <input type="checkbox" value="" name="hobby"></input>
                <span>商家：向东服饰专卖店</span>
            </p>
            <p class="p3" style="width:145px;">规格</p>
            <p class="p4" style="width:130px;">数量</p>
            <p class="p8" style="width:75px;">运费</p>
            <p class="p5">单价（元）</p>
            <p class="p6" style="width:173px;">金额（元）</p>
            <p class="p7">配送方式</p>
        </div>
        <div class="info-mid">
            <div class="mid-tu f-l">
                <a href="#"><img src="${pageContext.request.contextPath}/images/dai1.gif" /></a>
            </div>
            <div class="mid-font f-l" style="margin-right:40px;">
                <a href="#">登高阁紫菜肉松鸡蛋卷 海苔蛋卷 糕点<br />江西特产小吃 休闲办公零食</a>
            </div>
            <div class="mid-guige1 f-l" style="margin-right:40px;">
                <p>颜色：蓝色</p>
                <p>尺码：XL</p>
            </div>
            <div class="mid-sl f-l" style="margin:10px 54px 0px 0px;">
                <a href="JavaScript:;" class="sl-left">-</a>
                <input type="text" value="1" />
                <a href="JavaScript:;" class="sl-right">+</a>
            </div>
            <p class="mid-yunfei f-l">¥ 0.00</p>
            <p class="mid-dj f-l">¥ 66.00</p>
            <p class="mid-je f-l" style="margin:10px 120px 0px 0px;">¥ 66.00</p>
            <div class="mid-chaozuo f-l">
                <select>
                    <option>送货上门</option>
                    <option>快递包邮</option>
                </select>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="info-heji">
            <p class="f-r">店铺合计(含运费)：<span>¥46.60</span></p>
            <h3 class="f-r">订单号：2015122332124565</h3>
        </div>
        <div class="info-tijiao">
            <p class="p1">实付款：<span>¥46.60</span></p>
            <button class="btn">提交订单</button>
        </div>
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
<div class="confirmation-tanchuang" xgdz1="">
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
                        <select id="parent_area_code" >      
                                <option value="--" selected="selected">--请选择--</option>
                            <c:forEach items="${userAddr}" var="ss"> 
                                <option value="${ss.area_code}">${ss.area_name}</option>
                            </c:forEach>
                        </select>
                        <select id="city" >      
                                <option value="--" selected="selected">--请选择--</option>
                        </select>

                    </div>
                    <div class="dz-right f-l">
                       <%-- <select id="city" >      
                                <option value="--" selected="selected">--请选择--</option>
                        </select>--%>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">详细地址<span>*</span></p>
                <textarea class="textarea1" placeholder="请如实填写您的详细信息，如街道名称、门牌号、楼层号和房间号。"></textarea>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">邮政编码<span></span></p>
                <input type="text" />
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">收货人姓名<span>*</span></p>
                <input type="text" />
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">联系电话<span>*</span></p>
                <input type="text" />
                <div style="clear:both;"></div>
            </li>
        </ul>
        <button class="btn-pst2">保存</button>
    </div>
</div>

<!--修改地址-->
<%--<div class="confirmation-tanchuang" xgdz2="">
    <div class="tanchuang-bg"></div>
    <div class="tanchuang-con">
        <div class="tc-title">
            <h3>新增地址</h3>
            <a href="JavaScript:;" dz-guan=""><img src="${pageContext.request.contextPath}/images/close-select-city.gif" /></a>
            <div style="clear:both;"></div>
        </div>
        <ul class="tc-con2">
            <li class="tc-li1">
                <p class="l-p">所在地区<span>*</span></p>
                <div class="xl-dz">
                    <div class="dz-left f-l">
                        <p>北京</p>
                        <ul>
                            <li class="current"><a href="#">新疆</a></li>
                            <li><a href="#">甘肃</a></li>
                            <li><a href="#">宁夏</a></li>
                            <li><a href="#">青海</a></li>
                            <li><a href="#">重庆</a></li>
                            <li><a href="#">长寿</a></li>
                        </ul>
                    </div>
                    <div class="dz-right f-l">
                        <p>天安门</p>
                        <ul>
                            <li class="current"><a href="#">乌鲁木齐</a></li>
                            <li><a href="#">昌吉</a></li>
                            <li><a href="#">巴音</a></li>
                            <li><a href="#">郭楞</a></li>
                            <li><a href="#">伊犁</a></li>
                            <li><a href="#">阿克苏</a></li>
                            <li><a href="#">喀什</a></li>
                            <li><a href="#">哈密</a></li>
                            <li><a href="#">克拉玛依</a></li>
                            <li><a href="#">博尔塔拉</a></li>
                            <li><a href="#">吐鲁番</a></li>
                            <li><a href="#">和田</a></li>
                            <li><a href="#">石河子</a></li>
                            <li><a href="#">克孜勒苏</a></li>
                            <li><a href="#">阿拉尔</a></li>
                            <li><a href="#">五家渠</a></li>
                            <li><a href="#">图木舒克</a></li>
                            <li><a href="#">库尔勒</a></li>
                            <div style="clear:both;"></div>
                        </ul>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">详细地址<span>*</span></p>
                <textarea class="textarea1" placeholder="请如实填写您的详细信息，如街道名称、门牌号、楼层号和房间号。"></textarea>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">邮政编码<span></span></p>
                <input type="text" />
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">收货人姓名<span>*</span></p>
                <input type="text" class="shxm" />
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">联系电话<span>*</span></p>
                <input type="text" class="lxdh" />
                <div style="clear:both;"></div>
            </li>
        </ul>
        <button class="btn-pst2">保存</button>
    </div>
</div>--%>
</body>
</html>

