## Environment Variables

```
cd environment_variables 
```

docker run `--env` or `-e` Set environment variables
```
docker run -it --rm -e FOOBAR=1234 -v $(pwd)/readenv.py:/readenv.py python:3.9 python3 readenv.py
```

docker run `--env-file` Read in a file of environment variables
```
docker run -it --rm --env-file envfile -v $(pwd)/readenv.py:/readenv.py python:3.9 python3 readenv.py
```
