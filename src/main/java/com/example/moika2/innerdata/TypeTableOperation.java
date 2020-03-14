package com.example.moika2.innerdata;

public enum TypeTableOperation {
    CREATE ("Create  a new table entry"),
    READ ("Read a table entry"),
    UPDATE ("Update  a table entry");

    private String title;
    TypeTableOperation (String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}
