from fastapi import FastAPI, File, UploadFile, HTTPException
from typing import List
from passlib.context import CryptContext
from models import UserSchema, AddressSchema, CategorySchema, ProductSchema, OrderSchema, OrderItemSchema, ReturnReasonSchema, LoginSchema, SignupSchema, OrderRequest, ReturnRequest
from routers import orders, users, products

app = FastAPI()

app.include_router(orders.router, prefix="/api/v1")
app.include_router(users.router, prefix="/api/v1")
app.include_router(products.router, prefix="/api/v1")

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

# Mock DB interaction functions
def fetch_products_from_db(category_id: int):
  return [
    {"product_id": 1, "product_name": "Smartphone", "description": "Latest smartphone", "price": 699.99, "stock_quantity": 50},
    {"product_id": 2, "product_name": "Laptop", "description": "Gaming laptop", "price": 1199.99, "stock_quantity": 20},
  ]

def fetch_categories_from_db():
  return [
    {"category_id": 1, "category_name": "Electronics"},
    {"category_id": 2, "category_name": "Home Appliances"},
  ]

def fetch_orders_from_db(user_id: int):
  return [
    {"order_id": 1, "total_price": 249.99, "status": "Delivered", "created_at": "2025-01-20 15:30:00"},
    {"order_id": 2, "total_price": 599.99, "status": "Shipped", "created_at": "2025-01-22 11:45:00"},
  ]

def fetch_user_from_db(user_id: int):
  return {
    "user_id": user_id,
    "username": "johndoe",
    "email": "johndoe@example.com",
    "created_at": "2025-01-01 10:00:00"
  }

def fetch_user_by_email(email: str):
  return {"user_id": 1, "email": "johndoe@example.com", "hashed_password": "$2b$12$..."}

def save_user_to_db(username: str, email: str, hashed_password: str):
  return 1

# API Endpoints

@app.get("/categories/{category_id}/products", response_model=List[ProductSchema])
async def get_products_by_category(category_id: int):
  products = fetch_products_from_db(category_id)
  if not products:
    raise HTTPException(status_code=404, detail="No products found for this category.")
  return products

@app.get("/categories", response_model=List[CategorySchema])
async def get_categories():
  categories = fetch_categories_from_db()
  return categories

@app.get("/users/{user_id}/orders", response_model=List[OrderSchema])
async def get_orders(user_id: int):
  orders = fetch_orders_from_db(user_id)
  if not orders:
    raise HTTPException(status_code=404, detail="No orders found for this user.")
  return orders

@app.get("/users/{user_id}", response_model=UserSchema)
async def get_user_details(user_id: int):
  user = fetch_user_from_db(user_id)
  if not user:
    raise HTTPException(status_code=404, detail="User not found.")
  return user

@app.post("/login")
async def login(credentials: LoginSchema):
  user = fetch_user_by_email(credentials.email)
  if user and pwd_context.verify(credentials.password, user["hashed_password"]):
    return {"message": "Login successful", "user_id": user["user_id"]}
  raise HTTPException(status_code=401, detail="Invalid email or password.")

@app.post("/signup")
async def signup(details: SignupSchema):
  hashed_password = pwd_context.hash(details.password)
  user_id = save_user_to_db(details.username, details.email, hashed_password)
  return {"message": "Signup successful", "user_id": user_id}

@app.post("/orders/new")
def create_order(order_request: OrderRequest):
  pass

# Endpoint to process returns
@app.post("/orders/return")
async def process_return(return_request: ReturnRequest, images: List[UploadFile] = File(...)):
  return_request_data = return_request.model_dump()

  uploaded_images = []
  for image in images:
    content = await image.read()
    uploaded_images.append({
      "filename": image.filename,
      "content_type": image.content_type,
      "size": len(content)
    })

  return {
    "return_request": return_request_data,
    "uploaded_images": uploaded_images
  }