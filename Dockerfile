FROM python:3.10 AS builder
COPY requirements.txt .

RUN pip3 install --user -r requirements.txt

FROM python:3.10-slim
WORKDIR /app

COPY --from=builder /root/.local /root/.local
COPY ./main.py .

ENV PATH=/root/.local:$PATH
EXPOSE 9091

CMD ["python", "-u", "./main.py"]