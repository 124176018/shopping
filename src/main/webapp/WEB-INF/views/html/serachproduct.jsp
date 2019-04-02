
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/27
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>餐饮娱乐首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body>
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
                            <a href="JavaScript:;">巴南区</a>
                            <a href="JavaScript:;">南岸区</a>
                            <a href="JavaScript:;">九龙坡区</a>
                            <a href="JavaScript:;">沙坪坝区</a>
                            <a href="JavaScript:;">北碚</a>
                            <a href="JavaScript:;">江北区</a>
                            <a href="JavaScript:;">渝北区</a>
                            <a href="JavaScript:;">大渡口区</a>
                            <a href="JavaScript:;">渝中区</a>
                            <a href="JavaScript:;">万州</a>
                            <a href="JavaScript:;">武隆</a>
                            <a href="JavaScript:;">晏家</a>
                            <a href="JavaScript:;">长寿湖</a>
                            <a href="JavaScript:;">云集</a>
                            <a href="JavaScript:;">华中</a>
                            <a href="JavaScript:;">林封</a>
                            <a href="JavaScript:;">双龙</a>
                            <a href="JavaScript:;">石回</a>
                            <a href="JavaScript:;">龙凤呈祥</a>
                            <a href="JavaScript:;">朝天门</a>
                            <a href="JavaScript:;">中华</a>
                            <a href="JavaScript:;">玉溪</a>
                            <a href="JavaScript:;">云烟</a>
                            <a href="JavaScript:;">红塔山</a>
                            <a href="JavaScript:;">真龙</a>
                            <a href="JavaScript:;">天子</a>
                            <a href="JavaScript:;">娇子</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>新疆</dt>
                        <dd>
                            <a href="JavaScript:;">齐乌鲁木</a>
                            <a href="JavaScript:;">昌吉</a>
                            <a href="JavaScript:;">巴音</a>
                            <a href="JavaScript:;">郭楞</a>
                            <a href="JavaScript:;">伊犁</a>
                            <a href="JavaScript:;">阿克苏</a>
                            <a href="JavaScript:;">喀什</a>
                            <a href="JavaScript:;">哈密</a>
                            <a href="JavaScript:;">克拉玛依</a>
                            <a href="JavaScript:;">博尔塔拉</a>
                            <a href="JavaScript:;">吐鲁番</a>
                            <a href="JavaScript:;">和田</a>
                            <a href="JavaScript:;">石河子</a>
                            <a href="JavaScript:;">克孜勒苏</a>
                            <a href="JavaScript:;">阿拉尔</a>
                            <a href="JavaScript:;">五家渠</a>
                            <a href="JavaScript:;">图木舒克</a>
                            <a href="JavaScript:;">库尔勒</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>甘肃</dt>
                        <dd>
                            <a href="JavaScript:;">兰州</a>
                            <a href="JavaScript:;">天水</a>
                            <a href="JavaScript:;">巴音</a>
                            <a href="JavaScript:;">白银</a>
                            <a href="JavaScript:;">庆阳</a>
                            <a href="JavaScript:;">平凉</a>
                            <a href="JavaScript:;">酒泉</a>
                            <a href="JavaScript:;">张掖</a>
                            <a href="JavaScript:;">武威</a>
                            <a href="JavaScript:;">定西</a>
                            <a href="JavaScript:;">金昌</a>
                            <a href="JavaScript:;">陇南</a>
                            <a href="JavaScript:;">临夏</a>
                            <a href="JavaScript:;">嘉峪关</a>
                            <a href="JavaScript:;">甘南</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>宁夏</dt>
                        <dd>
                            <a href="JavaScript:;">银川</a>
                            <a href="JavaScript:;">吴忠</a>
                            <a href="JavaScript:;">石嘴山</a>
                            <a href="JavaScript:;">中卫</a>
                            <a href="JavaScript:;">固原</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>青海</dt>
                        <dd>
                            <a href="JavaScript:;">西宁</a>
                            <a href="JavaScript:;">海西</a>
                            <a href="JavaScript:;">海北</a>
                            <a href="JavaScript:;">果洛</a>
                            <a href="JavaScript:;">海东</a>
                            <a href="JavaScript:;">黄南</a>
                            <a href="JavaScript:;">玉树</a>
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
        <div class="nav-kuaijie yjp-hover1 f-l">
            <a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
            <div class="kuaijie-box yjp-show1" style="display:none;">
                <c:forEach items="${allCateName}" var="la">
                    <div class="kuaijie-info">

                        <dl class="kj-dl1">
                            <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${la.cid}">${la.cname}</a></dt>
                        </dl>
                        <div class="kuaijie-con">
                            <c:forEach items="${la.categorysSeconds}" var="lb">
                                <dl class="kj-dl2">
                                    <dt><a href="${pageContext.request.contextPath}/cate/doproducts.do?csid=${lb.csid}">${lb.csname}</a></dt>
                                </dl>
                            </c:forEach>
                            <div style="clear:both;"></div>
                        </div>

                    </div>
                </c:forEach>
            </div>
        </div>
        <ul class="nav-font f-l">
            <c:forEach items="${allCateName}" var="lc">
                <li><a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${lc.cid}">${lc.cname}</a></li>
            </c:forEach>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
</div>

<!--广告栏-->
<%--<div class="advertisement w1200">
    <p style="text-align:center;font-size:15px;color:#000;line-height:74px;">广告栏</p>
</div>--%>

<!--公司logo栏-->
<%--<div class="beaut-lg w1200">
    <ul>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li style="width:155px; border-right:0;"><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li style="width:155px; border-right:0;"><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li style="width:155px; border-right:0;"><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu1.gif" /></a></li>
        <li><a href="#"><img src="images/beaut-lg-tu2.gif" /></a></li>
        <li style="width:155px; border-right:0;"><a href="#"><img src="images/beaut-lg-tu3.gif" /></a></li>
        <div style="clear:both;"></div>
    </ul>
</div>--%>

<!--广告栏-->
<%--<div class="advertisement w1200">
    <p style="text-align:center;font-size:15px;color:#000;line-height:74px;">广告栏</p>
</div>--%>

<!--内容页面-->
<div class="shopping-content w1200">
    <div class="sp-con-info">

        <ul class="sp-info-r m-act beaut">
            <c:forEach items="${allProduct.list}" var="ld">
            <li style="border-bottom:0; border-right:0;">
                <div class="li-top">
                    <a href="${pageContext.request.contextPath}/cate/pdproducts.do?pid=${ld.pid}" class="li-top-tu"><img src="${pageContext.request.contextPath}/images/beaut-con-li-tu2.gif" /></a>
                    <p class="jiage"><span class="sp1">￥109</span><span class="sp2">￥209</span></p>
                </div>
                <p class="miaoshu">${ld.pname}</p>
                <div class="li-md">
                    <div class="md-l f-l">
                        <p class="md-l-l f-l" ap="">1</p>
                        <div class="md-l-r f-l">
                            <a href="JavaScript:;" class="md-xs" at="">∧</a>
                            <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="md-r f-l">
                        <button class="md-l-btn1">立即购买</button>
                        <button class="md-l-btn2">加入购物车</button>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <p class="pingjia">88888评价</p>
                <p class="weike">微克宅购自营</p>
                </c:forEach>
            </li>
            <div style="clear:both;"></div>
        </ul>

        <!--分页-->
        <div class="jump-page f-l">
            第【${allProduct.pageNow}】页&nbsp&nbsp&nbsp&nbsp&nbsp共【${allProduct.pageCount}】页
        </div>
        <div class="paging">
            <div class="pag-left f-l">
                <c:if test="${allProduct.pageNow!=1}">
                    <a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=${allProduct.pageNow-1}" class="about left-r f-l">«</a>
                </c:if>
                <ul class="left-m f-l">

                    <%--中间页--%>
                    <%--显示6页中间页[begin=起始页,end=最大页]--%>
                    <%--总页数没有6页--%>
                    <c:choose>
                        <c:when test="${allProduct.pageCount <= 6}">
                            <c:set var="begin" value="1"/>
                            <c:set var="end" value="${allProduct.pageCount}"/>
                        </c:when>
                        <%--页数超过了6页--%>
                        <c:otherwise>
                            <c:set var="begin" value="${allProduct.pageNow - 1}"/>
                            <c:set var="end" value="${allProduct.pageNow + 3}"/>
                            <%--如果begin减1后为0,设置起始页为1,最大页为6--%>
                            <c:if test="${begin -1 <= 0}">
                                <c:set var="begin" value="1"/>
                                <c:set var="end" value="6"/>
                            </c:if>
                            <%--如果end超过最大页,设置起始页=最大页-5--%>
                            <c:if test="${end > allProduct.pageCount}">
                                <c:set var="begin" value="${allProduct.pageCount - 5}"/>
                                <c:set var="end" value="${allProduct.pageCount}"/>
                            </c:if>
                        </c:otherwise>
                    </c:choose>
                    <%--遍历--%>
                    <c:forEach var="i" begin="${begin}" end="${end}">
                        <%--当前页,选中--%>
                        <c:choose>
                            <c:when test="${i == allProduct.pageNow}">
                                <li class="active"><a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=${i}" class="about left-r f-l">${i}</a></li>
                            </c:when>
                            <%--不是当前页--%>
                            <c:otherwise>
                                <li><a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=${i}" class="about left-r f-l">${i}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <%--如果是第一页,不允许点击--%>
                    <c:if test="${allProduct.pageNow != 1}">
                        <c:choose>
                            <c:when test="${allProduct.pageNow == 1}">
                                <li class="disabled">
                                    <a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=1" class="about left-r f-l" aria-label="Previous">
                                        <span aria-hidden="true">首页</span>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <%-- 点击到首页--%>
                                <li>
                                    <a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=1" class="about left-r f-l" aria-label="Previous">
                                        <span aria-hidden="true">首页</span>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:if>

                    <%--如果是最后一页,不允许点击--%>
                    <c:if test="${allProduct.pageNow != allProduct.pageCount}">
                        <c:choose>
                            <c:when test="${allProduct.pageNow == allProduct.pageCount}">
                                <li class="disabled">
                                    <a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=${allProduct.pageCount}" class="about left-r f-l" aria-label="Previous">
                                        <span aria-hidden="true">尾页</span>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <%-- 点击到尾页--%>
                                <li>
                                    <a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=${allProduct.pageCount}" class="about left-r f-l" aria-label="Next">
                                        <span aria-hidden="true">尾页</span>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:if>

                    <div style="clear:both;"></div>
                </ul>
                <c:if test="${allProduct.pageNow!=allProduct.pageCount}">
                    <a href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}&pageNow=${allProduct.pageNow+1}" class="about left-l f-l">»</a>
                </c:if>
                <div style="clear:both;"></div>
            </div>
            <form action="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}&pname=${allProduct.pname}" method="post">
                <div class="pag-right f-l">
                    <div class="jump-page f-l">
                        到第<input type="number" min="1" max="${allProduct.pageCount}" name="pageNow"/>页
                    </div>
                    <button class="f-l" type="submit" name="${allProduct.pageNow}">确定</button>
                    <div style="clear:both;"></div>
                </div>
            </form>
            <div style="clear:both;"></div>
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

</body>
</html>
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
