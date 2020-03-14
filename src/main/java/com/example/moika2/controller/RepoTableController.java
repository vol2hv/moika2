package com.example.moika2.controller;
/*
 * обобщенный  контроллер для отображения таблиц из репозитория
 *
 * */

import com.example.moika2.domain.BaseEntity;
import com.example.moika2.innerdata.TypeTableOperation;
import com.example.moika2.service.TableFromRepoService;
import com.example.moika2.service.TableRandering;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Map;

@Slf4j
public abstract class RepoTableController
    <T extends BaseEntity<ID>, ID > {
    private TableFromRepoService<T, ID> repoService;
    private final Class<T> clazz;
    private final String baseURL;
    private String tableName;

    public RepoTableController(TableFromRepoService<T, ID> repoService, Class<T> clazz,
           String baseURL) {
        this.repoService = repoService;
        this.clazz = clazz;
        this.baseURL = baseURL;
        tableName = clazz.getSimpleName().toLowerCase();
    }

    // List all records
    @GetMapping("/list")
    public String list(Model model) {
        TableRandering.prepareMainList(baseURL, clazz, repoService, model);
        return "tableFormList";
    }

    // Create read update a record
    @GetMapping("/cru")
    public String create(@RequestParam TypeTableOperation operation,
                         @RequestParam ID id, T record, Model model) {

        if (operation != TypeTableOperation.CREATE) {
            record = repoService.findById(id);
        }
        TableRandering.prepareMainAndChildOper(baseURL, clazz, operation, model, record);
        return "tableForm";
    }

    // saving a new or modified record
    @PostMapping("/cru")
    public String save(@RequestParam TypeTableOperation operation, @RequestParam Map<String, String> form,
                       @Valid T record, BindingResult bindingResult, Model model) {
        TableRandering.prepareMainAndChildOper(baseURL, clazz, operation, model, record);

        if (bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);
//            model.addAttribute("dangerMes",errors.values() );
            model.mergeAttributes(errors);
            return "tableForm";
        } else {
            repoService.save(record);
            return "redirect:" + baseURL + "/list/";
        }
    }

    //    // Delete a record
    @RequestMapping("/delete")
    public String delete(@RequestParam ID id) {
        repoService.deleteById(id);
        return "redirect:" + baseURL + "/list/";
    }

}
