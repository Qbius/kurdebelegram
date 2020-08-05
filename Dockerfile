FROM alpine:latest AS fetcher
RUN apk add python3-dev
RUN apk add musl-dev
RUN apk add libffi-dev
RUN apk add libressl-dev
RUN apk add gcc
RUN pip3 install python-telegram-bot

FROM alpine:latest
RUN apk add python3
COPY --from=fetcher /usr/lib/python3.8/site-packages /usr/lib/python3.8/site-packages
WORKDIR /kurdebelegram
ADD bot_token ./
ADD bot.py ./
CMD python3 bot.py