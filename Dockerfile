FROM python:3.8

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    unzip \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

# Download the LLM model
RUN mkdir models
RUN wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin -O models/ggml-gpt4all-j-v1.3-groovy.bin

COPY . .

CMD [ "python3", "app.py" ]

