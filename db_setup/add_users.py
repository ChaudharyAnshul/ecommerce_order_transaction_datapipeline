import os 
import random
from datetime import datetime

from dotenv import load_dotenv
from faker import Faker
from sqlalchemy import create_engine, Column, Integer, String, DateTime, Enum, ForeignKey
from sqlalchemy.orm import declarative_base
from sqlalchemy.orm import sessionmaker, relationship
from sqlalchemy.exc import IntegrityError

# Load environment variables from .env file
load_dotenv()

# Get credentials from the environment variables
db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')
db_host = os.getenv('DB_HOST')
db_host_port = os.getenv('DB_HOST_PORT')
db_name = os.getenv('DB_NAME')


# SQLAlchemy setup
DATABASE_URI = f'mysql+mysqlconnector://{db_user}:{db_password}@{db_host}:{db_host_port}/{db_name}'

# Create SQLAlchemy engine
engine = create_engine(DATABASE_URI)

# Base class for ORM models
Base = declarative_base()

# Create session
Session = sessionmaker(bind=engine)
session = Session()

# Define ORM models for existing tables (ensure these match your existing schema)

class UserAddress(Base):
    __tablename__ = 'user_address'
    address_id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey('user.user_id'), nullable=False)
    address_line1 = Column(String(255), nullable=False)
    address_line2 = Column(String(255))
    city = Column(String(100), nullable=False)
    state = Column(String(100))
    postal_code = Column(String(20))
    country = Column(String(100), nullable=False)
    address_type = Column(Enum('shipping'), nullable=False)
    user = relationship("User", back_populates="addresses")

class User(Base):
    __tablename__ = 'user'
    user_id = Column(Integer, primary_key=True, autoincrement=True)
    username = Column(String(100), unique=True, nullable=False)
    email = Column(String(255), unique=True, nullable=False)
    password_hash = Column(String(255), nullable=False)
    phone_number = Column(String(15))
    addresses = relationship("UserAddress", back_populates="user")

# Use existing tables, don't recreate them
Base.metadata.reflect(engine)

# Initialize Faker instance
fake = Faker()

# Number of records to insert
num_records = 1000

for user_id in range(1, num_records + 1):
    username = fake.user_name()

    while session.query(User).filter_by(username=username).first() is not None:
        username = fake.user_name()
    
    email = fake.email()
    password_hash = fake.password(length=12) 
    phone_number = fake.phone_number()
    user = User(username=username, email=email, password_hash=password_hash, phone_number=phone_number)

    try:
        session.add(user)
        session.commit()  # Commit to generate user_id (auto-generated)
        address_line1 = fake.street_address()
        address_line2 = fake.secondary_address() if random.choice([True, False]) else None
        city = fake.city()
        state = fake.state()
        postal_code = fake.zipcode()
        country = fake.country()
        address_type = random.choice(['billing', 'shipping'])
        user_address = UserAddress(user_id=user.user_id, 
            address_line1=address_line1,
            address_line2=address_line2 if address_line2 else '',
            city=city,
            state=state,
            postal_code=postal_code,
            country=country,
            address_type=address_type)
        session.add(user_address)
        session.commit()

    except IntegrityError:
        session.rollback()  # Rollback the session
        print(f"Error inserting user with username {username}, skipping this entry.")

# Close the session
session.close()

print(f"{num_records} records inserted successfully into the user and user_address tables.")
