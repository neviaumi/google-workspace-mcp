FROM ghcr.io/astral-sh/uv:alpine

WORKDIR /app
COPY ./credentials.json ./pyproject.toml ./uv.lock ./.python-version ./
COPY ./src ./src/
COPY ./scripts/docker/ ./scripts/docker

RUN sh ./scripts/docker/setup.sh