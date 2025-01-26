from fastapi import APIRouter

router = APIRouter(
    prefix="/users",
    tags=["Users"]
)

@router.post("/signup")
async def signup(user_details: dict):
    return {"message": "User signed up successfully!", "user": user_details}

@router.get("/{user_id}")
async def get_user(user_id: int):
    return {"message": f"User details for ID {user_id}"}
