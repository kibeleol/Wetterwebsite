document.addEventListener('DOMContentLoaded', function() {
    fetchDataAndDrawCharts();
});

async function fetchDataAndDrawCharts() {
    try {
        const response = await fetch('http://localhost:8080/weather');
        
        if (!response.ok) {
            throw new Error('Failed to fetch data');
        }

        const weatherData = await response.json();

        // Filtern der Daten für Tettnang Castle
        const tettnangData = weatherData.filter(data => data.cityName === 'Tettnang Castle');

        // Konvertieren und formatieren der Zeitstempel
        const timestamps = tettnangData.map(data => formatTimestamp(data.timestamp)); // Annahme: timestamp ist das entsprechende Attribut in Ihrer Datenstruktur

        const temperatures = tettnangData.map(data => data.temperature);
        const windSpeeds = tettnangData.map(data => data.windSpeed);
        const cloudiness = tettnangData.map(data => data.cloudiness);

        drawTemperatureChart(timestamps, temperatures);
        drawWindSpeedChart(timestamps, windSpeeds);
        drawCloudinessChart(timestamps, cloudiness);
    } catch (error) {
        console.error('Error fetching or parsing data:', error);
        displayError('Failed to fetch data. Please try again later.');
    }
}

function formatTimestamp(timestamp) {
    const date = new Date(timestamp);
    const day = ("0" + date.getDate()).slice(-2);
    const month = ("0" + (date.getMonth() + 1)).slice(-2);
    const year = date.getFullYear();
    const hours = ("0" + date.getHours()).slice(-2);
    const minutes = ("0" + date.getMinutes()).slice(-2);
    const seconds = ("0" + date.getSeconds()).slice(-2);
    return `${day}.${month}.${year} ${hours}:${minutes}:${seconds}`;
}

function drawTemperatureChart(timestamps, temperatures) {
    const ctx = document.getElementById('temperatureChart').getContext('2d');
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: timestamps,
            datasets: [{
                label: 'Temperatur',
                data: temperatures,
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1,
                fill: false
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Temperatur (°C)', // Legende für die Y-Achse
                        font: {
                            size: 14
                        }
                    }
                }
            },
            plugins: {
                tooltip: {
                    callbacks: {
                        label: function(context) {
                            return `${context.dataset.label}: ${context.raw}`;
                        }
                    }
                }
            }
        }
    });
}

function drawWindSpeedChart(timestamps, windSpeeds) {
    const ctx = document.getElementById('windSpeedChart').getContext('2d');
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: timestamps,
            datasets: [{
                label: 'Windgeschwindigkeit',
                data: windSpeeds,
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1,
                fill: false
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Windgeschwindigkeit (m/s)', // Legende für die Y-Achse
                        font: {
                            size: 14
                        }
                    }
                }
            },
            plugins: {
                tooltip: {
                    callbacks: {
                        label: function(context) {
                            return `${context.dataset.label}: ${context.raw}`;
                        }
                    }
                }
            }
        }
    });
}

function drawCloudinessChart(timestamps, cloudiness) {
    const ctx = document.getElementById('cloudinessChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: timestamps,
            datasets: [{
                label: 'Bewölkung',
                data: cloudiness,
                backgroundColor: 'rgba(255, 206, 86, 0.2)',
                borderColor: 'rgba(255, 206, 86, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Bewölkung (%)', // Legende für die Y-Achse
                        font: {
                            size: 14
                        }
                    }
                }
            }
        }
    });
}

function displayError(message) {
    const errorContainer = document.getElementById('errorContainer');
    errorContainer.innerText = message;
    errorContainer.style.display = 'block';
}
