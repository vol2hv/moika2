package com.example.moika2.repository;

import com.example.moika2.domain.Box;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoxRepo extends JpaRepository<Box, Long> {
    Box findByName(String name);
}
