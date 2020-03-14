package com.example.moika2.innerdata;
/*
 * Интерфейс аннотации для отображения полей таблицы
 * */

import com.example.moika2.domain.Role;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(value= ElementType.FIELD)
@Retention(value= RetentionPolicy.RUNTIME)

public @interface FieldRendering {
    int fildnumber ();
    FieldsTypes type() default FieldsTypes.STRING;
    String title() default "";
    String placeholder() default "";
    boolean  isHidden() default false;
    Class<?> genericType() default Role.class;

}
