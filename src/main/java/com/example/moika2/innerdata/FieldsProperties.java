package com.example.moika2.innerdata;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/*
* Класс характеристик поля
* */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FieldsProperties implements Comparable<FieldsProperties>{
    private String name;
    private FieldsTypes type;
    private String title;
    private String placeholder;
    private Boolean isHidden;
    private int fildnumber;
    private Class<?> genericType;
    // список возможных значений поля. На самом деле массив Enum
    // TODO: 13.12.2018 сделать более красиво 
    private Object listOfValues; 

    @Override
    public int compareTo(FieldsProperties fieldsProperties) {
        return (this.fildnumber - fieldsProperties.fildnumber);
    }
//    private String nameMessageError;
//    private int precision;  // общая длина
//    private int scale;      // количество цифр после запятой
//    private String pattern;
}
