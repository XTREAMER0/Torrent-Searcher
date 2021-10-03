FROM ghcr.io/devilld/py3-dev:main

WORKDIR /BOT

RUN chmod -R 777 /BOT

COPY requirements.txt .
RUN pip3 install --no-cache -r requirements.txt

COPY piratebay.py .
COPY itorrent.py .
COPY 1337x.py .
CMD ["python3", "piratebay.py", "itorrent.py", "1337x.py"]
