package com.example.datacollection;

import jakarta.persistence.*;

import java.sql.Timestamp;

@Entity
@Table(name = "weather")
public class Weather {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "city_name")
    private String cityName;

    @Column(name = "temperature")
    private float temperature;

    @Column(name = "feels_like_temp")
    private float feelsLikeTemp;

    @Column(name = "temp_min")
    private float tempMin;

    @Column(name = "temp_max")
    private float tempMax;

    @Column(name = "weather_description")
    private String weatherDescription;

    @Column(name = "wind_speed")
    private float windSpeed;

    @Column(name = "cloudiness")
    private int cloudiness;

    @Column(name = "timestamp")
    private Timestamp timestamp;

    // Constructor
    public Weather() {
        // Default constructor required by JPA
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public float getTemperature() {
        return temperature;
    }

    public void setTemperature(float temperature) {
        this.temperature = temperature;
    }

    public float getFeelsLikeTemp() {
        return feelsLikeTemp;
    }

    public void setFeelsLikeTemp(float feelsLikeTemp) {
        this.feelsLikeTemp = feelsLikeTemp;
    }

    public float getTempMin() {
        return tempMin;
    }

    public void setTempMin(float tempMin) {
        this.tempMin = tempMin;
    }

    public float getTempMax() {
        return tempMax;
    }

    public void setTempMax(float tempMax) {
        this.tempMax = tempMax;
    }

    public String getWeatherDescription() {
        return weatherDescription;
    }

    public void setWeatherDescription(String weatherDescription) {
        this.weatherDescription = weatherDescription;
    }

    public float getWindSpeed() {
        return windSpeed;
    }

    public void setWindSpeed(float windSpeed) {
        this.windSpeed = windSpeed;
    }

    public int getCloudiness() {
        return cloudiness;
    }

    public void setCloudiness(int cloudiness) {
        this.cloudiness = cloudiness;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }
}
