# Docker-TIG-stack
This is a small project I made with the purpose of easily spinning up a TIG-stack (Telegraf, InfluxDB, Grafana) in docker to take input from a mqtt broker sending sensor data from a small IOT sensor. 

---

This is a project I made to easily be able to recieve, store, and visualize data from an IOT sensor. The sensor data is sent from an mqtt broker on the same network as the sensor. Then I want to recieve this data and store it in a database, so that I can later fetch that data and visualize it. This was made using the TIG-stack (Telegraf, InfluxDB, Grafana), so telegraf subscribes to the mqtt topic and stores the data in influxdb. Influxdb is connected to grafana, which is used to visualize the data. 
I built all of this in docker to make it as protable as possiple. I wanted a simple plug-and-play experience when using this, so this application should be pretty simple to configure and use.

