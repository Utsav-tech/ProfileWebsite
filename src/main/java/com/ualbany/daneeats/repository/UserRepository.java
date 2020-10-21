package com.ualbany.daneeats.repository;

import java.util.List;

import com.ualbany.daneeats.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUserName(String username);
   // User findByEmail(String email);
    List<User> findByEmail(String email);
}
