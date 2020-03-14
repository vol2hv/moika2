package com.example.moika2.domain;


import com.example.moika2.innerdata.FieldRendering;
import com.example.moika2.innerdata.FieldsTypes;
import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;


@Entity
@Data
@NoArgsConstructor
@RequiredArgsConstructor
@ToString(callSuper = true)
public class Child1 extends BaseEntity<Long> {
    @NotBlank(message = "Name cannot be empty")
    @NonNull
    @Column(unique = true, nullable = false, length = 80)
    @FieldRendering(fildnumber =2, title = "Имя", placeholder = "Подсказка для поля Имя")
    private String name;
    @NonNull
    @FieldRendering(fildnumber =3, title = "Поле1", type = FieldsTypes.INTEGER)
    private int field1;
}
