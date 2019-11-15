# Autocasting docker container

- Copy `config.example.json` to config.json and add your configuration
- `docker-compose up -d`
- Done!


```js config.json example
{
  "Phone": { // Name of the Chromecast
    "interval": "20", // Interval in seconds to check if the Chromecast is inactive
    "url": "https://www.example.com" // The url to cast
  }
}
```
