package com.example.moika2.service;
/*
 * Сервис для отображения таблиц
 * */

import com.example.moika2.Moika2Application;
import com.example.moika2.innerdata.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
@Slf4j
public class TableRandering {

    public static List<Field> getAllFields(List<Field> fields, Class<?> type) {
        fields.addAll(Arrays.asList(type.getDeclaredFields()));

        if (type.getSuperclass() != null) {
            getAllFields(fields, type.getSuperclass());
        }

        return fields;
    }
    /*
    * Возвращает список свойств полей таблицы, не обходимых для отображения этих полей
    * в формах таблиц.
    * Свойства собираются для полей аннотированных FieldRendering в классах сущностей.
    * */
    public static List<FieldsProperties> getFieldsProperties(Class<?> tableClass) {
        List<FieldsProperties> tmp =
            getAllFields(new ArrayList<>(), tableClass).stream()
            .filter(f->f.isAnnotationPresent(FieldRendering.class))
            .map (TableRandering::toFieldsProperties)
            .sorted()
            .collect(Collectors.toList());
// А это без стримов. Оставил для сравнения.
//        for (Field f : tableClass.getDeclaredFields()) {
//            if (f.isAnnotationPresent(FieldRendering.class)) {
//                System.out.println(f.getName());
//                ann = f.getAnnotation(FieldRendering.class);
//                FieldsProperties properties = new FieldsProperties(
//                    f.getName(), ann.type(),
//                    ann.title().isEmpty()? f.getName() : ann.title(),
//                    ann.placeholder().isEmpty()? f.getName() : ann.placeholder(),
//                    ann.isHidden(), ann.fildnumber()
//                    );
//                tmp.add(properties);
//            }
//        }
        return tmp;
    }
    /*
    * Формирование свойств для одного поля
    * */
    static FieldsProperties toFieldsProperties(Field f)  {
        FieldRendering ann = f.getAnnotation(FieldRendering.class);
        FieldsProperties properties = new FieldsProperties(
                f.getName(), ann.type(),
                ann.title().isEmpty()? f.getName() : ann.title(),
                ann.placeholder().isEmpty()? f.getName() : ann.placeholder(),
                ann.isHidden(), ann.fildnumber(),ann.genericType(), null);
        FieldsTypes ft =properties.getType();
        if (ft == FieldsTypes.ENUMONE) {
            geAvailableValues(properties, f.getType());
        }

        if (ft == FieldsTypes.ENUMSET) {
            geAvailableValues(properties, properties.getGenericType());
        }
        return properties;
    }
    // получить и записать  в properties список возможных значений поля
    static void geAvailableValues(FieldsProperties properties, Class<?> fieldClass) {
        try {

            properties.setListOfValues(fieldClass.getDeclaredMethod("values").invoke(null));
        } catch (Exception e) {
        log.error("Ошибка при попытке получить возможные значения поля. Подробности: {}", e);
        }
    }

    //подготовка модели для отображения списка главной таблицы
    public static void prepareMainList(String baseURL, Class<?> tableClass, TableFromRepoService repoService, Model model) {
        model.addAttribute("tableName", tableClass.getSimpleName().toLowerCase());
        model.addAttribute("title", TableRandering.tableTitle(tableClass));
        model.addAttribute("fieldsProperties", TableRandering.getFieldsProperties(tableClass));
        model.addAttribute("baseURL", baseURL);
        model.addAttribute("list", repoService.findAll());
        model.addAttribute("referer", Moika2Application.PATH_TABLES_RENDERING);
    }

    //подготовка модели для отображения операций с главной таблицей
    public static  <T>  void prepareMainAndChildOper(String baseURL, Class<?> tableClass, TypeTableOperation operation, Model model, T record) {
        model.addAttribute("tableName", tableClass.getSimpleName().toLowerCase());
        model.addAttribute("title", operation.getTitle());
        model.addAttribute("fieldsProperties", TableRandering.getFieldsProperties(tableClass));
        model.addAttribute("baseURL", baseURL);
        model.addAttribute("operation", operation);
        model.addAttribute("record", record);
    }

    //подготовка модели для отображения списка дочерней таблицы
    public static <C, ID> void prepareChildList(String baseURL, Class<?> tableClass,
            ID idParent, String fieldChild, TableFromRepoService repoService, Model model) {
        List<C> cList = repoService.findById(idParent).getChildList(fieldChild);
        model.addAttribute("tableName",  tableClass.getSimpleName().toLowerCase());
        model.addAttribute("title", TableRandering.tableTitle(tableClass));
        model.addAttribute("fieldsProperties", TableRandering.getFieldsProperties(tableClass));
        model.addAttribute("baseURL", baseURL);
        model.addAttribute("list", cList);
        model.addAttribute("idParent", idParent);
        model.addAttribute("fieldChild", fieldChild);
        String referer = baseURL.substring(0,baseURL.lastIndexOf("/")) + "/list";
        model.addAttribute("referer", referer );
    }

    // определение заголовка всей таблицы
    public static String tableTitle (Class<?> tableClass){

        if (tableClass.isAnnotationPresent(TableRendering.class)) {
            String title = tableClass.getAnnotation(TableRendering.class).title();
            if (title.length() > 0 ) {
                return title;
            }
        }
        return "A Table of " + tableClass.getSimpleName();
    }


}
