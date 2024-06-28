import requests
import json

# OpenWeatherMap API Konfiguration
api_key = "c24d32d7ec1cac6df361f081baf588d8"
base_url = "http://api.openweathermap.org/data/2.5/weather?"
city_name = "Tettnang"

# Komplette URL für die API-Anfrage zusammenstellen
complete_url = f"{base_url}q={city_name}&appid={api_key}&units=metric"

# API-Anfrage an OpenWeatherMap senden
response = requests.get(complete_url)

# Daten aus der API-Antwort extrahieren
data = response.json()

# Erforderliche Daten extrahieren
city_name = data['name']
temperature = data['main']['temp']
feels_like_temp = data['main']['feels_like']
temp_min = data['main']['temp_min']
temp_max = data['main']['temp_max']
weather_description = data['weather'][0]['description']
wind_speed = data['wind']['speed']
cloudiness = data['clouds']['all']

# Daten im gewünschten Format für die POST-Anfrage vorbereiten
weather_data = {
    "cityName": city_name,
    "temperature": temperature,
    "feelsLikeTemp": feels_like_temp,
    "tempMin": temp_min,
    "tempMax": temp_max,
    "weatherDescription": weather_description.capitalize(),  # Erste Buchstabe groß schreiben
    "windSpeed": wind_speed,
    "cloudiness": cloudiness
}

# Ziel-URL für die POST-Anfrage definieren
post_url = "http://localhost:8080/weather"

# POST-Anfrage senden
try:
    response = requests.post(post_url, json=weather_data)
    if response.status_code == 200:
        print("Daten erfolgreich an die lokale URL gesendet.")
    else:
        print(f"Fehler beim Senden der Daten. Status Code: {response.status_code}")
except requests.exceptions.RequestException as e:
    print(f"Fehler bei der Anfrage: {e}")