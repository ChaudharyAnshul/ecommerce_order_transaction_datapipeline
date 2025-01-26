from fastapi import APIRouter, HTTPException
from sqlalchemy import text
from db_helper import get_db_session
from models import LoginSchema, SignupSchema

router = APIRouter(
    prefix="/users",
    tags=["Users"]
)

SessionLocal = get_db_session()

@router.post("/signup")
async def signup(user_detail: SignupSchema):
    session = SessionLocal()
    try:
        # Insert user details into the database
        query = text(
            "INSERT INTO user (username, email, password_hash, phone_number) VALUES (:username, :email, :password, :phone_number)"
        )
        session.execute(
            query, 
            {
                "username": user_detail.username, 
                "email": user_detail.email, 
                "password": user_detail.password,
                "phone_number": user_detail.phone_number
            }
        )
        session.commit()
        session.close()
        return {"message": "User signed up successfully!"}
    except Exception as e:
        session.rollback()
        raise HTTPException(status_code=500, detail=str(e))

@router.post("/login")
async def login(user_detail: LoginSchema):
    session = SessionLocal()
    try:
        query = text("SELECT * FROM user WHERE username = :username")
        result = session.execute(query, {"username": user_detail.username}).fetchone()
        if result is None:
            raise HTTPException(status_code=404, detail=f"User with username {user_detail.username} not found")
        if result.password_hash != user_detail.password:
            raise HTTPException(status_code=401, detail="Invalid password")
        user = {
            "username": result.username, 
            "email": result.email, 
            "password": result.password_hash,
            "phone_number": result.phone_number
        }
        
        session.close()
        return {"message": "User Login successfully", "user": user}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
