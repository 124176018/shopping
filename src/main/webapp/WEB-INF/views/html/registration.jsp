<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/19
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/adduser.js"></script>
    <script type="text/javascript">
        //添加用户名验证用户名是否存在
        $(function () {
            var username = $("#username");
            var msg = $("#msg");
            var sbb = $("#sbb");
            username.blur(function () { //焦点移开事件
                $.ajax({ //ajax调用
                    url: "${pageContext.request.contextPath}/user/doregistration.do",//访问服务器地址
                    type: "GET",
                    data: {
                        username: username.val(), //传递参数
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data.trim() == "yes") {
                            msg.html("<span  color='red' class='dui'>可以使用</span >");
                            sbb.attr("disabled", false);
                        } else {
                            msg.html("<span  color='blue' class='cuo'>不可以使用</span >");
                            sbb.attr("disabled", true);
                        }

                    }
                });
            });

            //验证注册邮箱
            $("#email").blur(function () {
                var Email = new String(document.getElementById("email").value);
                var positionDot = Email.indexOf(".", positionAt);
                var positionAt = Email.indexOf("@");
                var msg2 = $("#msg2");
                var sbb = $("#sbb");
                if (Email == null || Email == "") {
                    msg2.html("<span color='blue' class='cuo'>请输入邮箱</span>");
                    sbb.attr("disabled", true);
                } else if (positionAt == -1) {
                    msg2.html("<span color='blue' class='cuo'>邮箱格式不正确</span>");
                    sbb.attr("disabled", true);
                } else if (positionDot == -1) {
                    msg2.html("<span color='blue' class='cuo'>邮箱格式不正确</span>");
                    sbb.attr("disabled", true);
                } else if (positionDot == Email.length - 1 || positionDot == positionAt + 1) {
                    msg2.html("<span color='blue' class='cuo'>邮箱格式不正确</span>");
                    sbb.attr("disabled", true);
                } else {
                    msg2.html("<span color='ride' class='dui'>邮箱格式正确</span>");
                }
            })
            /*判断手机号是否符合规则*/
            $("#phone").blur(function () {
                var phone = $("#phone").val();
                var msg1 = $("#msg1");
                var sbb = $("#sbb");
                var myreg = /^((0?1[358]\d{9})|((0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}))$/;
                if (myreg.test(phone)) {
                    msg1.html("<span  color='red' class='dui'>可以使用</span >");
                    sbb.attr("disabled", false);

                } else {
                    msg1.html("<span  color='blue' class='cuo'>请输入正确的手机号</span >");
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
                    msg5.html("<span class='dui'color='blue'>密码格式正确</span>");
                    sbb.attr("disable", false);
                } else {
                    msg5.html("<span class='cuo'color='ride'>最多位16位</span>");
                    sbb.attr("disable", true);
                }
            })
            /*判断验证码是否正确*/
            $("#codeid").blur(function checkcode() {
                var total=0;
                var msg6 = $("#msg6");
                var codeid = $("#codeid").val();
                if (codeid.length != 4) {
                    msg6.html("<span class='cuo'color='ride'>验证码错误</span>");
                    sbb.attr("disable", true);
                } else {
                    msg6.html("<span color='blue'>      </span>");
                }

            })


        });
    </script>

</head>

<body>

<!--header-->
<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">

           Hi!您好，欢迎来到宅客微购，请登录 <a href="${pageContext.request.contextPath}/注册.html">【免费注册】</a>
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
            <a href="${pageContext.request.contextPath}/index.html" title="中林logo"><img
                    src="${pageContext.request.contextPath}/images/zl2-01.gif"/></a>
        </div>
        <div class="shangjia f-l">
            <a href="${pageContext.request.contextPath}/JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            <a href="${pageContext.request.contextPath}/JavaScript:;" class="shangjia-a2">商家入口</a>
            <div class="select-city">
                <div class="sl-city-top">
                    <p class="f-l">切换城市</p>
                    <a class="close-select-city f-r" href="${pageContext.request.contextPath}/JavaScript:;">
                        <img src="${pageContext.request.contextPath}/images/close-select-city.gif"/>
                    </a>
                </div>
                <div class="sl-city-con">
                    <p>西北</p>
                    <dl>
                        <dt>重庆市</dt>
                        <dd>

                            <a href="${pageContext.request.contextPath}/JavaScript:;">娇子</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>新疆</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/JavaScript:;">齐乌鲁木</a>
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
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="erweima f-r">
        <a href="${pageContext.request.contextPath}/JavaScript:;"><img
                src="${pageContext.request.contextPath}/images/zl2-04.gif"/></a>
    </div>
    <div class="search f-r">
        <div class="search-info">
            <input type="text" placeholder="请输入商品名称"/>
            <button>搜索</button>
            <div style="clear:both;"></div>
        </div>
        <ul class="search-ul">
            <li><a href="${pageContext.request.contextPath}/JavaScript:;">绿豆</a></li>
            <div style="clear:both;"></div>
        </ul>
    </div>
    <div style="clear:both;"></div>
</div>

<!--内容开始-->
<form action="${pageContext.request.contextPath}/user/registration.do" method="post" onsubmit="return checked(this)">
    <div class="password-con registered">
        <div class="psw">
            <p class="psw-p1">用户名</p>
            <input type="text" placeholder="请输入用户名" id="username" name="username"/>
            <span id="msg"></span>
        </div>
        <div class="psw">
            <p class="psw-p1">输入密码</p>
            <input type="text" placeholder="请输入密码" id="password" name="password"/>
            <span id="msg5"></span><span id="msg4"></span><span id="msg3"></span>
        </div>
        <div class="psw">
            <p class="psw-p1">确认密码</p>
            <input type="text" placeholder="请再次确认密码" id="password1" name="password1"/>
        </div>
        <div class="psw psw2">
            <p class="psw-p1">手机</p>
            <input type="text" placeholder="手机" id="phone" name="phone"/>
            <span id="msg1"></span>
        </div>
        <div class="psw psw2">
            <p class="psw-p1">邮箱</p>
            <input type="text" placeholder="邮箱" id="email" name="email"/>
            <span id="msg2"></span>
        </div>
        <div class="psw psw3">
            <p class="psw-p1">验证码</p>
            <input type="text" placeholder="请输入验证码" id="codeid" name="code"/>
            <span id="msg6"></span>
        </div>
        <div class="yanzhentu">
            <div class="yz-tu f-l">
                <img src="${pageContext.request.contextPath}/user/getcodeimage.do"
                     onclick="this.src='${pageContext.request.contextPath}/user/getcodeimage.do?'+Math.round(Math.random()*100)"
                     width="150" height="50"/>
            </div>
            <p class="f-l">看不清？点击图片换图</p>
            <div style="clear:both;"></div>
        </div>
        <div class="agreement">
            <input type="checkbox" name="hobby"></input>
            <p>我有阅读并同意<span>《宅客微购网站服务协议》</span></p>
        </div>
        <button class="psw-btn" id="sbb" type="submit">立即注册</button>
        <p class="sign-in">已有账号？请<a href="${pageContext.request.contextPath}/user/loginuser.do">登录</a></p>
    </div>
</form>

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
            <p>周一至周日 9:00-24:00</p>
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
            <a href="${pageContext.request.contextPath}/#"><img
                    src="${pageContext.request.contextPath}/images/zl2-91.gif"/></a>
            <a href="${pageContext.request.contextPath}/#"><img
                    src="${pageContext.request.contextPath}/images/zl2-92.gif"/></a>
            <a href="${pageContext.request.contextPath}/#"><img
                    src="${pageContext.request.contextPath}/images/zl2-93.gif"/></a>
        </div>
    </div>
</div>

</body>
</html>


