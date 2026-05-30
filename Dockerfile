FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

COPY . /app

RUN chmod +x .github/scripts/entrypoint.sh
RUN chmod +x .github/scripts/update_readme.sh

ENTRYPOINT [".github/scripts/entrypoint.sh"]
