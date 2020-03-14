package com.example.moika2.service;
/**
 * Обеспечение доступа к списку дочерних записей таблицы БД
 */

import com.example.moika2.domain.BaseEntity;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Slf4j
@NoArgsConstructor
public class TableFromListServiceImpl<P extends BaseEntity<ID>, C extends BaseEntity<ID>,ID,
        S extends TableFromRepoService<P, ID>>
        implements TableFromListService<P, C, ID>
{
    private TableFromRepoService<P, ID> mainTableService ;
    private String nameRefChildTable = null;
    private P tmpParent;

    @Autowired
    public TableFromListServiceImpl(S mainTableService, String nameRefChildTable) {
        this.mainTableService = mainTableService;
        this.nameRefChildTable = nameRefChildTable;
    }

    public boolean create(List<C> listC, C child) {
        boolean res = false;
        try {
            listC.add(child);
            res = true;
        } catch (Exception ex) {
            log.error("Ошибка добавления записи дочерней таблицы базе данных {}:", ex);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public C read(List<C> listC, ID idChild) {
        C res = null;
        try {
            res = listC.get(C.getIndexChild(listC,idChild));
        } catch (Exception ex) {
            log.error("Ошибка чтения записи дочерней таблицы из базе данных {}:", ex);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public C update(List<C> listC, C child) {
        C res = null;
        try {
            int ind = C.getIndexChild(listC,child.getId());
            if (ind >= 0) {
                res = listC.set(ind,child);
            }
        } catch (Exception ex) {
            log.error("Ошибка изменения записи дочерней таблицы базе данных {}:", ex);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public C delete( List<C> listC, ID idC) {
        C res = null;
        try {
            int ind = C.getIndexChild(listC,idC);
            if (ind >= 0) {
                res = listC.remove(ind);
            }
        } catch (Exception ex) {
            log.error("Ошибка удаления записи дочерней таблицы базы данных {}:", ex);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public boolean deleteAll(List<C> listC) {
        boolean res = false;
        try {
            listC.clear();
            res = true;
        } catch (Exception ex) {
            log.error("Ошибка удаления записи дочерней таблицы базы данных {}:", ex);
            log.error("-------------------------------------------------------------------------");
        }
        return res;
    }

    @Override
    public boolean createComplex(ID idParent, C child) {
        List<C> cList = getList(idParent);
       if (cList == null) { return false;}
        if (!create(cList, child)) {
            return false;
        }
        if (mainTableService.save(tmpParent) == null) {
            return false;
        }
        return true;
    }

    @Override
    public C readComplex(ID idParent, ID idChild) {
        C res = null;
        List<C> cList = getList(idParent);
        if (cList == null) { return null;}
        res = read(cList, idChild);
        return res;
    }

    @Override
    public C updateComplex(ID idParent, C child) {
        C res = null;
        List<C> cList = getList(idParent);
        cList = getList(idParent);
        if (cList == null) { return null;}
        res = update(cList, child);
        if (res == null) { return null;}
        tmpParent = mainTableService.save(tmpParent);
        if (tmpParent == null) { return null;}
        return res;
    }

    @Override
    public C deleteComplex(ID idParent, ID idC) {
        C res = null;
        List<C> cList = getList(idParent);
        cList = getList(idParent);
        if (cList == null) { return null;}
        res = delete(cList, idC);
        if (res == null) { return null;}
        tmpParent = mainTableService.save(tmpParent);
        if (tmpParent == null) { return null;}
        return res;
    }

    @Override
    public boolean deleteAllComplex(ID idParent) {
        boolean res = false;
        List<C> cList = getList(idParent);
        cList = getList(idParent);
        if (cList == null) { return res;}
        res = deleteAll(cList);
        if (!res) { return res;}
        if (mainTableService.save(tmpParent) == null) { return res;}
        return true;
    }

    // -----------------------------------------------
    private List<C> getList(ID idParent) {
        List<C> tmpList = null;
        try {
            tmpParent = mainTableService.findById(idParent);
            tmpList = tmpParent.getChildList(nameRefChildTable);
        } catch (Exception ex) {
            log.error("Ошибка получения списка записей дочерней таблицы базе данных {}:", ex);
            log.error("-------------------------------------------------------------------------");
        }
        return tmpList;
    }

}
