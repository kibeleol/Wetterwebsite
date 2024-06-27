package com.example.datacollection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WeatherService {

    @Autowired
    private WeatherRepository weatherRepository;

    public List<Weather> findAll() {
        return weatherRepository.findAll();
    }

    public Weather save(Weather weather) {
        return weatherRepository.save(weather);
    }

    public void deleteById(int id) {
        weatherRepository.deleteById(id);
    }
}
