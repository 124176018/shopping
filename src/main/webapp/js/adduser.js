function checked(form) {
    var username = form.username;
    var password = form.password;
    var password1 = form.password1;
    var phone = form.phone;
    var email = form.email;
    var numbers = form.numbers;

    if (username.value == "") {
        alert("用户名不能为空");
        return false;
    } else if (password.value == "") {
        alert("密码不能为空");
        return false;
    } else if (password1.value == "") {
        alert("确认密码不能为空");
        return false;
    }else if (phone.value ==""){
        alert("手机不能为空");
        return false;
    }else if (email.value==""){
        alert("邮箱不能为空");
        return false;
    }else if (numbers.value ==""){
        alert("验证码不能为空");
        return false;
    };
}


/*记住我切中文名字字符串*/
window.onload = function () {
    var strcookie = decodeURI(document.cookie);//获取cookie字符串
    var arruser = strcookie.split("=");
    var arruserName = arruser[1].split("-");
    var arrusername1 = arruserName[0];
    var username = arrusername1;
    document.getElementById('username').value = username;
};


