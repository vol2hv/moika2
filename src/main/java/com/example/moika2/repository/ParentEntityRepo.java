package com.example.moika2.repository;

import com.example.moika2.domain.Parententity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ParentEntityRepo extends JpaRepository<Parententity, Long> {
    Parententity findByName(String name);
}
