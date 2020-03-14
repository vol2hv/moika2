package com.example.moika2.innerdata;

public enum FieldsTypes {
    STRING ("text"),
    INTEGER ("number"),
    BIGDECIMAL ("number"),
    DATE ("date"),
    TIME ("time"),
    BOOLEAN ("checkbox"),
    PASSWORD ("password"),
    EMAIL ("email"),
    DATATIME ("datetime"),
    TEL ("tel"),
    URL ("url"),
    ENUMONE ("enum"),
    ENUMSET ("enumset"),
    CHILD ("child_table");

    private String inputType;
    FieldsTypes(String inputType){
        this.inputType = inputType;
    }
    public String getinputType(){ return inputType;}
}
