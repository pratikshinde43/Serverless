FROM python:3-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./djangokubernetesproject /app

COPY entrypoint.sh /app

WORKDIR /app

ENTRYPOINT ["sh","entrypoint.sh"] 
