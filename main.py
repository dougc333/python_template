from mylib.logic import wiki
from fastapi import fastapi
import uvicorn

app = fastapi()


@app.get("/")
async def root():
    return {"message":"hello"}

@app.get("/add/{num1}/{num2}")
async def add(num1:int, num2:int):
    """add 2 numbers"""
    return {"total": num1+num2}




print(wiki())
