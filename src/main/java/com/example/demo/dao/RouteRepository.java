package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.models.Incident;
import com.example.demo.models.Officer;
import com.example.demo.models.Route;

@Component
public interface RouteRepository extends JpaRepository<Route	, Integer> {

    
}
