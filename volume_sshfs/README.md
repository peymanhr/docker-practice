## Volume sshfs driver

Create sshfs volume
```
docker volume create --driver vieux/sshfs -o sshcmd=webuser@<host>:<path> -o password=<password> -o allow_other webroot
```

Attach container to the volume
```
docker run -d -p 8000:80 --mount source=webroot,target=/usr/local/apache2/htdocs httpd:2.4
```