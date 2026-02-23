from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from resize_router import router as resize_router

app = FastAPI()

# serve static files
app.mount("/static", StaticFiles(directory="static"), name="static")

# Allow frontend (React)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include resize router
app.include_router(resize_router, prefix="/api/resize")

# Root endpoint ⭐
@app.get("/")
def root():
    return {
        "message": "Resize API is running",
        "docs": "/docs",
        "resize_api": "/api/resize"
    }
