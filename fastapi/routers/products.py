from fastapi import APIRouter, HTTPException

from sqlalchemy import text
from db_helper import get_db_session

router = APIRouter(
    prefix="/products",
    tags=["Products"]
)

SessionLocal = get_db_session()

@router.get("/all")
async def list_products():
    session = SessionLocal()
    try:
        query = text("SELECT product_id, product_name, description, price, stock_quantity, return_window_days, category_id FROM product")
        result = session.execute(query).fetchall()
        # Convert the result to a list of dictionaries
        products = [
            {
                "product_id": int(row.product_id),
                "product_name": row.product_name,
                "description": row.description,
                "price": float(row.price),
                "stock_quantity": int(row.stock_quantity),
                "return_window_days": int(row.return_window_days),
                "category_id": int(row.category_id)
            }
            for row in result
        ]
        
        if not products:
            raise HTTPException(status_code=404, detail="No products found")
        session.close()
        return {"products": products}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

@router.get("/categories")
async def list_categories():
    session = SessionLocal()
    try:
        query = text("SELECT category_id, category_name FROM category")
        result = session.execute(query).fetchall()
        # Convert the result to a list of dictionaries
        categories = [
            {
                "category_id": int(row.category_id),
                "category_name": row.category_name,
            }
            for row in result
        ]
        
        if not categories:
            raise HTTPException(status_code=404, detail="No categories found")
        session.close()
        return {"categories": categories}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

@router.get("/category/{category_id}/all")
async def list_products_by_category(category_id: int):
    session = SessionLocal()
    try:
        query = text(f"SELECT product_id, product_name, description, price, stock_quantity, return_window_days, category_id FROM product where category_id = {int(category_id)}")
        result = session.execute(query).fetchall()
        # Convert the result to a list of dictionaries
        products = [
            {
                "product_id": int(row.product_id),
                "product_name": row.product_name,
                "description": row.description,
                "price": float(row.price),
                "stock_quantity": int(row.stock_quantity),
                "return_window_days": int(row.return_window_days),
                "category_id": int(row.category_id)
            }
            for row in result
        ]
        
        if not products:
            raise HTTPException(status_code=404, detail="No products found")
        session.close()
        return {"products": products}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
