package com.example.moika2.domain;


import com.example.moika2.innerdata.FieldRendering;
import com.example.moika2.innerdata.FieldsTypes;
import com.example.moika2.innerdata.TableRendering;
import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotBlank;

/**
 * WashFacility - Сущность представляющая автомойки.
 */
@Entity
@Data
@ToString(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@TableRendering(title = "Таблица моечных боксов")

public class Box extends BaseEntity<Long> {
    @NotBlank(message = "Name cannot be empty")
    @NonNull
    @Column(unique = true, nullable = false, length = 80)
    @FieldRendering(fildnumber =2, title = "Наименование бокса", placeholder = "Наименование бокса")
    private String name;
    @FieldRendering(fildnumber =3)
    private String description;
    @FieldRendering(fildnumber =4, type=FieldsTypes.ENUMONE)
    @Enumerated(EnumType.STRING)
    private BoxStatus boxStatus;
    @FieldRendering(fildnumber =5, type=FieldsTypes.ENUMONE)
    @Enumerated(EnumType.STRING)
    private BoxType boxType;

}
