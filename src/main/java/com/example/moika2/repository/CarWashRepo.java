package com.example.moika2.repository;

import com.example.moika2.domain.CarWash;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CarWashRepo extends JpaRepository<CarWash, Long> {
    CarWash findByName(String name);
}
