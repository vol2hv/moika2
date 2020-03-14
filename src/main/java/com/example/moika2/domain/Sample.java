package com.example.moika2.domain;

import com.example.moika2.innerdata.FieldRendering;
import com.example.moika2.innerdata.FieldsTypes;
import com.example.moika2.innerdata.TableRendering;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Образец наследования от BaseEntity
 */
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@ToString
@TableRendering (title = "Таблица для отладки отображения табличных полей")
public class Sample extends BaseEntity<Long> {
    @NotBlank(message = "Name cannot be empty")
    @NonNull
    @Column(unique = true, nullable = false, length = 80)
    @FieldRendering(fildnumber =2, title = "Имя", placeholder = "Подсказка для поля Nsme")
    private String name;
    @NotBlank(message = "Description cannot be empty")
    @NonNull
    @FieldRendering(fildnumber =3)
    private String description;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @FieldRendering(fildnumber =4, type = FieldsTypes.DATE)
    private Date localDate;
    @Temporal(TemporalType.TIME)
    @DateTimeFormat(pattern = "HH:mm")
//    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "HH:mm")
    @FieldRendering(fildnumber =5, type = FieldsTypes.TIME)
    private Date localTime;
    @Column(precision=15, scale=2)
    @FieldRendering(fildnumber =6, type = FieldsTypes.BIGDECIMAL)
    private BigDecimal bigDecimal;
    @FieldRendering(fildnumber =7, type = FieldsTypes.BOOLEAN)
    private Boolean isBoolean;
    @FieldRendering(fildnumber =8, type = FieldsTypes.PASSWORD)
    private String  password;
    @FieldRendering(fildnumber =9, type = FieldsTypes.ENUMONE)
    @Enumerated(EnumType.STRING)
    private BoxStatus boxStatus;
    @FieldRendering(fildnumber =10, type = FieldsTypes.CHILD, title = "Боксы")
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, fetch=FetchType.EAGER)
    private List<Box> boxes = new ArrayList<>();
}
