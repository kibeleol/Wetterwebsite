package com.example.datacollection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/weather")
public class WeatherController {

    @Autowired
    private WeatherService weatherService;

    @GetMapping
    public List<Weather> getAllWeather() {
        return weatherService.findAll();
    }

    @PostMapping
    public Weather createWeather(@RequestBody Weather weather) {
        return weatherService.save(weather);
    }

    @DeleteMapping("/{id}")
    public void deleteWeather(@PathVariable int id) {
        weatherService.deleteById(id);
    }
}
