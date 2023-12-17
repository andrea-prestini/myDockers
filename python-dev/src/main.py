import debugpy
from fastapi import FastAPI
import redis

app = FastAPI()


r = redis.Redis(host="redis", port=6379)

debugpy.listen(("0.0.0.0", 5678))


@app.get("/")
def read_root():
    return {"Ciao amico mio del sistema BicherTheOne"}


@app.get("/hits")
def count_hits():
    r.incr("hits")
    return {"number of hits": r.get("hits")}
