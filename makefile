.PHONY: verify fix lint format install test 

# Verify - check everything without making changes
verify: lint format-check

# Fix - automatically fix what can be fixed
fix:
	uv run ruff check --fix .
	uv run ruff format .

# Individual targets
lint:
	uv run ruff check .

format-check:
	uv run ruff format --check .

format:
	uv run ruff format .

# Install dependencies
install:
	uv sync --all-groups

# Run tests
test:
	uv run pytest tests/ -v


