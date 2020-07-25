package ro.tefacprogramator.m4.finalm4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import ro.tefacprogramator.m4.finalm4.entity.Greeting;
import ro.tefacprogramator.m4.finalm4.service.GreetingsService;

@RestController
public class GreetingController {
    @Autowired
    public GreetingsService gs;

    @PostMapping("/greeting/add")
    public String addGreeting(@RequestBody Greeting g1) {

        if (GreetingsService.addGreetings(g1)) {
            return "success!!";
        }

        return "failed :(";

    }

    @GetMapping("/greeting/getAll")

    public List<Greeting> getAll() {
        return GreetingsService.getAllGreetings();
    }

}