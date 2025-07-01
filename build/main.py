from fastapi import FastAPI
from mangum import Mangum

app = FastAPI(root_path="/default")  

@app.get("/")
def root():
    return {"message": "Hello from AWS Lambda!"}

@app.get("/health")
def health():
    return {"status": "ok"}

handler = Mangum(app)
