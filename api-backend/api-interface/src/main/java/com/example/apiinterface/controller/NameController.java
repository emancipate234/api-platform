package com.example.apiinterface.controller;

import com.example.apiclientsdk.model.User;
import com.example.apiclientsdk.utils.SignUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 名称API
 *
 * @author 张亚豪
 */
@RestController()
@RequestMapping("/name")
public class NameController {

    @GetMapping("/get")
    public String getNameByGet(String name, HttpServletRequest request) {
        System.out.println(request.getHeader("yupi"));
        return "GET 你的名字是" + name;
    }

    @PostMapping("/post")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" + name;
    }

    @PostMapping("/user")
    public String getUsernameByPost(@RequestBody User user, HttpServletRequest request) {
        String accessKey = request.getHeader("accessKey");
        String nonce = request.getHeader("nonce");
        String timestamp = request.getHeader("timestamp");
        String body = request.getHeader("body");
        String sign  = request.getHeader("sign");
        if(!accessKey.equals("yupi")){
            throw new RuntimeException("参数错误");
        }
        if(Long.parseLong(nonce) > 10000) {
            throw new RuntimeException("无权限");
        }
        String serverSign = SignUtils.genSign(body,"abcdefgh");
        if(!sign.equals(serverSign)){
            throw new RuntimeException("无权限");
        }
        String result =  "POST 你的名字是" + user.getUsername();
        //调用成功后次数 + 1

        return result;
    }
}
