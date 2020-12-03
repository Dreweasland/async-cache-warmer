FROM python:3.5-alpine

RUN apk update && apk add libxml2-dev libxslt-dev gcc g++ make
RUN ls -l /usr/include/ /usr/local/include && pip install --upgrade asyncio aiohttp lxml requests tabulate

WORKDIR /root/async-cache-warmer
COPY main.py .

RUN ls -l /root/async-cache-warmer/

ENTRYPOINT ["/root/async-cache-warmer/main.py"]
