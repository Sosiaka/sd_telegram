FROM python:latest
LABEL maintainer="info@borisov-ab.ru"

WORKDIR /bot
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["python", "bot.py"]
