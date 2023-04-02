package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.models.Incident;

@Component
public interface IncidentRepository extends JpaRepository<Incident	, Integer> {

    
}
