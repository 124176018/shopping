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



/*判断密码长度最大16位*/


