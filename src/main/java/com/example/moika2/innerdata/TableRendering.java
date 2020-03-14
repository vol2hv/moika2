package com.example.moika2.innerdata;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/*
* Интерфейс аннотации для отображения заголовка таблицы
* */
@Target(value= ElementType.TYPE)
@Retention(value= RetentionPolicy.RUNTIME)

public @interface TableRendering {
    String title() default "";
}
