"""app-scout の Web API。"""

from fastapi import FastAPI

app = FastAPI(title="app-scout")


@app.get("/health")
def health() -> dict[str, str]:
    """動いているかを返す。"""
    return {"status": "ok"}
