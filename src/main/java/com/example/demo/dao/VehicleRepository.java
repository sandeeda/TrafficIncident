package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.models.Incident;
import com.example.demo.models.Officer;
import com.example.demo.models.Route;
import com.example.demo.models.Vehicle;

@Component
public interface VehicleRepository extends JpaRepository<Vehicle	, Integer> {

    
}
