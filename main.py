from fastapi import FastAPI
from mangum import Mangum

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello from AWS Lambda!"}

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/status")
def status():
    return {"uptime": "running", "version": "1.0"}

handler = Mangum(app)
