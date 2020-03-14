package com.example.moika2.domain;

public enum BoxStatus {
    FREE ("Свободен"),
    CLOSED ("Закрыт"),
    BUSY ("Занят"),
    BREAK ("Перерыв"),
    REPAIR ("Ремонт");


    private String comment;
    BoxStatus(String comment) {
        this.comment = comment;
    }

    public String getComment() {
        return comment;
    }
}
