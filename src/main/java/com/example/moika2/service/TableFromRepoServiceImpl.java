package com.example.moika2.service;
/*
 * Реализация нтерфейса базовых операции доступа к записям таблицы из репозитория
 */

import com.example.moika2.domain.BaseEntity;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

@Slf4j
@NoArgsConstructor
public class TableFromRepoServiceImpl<T extends BaseEntity<ID>, ID, R extends JpaRepository<T, ID>>
        implements TableFromRepoService<T, ID> {

    private R repository;

    @Autowired
    public TableFromRepoServiceImpl(R repository) {
        this.repository = repository;
    }

    @Override
    public <S extends T> S save(S entity) {
        S result = null;
        try {
            result = repository.saveAndFlush(entity);
        }  catch (Exception ex ) {
            log.error("Ошибка при сзхранении записи таблицы {} в базе данных {}:", entity, ex);
            log.error("-------------------------------------------------------------------------");
        }
        return result;
    }

    @Override
    public T findById(ID id) {
        T res = null;

        try {
            Optional<T> opt =repository.findById(id);
            if (opt.isPresent()) {
                res = opt.get();
            }
        } catch (Exception e) {
            log.error("Ошибка поиска записи в таблицe базе данных {}:", e);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public List<T> findAll() {
        List<T> res = null;
        try {
            res = repository.findAll();
        } catch (Exception e) {
            log.error("Ошибка чтения записей таблицы базе данных {}:", e);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public boolean deleteById(ID id) {
        boolean result = true;
        try {
            repository.deleteById(id);
        } catch (Exception ex ) {
            log.error("Ошибка при удалении записи таблицы {}  исключение:",  ex);
            result = false;
        }
        return result;
    }

    @Override
    public boolean delete(T entity) {
        boolean result = true;
        try {
            repository.delete(entity);
        } catch (Exception ex ) {
            log.error("Ошибка при удаление записи таблицы {}  исключение:",  ex);
            result = false;
        }
        return result;
    }

    @Override
    public boolean deleteAll() {
        boolean result = true;
        try {
            repository.deleteAll();
        } catch (Exception ex ) {
            log.error("Ошибка при очистке таблицы {}  исключение:",  ex);
            result = false;
        }
        return result;
    }
}

