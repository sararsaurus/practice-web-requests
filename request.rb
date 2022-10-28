require "http"
response = HTTP.get("https://opensnow.com/dailysnow/colorado")

pp response.parse(:json)
