package com.mbstu.badhon.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Controller
public class indexController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        System.out.println("---This  is Home page---");
        return "index";
    }
}