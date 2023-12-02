## Create an Ubuntu image with modified repository

```
cd ubuntu_ir-repo
```

```
docker build -t ubuntu:22.04-ir .
docker run -it --rm ubuntu:22.04-ir apt update
```

