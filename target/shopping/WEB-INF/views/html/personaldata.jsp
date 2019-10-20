<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人资料</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
        $(function () {
            //验证注册邮箱
            $("#email").blur(function () {
                var Email = new String(document.getElementById("email").value);
                var positionDot = Email.indexOf(".", positionAt);
                var positionAt = Email.indexOf("@");
                var msg2 = $("#msg2");
                var sbb = $("#sbb");
                if (Email == null || Email == "") {
                    msg2.html("请输入邮箱");
                    sbb.attr("disabled", true);
                } else if (positionAt == -1) {
                    msg2.html("邮箱格式不正确");
                    sbb.attr("disabled", true);
                } else if (positionDot == -1) {
                    msg2.html("邮箱格式不正确");
                    sbb.attr("disabled", true);
                } else if (positionDot == Email.length - 1 || positionDot == positionAt + 1) {
                    msg2.html("邮箱格式不正确");
                    sbb.attr("disabled", true);
                } else {
                    msg2.html("邮箱格式正确");
                    sbb.attr("disable", false);
                }
            })
            /*判断手机号是否符合规则*/
            $("#phone").blur(function () {
                var phone = $("#phone").val();
                var msg1 = $("#msg1");
                var sbb = $("#sbb");
                var myreg = /^((0?1[358]\d{9})|((0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}))$/;
                if (myreg.test(phone)) {
                    msg1.html("可以使用");
                    sbb.attr("disabled", false);

                } else {
                    msg1.html("请输入正确的手机号");
                    sbb.attr("disabled", true);
                }

            })
            /*判断俩吃密码是否一致*/
            $("#password1").blur(function dopassword() {
                var password = $("#password").val();
                var password1 = $("#password1").val();
                var sbb = $("#sbb");
                var msg3 = $("#msg3");
                if (password != password1) {
                    alert("俩次密码不一致")
                    sbb.attr("disabled", true);
                } else {
                    sbb.attr("disable", false);
                }

            })
            /*判断密码位数和密码格式*/
            $("#password").blur(function dopasswordnumber() {
                var password = $("#password").val();
                var msg5 = $("#msg5");
                var sbb = $("#sbb");
                if (password.length >= 1 && password.length <= 16) {
                    msg5.html("密码格式正确");
                    sbb.attr("disable", false);
                } else {
                    msg5.html("最多位16位");
                    sbb.attr("disable", true);
                }
            })
        })

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
            <a href="${pageContext.request.contextPath}/cart/getCart.do">我的购物车</a><span>|</span>
            <a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${allProduct.pageNow}&uid=${su.uid}">我的订单</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>

<!--logo search weweima-->
<div class="logo-search w1200">
    <div class="logo-box f-l">
        <div class="logo f-l">
            <a href="${pageContext.request.contextPath}/index.html" title="中林logo"><img src="images/zl2-01.gif"/></a>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="erweima f-r">
        <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif"/></a>
    </div>
    <div class="search f-r">
        <div class="search-info">
            <input type="text" placeholder="请输入商品名称"/>
            <button>搜索</button>
            <div style="clear:both;"></div>
        </div>
        <ul class="search-ul">
            <div style="clear:both;"></div>
        </ul>
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
            <li class="per-li2"><a href="${pageContext.request.contextPath}/#">个人资料<span>></span></a></li>
            <li class="per-li3"><a
                    href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${allProduct.pageNow}&uid=${su.uid}">我的订单<span>></span></a>
            </li>
            <li class="per-li5"><a href="${pageContext.request.contextPath}/cart/getCart.do">购物车<span>></span></a></li>
        </ul>
    </div>
    <div class="personal-r f-r">
        <div class="personal-right">
            <div class="personal-r-tit">
                <h3>个人资料</h3>
            </div>
            <form action="${pageContext.request.contextPath}/user/upperson.do" method="post">
                <input type="hidden" name="uid" value="${su.uid}">
                <div class="data-con">
                    <div class="dt1">
                        <p class="f-l">当前头像：</p>
                        <div class="touxiang f-l">
                            <div class="tu f-l">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/images/data-tu.gif"/>
                                    <input type="file" name="" id="" class="img1"/>
                                </a>
                            </div>
                            <a href="JavaScript:;" class="sc f-l" shangchuang="">上传头像</a>
                            <div style="clear:both;"></div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                        <p class="dt-p f-l">昵称：</p>
                        <input type="text" name="name" value="${su.name}"/>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                        <p class="dt-p f-l">密码：</p>
                        <input type="password" name="password" id="password" value="${su.password}"/>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 ">
                        <p class="dt-p f-l">确认密码：</p>
                        <input type="password" name="password1" id="password1" value="${su.password}"
                               placeholder="请再次确认密码"/>
                        <span id="msg5"></span><span id="msg4"></span><span id="msg3"></span>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                        <p class="dt-p f-l">邮箱：</p>
                        <input type="text" name="email" id="email" value="${su.email}"/>
                        <span id="msg2"></span>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                        <p class="dt-p f-l">手机：</p>
                        <input type="text" name="phone" id="phone" value="${su.phone}"/>
                        <span id="msg1"></span>
                    </div>

                </div>
                <button class="btn-pst" id="sbb" type="submit">保存</button>
            </form>
        </div>
    </div>
    <div style="clear:both;"></div>
</div>

<!--上传头像弹窗
<div class="tanchuang">
    <div class="t-c-bg"></div>
    <div class="t-c-con">
        <div class="tc-tit">
            <h3>上传头像</h3>
            <a href="JavaScript:;" delete=""><img src="images/t-c-del.gif" /></a>
            <div style="clear:both;"></div>
        </div>
        <div class="tc-con">
            <a href="#"><img src="images/tc-tu.gif" /></a>
            <button>保存头像</button>
        </div>
    </div>
</div>-->

<!--底部一块-->
<div class="footer-box">
    <ul class="footer-info1 w1200">
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif"/></a>
            </div>
            <h3><a href="JavaScript:;">号码保障</a></h3>
            <P>所有会员，手机短信验证</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif"/></a>
            </div>
            <h3><a href="JavaScript:;">6*12小时客服</a></h3>
            <P>有任何问题随时免费资讯</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif"/></a>
            </div>
            <h3><a href="JavaScript:;">专业专攻</a></h3>
            <P>我们只专注于建筑行业的信息服务</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif"/></a>
            </div>
            <h3><a href="JavaScript:;">注册有礼</a></h3>
            <P>随时随地注册有大礼包</P>
        </li>
        <li>
            <div class="ft-tu1">
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif"/></a>
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
</body>
</html>
