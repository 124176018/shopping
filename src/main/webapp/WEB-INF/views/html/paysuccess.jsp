<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付成功</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body style="position:relative;">

	<!--header-->
    <div class="zl-header">
    	<div class="zl-hd w1200">
        	<p class="hd-p1 f-l">
            	Hi!您好，欢迎来到宅客微购，请登录  <a href="${pageContext.request.contextPath}/注册.html">【免费注册】</a>
            </p>
        	<p class="hd-p2 f-r">
            	<a href="${pageContext.request.contextPath}/index.html">返回首页 (个人中心)</a><span>|</span>
                <a href="${pageContext.request.contextPath}/购物车.html">我的购物车</a><span>|</span>
                <a href="${pageContext.request.contextPath}/我的订单.html">我的订单</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>
	
    <!--logo search weweima-->
    <div class="logo-search w1200">
    	<div class="logo-box f-l">
        	<div class="logo f-l">
            	<a href="${pageContext.request.contextPath}/index.html" title="中林logo"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a>
            </div>
        	<div class="shangjia f-l">
            	<%--<a href="${pageContext.request.contextPath}/JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>--%>
            	<a href="${pageContext.request.contextPath}/JavaScript:;" class="shangjia-a2">商家入口</a>
               <%-- <div class="select-city">
        	<div class="sl-city-top">
            	<p class="f-l">切换城市</p>
                <a class="close-select-city f-r" href="${pageContext.request.contextPath}/JavaScript:;">
                	<img src="${pageContext.request.contextPath}/images/close-select-city.gif" />
                </a>
            </div>
            <div class="sl-city-con">
            	<p>西北</p>
                <dl>
                	<dt>重庆市</dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/JavaScript:;">长寿区</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>新疆</dt>
                    <dd>
                    	<a href=${pageContext.request.contextPath}/"JavaScript:;">齐乌鲁木</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>甘肃</dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/JavaScript:;">兰州</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>宁夏</dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/JavaScript:;">银川</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>青海</dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/JavaScript:;">西宁</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
            </div>
        </div>--%>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="erweima f-r">
        	<a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif" /></a>
        </div>
        <div class="search f-r">
        	<div class="search-info">
            	<input type="text" placeholder="请输入商品名称" />
                <button>搜索</button>
                <div style="clear:both;"></div>
            </div>
            <ul class="search-ul">
                <div style="clear:both;"></div>
            </ul>
        </div>
        <div style="clear:both;"></div>
    </div>
    
    <!--内容开始-->
    <div class="payment w1200">
    	<div class="payment-hd">
        	<h3 class="success">支付成功</h3>
        </div>

        <c:forEach items="${ordersExt.orderitemExtList}" var="orderitem">
        <div class="payment-bd">
        	<dl class="dl-hd">
            	<dt><img src="${pageContext.request.contextPath}/${orderitem.product.pimage}" width="123" height="122" /></dt>
                <dd>
                	<h3>${orderitem.product.pname}</h3>
                    <P>${orderitem.product.pdesc}</P>
                </dd>
                <div style="clear:both;"></div>
            </dl>
            <ul class="ul-bd">
            	<li><span>包邮</span><p></p></li>
            	<li><span>价格</span><p><i>¥${orderitem.subtotal}</i></p></li>
            	<li><span>收货信息</span><p>${ordersExt.addr}-${ordersExt.name}-${ordersExt.phone}</p></li>
            	<li><span>成交时间</span><p>${ordersExt.ordertime}</p></li>
            	<li><span>订单号</span><p>${ordersExt.oid}</p></li>
            </ul>
        </div>
        </c:forEach>
        <div class="payment-ft">
        	<button class="btn2">我的订单</button>
        </div>
    </div>
    
    <!--底部一块-->
    <div class="footer-box">
    	<ul class="footer-info1 w1200">
        	<li>
            	<div class="ft-tu1">
                	<a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif" /></a>
                </div>
                <h3><a href="${pageContext.request.contextPath}/JavaScript:;">号码保障</a></h3>
                <P>所有会员，手机短信验证</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif" /></a>
                </div>
                <h3><a href="${pageContext.request.contextPath}/JavaScript:;">6*12小时客服</a></h3>
                <P>有任何问题随时免费资讯</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif" /></a>
                </div>
                <h3><a href="${pageContext.request.contextPath}/JavaScript:;">专业专攻</a></h3>
                <P>我们只专注于建筑行业的信息服务</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">注册有礼</a></h3>
                <P>随时随地注册有大礼包</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif" /></a>
                </div>
                <h3><a href="${pageContext.request.contextPath}/JavaScript:;">值得信赖</a></h3>
                <P>专业的产品，专业的团队</P>
            </li>
            <div style="clear:both;"></div>
        </ul>
    	<div class="footer-info2 w1200">
        	<div class="ft-if2-left f-l">
            	<dl>
                	<dt><a href="${pageContext.request.contextPath}/6-1服务协议.html">新手上路</a></dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">购物流程</a>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">在线支付</a>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="${pageContext.request.contextPath}/6-1服务协议.html">配送方式</a></dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">货到付款区域</a>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="${pageContext.request.contextPath}/6-1服务协议.html">购物指南</a></dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">订购流程</a>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="${pageContext.request.contextPath}/6-1服务协议.html">售后服务</a></dt>
                    <dd>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">售后服务保障</a>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">退换货政策总则</a>
                    	<a href="${pageContext.request.contextPath}/6-1服务协议.html">自营商品退换细则</a>
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
                <a href="${pageContext.request.contextPath}/#">免责条款</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">隐私保护</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">咨询热点</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">联系我们</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">公司简介</a>
            </p>
        	<p>
            	<a href="${pageContext.request.contextPath}/#">沪ICP备13044278号</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">合字B1.B2-20130004</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">营业执照</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">互联网药品信息服务资格证</a><span>|</span>
                <a href="${pageContext.request.contextPath}/#">互联网药品交易服务资格证</a>
            </p>
            <div class="ft-if3-tu1">
            	<a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif" /></a>
            	<a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif" /></a>
            	<a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif" /></a>
            </div>
        </div>
    </div>
</body>
</html>