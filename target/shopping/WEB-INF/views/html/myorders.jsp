<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的订单</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
        function confirmproduct(oid) {
            $.ajax({
                url: "${pageContext.request.contextPath}/order/confirmProduct.do?oid=" + oid,
                type: "get",
                datatype: "text",
                success: function (data) {
                    if (data.trim() == "yes") {
                        $("#yfh").html("已完成")
                        $("#qrsh").html("收货成功")
                        alert("收货成功")
                    }
                }


            })

        }

        function yishouhuo(oid) {
            $.ajax({
                url: "${pageContext.request.contextPath}/order/tixingset.do?oid=" + oid,
                type: "get",
                datatype: "text",
                success: function (data) {
                    if (data.trim() == "yes") {
                        $("#tx").html("已发货")
                        $("#ysh").html("待付款")
                    }
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
            <c:if test="${su!=null}">
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购 <a href="JavaScript:">【${su.username}】</a>
        </p>
        </c:if>
        <c:if test="${su==null}">
            <p class="hd-p1 f-l">
                Hi!您好，欢迎来到宅客微购<a href="${pageContext.request.contextPath}/user/getRegistration.do">【注册】</a>
            </p>
        </c:if>
        </p>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/cate/selectCateName.do">返回首页</a><span>|</span>
            <a href="${pageContext.request.contextPath}/user/personaldata.do"> 个人中心</a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/getCart.do">我的购物车</a><span>|</span>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>

<!--logo search weweima-->
<div class="logo-search w1200">
    <div class="logo-box f-l">
        <div class="logo f-l">
            <a href="${pageContext.request.contextPath}/index.html" title="中林logo"><img
                    src="${pageContext.request.contextPath}/images/zl2-01.gif"/></a>
        </div>
        <div class="shangjia f-l">
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="erweima f-r">
        <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                src="${pageContext.request.contextPath}/images/zl2-04.gif"/></a>
    </div>
    <div class="search f-r">
        <form action="${pageContext.request.contextPath}/cate/doproducts.do?cid=${allProduct.cid}&csid=${allProduct.csid}"
              method="post">
            <div class="search-info">
                <input type="text" placeholder="请输入商品名称" name="pname" value="${allProduct.pname}"/>
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
                            <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif"/><a
                                    href="${pageContext.request.contextPath}/cate/doproducts.do?cid=${la.cid}">${la.cname}</a>
                            </dt>
                        </dl>
                        <div class="kuaijie-con">
                            <c:forEach items="${la.categorysSeconds}" var="lb">
                                <dl class="kj-dl2">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/cate/doproducts.do?csid=${lb.csid}">${lb.csname}</a>
                                    </dt>
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

<!--内容开始-->
<div class="personal w1200">
    <div class="personal-left f-l">
        <div class="personal-l-tit">
            <h3>个人中心</h3>
        </div>
        <ul>
            <li class="per-li2"><a href="${pageContext.request.contextPath}/user/personaldata.do">个人资料<span></span></a>
            </li>
            <li class="per-li3"><a
                    href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${allProduct.pageNow}&uid=${su.uid}">我的订单<span>></span></a>
            </li>
            <li class="per-li5"><a href="${pageContext.request.contextPath}/cart/getCart.do">购物车<span></span></a></li>
        </ul>
    </div>
    <div class="order-right f-r">
        <div class="order-hd">
            <dl class="f-l">
                <dt>
                    <a href="${pageContext.request.contextPath}/#"><img
                            src="${pageContext.request.contextPath}/images/data-tu2.gif"/></a>
                </dt>
                <dd>
                    <h3><a href="${pageContext.request.contextPath}/#">${su.name}</a></h3>
                    <p>${su.username}</p>
                </dd>
                <div style="clear:both;"></div>
            </dl>
            <div class="ord-dai f-l">
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="order-md">
            <div class="md-tit">
                <h3>我的订单</h3>
            </div>
            <div class="md-hd">
                <%--<P class="md-p1"><input type="checkbox" name="hobby" value=""></input><span>全选</span></P>--%>
                <p class="md-p1">订单号</p>
                <p class="md-p2">商品信息</p>
                <p class="md-p4">单价（元）</p>
                <p class="md-p5">金额（元）</p>
                <p class="md-p6">操作</p>
            </div>
            <c:forEach items="${pageBenForOrder.list}" var="orderExt">
                <div class="dai">
                    <span>订单号：${orderExt.oid}</span>
                    <c:if test="${orderExt.state==0}"><span><font color="red">待付款</font></span> </c:if>
                    <c:if test="${orderExt.state==1}"><span id="tx"><font color="blue">未发货</font></span> </c:if>
                    <c:if test="${orderExt.state==2}"><span id="yfh"><font color="#7fff00">已发货</font></span> </c:if>
                    <c:if test="${orderExt.state==3}"><span><font color="#ffa07a">已付款</font></span> </c:if>
                </div>

                <c:forEach items="${orderExt.orderitemExtList}" var="orderitem">
                    <div class="md-info">

                        <div class="dai-con">
                            <dl class="dl1">
                                <dt>
                                    <a href="#" class="f-l"><img
                                            src="http://localhost:80/manager/${orderitem.product.pimage}" width="82px"
                                            height="82px"/></a>
                                    <div style="clear:both;"></div>
                                </dt>
                                <dd>
                                    <p>${orderitem.product.pname}</p>
                                    <span>数量：${orderitem.count}</span>
                                </dd>
                                <div style="clear:both;"></div>
                            </dl>
                            <div class="dai-right f-l" style="margin-top: 50px">
                                <p class="d-r-p2">${orderitem.product.shop_price}RMB</p>
                                <p class="d-r-p3">${orderitem.product.shop_price*orderitem.count}RMB</p>
                                <p class="d-r-p3">
                                    <c:if test="${orderExt.state==0}"><span> <a
                                            href="${pageContext.request.contextPath}/order/gotopay.do?oid=${orderExt.oid}">去付款</a></span> </c:if>
                                    <c:if test="${orderExt.state==1}"><span id="ysh"> <a href="JavaScript:"
                                                                                         onclick="yishouhuo(${orderExt.oid})">提醒发货</a></span> </c:if>
                                    <c:if test="${orderExt.state==2}"><span id="qrsh"> <a href="JavaScript:"
                                                                                          onclick="confirmproduct(${orderExt.oid})">确认收货</a></span> </c:if>
                                    <c:if test="${orderExt.state==3}"><span> <a href="#">已完成</a></span> </c:if>
                                </p>

                            </div>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                </c:forEach>
            </c:forEach>

            <!--分页-->
            <div class="paging">
                <div class="pag-left f-l">
                    <c:if test="${pageBenForOrder.pageNow!=1}">
                        <a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${pageBenForOrder.pageNow-1}&uid=${su.uid}"
                           class="about left-r f-l">«</a>
                    </c:if>
                    <ul class="left-m f-l">

                        <%--中间页--%>
                        <%--显示6页中间页[begin=起始页,end=最大页]--%>
                        <%--总页数没有6页--%>
                        <c:choose>
                            <c:when test="${pageBenForOrder.pageCount <= 6}">
                                <c:set var="begin" value="1"/>
                                <c:set var="end" value="${pageBenForOrder.pageCount}"/>
                            </c:when>
                            <%--页数超过了6页--%>
                            <c:otherwise>
                                <c:set var="begin" value="${pageBenForOrder.pageNow - 1}"/>
                                <c:set var="end" value="${pageBenForOrder.pageNow + 3}"/>
                                <%--如果begin减1后为0,设置起始页为1,最大页为6--%>
                                <c:if test="${begin -1 <= 0}">
                                    <c:set var="begin" value="1"/>
                                    <c:set var="end" value="6"/>
                                </c:if>
                                <%--如果end超过最大页,设置起始页=最大页-5--%>
                                <c:if test="${end > pageBenForOrder.pageCount}">
                                    <c:set var="begin" value="${pageBenForOrder.pageCount - 5}"/>
                                    <c:set var="end" value="${pageBenForOrder.pageCount}"/>
                                </c:if>
                            </c:otherwise>
                        </c:choose>
                        <%--遍历--%>
                        <c:forEach var="i" begin="${begin}" end="${end}">
                            <%--当前页,选中--%>
                            <c:choose>
                                <c:when test="${i == pageBenForOrder.pageNow}">
                                    <li class="active"><a
                                            href="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}&pageNow=${i}"
                                            class="about left-r f-l">${i}</a></li>
                                </c:when>
                                <%--不是当前页--%>
                                <c:otherwise>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${i}&uid=${su.uid}"
                                           class="about left-r f-l">${i}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <%--如果是第一页,不允许点击--%>
                        <c:if test="${pageBenForOrder.pageNow != 1}">
                            <c:choose>
                                <c:when test="${pageBenForOrder.pageNow == 1}">
                                    <li class="disabled">
                                        <a href="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}&pageNow=1"
                                           class="about left-r f-l" aria-label="Previous">
                                            <span aria-hidden="true">首页</span>
                                        </a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <%-- 点击到首页--%>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}&pageNow=1"
                                           class="about left-r f-l" aria-label="Previous">
                                            <span aria-hidden="true">首页</span>
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <%--如果是最后一页,不允许点击--%>
                        <c:if test="${pageBenForOrder.pageNow != pageBenForOrder.pageCount}">
                            <c:choose>
                                <c:when test="${pageBenForOrder.pageNow == pageBenForOrder.pageCount}">
                                    <li class="disabled">
                                        <a href="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}&pageNow=${pageBenForOrder.pageCount}"
                                           class="about left-r f-l" aria-label="Previous">
                                            <span aria-hidden="true">尾页</span>
                                        </a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <%-- 点击到尾页--%>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}&pageNow=${pageBenForOrder.pageCount}"
                                           class="about left-r f-l" aria-label="Next">
                                            <span aria-hidden="true">尾页</span>
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <div style="clear:both;"></div>
                    </ul>
                    <c:if test="${pageBenForOrder.pageNow!=pageBenForOrder.pageCount}">
                        <a href="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}&pageNow=${pageBenForOrder.pageNow+1}"
                           class="about left-l f-l">»</a>
                    </c:if>
                    <div style="clear:both;"></div>
                </div>
                <form action="${pageContext.request.contextPath}/order/myOrders.do?uid=${su.uid}" method="post">
                    <div class="pag-right f-l">
                        <div class="jump-page f-l">
                            到第<input type="number" min="1" max="${pageBenForOrder.pageCount}" name="pageNow"/>页
                        </div>
                        <button class="f-l" type="submit" name="${pageBenForOrder.pageNow}">确定</button>
                        <div style="clear:both;"></div>
                    </div>
                </form>
                <div style="clear:both;"></div>
            </div>
            <div class="md-ft">
                <button>结算</button>
            </div>
        </div>

    </div>
    <div style="clear:both;"></div>
</div>

<!--底部一块-->
<div class="footer-box">
    <ul class="footer-info1 w1200">
        <li>
            <div class="ft-tu1">
                <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                        src="${pageContext.request.contextPath}/images/zl2-86.gif"/></a>
            </div>
            <h3><a href="${pageContext.request.contextPath}/JavaScript:;">号码保障</a></h3>
            <P>所有会员，手机短信验证</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                        src="${pageContext.request.contextPath}/images/zl2-87.gif"/></a>
            </div>
            <h3><a href="${pageContext.request.contextPath}/JavaScript:;">6*12小时客服</a></h3>
            <P>有任何问题随时免费资讯</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                        src="${pageContext.request.contextPath}/images/zl2-88.gif"/></a>
            </div>
            <h3><a href="${pageContext.request.contextPath}/JavaScript:;">专业专攻</a></h3>
            <P>我们只专注于建筑行业的信息服务</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                        src="${pageContext.request.contextPath}/images/zl2-89.gif"/></a>
            </div>
            <h3><a href="${pageContext.request.contextPath}/JavaScript:;">注册有礼</a></h3>
            <P>随时随地注册有大礼包</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                        src="${pageContext.request.contextPath}/images/zl2-90.gif"/></a>
            </div>
            <h3><a href="${pageContext.request.contextPath}/JavaScript:;">值得信赖</a></h3>
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
            <p>周一至周日 9:00-24:00</p>
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
            <a href="#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif"/></a>
            <a href="#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif"/></a>
            <a href="#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif"/></a>
        </div>
    </div>
</div>

<!--查看物流 弹窗-->
<div class="view-logistics">
    <div class="view-bg"></div>
    <div class="view-con">
        <div class="view-tit">
            <h3>物流信息</h3>
            <a href="JavaScript:;" guanbi="">
                <img src="${pageContext.request.contextPath}/images/close-select-city.gif"/>
            </a>
            <div style="clear:both;"></div>
        </div>
        <div class="view-bd">
            <ul>
                <li class="bd-pdl-li after"><span>1</span>2015-08-06　周四　　14:06:53您的订单开始处理</li>
                <li class="after"><span>2</span>14:08:44您的订单待配货</li>
                <li><span>3</span>14:16:04您的包裹已出库</li>
                <li><span>4</span>14:16:03商家正通知快递公司揽件</li>
                <li><span>5</span>21:47:54【惠州市】圆通速递 广东省惠州市惠东县收件员 已揽件</li>
                <li class="bd-pdb-li"><span>6</span>22:13:51广东省惠州市惠东县公司 已发出</li>
                <li class="bd-pdl-li"><span>7</span>2015-08-07　周五　　04:57:33广州转运中心公司 已收入</li>
                <li><span>8</span>04:58:54广州转运中心公司 已发出</li>
                <li><span>9</span>2015-08-08周六22:46:43重庆转运中心公司 已收入</li>
                <li class="bd-pdb-li"><span>10</span>23:01:49【重庆市】重庆转运中心 已发出</li>
                <li class="bd-pdl-li"><span>11</span>2015-08-09　周日　　00:57:11【重庆市】快件已到达 重庆市南岸区</li>
                <li><span>12</span>11:14:52重庆市南岸区 已收入</li>
                <li><span>13</span>11:14:52【重庆市】重庆市南岸区派件员：李天生 13330284757正在为您派件</li>
                <li class="bd-bd-li"><span>14</span>15:53:14【重庆市】重庆市南岸区公司 已签收 签收人：保安，感谢使用圆通速递，期待再次为您服务</li>
            </ul>
            <p class="sign">您的包裹已被签收！</p>
        </div>
    </div>
</div>

</body>
</html>
