package com.example.moika2.service;
/*
 * Обеспечение доступа к таблице из списка дочерних элементов (ONeToMany)
 * */

import com.example.moika2.domain.BaseEntity;

import java.util.List;

public interface TableFromListService<P extends BaseEntity<ID>, C extends BaseEntity<ID>, ID> {

    public boolean create(List<C> listC, C child);

    public C read(List<C> listC, ID idChild);

    /*
    * изменение записи в списке дочерних записей
    * возвращается _Не_измененная запись_
    * */
    public C update(List<C> listC, C child);

    public C delete(List<C> listC, ID idC);

    public boolean deleteAll(List<C> listC);

    public boolean createComplex(ID idParent, C child);

    public C readComplex(ID idParent, ID idChild);

    public C updateComplex(ID idParent, C child);

    public C deleteComplex(ID idParent, ID idC);

    public boolean deleteAllComplex(ID idParent);

}
