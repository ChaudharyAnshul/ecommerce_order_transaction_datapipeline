from fastapi import APIRouter, HTTPException, File, UploadFile
from models import OrderSchema, OrderRequest, ReturnRequest
from typing import List
from db_helper import get_db_session
from sqlalchemy import text

router = APIRouter(
    prefix="/orders",
    tags=["Orders"]
)

SessionLocal = get_db_session()

@router.post("/new")
async def create_order(order_details: OrderRequest):
    session = SessionLocal()
    try:
        # Step 1: Insert into `order` table
        insert_order_query = text("""
            INSERT INTO ecommerce_db.order 
            (customer_id, total_amount, payment_status, delivery_status) 
            VALUES (:customer_id, :total_amount, :payment_status, :delivery_status)
        """)
        result = session.execute(
            insert_order_query,
            {
                "customer_id": order_details.user_id,
                "total_amount": order_details.total_amount,
                "payment_status": "Paid",
                "delivery_status": "Processing"
            }
        )
        session.flush()  # Flush to get the generated order ID
        new_order_id = result.lastrowid

        # Step 2: Insert into `order_item` table for each item
        insert_item_query = text("""
            INSERT INTO ecommerce_db.order_item 
            (order_id, product_id, quantity, price) 
            VALUES (:order_id, :product_id, :quantity, :price)
        """)
        for item in order_details.items:
            session.execute(
                insert_item_query,
                {
                    "order_id": new_order_id,
                    "product_id": item.product_id,
                    "quantity": item.quantity,
                    "price": 10.0
                }
            )

        # Step 3: Insert into `payment` table
        insert_payment_query = text("""
            INSERT INTO ecommerce_db.payment
            (order_id, payment_method, amount, payment_status)  
            VALUES (:order_id, :payment_method, :amount, :payment_status)
        """)
        session.execute(
            insert_payment_query,
            {
                "order_id": new_order_id,
                "payment_method": order_details.payment.payment_method,
                "amount": 10.0,
                "payment_status": "Paid"
            }
        )

        # Commit transaction
        session.commit()
        session.close()
        return {"message": "Order created successfully!", "order_id": new_order_id}

    except Exception as e:
        session.rollback()
        session.close()
        raise HTTPException(status_code=500, detail=f"Failed to create order: {str(e)}")

@router.post("/return")
async def return_order(return_details: ReturnRequest, images: List[UploadFile] = File(...)):
    return {"message": "Return request received!", "details": return_details}

@router.get("/users/{user_id}/orders")
async def get_orders(user_id: int):
    session = SessionLocal()
    try:
        # Query to fetch the user's orders along with order items
        orders_query = text("""
            SELECT 
                o.order_id, 
                o.order_date, 
                o.total_amount, 
                o.payment_status, 
                o.delivery_status,
                oi.product_id, 
                oi.quantity
            FROM ecommerce_db.order o
            LEFT JOIN ecommerce_db.order_item oi ON o.order_id = oi.order_id
            WHERE o.customer_id = :user_id
        """)

        result = session.execute(orders_query, {"user_id": user_id}).fetchall()

        # Group orders and items
        orders_dict = {}
        for row in result:
            order_id = row.order_id
            if order_id not in orders_dict:
                orders_dict[order_id] = {
                    "order_id": order_id,
                    "order_date": row.order_date,
                    "total_amount": row.total_amount,
                    "payment_status": row.payment_status,
                    "delivery_status": row.delivery_status,
                    "items": []
                }
            # Add the order items if available
            if row.product_id:
                orders_dict[order_id]["items"].append({
                    "product_id": row.product_id,
                    "quantity": row.quantity
                })

        # Convert orders_dict to a list
        orders = list(orders_dict.values())

        # Handle case where no orders are found
        if not orders:
            {"user_id": user_id, "orders": []}

        session.close()
        return {"user_id": user_id, "orders": orders}

    except Exception as e:
        session.close()
        raise HTTPException(status_code=500, detail=f"Failed to retrieve orders: {str(e)}")


@router.get("/returnable_order_orders")
async def get_returnable_orders():
    session = SessionLocal()
    try:
        query = text("SELECT order_id, order_date, delivery_status FROM ecommerce_db.order WHERE delivery_status = 'Delivered' ORDER BY order_date DESC LIMIT 1;")
        result = session.execute(query).fetchall()
        # Convert the result to a list of dictionaries
        order = [
            {
                "order_id": int(row.order_id),
                "order_date": row.order_date,
                "delivery_status": row.delivery_status
            }
            for row in result
        ]
        
        if not order:
            raise HTTPException(status_code=404, detail="No products found")
        session.close()
        return {"order": order}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))