import requests
from sys import argv

res = requests.get("https://api.coindesk.com/v1/bpi/currentprice.json")
rate = res.json()["bpi"]["USD"]["rate_float"]
print(rate)

