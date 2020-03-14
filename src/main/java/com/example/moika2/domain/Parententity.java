package com.example.moika2.domain;

import com.example.moika2.innerdata.FieldRendering;
import com.example.moika2.innerdata.FieldsTypes;
import com.example.moika2.innerdata.TableRendering;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

/**
 * Образец наследования от BaseEntity
 */
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@ToString(callSuper = true)
@TableRendering(title = "Таблица для отладки отображения дочерних таблиц")
public class Parententity extends BaseEntity<Long> {
    @NotBlank(message = "Name cannot be empty")
    @NonNull
    @Column(unique = true, nullable = false, length = 80)
    @FieldRendering(fildnumber =2, title = "Имя", placeholder = "Подсказка для поля Nsme")
    private String name;
    @FieldRendering(fildnumber =3, type = FieldsTypes.CHILD, title = "Дочерняя таблица")
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, fetch=FetchType.EAGER)
//  !!!!!  инициализация пустым массивом обязательна
    private List<Child1> children1 = new ArrayList<>();
}
