## Environment Variables

```bash
cd environment_variables 
docker run -it --rm --env-file envfile -v $(pwd)/readenv.py:/readenv.py python:3.9 python3 readenv.py
```
