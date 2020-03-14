package com.example.moika2.repository;

import com.example.moika2.domain.Sample;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SamleRepo extends JpaRepository<Sample, Long> {
    Sample findByName(String name);
}
