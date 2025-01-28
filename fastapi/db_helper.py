import os
from dotenv import load_dotenv
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

load_dotenv()

db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')
db_host = os.getenv('DB_HOST')
db_host_port = os.getenv('DB_HOST_PORT')
db_name = os.getenv('DB_NAME')

def get_db_session():
  # SQLAlchemy setup
  DATABASE_URI = f'mysql+mysqlconnector://{db_user}:{db_password}@{db_host}:{db_host_port}/{db_name}'
  engine = create_engine(DATABASE_URI)
  SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
  return SessionLocal

