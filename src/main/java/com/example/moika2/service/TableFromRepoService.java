package com.example.moika2.service;
/*
 * Интерфейс базовых операции доступа к записям  таблицы из репозитория
 * */

import com.example.moika2.domain.BaseEntity;

import java.util.List;

public interface TableFromRepoService<T extends BaseEntity<ID>, ID> {
    public <S extends T> S save(S entity);

    public T findById(ID id);

    public List<T> findAll();

    public boolean deleteById(ID id);

    public boolean delete(T entity);

    public boolean deleteAll();

}
