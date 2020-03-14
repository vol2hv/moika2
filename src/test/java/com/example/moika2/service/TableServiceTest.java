package com.example.moika2.service;

import com.example.moika2.domain.Box;
import com.example.moika2.domain.BoxStatus;
import com.example.moika2.domain.Sample;
import com.example.moika2.domain.User;
import com.example.moika2.innerdata.FieldsProperties;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

@Slf4j
public class TableServiceTest {

    @Test
    public void getFieldsPProperties() {
        List<FieldsProperties> tmp = TableRandering.getFieldsProperties(Box.class);
                    }
    @Test
    public void getFieldsPPropertiesSample() {
        List<FieldsProperties> tmp = TableRandering.getFieldsProperties(Sample.class);
    }

    @Test
    public void preparationRenderingTable() {
    }

    @Test
    public void tableTitle() {
        log.info( TableRandering.tableTitle(Sample.class));
        log.info( TableRandering.tableTitle(User.class));
    }
    @Test
    public void learn() throws NoSuchFieldException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        BoxStatus status;
        Class<Box> boxClass = Box.class;

        Method method = boxClass.getDeclaredField("boxStatus").getType().getDeclaredMethod("values");
        Object object = method.invoke(null);
        BoxStatus.values();
    }
}