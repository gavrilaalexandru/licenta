from fastapi import FastAPI

app = FastAPI(
    title="Vulnerability Scanner API",
    description="Aplicatie de detectie a vulnerabilitatilor la nivel de retea",
    version="1.0.0",
)


@app.get("/")
async def root():
    return {"message": "Functional API"}
