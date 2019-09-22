# Cookie-Clicker-Docker
A docker-compose config to have cookie clicker on a headless server, but with the ability to VNC in to play

The biggest feature is that you can use your browser to stream the VNC connection in. Making it easier to check in on your cookie gains.

The download folder is mounted with the host-os so that you can import/export gamesaves with ease. Localstorage is automatically persisted however.

## How to use
* `Git pull`
* `cd cookie-clicker-docker`
* `docker-compose up`
* open a browser and navigate to `http://localhost:6901/?password=cookie` to access the VNC server in your browser
* or use localhost:5901 with traditional VNC software
* Profit???

## Issues
* You may experience an issue with folder permissions. We mount the chrome-config folder to persist our savegame. However, it may be owned by root. And this docker image uses user id 1000. The fix? `chown 1000:1000 chrome-config` in your host OS