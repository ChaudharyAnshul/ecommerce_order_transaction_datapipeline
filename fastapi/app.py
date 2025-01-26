from fastapi import FastAPI, File, UploadFile
from typing import List
from models import ReturnRequest
from routers import orders, users, products

app = FastAPI()

app.include_router(orders.router, prefix="/api/v1")
app.include_router(users.router, prefix="/api/v1")
app.include_router(products.router, prefix="/api/v1")
