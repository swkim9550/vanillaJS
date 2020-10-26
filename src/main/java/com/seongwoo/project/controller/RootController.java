package com.seongwoo.project.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Slf4j
@Controller
@RequestMapping("/main")
public class RootController {
    //Page 처리.
    @RequestMapping(value = {"/flexpanel"}, method= { RequestMethod.GET, RequestMethod.POST })
    public String mainPage (){

        log.info("page call.");
        return "index";
    }
}
