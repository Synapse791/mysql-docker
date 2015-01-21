# MySQL Docker
**This is in no way meant to be used in a production environment**

This is just a simple docker container that can be run instead of installing mysql-server on your localhost.

It should only be used for testing purposes as when you remove the container, the contents of the database will be lost.

#### Build & Run

```bash
sudo docker build -t mysql-server .
sudo docker run -d -p 3306:3306 mysql-server
```
