package com.gunt.zhzh.dao;

import com.gunt.zhzh.entity.User;

import java.util.List;

public interface UserDAO {
    public List<User> getAllUsers();

    public void saveUser(User user);

    public User getUsers(int id);

    public void deleteUser(int id);
}
