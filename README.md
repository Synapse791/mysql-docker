# MySQL Docker
**This is in no way meant to be used in a production environment**

This is just a simple docker container that can be run instead of installing mysql-server on your localhost.

It should only be used for testing purposes as when you remove the container, the contents of the database will be lost.

#### Build & Run

```bash
sudo docker build -t mysql-server .
sudo docker run -d -p 3306:3306 mysql-server
```

#### Running a separate data container
To achieve persistant databases, you can run a separate container that will contain the data. To do this, we run the container giving it a name like 'mysql_data'. When we start it, we pass the command /bin/true. This instantly completes and stops the container. Then we run a new container and link the volumes from the stopped data container.

```bash
sudo docker run -d --name mysql_data mysql-server /bin/true
sudo docker run -d --name mysql_app -p 3306:3306 --volumes-from mysql_data mysql-server
```

Now if you stop and remove the second contianer(mysql_app), the data is still stored on the first stopped container(mysql_data). This means that when you run the second command again, it will start exactly where you left off.
