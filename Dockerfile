FROM python:3.9.0-alpine3.12

RUN mkdir -p /bonkbot
WORKDIR /bonkbot
COPY requirements.txt requirements.txt
COPY bonkbot.py bonkbot.py
RUN apk add build-base; \
    pip install --no-cache-dir -r requirements.txt; \
	apk del build-base;
CMD python bonkbot.py
