FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

RUN mkdir models
WORKDIR /app/models
RUN curl -O https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin

WORKDIR /app
COPY . .

CMD ["/bin/bash"]
