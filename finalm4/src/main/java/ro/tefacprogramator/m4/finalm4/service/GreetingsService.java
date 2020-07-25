package ro.tefacprogramator.m4.finalm4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ro.tefacprogramator.m4.finalm4.entity.Greeting;
import ro.tefacprogramator.m4.finalm4.repository.GreetingRepository;

@Service
public class GreetingsService {

    @Autowired
    public  GreetingRepository rep;

    public  boolean addGreetings(Greeting g1) {

        Greeting saved = rep.save(g1);

        if(saved!=null){
            return true;
        }
       
       
        return false;
    }

    public List<Greeting> getAllGreetings(){
        return rep.findAll();
    }
    
}