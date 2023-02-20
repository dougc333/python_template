from mylib.logic import wiki, search_wiki
from fastapi import FastAPI
import uvicorn

app = FastAPI()


@app.get("/")
async def root():
    return {"message":"wikipedia api call /search"}

@app.get("/add/{num1}/{num2}")
async def add(num1:int, num2:int):
    """add 2 numbers"""
    return {"total": num1+num2}

@app.get("/search/{value}")
async def search(value:str):
    """search wiki"""
    return search_wiki(value)

@app.get("/wiki/{value}")
async def get_wiki(value:str):
    """ wiki"""
    return wiki(value)


if __name__=="__main__":
    uvicorn.run(app, port=8080, host='0.0.0.0')
