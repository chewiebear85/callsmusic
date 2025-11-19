FROM python:3.10-slim

RUN apt update && apt install -y ffmpeg git curl

COPY . /app
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "-m", "callsmusic"]
