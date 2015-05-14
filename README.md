# Usage
```
# launch web-fixture
docker run -d -p 8999:8080 hawkularqe/web-fixture

# get custom http code
curl -I http://localhost:8999/http?return=503
--> HTTP/1.1 503 Service Temporarily Unavailable

curl -I http://10.16.23.108:8999/http?return=405
--> HTTP/1.1 405 Not Allowed
```


