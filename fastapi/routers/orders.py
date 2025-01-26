from fastapi import APIRouter

router = APIRouter(
    prefix="/orders",
    tags=["Orders"]
)

@router.post("/")
async def create_order(order_details: dict):
    return {"message": "Order created successfully!", "details": order_details}

@router.post("/return")
async def return_order(return_details: dict):
    return {"message": "Return request received!", "details": return_details}
