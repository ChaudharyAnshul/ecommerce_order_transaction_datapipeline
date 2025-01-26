from fastapi import FastAPI, File, UploadFile, Depends, HTTPException
from pydantic import BaseModel
from typing import List, Optional
from passlib.context import CryptContext

app = FastAPI()

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

# Pydantic Models
class UserSchema(BaseModel):
  user_id: int
  username: str
  email: str
  phone_number: str

class AddressSchema(BaseModel):
  address_id: int
  user_id: int
  address_line1: str
  address_line2: str
  city: str
  state: str
  postal_code: str
  country: str
  address_type: str

class CategorySchema(BaseModel):
  category_id: int
  category_name: str

class ProductSchema(BaseModel):
  product_id: int
  product_name: str
  description: Optional[str]
  price: float
  stock_quantity: int
  return_window_days: int
  category_id: int

class OrderSchema(BaseModel):
  order_id: int
  customer_id: int
  order_date: str
  total_amount: float
  payment_status: str
  delivery_status: str

class OrderItemSchema(BaseModel):
  order_item_id: int
  order_id: int
  product_id: int
  quantity: int
  price: float
  is_returned: bool

class ReturnReasonSchema(BaseModel):
  reason_id: int
  reason_description: str

class LoginSchema(BaseModel):
  email: str
  password: str

class SignupSchema(BaseModel):
  username: str
  email: str
  password: str
  phone_number: str

class OrderRequestItem(BaseModel):
  product_id: int
  quantity: int

class OrderRequestPayment(BaseModel):
  payment_method: int
  amount: float
  transaction_date: str

class OrderRequest(BaseModel):
  user_id: int
  order_date: str
  total_amount: float
  items: list[OrderRequestItem]  # Example: [{"product_id": 1, "quantity": 2}]
  payment: OrderRequestPayment

class ReturnRequest(BaseModel):
    order_item_id: int
    return_request_date: str
    return_reason: int
    return_reason_detailed: str
    return_type: str
    refund_method: str
    product_condition: str
    return_status: str
    initiated_by: str
    processed_date: str


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