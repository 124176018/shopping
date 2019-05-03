
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>中林首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhonglingxm2.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body id="top">

<!--header-->
<div class="zl-header">
    <div class="zl-hd w1200">
        <c:if test="${su!=null}" >
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购  <a href="${pageContext.request.contextPath}/注册.html">【${su.username}】</a>
        </p>
        </c:if>
        <c:if test="${su==null}">
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购<a href="${pageContext.request.contextPath}/注册.html">【${su.username}】</a>
        </p>
        </c:if>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/cate/selectCateName.do">返回首页</a><span>|</span>
            <a href="index.html"> 个人中心</a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/getCart.do">我的购物车</a><span>|</span>
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
            <a href="${pageContext.request.contextPath}/JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            <a href="${pageContext.request.contextPath}/JavaScript:;" class="shangjia-a2">商家入口</a>
            <div class="select-city">
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
                            <a href="${pageContext.request.contextPath}/JavaScript:;">娇子</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>新疆</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">齐乌鲁木</a>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">库尔勒</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>甘肃</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">兰州</a>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">甘南</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>宁夏</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">银川</a>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">固原</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>青海</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">西宁</a>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">海西</a>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">海北</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="erweima f-r">
        <a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif" /></a>
    </div>
    <div class="search f-r">
        <form action="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}" method="post">
            <div class="search-info">
                <input  type="text" placeholder="请输入商品名称"name="pname" value="${allProduct.pname}"/>
                <button type="submit">搜索</button>
                <div style="clear:both;"></div>
            </div>
            <ul class="search-ul">
                <div style="clear:both;"></div>
            </ul>
        </form>
    </div>
    <div style="clear:both;"></div>
</div>

<!--nav-->
<div class="nav-box">
    <div class="nav-kuai w1200">
        <div class="nav-kuaijie f-l">
            <a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
            <div class="kuaijie-box">
                <c:forEach items="${listcateNameseconds}" var="lmo">
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="">${lmo.cname}</a></dt>
                    </dl>
                    <div class="kuaijie-con">
                        <c:forEach items="${lmo.categorysSeconds}" var="lmoo">
                        <dl class="kj-dl2" style="display:inline-block">
                            <dt><a href="${pageContext.request.contextPath}/cate/doproducts.do?csid=${lmoo.csid}">${lmoo.csname}</a></dt>
                        </dl>
                        </c:forEach>
                        <div style="clear:both;"></div>
                    </div>

                </div>
                </c:forEach>
            </div>
        </div>
        <ul class="nav-font f-l">
       <c:forEach items="${listcateNameseconds}" var="lmo">
        <li><a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${lmo.cid}">${lmo.cname}</a></li>
        </c:forEach>
            <li><a href="二手市场首页.html">二手市场</a><span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span></li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
</div>

<!--banner-->
<div class="banner">
    <ul class="ban-ul1">
        <li><a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        <li><a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        <li><a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        <li><a href="${pageContext.request.contextPath}/JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
    </ul>
    <div class="ban-box w1200">
        <ol class="ban-ol1">
            <li class="current"></li>
            <li></li>
            <li></li>
            <li></li>
            <div style="clear:both;"></div>
        </ol>
    </div>
</div>

<!--热门推荐-->
<div class="zl-tuijian w1200">
    <div class="tuijian-left f-l">
        <img src="${pageContext.request.contextPath}/images/zl2-14.png" />
    </div>
    <ul class="tuijian-right f-l">
        <li>
            <div class="li-box li-box1">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">锦尚世家</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">锦绣花苑　传承世家</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box2">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">速8快捷酒店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最大的经济型酒店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box3">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最养生的火锅</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box4">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box5">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">速8快捷酒店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最大的经济型酒店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box6">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最养生的火锅</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box7">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box8">
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                <a href="${pageContext.request.contextPath}/JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <div style="clear:both;"></div>
    </ul>
    <div style="clear:both;"></div>
</div>



<!--2F  餐饮娱乐-->
<c:forEach items="${listcateNameseconds}" var="louceng">
<div class="zl-info w1200">
    <div class="zl-title1" style="border-color:#FF9A02;">
        <h3 class="title1-h3 f-l">${louceng.cname}</h3>
        <div style="clear:both;"></div>
    </div>
    <div class="zl-con">
        <div class="zl-con-left f-l" style="background:#FBEAD0;">
            <div class="zl-tu">
                <img src="${pageContext.request.contextPath}/images/zl2-33.gif" class="zl-img" />
            </div>
            <p class="zl-lp" style="color:#FF9901;">
                周末，嗨起来</br>
                兄弟，躁起来
            </p>
            <ul class="zl-lhover" style=" background:#FF9A02;">
                <c:forEach items="${louceng.categorysSeconds}" var="louceng1">
                    <li><a href="${pageContext.request.contextPath}/cate/doproducts.do?csid=${louceng1.csid}">${louceng1.csname}</a></li>
                </c:forEach>
                <div style="clear:both;"></div>
            </ul>
        </div>
        <div class="zl-con-right f-l">
            <ul class="zl-rul1 lihover">
    <c:forEach items="${louceng.categorysSeconds}" var="louceng2">
                <li>
                    <div class="sy-tu1">
                        <a href="${pageContext.request.contextPath}/cate/doproducts.do?csid=${louceng2.csid}"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                    </div>
                    <div class="sy-tit1">
                        <a href="${pageContext.request.contextPath}">${louceng2.csname}</a>
                    </div>
                    <div class="sy-tit2">
                        <p><a href="#">都市新大新特色豆米锅</a></p>
                        <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                        <p>电话：023-63310530</p>
                    </div>
                </li>
    </c:forEach>
                <div style="clear:both;"></div>
            </ul>
            <ul class="zl-rul1 lihover">
                <div style="clear:both;"></div>
            </ul>
        </div>
        <div style="clear:both;"></div>
    </div>
</div>
</c:forEach>



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

<!--固定右侧-->
<ul class="youce">
    <li class="li1">
        <a href="index.html" class="li1-tu1"><img src="${pageContext.request.contextPath}/images/zl2-94.png" /></a>
        <a href="index.html" class="li1-zi1">返回首页</a>
    </li>
    <li class="li2">
        <a href="购物车.html"><img src="${pageContext.request.contextPath}/images/zl2-95.png" />购</br>物</br>车</a>
    </li>
    <li class="li3">
        <a href="${pageContext.request.contextPath}" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-96.png" /></a>
        <a href="${pageContext.request.contextPath}" class="li1-zi2">我关注的品牌</a>
    </li>
    <li class="li3">
        <a href="${pageContext.request.contextPath}浏览记录.html" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-97.png" /></a>
        <a href="${pageContext.request.contextPath}浏览记录.html" class="li1-zi2">我看过的</a>
    </li>
    <li class="li4">
        <a href="${pageContext.request.contextPath}JavaScript:;" class="li1-tu2"><img src="i${pageContext.request.contextPath}/mages/zl2-98.gif" /></a>
        <div class="li4-ewm">
            <a href="${pageContext.request.contextPath}JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-101.gif" /></a>
            <p>扫一扫</p>
        </div>
    </li>
    <li class="li3 li5">
        <a href="${pageContext.request.contextPath}" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-99.gif" /></a>
        <a href="${pageContext.request.contextPath}" class="li1-zi2">返回顶部</a>
    </li>
</ul>


</body>
</html>
