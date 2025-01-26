from pydantic import BaseModel
from typing import List, Optional

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
  username: str
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