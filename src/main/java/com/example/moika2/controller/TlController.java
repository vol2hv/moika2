package com.example.moika2.controller;
/*
* мелочевка для разработки в продакшене не нужен
* */

import com.example.moika2.domain.*;
import com.example.moika2.innerdata.FieldsProperties;
import com.example.moika2.innerdata.FieldsTypes;
import com.example.moika2.innerdata.TypeTableOperation;
import com.example.moika2.other.Trifle;
import com.example.moika2.repository.UserRepo;
import com.example.moika2.service.SampleTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/tl")

public class TlController {
    private final String d = "example2";
    static final String s = "example2";
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private SampleTableService service;

    public TlController() {
    }
    @GetMapping("/insert222")
    public String insert(){
//        return "redirect:/";
        return "/tl/example1";
    }
    @GetMapping("/example1")
    public ModelAndView example1(){
        ModelAndView modelAndView = new ModelAndView();
        List<User> users = userRepo.findAll();
        modelAndView.addObject("users", users);
        modelAndView.addObject("serverTime", new Date());
        modelAndView.setViewName("/tl/example1");
        return modelAndView;
    }

    @GetMapping(value = "/"+d)
    public ModelAndView example2(@RequestParam TypeTableOperation par1, @RequestParam String par2 ){
        Boolean b1,b2,b3;
        b1 = null;
        b2 = false;
        b3 = true;
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("par1", par1);
        modelAndView.addObject("par2", par2);
        List<User> users = userRepo.findAll();
        modelAndView.addObject("users", users);
        Date date = new Date();
        modelAndView.addObject("serverTime", date);
        modelAndView.setViewName("/tl/example2");
        modelAndView.addObject("b1", b1);
        modelAndView.addObject("b2", b2);
        modelAndView.addObject("b3", b3);
        return modelAndView;
    }

    @GetMapping("/testallfields")
    public String testAllFields (Model model){
        FieldsProperties pString =
            new FieldsProperties("Text", FieldsTypes.STRING, "Text", "Text", false,
                1,null,null );
        model.addAttribute("pString", pString);
        FieldsProperties iField =
            new FieldsProperties("Integer", FieldsTypes.INTEGER , "Integer", "Integer", false,
                2,null,null );
        model.addAttribute("iField", iField);
        FieldsProperties bdField =
                new FieldsProperties("Bigdecimal", FieldsTypes.BIGDECIMAL, "Bigdecimal", "Bigdecimal", false,
                        3,null, null );
        model.addAttribute("bdField", bdField);
        FieldsProperties dateField =
                new FieldsProperties("Date", FieldsTypes.DATE, "Date", "Date", false,
                        4,null, null );
        model.addAttribute("dateField", dateField);
        FieldsProperties timeField =
                new FieldsProperties("Time", FieldsTypes.TIME, "Time", "Time", false,
                        5,null, null );
        model.addAttribute("timeField", timeField);
        FieldsProperties booleanField =
                new FieldsProperties("Boolean", FieldsTypes.BOOLEAN, "Boolean", "Boolean", false,
                        6,null, null );
        model.addAttribute("booleanField", booleanField);
        FieldsProperties passwordField =
                new FieldsProperties("Password", FieldsTypes.PASSWORD, "Password", "Password", false,
                        7,null, null );
        model.addAttribute("passwordField", passwordField);
        FieldsProperties emailField =
                new FieldsProperties("Email", FieldsTypes.EMAIL, "Email", "Email", false,
                        8,null, null );
        model.addAttribute("emailField", emailField);

        BoxStatus status = BoxStatus.CLOSED;
        FieldsProperties enumoneField =
                new FieldsProperties("enumone", FieldsTypes.ENUMONE, "enumone", "enumone", false,
                        9, null, BoxStatus.values() );
        model.addAttribute("enumoneField", enumoneField);
        model.addAttribute("status", status);

        return "/tl/TestAllFields";
    }
//    @PreAuthorize("hasAuthority('ROLE_ADMIN')")
    @PostMapping("/testallfields")
    public String postAllFields(@RequestParam Map<String, String> form) {
        return "redirect:/";
    }

    @GetMapping("/example3")
    public String list(Model model) throws ParseException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        model.addAttribute("value", BoxType.BIG);

        Class<Box> boxClass = Box.class;
        Method method = boxClass.getDeclaredField("boxStatus").getType()
                .getDeclaredMethod("values");
        Object object = method.invoke(BoxStatus.BREAK);

        model.addAttribute("types", object);
        Date time1 = new SimpleDateFormat("HH:mm:ss").parse("15:15:15");

        return "/tl/example3";
    }

    // saving a new or modified record
    @PostMapping("/example3")
    public String save(@RequestParam Map<String, String> form) {
//        service.save(sample);
        return "redirect:/";
    }

    @GetMapping("/datetime")
    public String datetime(Model model) throws ParseException {
        Sample sample = new Sample("sample1","deskription1",
                null, //new SimpleDateFormat("yyyy-MM-dd").parse("2018-10-16"),
                new SimpleDateFormat("HH:mm:ss").parse("15:30:14"),
                new BigDecimal("12345.99"), false,"Пароль", BoxStatus.FREE,  null);
        model.addAttribute("rowtabl", sample);
        return "/tl/datetime";
    }

    @PostMapping("/datetime")
    public String datetimePost(@Valid Sample sample,
                               BindingResult bindingResult,
                               Model model,
                               @RequestParam Map<String, String> form) {
//        service.save(sample);
        return "redirect:/";
    }
    @GetMapping("/debuging")
    public String debuging(HttpServletRequest request, Model model)  {
        model.addAttribute("user1", userRepo.findByUsername("admin"));
        model.addAttribute("users", userRepo.findAll());
        model.addAttribute("num", 1955);
        String referer = Trifle.getPreviousPageByRequest(request);
        return "/tl/debuging";
    }
    @GetMapping("/{path}")
//    http://localhost:8080/tl/qqq?username=admin
//    public ModelAndView path(@PathVariable String path, @RequestParam String username){
    public ModelAndView path(@PathVariable String path, @RequestParam String username){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("path", String.format("path =/tl/%s/?%s", path,username));
        modelAndView.addObject("user", userRepo.findByUsername(username));
        modelAndView.addObject("users",userRepo.findAll());
        modelAndView.addObject("num", 1955);
        modelAndView.setViewName("/tl/path");
        return modelAndView;
    }
}
