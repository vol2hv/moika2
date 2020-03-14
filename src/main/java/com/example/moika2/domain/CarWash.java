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
 * WashFacility - автомойка
 */
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@ToString
@TableRendering(title = "Автомойки")

public class CarWash extends BaseEntity<Long>  {
    @FieldRendering(fildnumber =2, title = "Имя", placeholder = "Имя")
    @NotBlank(message = "Name cannot be empty")
    @NonNull
    @Column(unique = true, nullable = false, length = 80)
    private String name;

    @FieldRendering(fildnumber =3, title = "Описание", placeholder = "Описание")
    private String description;

    @FieldRendering(fildnumber =4, type = FieldsTypes.CHILD, title = "Боксы")
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, fetch= FetchType.EAGER)
    private List<Box> boxes = new ArrayList<>();


//    private int  idManager;
//    private int  idAddr;
//    private List<Orders> orders = new ArrayList<>();
}

