<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/20
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录 </title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhonglingxm2.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/adduser.js"></script>
    <script type="text/javascript">
        /*记住我切中文名字字符串*/
        window.onload = function () {
            var strcookie = decodeURI(document.cookie);//获取cookie字符串
            var arruser = strcookie.split("=");
            var arruserName = arruser[1].split("-");
            var arrusername1 = arruserName[0];
            var username = arrusername1;
            document.getElementById('username').value = username;
        };

    </script>
</head>

<body>

<div class="sign-logo w1200">
    <h1 class="zl-h11"><a href="${pageContext.request.contextPath}/index.html" title="宅客微购"><img
            src="${pageContext.request.contextPath}/images/zl2-01.gif"/></a></h1>
</div>
<form action="${pageContext.request.contextPath}/user/loginuser.do" method="post" onsubmit="return checked(this)">
    <div class="sign-con w1200">
        <img src="${pageContext.request.contextPath}/images/logn-tu.gif" class="sign-contu f-l"/>
        <div class="sign-ipt f-l">
            <p>用户名</p>
            <input type="text" class="text" placeholder="手机号/邮箱" id="username" name="username"
                   value="${fn:split(cookie.user.value, '-')[0]}" onfocus="this.value = '';"
                   onblur="if (this.value =='') {this.value ='请输入用户名';}"/>

            <p>密码</p>
            <input type="password" placeholder="密码可见" id="password" name="password"
                   value="${fn:split(cookie.user.value,'-')[1]}" onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = '${fn:split(cookie.user.value,'-')[1]}';}"/><br/>
            <button class="slig-btn" id="login">登录</button>
            <p>没有账号？请<a href="${pageContext.request.contextPath}/user/getRegistration.do">注册</a><a
                    href="${pageContext.request.contextPath}/#" class="wj">忘记密码？</a>
                <input type="checkbox" name="save" value="1" style="height: 15px" align="top"
                       <c:if test="${fn:split(cookie.user.value,'-')[0]!=null}">checked</c:if>><i
                        style="color: #9111aa;">记住我</i></p>

            <div class="sign-qx">

                <a href="${pageContext.request.contextPath}" class="f-r"><img
                        src="${pageContext.request.contextPath}/images/sign-xinlan.gif" style="height: 15px"/></a>
                <a href="${pageContext.request.contextPath}" class="qq f-r"><img
                        src="${pageContext.request.contextPath}/images/sign-qq.gif" style="height: 15px"/></a>
                <div style="clear:both;"></div>
            </div>
        </div>
        <div style="clear:both;"></div>
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
                <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif"/></a>
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

