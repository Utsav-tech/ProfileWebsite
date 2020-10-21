package com.ualbany.daneeats.repository;

import com.ualbany.daneeats.model.Profile;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProfileRepository extends JpaRepository<Profile, Long> {
    
}
