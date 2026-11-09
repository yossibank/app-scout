.PHONY: verify lint format typecheck test run

verify: lint typecheck test

lint:
	uv run ruff check .
	uv run ruff format --check .

format:
	uv run ruff check --fix .
	uv run ruff format .

typecheck:
	uv run mypy src tests

test:
	uv run pytest

run:
	uv run fastapi dev src/app_scout/api.py
