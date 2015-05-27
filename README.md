# Basic Usage
```
# launch web-fixture
docker run -d -p 8999:8080 hawkularqe/web-fixture

# get a simple index html page
curl http://localhost:8999/
--> <!DOCTYPE html><html><body><p>Pellentesque habitant morbi...

# get custom http code
curl -I http://localhost:8999/http?return=503
--> HTTP/1.1 503 Service Temporarily Unavailable

curl -I http://localhost:8999/http?return=405
--> HTTP/1.1 405 Not Allowed
```

# Simulate downtime
Pass in an optional cron expression and time-to-live
```
# Server goes offline for 10 seconds every minute
docker run -p 8999:8080 -e "DURATION=50s" -e "CRON_EXP=* * * * *" hawkularqe/web-fixture
```

