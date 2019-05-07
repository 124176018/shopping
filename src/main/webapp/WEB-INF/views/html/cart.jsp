<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/4/3
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
           function jiesuan1(){
            if($("#sbt").val()==0){
                alert("请添加商品到购物车");
                return false;
            }
                return true;
        }
     /*   function jiesuan1(){
            if($("[name='hobby']").is(':checked')){
                 return true;
            }
                alert("至少选择一件商品进行结算");
                return false;
        }*/
        /*删除购物项*/
        function delcate(pid){
            if(!confirm("是否删除？删除请点击“确定”")){
                return false;
            }else{
                var subtotal=$("#subtotal");
                subtotal= Number($("#subtotal").html())-Number($("#xiaoji"+pid).html());
                $("#subtotal").html(subtotal);
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/emptyCart.do?pid="+pid,
                    type:"get",
                    dateType:"text",
                    success:function (data) {
                        if (data.trim()=="yes"){
                            $("#re").remove();
                            window.location.reload();
                            return true;
                            alert("删除成功");
                        }
                    }
                });
            }
        }
/*清空购物车*/
        function clearcart() {
            if(!confirm("是否清空？删除请点击“确定”")){
                return false;
            }else{
                var subtotal=$("#subtotal");
                subtotal= Number($("#subtotal").html())-Number($("#subtotal").html());
                $("#subtotal").html(subtotal);
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/clearCart.do",
                    type:"get",
                    dateType:"text",
                    success:function (data) {
                        if (data.trim()=="yes"){
                            $("#re").remove();
                            window.location.reload();
                            return true;
                        }
                    }
                });
            }
        }

      function addnumber(pid){
            var proCount=$("#proCount"+pid).val();
            var sbt = Number($("#sbt").val());
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/upCartItemadd.do?pid="+pid,
                    type:"get",
                    data:{
                        proCount:proCount
                    },
                    dateType:"text",
                    success:function (data) {
                        $("#subtotal").html(data);
                       /* $(function(){
                            $("#all").click(function(){
                                var pid  =$("#pid").val();
                                if($("#all").is(':checked')){
                                    $("[name='hobby']").prop('checked',true);
                                    $("#subtotal").html(data);
                                }else{
                                    $("[name='hobby']").prop('checked',false);
                                    $("#subtotal").html("0");
                                }
                            });
                        });*/

                    }
                });

        }

        function subnumber(pid){
            var proCount=$("#proCount"+pid).val();
            $.ajax({
                url:"${pageContext.request.contextPath}/cart/upCartItemsub.do?pid="+pid,
                type:"get",
                data:{
                    proCount:proCount
                },
                dateType:"text",
                success:function (data) {
                    $("#subtotal").html(data);
                  /*  $(function(){
                        $("#all").click(function(){
                            var pid  =$("#pid").val();
                            if($("#all").is(':checked')){
                                $("[name='hobby']").prop('checked',true);
                                $("#subtotal").html(data);
                            }else{
                                $("[name='hobby']").prop('checked',false);
                                $("#subtotal").html("0");
                            }
                        });
                    });*/

                }
            });
        }
     /*  增加商品的数量从而改变商品的小计
       function addnumber(pid) {
           if ($("#check"+pid).prop("checked")) {
               var subtotal = Number($("#subtotal").html()) + Number($("#shopprice"+pid).html());
           }
           $("#subtotal").html(subtotal);
       }
        减少商品的数量从而改变商品的小计
        function subnumber(pid) {
            var proCount=$("#proCount"+pid).val();
            if (proCount>1){
                if ($("#check"+pid).prop("checked")){
                    var subtotal = Number($("#subtotal").html()) - Number($("#xiaoji"+pid).html());
                }
            }
                $("#subtotal").html(subtotal);
        }*/
       /* function subzongjia(pid){
            if ($("#check"+pid).prop("checked")){

                var subtotal = Number($("#subtotal").html()) + Number($("#xiaoji"+pid).html())
                $("#subtotal").html(subtotal);

            }else {
                var subtotal = Number($("#subtotal").html()) - Number($("#xiaoji"+pid).html())
                $("#subtotal").html(subtotal);


            }
        }*/
/*选择全部商品和单选某个订单项的商品*/
       /* $(function(){
            $("#all").click(function(){
                var pid  =$("#pid").val();
                if($("#all").is(':checked')){
                    $("[name='hobby']").prop('checked',true);
                    var subtotal = Number($("#sbt").val());
                    $("#subtotal").html(subtotal);
                }else{
                    $("[name='hobby']").prop('checked',false);
                    $("#subtotal").html("0");
                }
            });
            $("[name='hobby']").click(function(){
                var i = 0;
                var arr = $("[name='hobby']").length;
                $("[name='hobby']").each(function(){
                    if($(this).is(':checked')){
                        i++;
                    }
                });
                if(i == arr){
                    $("#all").prop('checked',true);
                }else{
                    $("#all").prop('checked',false);
                }
            });

        });*/
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
            <a href="${pageContext.request.contextPath}/cart/getCart.do"></a><span>|</span>
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
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>宁夏</dt>
                        <dd>
                            <a href="JavaScript:;">银川</a>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                        <dt>青海</dt>
                        <dd>
                            <a href="JavaScript:;">西宁</a>
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
<div class="cart-content w1200">
    <ul class="cart-tit-nav">
        <li class="current"><a href="#">全部商品</a></li>
        <div style="clear:both;"></div>
    </ul>
    <div class="cart-con-tit">
        <p class="p1">

        </p>
        <p class="p2">商品信息</p>
        <p class="p3"></p>
        <p class="p4">数量</p>
        <p class="p5">单价（元）</p>
        <p class="p6">金额（元）</p>
        <p class="p7">操作</p>
    </div>



    <div class="cart-con-info" id="re">
        <form action="${pageContext.request.contextPath}/order/getOder.do" method="post" id="biaodan" onsubmit="return jiesuan1()">
          <c:forEach items="${cart.cartItems}" var="gw">
        <div class="info-top">

        </div>
        <div class="info-mid">
            <%--<input type="checkbox" id="check${gw.product.pid}"  name="hobby" class="mid-ipt f-l" onclick="subzongjia(${gw.product.pid})" value="${gw.product.pid}"/>--%>
            <div class="mid-tu f-l">
                <a href="#"><img src="${pageContext.request.contextPath}/${gw.product.pimage}"width="100" height="100" /></a>
            </div>

            <div class="mid-font f-l"  style="margin-right:350px;">

                <a href="#">${gw.product.pname}</a>
                <span>满赠</span>

            </div>
            <div class="mid-sl f-l">
                <a href="JavaScript:;" class="sl-left" onclick="subnumber(${gw.product.pid})" >-</a>
                <input type="number" value="${gw.proCount}" min="1" maxlength="2" id="proCount${gw.product.pid}" />
                <input type="hidden" value="${gw.product.pid}" id="pid"/>
                <a href="JavaScript:;" class="sl-right" onclick="addnumber(${gw.product.pid})"  >+</a>
            </div>

            <p class="mid-dj f-l">¥ <span id="shopprice${gw.product.pid}">${gw.product.market_price}</span></p>
            <p class="mid-je f-l" >¥ <span id="xiaoji${gw.product.pid}">${gw.total}</span></p>

            <div class="mid-chaozuo f-l">

                <a href="#" onclick="delcate(${gw.product.pid})">删除</a>
            </div>
            <div style="clear:both;"></div>
        </div>
      </c:forEach>


    </div>



    <div class="cart-con-footer">

        <div class="quanxuan f-l">
            <%--<input type="checkbox" id="all"  name="hobbys"></input>
            <span >全选</span>--%>
            <a href="#" onclick="clearcart()">清空购物车</a>


        </div>
        <div class="jiesuan f-r">
            <div class="jshj f-l">
                <p>合计（不含运费）</p>

                <p class="jshj-p2" id="zonge" >
                    ￥：<span id="subtotal">${cart.subTotal}</span>
                    <input type="hidden" id="sbt" value="${cart.subTotal}">
                </p>

            </div>

            <button class="js-a1 f-l" onclick="jiesuan1()"  >确认下单</button>
            </form>
            <div style="clear:both;"></div>
        </div>
        <div style="clear:both;"></div>
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
<style>
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
    }
    input[type="number"]{
        -moz-appearance: textfield;
    }
</style>
</body>
</html>

