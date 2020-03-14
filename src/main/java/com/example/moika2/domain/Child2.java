package com.example.moika2.domain;

import com.example.moika2.domain.BaseEntity;
import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;


@Entity
@Data
@NoArgsConstructor
@RequiredArgsConstructor
@ToString
public class Child2 extends BaseEntity<Long> {
    @NotBlank(message = "Name cannot be empty")
    @NonNull
    @Column(unique = true, nullable = false, length = 80)
    private String name;
    @NonNull
    private double field2;
}
