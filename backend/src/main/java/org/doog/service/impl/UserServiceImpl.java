package org.doog.service.impl;

import org.doog.mapper.UserMapper;
import org.doog.pojo.User;
import org.doog.service.UserService;
import org.doog.utils.Md5Util;
import org.doog.utils.ThreadLocalUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User findByUsername(String username) {
        User user = userMapper.findByUsername(username);
        return user;
    }

    @Override
    public void register(String username, String password) {
        // 加密
        String md5pd = Md5Util.getMD5String(password);
        // 添加用户到数据库
        userMapper.add(username, md5pd);
    }

    @Override
    public void update(User user) {
        user.setUpdateTime(LocalDateTime.now());
        userMapper.update(user);
    }

    @Override
    public void updateAvatar(String avatarUrl) {
        Map<String, Object> map =  ThreadLocalUtil.get();
        Integer id = (Integer) map.get("id");
//        System.out.println(id);
        userMapper.updateAvatar(avatarUrl, id);
    }

    @Override
    public void updatePwd(String newPwd) {
        Map<String, Object> map =  ThreadLocalUtil.get();
        Integer id = (Integer) map.get("id");
        String password = Md5Util.getMD5String(newPwd);
        userMapper.updatePwd(password, id);
    }
}
