from fastapi import APIRouter

router = APIRouter(
    prefix="/products",
    tags=["Products"]
)

@router.get("/")
async def list_products():
    return {"message": "Product list fetched successfully"}

@router.get("/{category_id}")
async def list_products_by_category(category_id: int):
    return {"message": f"Products in category {category_id}"}
