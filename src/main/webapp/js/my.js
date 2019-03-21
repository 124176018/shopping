$(function(){

    var tName = $("#tName");
    var msg = $("#msg");
    tName.blur(function(){ //焦点移开事件
        $.ajax({   //ajax调用
            url:"${pageContext.request.contextPath}/newstypeController",//访问服务器地址
            type:"GET",
            data:{
                tName : tName.val(), //传递参数
                flags : "findnewtype"
            },
            dataType:"text",
            success:function(data){
                if(data.trim() == "yes"){
                    msg.html("<font color='red'>不可以使用</font>");
                    $("#sbb").attr("disabled",true);

                }else{
                    msg.html("<font color='blue'>可以使用</font>");
                    $("#sbb").attr("disabled",false);
                }

            }
        });
    });
});