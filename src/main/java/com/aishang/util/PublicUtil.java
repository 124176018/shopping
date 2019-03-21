package com.aishang.util;

import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Component
public class PublicUtil {
    public boolean isExist(HttpServletRequest request) {
// 不存在的
        boolean flag = false;
        Cookie[] cookies = request.getCookies();
        int count = 0;// 记录比较次数

        for (Cookie c : cookies) {
            if (c.getName().equals("loginName")) {
                count++;
            }
            if (c.getName().equals("loginPwd")) {
                count++;
            }
        }
        if (count == 2) {
            flag = true;
        }
        return flag;
    }

    /**
     *  * 获取cookie中的值
     *  * 
     *  * @param request
     *  * @return
     *  
     */
    public String[] getCookie(HttpServletRequest request) {
        String[] strs = new String[2];
        Cookie[] cs = request.getCookies();
        if (cs != null) {
            for (Cookie c : cs) {
                if (c.getName().equals("loginName")) {
// 获取账号
                    strs[0] = c.getValue();
                }
                if (c.getName().equals("loginPwd")) {
// 获取密码
                    strs[1] = c.getValue();
                }
            }
        }
        return strs;
    }

}
