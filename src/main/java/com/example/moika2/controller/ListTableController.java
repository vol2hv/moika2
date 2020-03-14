package com.example.moika2.controller;
/*
 * обобщенный  контроллер для отображения таблиц из списка связей один ко многим
 * дочерних таблиц
 *
 * */


import com.example.moika2.domain.BaseEntity;
import com.example.moika2.innerdata.TypeTableOperation;
import com.example.moika2.service.TableFromListService;
import com.example.moika2.service.TableFromListServiceImpl;
import com.example.moika2.service.TableFromRepoService;
import com.example.moika2.service.TableRandering;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Map;

@Slf4j
public abstract class ListTableController
    <P extends BaseEntity<ID>, C extends BaseEntity<ID>,ID > {
    private final TableFromRepoService<P, ID> repoService;
    private final TableFromListService<P,C,ID> listService;
    private final Class<C> clazz;
    private final String baseURL;
    private final String fieldChild;

    public ListTableController(TableFromRepoService<P, ID> repoService, Class<C> clazz, String baseURL) {
        this.repoService = repoService;
        fieldChild = baseURL.substring(baseURL.lastIndexOf("/")+1);
        listService =
            new TableFromListServiceImpl(repoService, fieldChild);
        this.clazz = clazz;
        this.baseURL = baseURL;
    }

    // List all records
    @GetMapping("/list")
    public String list(@RequestParam(defaultValue = "0") ID idParent, HttpServletRequest request, Model model) {
        TableRandering.prepareChildList(baseURL, clazz, idParent, fieldChild, repoService, model);
        return "childrenTableFormList";
    }
    // Create read update a record
    @GetMapping("/cru")
    public String create(@RequestParam TypeTableOperation operation,
                         @RequestParam ID idParent, @RequestParam ID idChild, C record, Model model) {

        if (operation != TypeTableOperation.CREATE) {
            record = listService.readComplex(idParent, idChild);
        }
        TableRandering.prepareMainAndChildOper(baseURL, clazz, operation, model, record);
         model.addAttribute("idParent", idParent); 
        return "childrenTableForm";
    }


    // saving a new or modified record
    @PostMapping("/cru")
    public String save(@RequestParam TypeTableOperation operation, @RequestParam ID idParent,
                       @Valid C record, BindingResult bindingResult, Model model) {
        TableRandering.prepareMainAndChildOper(baseURL, clazz, operation, model, record);

        if (bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errors);
            return "childrenTableForm";
        } else {
            if ( operation == TypeTableOperation.UPDATE){
                listService.updateComplex(idParent, record);
            }
                else listService.createComplex(idParent, record);
            return "redirect:" + baseURL + "/list/?&idParent="+ idParent.toString();
        }
    }

    // Delete a record
    @RequestMapping("/delete")
    public String delete(@RequestParam ID idParent, @RequestParam ID idChild) {
        listService.deleteComplex(idParent, idChild);
        return "redirect:" + baseURL + "/list/?&idParent="+ idParent.toString();
    }
}
