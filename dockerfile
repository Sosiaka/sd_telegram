FROM python:3.10
LABEL maintainer="soaska@cornspace.su"
LABEL org.opencontainers.image.source=https://github.com/soaska/sd_telegram
LABEL org.opencontainers.image.description="Beta image for sd_telegram"

WORKDIR /bot
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["python", "bot.py"]
