import os
import httpx
from dotenv import load_dotenv

load_dotenv()

bas_api = os.getenv('bas_api')

class APIClient:
  def __init__(self):
    self.base_url = bas_api

  async def get_products_by_category(self, category_id):
    url = f"{self.base_url}/products/category/{category_id}/all"
    async with httpx.AsyncClient() as client:
      response = await client.get(url)
      response.raise_for_status()
      return response.json()

  async def get_categories(self):
    url = f"{self.base_url}/products/categories"
    async with httpx.AsyncClient() as client:
      response = await client.get(url)
      response.raise_for_status()
      return response.json()

  async def get_orders_by_user(self, user_id):
    url = f"{self.base_url}/orders/users/{user_id}/orders"
    async with httpx.AsyncClient() as client:
      response = await client.get(url)
      response.raise_for_status()
      return response.json()