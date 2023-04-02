package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.models.Incident;
import com.example.demo.models.Officer;

@Component
public interface OfficerRepository extends JpaRepository<Officer	, Integer> {

    
}
